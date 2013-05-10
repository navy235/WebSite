using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Globalization;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Index;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Documents;
using Lucene.Net.Search.Function;
using Lucene.Net.China;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Tokenattributes;
using Maitonn.Core;
using PagedList;
using PagedList.Mvc;

namespace Maitonn.Web
{
    public class SearchFilter
    {
        public string SearchTerm { get; set; }

        public int Skip { get; set; }

        public int Take { get; set; }

        public int PageSize { get; set; }

        public SortProperty SortProperty { get; set; }

        public SortDirection SortDirection { get; set; }

        public bool CountOnly { get; set; }
    }

    public enum SortProperty
    {
        Published = 0,
        Hit = 1,
        Price = 2
    }

    public enum SortDirection
    {
        Descending = 0,
        Ascending = 1,

    }
    public interface ISearchService
    {
        /// <summary>
        ///     Searches for OutDoors that match the search filter and returns a set of results.
        /// </summary>
        /// <param name="OutDoors"> A query representing the OutDoors to be searched for. </param>
        /// <param name="filter"> The filter to be used. </param>
        /// <param name="totalHits"> The total number of OutDoors discovered. </param>
        IQueryable<OutDoor> Search(IQueryable<OutDoor> OutDoors, SearchFilter filter, out int totalHits);

        List<ListSearchProductViewModel> Search(ListSearchItemViewModel queryParams, SearchFilter searchFilter, out int totalHits);

        List<HttpLinkItem> Search(List<int> Keys);

    }

    public class LuceneSearchService : ISearchService
    {
        public IQueryable<OutDoor> Search(IQueryable<OutDoor> OutDoors, SearchFilter searchFilter, out int totalHits)
        {
            if (OutDoors == null)
            {
                throw new ArgumentNullException("OutDoors");
            }

            if (searchFilter == null)
            {
                throw new ArgumentNullException("searchFilter");
            }

            if (searchFilter.Skip < 0)
            {
                throw new ArgumentOutOfRangeException("searchFilter");
            }

            if (searchFilter.Take < 0)
            {
                throw new ArgumentOutOfRangeException("searchFilter");
            }

            // For the given search term, find the keys that match.
            var keys = SearchCore(searchFilter, out totalHits);

            if (keys.Count == 0 || searchFilter.CountOnly)
            {
                return Enumerable.Empty<OutDoor>().AsQueryable();
            }

            // Query the source for each of the keys that need to be taken.
            var results = OutDoors.Where(p => keys.Contains(p.MediaID));

            // When querying the database, these keys are returned in no particular order. We use the original order of queries
            // and retrieve each of the OutDoors from the result in the same order.
            var lookup = results.ToDictionary(p => p.MediaID, p => p);

            return keys.Select(key => LookupOutDoor(lookup, key))
                .Where(p => p != null)
                .AsQueryable();
        }

        public List<ListSearchProductViewModel> Search(ListSearchItemViewModel queryParams, SearchFilter searchFilter, out int totalHits)
        {
            if (searchFilter == null)
            {
                throw new ArgumentNullException("searchFilter");
            }

            if (searchFilter.Skip < 0)
            {
                throw new ArgumentOutOfRangeException("searchFilter");
            }

            if (searchFilter.Take < 0)
            {
                throw new ArgumentOutOfRangeException("searchFilter");
            }
            var searchResults = SearchCore(queryParams, searchFilter, out totalHits);

            return searchResults;

        }

        public List<HttpLinkItem> Search(List<int> Keys)
        {
            if (!Directory.Exists(LuceneCommon.IndexDirectory))
            {
                return new List<HttpLinkItem>();
            }

            using (var directory = new LuceneFileSystem(LuceneCommon.IndexDirectory))
            {
                var searcher = new IndexSearcher(directory, readOnly: true);

                var combineQuery = new BooleanQuery();

                foreach (var key in Keys)
                {

                    combineQuery.Add(NumericRangeQuery.NewIntRange(OutDoorIndexFields.MediaID, key, key, true, true), Occur.SHOULD);
                }

                var searchResults = searcher.Search(combineQuery, filter: null, n: Keys.Count);

                if (searchResults.TotalHits == 0)
                {
                    searcher.Close();
                    return new List<HttpLinkItem>();
                }

                var results = searchResults.ScoreDocs.Select(c => GetMediaItem(searcher.Doc(c.Doc)))
                    .ToList();

                searcher.Close();

                return results;
            }
        }

        private static OutDoor LookupOutDoor(Dictionary<int, OutDoor> dict, int key)
        {
            OutDoor OutDoor;
            dict.TryGetValue(key, out OutDoor);
            return OutDoor;
        }

        private static IList<int> SearchCore(SearchFilter searchFilter, out int totalHits)
        {
            if (!Directory.Exists(LuceneCommon.IndexDirectory))
            {
                totalHits = 0;
                return new int[0];
            }

            SortField sortField = GetSortField(searchFilter);
            int numRecords = searchFilter.Skip + searchFilter.Take;

            using (var directory = new LuceneFileSystem(LuceneCommon.IndexDirectory))
            {
                var searcher = new IndexSearcher(directory, readOnly: true);
                var query = ParseQuery(searchFilter);
                var results = searcher.Search(query, filter: null, n: numRecords, sort: new Sort(sortField));
                var keys = results.ScoreDocs.Skip(searchFilter.Skip)
                    .Select(c => ParseKey(searcher.Doc(c.Doc).Get("MediaID")))
                    .ToList();
                totalHits = results.TotalHits;
                searcher.Close();
                return keys;
            }
        }

        private static List<ListSearchProductViewModel> SearchCore(ListSearchItemViewModel queryParams, SearchFilter searchFilter, out int totalHits)
        {
            if (!Directory.Exists(LuceneCommon.IndexDirectory))
            {
                totalHits = 0;
                return new List<ListSearchProductViewModel>();
            }

            SortField sortField = GetSortField(searchFilter);

            int numRecords = searchFilter.Skip + searchFilter.Take;

            using (var directory = new LuceneFileSystem(LuceneCommon.IndexDirectory))
            {
                var searcher = new IndexSearcher(directory, readOnly: true);

                var query = ParseQuery(queryParams, searchFilter);

                var results = searcher.Search(query, filter: null, n: numRecords, sort: new Sort(sortField));

                var keys = results.ScoreDocs.Skip(searchFilter.Skip)
                    .Select(c => PackageFromDoc(searcher.Doc(c.Doc)))
                    .ToList();

                totalHits = results.TotalHits;

                searcher.Close();

                return keys;
            }
        }

        private static ListSearchProductViewModel PackageFromDoc(Document doc)
        {
            int Hit = Int32.Parse(doc.Get(OutDoorIndexFields.Hit), CultureInfo.InvariantCulture);
            int MediaID = Int32.Parse(doc.Get(OutDoorIndexFields.MediaID), CultureInfo.InvariantCulture);
            int Province = Int32.Parse(doc.Get(OutDoorIndexFields.Province), CultureInfo.InvariantCulture);
            int City = Int32.Parse(doc.Get(OutDoorIndexFields.City), CultureInfo.InvariantCulture);
            int FormatCode = Int32.Parse(doc.Get(OutDoorIndexFields.FormatCode), CultureInfo.InvariantCulture);
            int MediaCode = Int32.Parse(doc.Get(OutDoorIndexFields.MediaCode), CultureInfo.InvariantCulture);
            int PMediaCode = Int32.Parse(doc.Get(OutDoorIndexFields.PMediaCode), CultureInfo.InvariantCulture);
            decimal Price = Decimal.Parse(doc.Get(OutDoorIndexFields.Price), CultureInfo.InvariantCulture);
            decimal Width = Decimal.Parse(doc.Get(OutDoorIndexFields.Width), CultureInfo.InvariantCulture);
            decimal Height = Decimal.Parse(doc.Get(OutDoorIndexFields.Height), CultureInfo.InvariantCulture);
            int TotalFaces = Int32.Parse(doc.Get(OutDoorIndexFields.TotalFaces), CultureInfo.InvariantCulture);
            DateTime AddTime = new DateTime(Int64.Parse(doc.Get(OutDoorIndexFields.Published), CultureInfo.InvariantCulture));
            return new ListSearchProductViewModel
            {
                ID = MediaID,
                ImgUrl = doc.Get(OutDoorIndexFields.ImgUrl),
                ProvinceCode = Province,
                ProvinceName = doc.Get(OutDoorIndexFields.ProvinceName),
                CityCode = City,
                CityName = doc.Get(OutDoorIndexFields.CityName),
                ParentMediaCateCode = PMediaCode,
                ParentMediaCateName = doc.Get(OutDoorIndexFields.PMediaCateName),
                MediaCateCode = MediaCode,
                MediaCateName = doc.Get(OutDoorIndexFields.MediaCateName),
                FormatCateName = doc.Get(OutDoorIndexFields.FormatName),
                Name = doc.Get(OutDoorIndexFields.Title),
                OwnerCateName = doc.Get(OutDoorIndexFields.OwnerCateName),
                Price = Price,
                Width = Width,
                Height = Height,
                TotalFaces = TotalFaces,
                PeriodCateName = doc.Get(OutDoorIndexFields.PeriodName),
                Addtime = AddTime
            };
        }

        private static HttpLinkItem GetMediaItem(Document doc)
        {
            int Hit = Int32.Parse(doc.Get(OutDoorIndexFields.Hit), CultureInfo.InvariantCulture);
            int MediaID = Int32.Parse(doc.Get(OutDoorIndexFields.MediaID), CultureInfo.InvariantCulture);
            int Province = Int32.Parse(doc.Get(OutDoorIndexFields.Province), CultureInfo.InvariantCulture);
            int City = Int32.Parse(doc.Get(OutDoorIndexFields.City), CultureInfo.InvariantCulture);
            int FormatCode = Int32.Parse(doc.Get(OutDoorIndexFields.FormatCode), CultureInfo.InvariantCulture);
            int MediaCode = Int32.Parse(doc.Get(OutDoorIndexFields.MediaCode), CultureInfo.InvariantCulture);
            int PMediaCode = Int32.Parse(doc.Get(OutDoorIndexFields.PMediaCode), CultureInfo.InvariantCulture);
            decimal Price = Decimal.Parse(doc.Get(OutDoorIndexFields.Price), CultureInfo.InvariantCulture);
            decimal Width = Decimal.Parse(doc.Get(OutDoorIndexFields.Width), CultureInfo.InvariantCulture);
            decimal Height = Decimal.Parse(doc.Get(OutDoorIndexFields.Height), CultureInfo.InvariantCulture);
            int TotalFaces = Int32.Parse(doc.Get(OutDoorIndexFields.TotalFaces), CultureInfo.InvariantCulture);
            DateTime AddTime = new DateTime(Int64.Parse(doc.Get(OutDoorIndexFields.Published), CultureInfo.InvariantCulture));
            return new HttpLinkItem
            {
                ID = MediaID,
                ImgUrl = doc.Get(OutDoorIndexFields.ImgUrl),
                Province = Province,
                ProvinceName = doc.Get(OutDoorIndexFields.ProvinceName),
                City = City,
                CityName = doc.Get(OutDoorIndexFields.CityName),
                PCategoryCode = PMediaCode,
                PCategoryName = doc.Get(OutDoorIndexFields.PMediaCateName),
                CategoryCode = MediaCode,
                CategoryName = doc.Get(OutDoorIndexFields.MediaCateName),
                Name = doc.Get(OutDoorIndexFields.Title),
                Price = Price,
                PeriodName = doc.Get(OutDoorIndexFields.PeriodName)
            };
        }

        private static Query ParseQuery(SearchFilter searchFilter)
        {
            if (String.IsNullOrWhiteSpace(searchFilter.SearchTerm))
            {
                return new MatchAllDocsQuery();
            }

            var fields = new[] { "Title", "Description", "AreaAtt", "MediaCateName", "CityName", "ProvinceName", "PMediaCateName", "FormatName", "PeriodName", "OwnerCateName" };

            var analyzer = new ChineseAnalyzer();
            //var analyzer = new StandardAnalyzer(LuceneCommon.LuceneVersion);
            var queryParser = new MultiFieldQueryParser(LuceneCommon.LuceneVersion, fields, analyzer);

            var query = queryParser.Parse(searchFilter.SearchTerm);
            // All terms in the multi-term query appear in at least one of the fields.
            var conjuctionQuery = new BooleanQuery();
            conjuctionQuery.Boost = 2.0f;

            // Some terms in the multi-term query appear in at least one of the fields.
            var disjunctionQuery = new BooleanQuery();
            disjunctionQuery.Boost = 0.1f;

            // Suffix wildcard search e.g. jquer*
            var wildCardQuery = new BooleanQuery();
            wildCardQuery.Boost = 0.5f;


            //// Escape the entire term we use for exact searches.
            var escapedSearchTerm = Escape(searchFilter.SearchTerm);

            var exactIdQuery = new TermQuery(new Term("Title", escapedSearchTerm));

            exactIdQuery.Boost = 2.5f;

            var wildCardIdQuery = new WildcardQuery(new Term("Title", "*" + escapedSearchTerm + "*"));



            foreach (var term in GetSearchTerms(searchFilter.SearchTerm))
            {
                var termQuery = queryParser.Parse(term);
                conjuctionQuery.Add(termQuery, Occur.MUST);
                disjunctionQuery.Add(termQuery, Occur.SHOULD);

                foreach (var field in fields)
                {
                    var wildCardTermQuery = new WildcardQuery(new Term(field, term + "*"));
                    wildCardTermQuery.Boost = 0.7f;
                    wildCardQuery.Add(wildCardTermQuery, Occur.SHOULD);
                }
            }
            var combinedQuery =
                conjuctionQuery.Combine(new Query[] { exactIdQuery, wildCardIdQuery, conjuctionQuery, disjunctionQuery, wildCardQuery });

            if (searchFilter.SortProperty == SortProperty.Hit)
            {
                // If searching by relevance, boost scores by download count.
                var downloadCountBooster = new FieldScoreQuery("Hit", FieldScoreQuery.Type.INT);
                return new CustomScoreQuery(combinedQuery, downloadCountBooster);
            }
            return combinedQuery;
        }

        private static Query ParseQuery(ListSearchItemViewModel queryParams, SearchFilter searchFilter)
        {
            var combineQuery = new BooleanQuery();

            #region 关键字查询构建
            if (!String.IsNullOrWhiteSpace(searchFilter.SearchTerm))
            {
                var fields = new[] { 
                    OutDoorIndexFields.Title, 
                    OutDoorIndexFields.Description,
                    OutDoorIndexFields.AreaAtt,
                    OutDoorIndexFields.MediaCateName,
                    OutDoorIndexFields.CityName,
                    OutDoorIndexFields.ProvinceName,
                    OutDoorIndexFields.PMediaCateName,
                    OutDoorIndexFields.FormatName,
                    OutDoorIndexFields.PeriodName,
                    OutDoorIndexFields.OwnerCateName
                };
                var analyzer = new ChineseAnalyzer();
                //var analyzer = new StandardAnalyzer(LuceneCommon.LuceneVersion);
                var queryParser = new MultiFieldQueryParser(LuceneCommon.LuceneVersion, fields, analyzer);

                var query = queryParser.Parse(searchFilter.SearchTerm);

                var conjuctionQuery = new BooleanQuery();
                conjuctionQuery.Boost = 2.0f;

                var disjunctionQuery = new BooleanQuery();
                disjunctionQuery.Boost = 0.1f;

                var wildCardQuery = new BooleanQuery();
                wildCardQuery.Boost = 0.5f;

                var escapedSearchTerm = Escape(searchFilter.SearchTerm);

                var exactIdQuery = new TermQuery(new Term(OutDoorIndexFields.Title, escapedSearchTerm));

                exactIdQuery.Boost = 2.5f;

                var wildCardIdQuery = new WildcardQuery(new Term(OutDoorIndexFields.Title, "*" + escapedSearchTerm + "*"));

                foreach (var term in GetSearchTerms(searchFilter.SearchTerm))
                {
                    var termQuery = queryParser.Parse(term);
                    conjuctionQuery.Add(termQuery, Occur.MUST);
                    disjunctionQuery.Add(termQuery, Occur.SHOULD);

                    foreach (var field in fields)
                    {
                        var wildCardTermQuery = new WildcardQuery(new Term(field, term + "*"));
                        wildCardTermQuery.Boost = 0.7f;
                        wildCardQuery.Add(wildCardTermQuery, Occur.SHOULD);
                    }
                }
                //关键查询
                var keywordsQuery =
                    conjuctionQuery.Combine(new Query[] { exactIdQuery, wildCardIdQuery, conjuctionQuery, disjunctionQuery, wildCardQuery });

                combineQuery.Add(keywordsQuery, Occur.MUST);
            }
            #endregion

            #region 审核状态查询构建
            var verifyStatus = NumericRangeQuery.NewIntRange(OutDoorIndexFields.Status, (int)OutDoorStatus.ShowOnline, 99, true, true);
            combineQuery.Add(verifyStatus, Occur.MUST);
            #endregion


            #region 省份查询
            if (!String.IsNullOrEmpty(queryParams.Province) && queryParams.Province != "quanguo")
            {
                int ProvinceValue = EnumHelper.GetProvinceValue(queryParams.Province);
                var provinceQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.Province, ProvinceValue, ProvinceValue, true, true);
                combineQuery.Add(provinceQuery, Occur.MUST);
            }
            #endregion

            #region 城市查询
            if (queryParams.City != 0)
            {
                var cityQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.City, queryParams.City, queryParams.City, true, true);
                combineQuery.Add(cityQuery, Occur.MUST);
            }
            #endregion

            #region 认证状态
            if (queryParams.AuthStatus != 0)
            {
                var authStatusQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.AuthStatus, queryParams.AuthStatus, queryParams.AuthStatus, true, true);
                combineQuery.Add(authStatusQuery, Occur.MUST);
            }
            #endregion

            #region 媒体类别查询
            if (queryParams.MediaCode != 0)
            {
                var mediaCodeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.PMediaCode,
                    queryParams.MediaCode, queryParams.MediaCode, true, true);
                combineQuery.Add(mediaCodeQuery, Occur.MUST);
            }
            #endregion

            #region 媒体子类别查询
            if (queryParams.ChildMediaCode != 0)
            {
                var ChildMediaCodeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.MediaCode,
                    queryParams.ChildMediaCode, queryParams.ChildMediaCode, true, true);
                combineQuery.Add(ChildMediaCodeQuery, Occur.MUST);
            }
            #endregion

            #region 媒体表现形式查询
            if (queryParams.FormatCode != 0)
            {
                var FormatCodeCodeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.FormatCode,
                    queryParams.FormatCode, queryParams.FormatCode, true, true);
                combineQuery.Add(FormatCodeCodeQuery, Occur.MUST);
            }
            #endregion

            #region 媒体所有权查询
            if (queryParams.OwnerCode != 0)
            {
                var OwnerCodeCodeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.OwnerCode,
                    queryParams.OwnerCode, queryParams.OwnerCode, true, true);
                combineQuery.Add(OwnerCodeCodeQuery, Occur.MUST);
            }
            #endregion

            #region 媒体购买周期查询
            if (queryParams.PeriodCode != 0)
            {
                var PeriodCodeCodeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.PeriodCode,
                    queryParams.PeriodCode, queryParams.PeriodCode, true, true);
                combineQuery.Add(PeriodCodeCodeQuery, Occur.MUST);
            }
            #endregion

            #region 媒体价格区间查询
            if (queryParams.Price != 0)
            {
                var rangeValue = EnumHelper.GetPriceValue(queryParams.Price);
                var PriceQuery = NumericRangeQuery.NewDoubleRange(OutDoorIndexFields.Price,
                    Convert.ToDouble(rangeValue.Min), Convert.ToDouble(rangeValue.Max), true, true);
                combineQuery.Add(PriceQuery, Occur.MUST);
            }
            #endregion

            return combineQuery;
        }

        private static IEnumerable<string> GetSearchTerms(string searchTerm)
        {
            List<string> result = new List<string>();
            var analyzer = new ChineseAnalyzer();
            StringReader sr = new StringReader(searchTerm);
            TokenStream stream = analyzer.TokenStream(null, sr);
            bool hasnext = stream.IncrementToken();
            System.DateTime start = System.DateTime.Now;
            ITermAttribute ita;
            while (hasnext)
            {
                ita = stream.GetAttribute<ITermAttribute>();
                result.Add(ita.Term);
                hasnext = stream.IncrementToken();
            }
            stream.CloneAttributes();
            sr.Close();
            analyzer.Dispose();

            var resultString = string.Join(" ", result);

            return resultString.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries)
                .Concat(new[] { searchTerm })
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .Select(Escape);

        }

        private static SortField GetSortField(SearchFilter searchFilter)
        {
            switch (searchFilter.SortProperty)
            {
                case SortProperty.Hit:
                    return new SortField(OutDoorIndexFields.Hit, SortField.INT, reverse: searchFilter.SortDirection.Equals(SortDirection.Descending));
                case SortProperty.Price:
                    return new SortField(OutDoorIndexFields.Price, SortField.DOUBLE, reverse: searchFilter.SortDirection.Equals(SortDirection.Descending));
                case SortProperty.Published:
                    return new SortField(OutDoorIndexFields.Published, SortField.LONG, reverse: searchFilter.SortDirection.Equals(SortDirection.Descending));
            }
            return SortField.FIELD_SCORE;
        }

        private static string Escape(string term)
        {
            return QueryParser.Escape(term).ToLowerInvariant();
        }

        private static int ParseKey(string value)
        {
            int key;
            return Int32.TryParse(value, out key) ? key : 0;
        }




    }
}