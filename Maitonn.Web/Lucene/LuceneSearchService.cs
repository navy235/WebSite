using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Index;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Search.Function;
using Lucene.Net.China;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Tokenattributes;

namespace Maitonn.Web
{


    public class SearchFilter
    {
        public string SearchTerm { get; set; }

        public int Skip { get; set; }

        public int Take { get; set; }

        public bool IncludePrerelease { get; set; }

        public SortProperty SortProperty { get; set; }

        public SortDirection SortDirection { get; set; }

        /// <summary>
        ///     Determines if only this is a count only query and does not process the source queryable.
        /// </summary>
        public bool CountOnly { get; set; }
    }

    public enum SortProperty
    {
        Hit,
        Price,
        Published,
        DisplayName
    }

    public enum SortDirection
    {
        Ascending,
        Descending,
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

                //var analyzer = new ChineseAnalyzer();

                //QueryParser parser = new QueryParser(LuceneCommon.LuceneVersion, searchFilter.SearchTerm, analyzer);

                //Query query = parser.Parse(searchFilter.SearchTerm);

                var filterTerm = searchFilter.IncludePrerelease ? "IsLatest" : "IsLatestStable";
                var termQuery = new TermQuery(new Term(filterTerm, Boolean.TrueString));
                Filter filter = new QueryWrapperFilter(termQuery);


                var results = searcher.Search(query, filter: null, n: numRecords, sort: new Sort(sortField));

                var keys = results.ScoreDocs.Skip(searchFilter.Skip)
                    .Select(c => ParseKey(searcher.Doc(c.Doc).Get("MediaID")))
                    .ToList();

                totalHits = results.TotalHits;
                searcher.Close();
                return keys;
            }
        }

        private static Query ParseQuery(SearchFilter searchFilter)
        {
            if (String.IsNullOrWhiteSpace(searchFilter.SearchTerm))
            {
                return new MatchAllDocsQuery();
            }

            var fields = new[] { "Title", "Description", "MediaCateName", "CityName" };

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

            //var combinedQuery =
            //    conjuctionQuery.Combine(new Query[] { exactIdQuery, conjuctionQuery });
            //// Create an OR of all the queries that we have

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
                case SortProperty.DisplayName:
                    return new SortField("DisplayName", SortField.STRING, reverse: searchFilter.SortDirection == SortDirection.Descending);
                case SortProperty.Hit:
                    return new SortField("Hit", SortField.INT, reverse: true);
                case SortProperty.Price:
                    return new SortField("Price", SortField.INT, reverse: true);
                case SortProperty.Published:
                    return new SortField("Published", SortField.LONG, reverse: true);
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