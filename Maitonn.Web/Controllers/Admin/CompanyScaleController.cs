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
    public class CompanyScaleController : Controller
    {
        //
        // GET: /CompanyScale/
        private ICompanyScaleService CompanyScaleService;
        public CompanyScaleController(
             ICompanyScaleService _CompanyScaleService
          )
        {
            CompanyScaleService = _CompanyScaleService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                CompanyScaleService.GetALL()
                .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var CompanyScales = CompanyScaleService.GetKendoALL();
            return Json(CompanyScales.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyScale> CompanyScales)
        {
            var results = new List<CompanyScale>();

            if (CompanyScales != null && ModelState.IsValid)
            {
                foreach (var CompanyScale in CompanyScales)
                {
                    CompanyScaleService.Create(CompanyScale);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyScale> CompanyScales)
        {
            if (CompanyScales != null && ModelState.IsValid)
            {
                foreach (var CompanyScale in CompanyScales)
                {
                    CompanyScaleService.Update(CompanyScale);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyScale> CompanyScales)
        {
            if (CompanyScales.Any())
            {
                foreach (var CompanyScale in CompanyScales)
                {
                    CompanyScaleService.Delete(CompanyScale);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

