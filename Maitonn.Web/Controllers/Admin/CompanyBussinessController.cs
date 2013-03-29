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
    public class CompanyBussinessController : Controller
    {
        //
        // GET: /CompanyBussiness/
        private ICompanyBussinessService CompanyBussinessService;
        public CompanyBussinessController(
             ICompanyBussinessService _CompanyBussinessService
          )
        {
            CompanyBussinessService = _CompanyBussinessService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                CompanyBussinessService.GetALL()
                .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var CompanyBussinesss = CompanyBussinessService.GetKendoALL().OrderBy(x => x.ID).ToList();
            return Json(CompanyBussinesss.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyBussiness> CompanyBussinesss)
        {
            var results = new List<CompanyBussiness>();

            if (CompanyBussinesss != null && ModelState.IsValid)
            {
                foreach (var CompanyBussiness in CompanyBussinesss)
                {
                    CompanyBussinessService.Create(CompanyBussiness);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyBussiness> CompanyBussinesss)
        {
            if (CompanyBussinesss != null && ModelState.IsValid)
            {
                foreach (var CompanyBussiness in CompanyBussinesss)
                {
                    CompanyBussinessService.Update(CompanyBussiness);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyBussiness> CompanyBussinesss)
        {
            if (CompanyBussinesss.Any())
            {
                foreach (var CompanyBussiness in CompanyBussinesss)
                {
                    CompanyBussinessService.Delete(CompanyBussiness);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

