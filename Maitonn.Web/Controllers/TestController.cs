using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Globalization;
using System.Web.Mvc;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.Store;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Search.Function;
using Lucene.Net.Analysis.Tokenattributes;
using Lucene.Net.China;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class TestController : Controller
    {
        //
        // GET: /Test/

        private IMember_MoneyService Member_MoneyService;

        public TestController(
            IMember_MoneyService Member_MoneyService)
        {
            this.Member_MoneyService = Member_MoneyService;

        }

        public ActionResult Index()
        {
            return View();
        }


        public ActionResult CreateIndex()
        {
            try
            {
                var indexFolder = FSDirectory.Open(LuceneCommon.IndexTestDirectory);

                Analyzer analyzer = new ChineseAnalyzer();
                using (IndexWriter indexWriter = new IndexWriter(indexFolder, analyzer, IndexWriter.MaxFieldLength.UNLIMITED))
                {
                    var outdoors = GetOutDoors(null);
                    outdoors.ForEach(item => indexWriter.AddDocument(GetDocument(item)));
                    indexWriter.Optimize();
                    indexWriter.Close();
                }
                ViewBag.Message = "索引创建成功！";
            }
            catch (Exception ex)
            {
                ViewBag.Message = "索引创建失败！" + ex.Message;
            }
            return View();


        }
        private Document GetDocument(OutDoorIndexEntity OutDoor)
        {
            var document = new Document();

            var field = new Field("Title", OutDoor.Title, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 2.5f;
            document.Add(field);

            field = new Field("Description", OutDoor.Description, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 2.1f;
            document.Add(field);

            field = new Field("AreaAtt", OutDoor.AreaAtt, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("CityName", OutDoor.CityName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("ProvinceName", OutDoor.ProvinceName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("MediaCateName", OutDoor.MediaCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("PMediaCateName", OutDoor.PMediaCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("FormatName", OutDoor.FormatName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("PeriodName", OutDoor.PeriodName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("OwnerCateName", OutDoor.OwnerCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("Price", OutDoor.Price.ToString(), Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            document.Add(new Field("Province", OutDoor.Province.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("City", OutDoor.City.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("MediaCode", OutDoor.MediaCode.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("PMediaCode", OutDoor.PMediaCode.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("FormatCode", OutDoor.FormatCode.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("PeriodCode", OutDoor.PeriodCode.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("OwnerCode", OutDoor.OwnerCode.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.Add(new Field("Status", OutDoor.Status.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));

            document.Add(new Field("MediaID", OutDoor.MediaID.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NOT_ANALYZED));

            document.Add(new NumericField("ProductID", Field.Store.YES, true).SetIntValue(OutDoor.MediaID));

            document.Add(new Field("Published", OutDoor.Published.Ticks.ToString(), Field.Store.NO, Field.Index.NOT_ANALYZED));
            document.Add(
                new Field("Hit", OutDoor.Hit.ToString(CultureInfo.InvariantCulture), Field.Store.NO, Field.Index.NOT_ANALYZED));

            string displayName = OutDoor.Title;

            document.Add(new Field("DisplayName", displayName.ToLower(CultureInfo.CurrentCulture), Field.Store.NO, Field.Index.NOT_ANALYZED));

            return document;
        }

        public ActionResult SearchIndex(string query = null)
        {
            if (!string.IsNullOrEmpty(query))
            {
                using (var directory = new LuceneFileSystem(LuceneCommon.IndexDirectory))
                {
                    var searcher = new IndexSearcher(directory, readOnly: true);

                    //var termQuery = new TermQuery(new Term(OutDoorIndexFields.MediaID, query));

                    var rangeQuery = NumericRangeQuery.NewIntRange(OutDoorIndexFields.MediaID, Convert.ToInt32(query), Convert.ToInt32(query), true, true);

                    //var lianHeQuery = new BooleanQuery();

                    //lianHeQuery.Add(rangeQuery, Occur.MUST);

                    //lianHeQuery.Add(termQuery, Occur.MUST);

                    var hits = searcher.Search(rangeQuery, 1000);

                    var keys = hits.ScoreDocs.Select(x => ParseKey(searcher.Doc(x.Doc).Get("MediaID"))).ToList();

                    var context = new EntitiesContext();

                    var results = context.Set<OutDoor>().Where(p => keys.Contains(p.MediaID));

                    var lookup = results.ToDictionary(p => p.MediaID, p => p);

                    ViewBag.Result = keys.Select(key => LookupOutDoor(lookup, key))
                        .Where(p => p != null)
                        .Select(x => x.Name).ToList();
                }
            }
            return View();
        }

        private OutDoor LookupOutDoor(Dictionary<int, OutDoor> dict, int key)
        {
            OutDoor OutDoor;
            dict.TryGetValue(key, out OutDoor);
            return OutDoor;
        }

        private int ParseKey(string value)
        {
            int key;
            return Int32.TryParse(value, out key) ? key : 0;
        }

        protected virtual List<OutDoorIndexEntity> GetOutDoors(DateTime? lastIndexTime)
        {
            List<OutDoorIndexEntity> result = new List<OutDoorIndexEntity>();

            var context = new EntitiesContext();
            var OutDoors = context.Set<OutDoor>()
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Include(x => x.OutDoorMediaCate)
                .Include(x => x.OutDoorMediaCate.PCategory)
                .Include(x => x.AreaAtt)
                .Include(x => x.PeriodCate)
                .Include(x => x.FormatCate)
                .Include(x => x.MediaImg);

            if (lastIndexTime != null)
            {
                OutDoors = OutDoors.Where(x => x.LastTime > lastIndexTime);
            }
            OutDoors = OutDoors.OrderByDescending(x => x.LastTime);
            foreach (var x in OutDoors.ToList())
            {
                OutDoorIndexEntity item = new OutDoorIndexEntity()
                {
                    City = x.Area.ID,
                    FormatCode = x.FormatCode,
                    ImgUrl = x.MediaImg.FocusImgUrl,
                    MediaCode = x.MeidaCode,
                    OwnerCode = x.OwnerCode,
                    PeriodCode = x.PeriodCode,
                    PMediaCode = x.OutDoorMediaCate.PCategory.ID,
                    Province = x.Area.PCategory.ID,
                    Status = x.Status,
                    MediaID = x.MediaID,
                    ProvinceName = x.Area.PCategory.CateName,
                    CityName = x.Area.CateName,
                    AreaAtt = String.Join(",", x.AreaAtt.Select(y => y.AttName)),
                    Description = x.Description,
                    FormatName = x.FormatCate.CateName,
                    Hit = x.Hit,
                    MediaCateName = x.OutDoorMediaCate.CateName,
                    PMediaCateName = x.OutDoorMediaCate.PCategory.CateName,
                    OwnerCateName = x.OwnerCate.CateName,
                    PeriodName = x.PeriodCate.CateName,
                    Price = Convert.ToInt32(x.Price),
                    Published = x.LastTime,
                    Title = x.Name
                };
                result.Add(item);

            }
            return result;
        }



        public ActionResult MemberMoney()
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            ViewBag.Result = Member_MoneyService.AddMoney(memberID, 2, "0001", "登录");
            return View();
        }

    }
}
