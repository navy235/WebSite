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
    public class PeriodCateController : Controller
    {
        //
        // GET: /PeriodCate/
        private IPeriodCateService PeriodCateService;
        public PeriodCateController(
             IPeriodCateService _PeriodCateService
          )
        {
            PeriodCateService = _PeriodCateService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                PeriodCateService.GetALL()
                .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var PeriodCates = PeriodCateService.GetKendoALL();
            return Json(PeriodCates.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<PeriodCate> PeriodCates)
        {
            var results = new List<PeriodCate>();

            if (PeriodCates != null && ModelState.IsValid)
            {
                foreach (var PeriodCate in PeriodCates)
                {
                    PeriodCateService.Create(PeriodCate);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<PeriodCate> PeriodCates)
        {
            if (PeriodCates != null && ModelState.IsValid)
            {
                foreach (var PeriodCate in PeriodCates)
                {
                    PeriodCateService.Update(PeriodCate);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<PeriodCate> PeriodCates)
        {
            if (PeriodCates.Any())
            {
                foreach (var PeriodCate in PeriodCates)
                {
                    PeriodCateService.Delete(PeriodCate);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

