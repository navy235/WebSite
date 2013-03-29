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
    public class OwnerCateController : Controller
    {
        //
        // GET: /OwnerCate/
        private IOwnerCateService OwnerCateService;
        public OwnerCateController(
             IOwnerCateService _OwnerCateService
          )
        {
            OwnerCateService = _OwnerCateService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                OwnerCateService.GetALL()
                 .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var OwnerCates = OwnerCateService.GetKendoALL();
            return Json(OwnerCates.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<OwnerCate> OwnerCates)
        {
            var results = new List<OwnerCate>();

            if (OwnerCates != null && ModelState.IsValid)
            {
                foreach (var OwnerCate in OwnerCates)
                {
                    OwnerCateService.Create(OwnerCate);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<OwnerCate> OwnerCates)
        {
            if (OwnerCates != null && ModelState.IsValid)
            {
                foreach (var OwnerCate in OwnerCates)
                {
                    OwnerCateService.Update(OwnerCate);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<OwnerCate> OwnerCates)
        {
            if (OwnerCates.Any())
            {
                foreach (var OwnerCate in OwnerCates)
                {
                    OwnerCateService.Delete(OwnerCate);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

