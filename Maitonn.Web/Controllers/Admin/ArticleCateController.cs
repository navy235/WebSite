using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [Permission]
    public class ArticleCateController : Controller
    {
        //
        // GET: /ArticleCate/
        private IArticleCateService ArticleCateService;
        public ArticleCateController(
             IArticleCateService _ArticleCateService
          )
        {
            ArticleCateService = _ArticleCateService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                ArticleCateService.GetALL()
                 .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var ArticleCates = ArticleCateService.GetKendoALL();
            return Json(ArticleCates.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ArticleCate> ArticleCates)
        {
            var results = new List<ArticleCate>();

            if (ArticleCates != null && ModelState.IsValid)
            {
                foreach (var ArticleCate in ArticleCates)
                {
                    ArticleCateService.Create(ArticleCate);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ArticleCate> ArticleCates)
        {
            if (ArticleCates != null && ModelState.IsValid)
            {
                foreach (var ArticleCate in ArticleCates)
                {
                    ArticleCateService.Update(ArticleCate);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ArticleCate> ArticleCates)
        {
            if (ArticleCates.Any())
            {
                foreach (var ArticleCate in ArticleCates)
                {
                    ArticleCateService.Delete(ArticleCate);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

