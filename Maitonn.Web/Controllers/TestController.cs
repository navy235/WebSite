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

        private IMember_MoneyService member_MoneyService;
        private ISearchService searchService;
        private IIndexingService indexService;
        public TestController(
            IMember_MoneyService _member_MoneyService
            , ISearchService _searchService
            , IIndexingService _indexService)
        {
            member_MoneyService = _member_MoneyService;
            searchService = _searchService;
            indexService = _indexService;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CreateIndex()
        {
            try
            {
                indexService.UpdateIndex();
                ViewBag.Message = "建立索引成功！";
            }
            catch (Exception ex)
            {
                ViewBag.Message = "建立索引失败！";
            }
            return View();
        }

        public ActionResult UpdateIndex()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UpdateIndex(string ids)
        {
            var keys = ids.Split(',').Select(x => Convert.ToInt32(x)).ToList();

            indexService.UpdateIndex(keys);

            return View();
        }

        public ActionResult SearchIndex()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchIndex(string query)
        {
            ListSearchItemViewModel search = new ListSearchItemViewModel()
            {
                Query = query
            };
            SearchFilter filter = new SearchFilter()
            {
                PageSize = 20,
                SearchTerm = query,
                Skip = 0,
                Take = 20
            };

            int hitCount = 0;

            List<ListSearchProductViewModel> list = searchService.Search(search, filter, out hitCount);

            ViewBag.List = list;

            return View();
        }
    }
}
