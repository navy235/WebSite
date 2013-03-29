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
    public class CompanyFundController : Controller
    {
        //
        // GET: /CompanyFund/
        private ICompanyFundService CompanyFundService;
        public CompanyFundController(
             ICompanyFundService _CompanyFundService
          )
        {
            CompanyFundService = _CompanyFundService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                CompanyFundService.GetALL()
               .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var CompanyFunds = CompanyFundService.GetKendoALL().OrderBy(x => x.ID).ToList();
            return Json(CompanyFunds.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyFund> CompanyFunds)
        {
            var results = new List<CompanyFund>();

            if (CompanyFunds != null && ModelState.IsValid)
            {
                foreach (var CompanyFund in CompanyFunds)
                {
                    CompanyFundService.Create(CompanyFund);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyFund> CompanyFunds)
        {
            if (CompanyFunds != null && ModelState.IsValid)
            {
                foreach (var CompanyFund in CompanyFunds)
                {
                    CompanyFundService.Update(CompanyFund);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<CompanyFund> CompanyFunds)
        {
            if (CompanyFunds.Any())
            {
                foreach (var CompanyFund in CompanyFunds)
                {
                    CompanyFundService.Delete(CompanyFund);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

