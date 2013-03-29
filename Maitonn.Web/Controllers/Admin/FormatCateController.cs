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
    public class FormatCateController : Controller
    {
        //
        // GET: /FormatCate/
        private IFormatCateService FormatCateService;
        public FormatCateController(
             IFormatCateService _FormatCateService
          )
        {
            FormatCateService = _FormatCateService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                FormatCateService.GetALL()
                 .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var FormatCates = FormatCateService.GetKendoALL();
            return Json(FormatCates.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<FormatCate> FormatCates)
        {
            var results = new List<FormatCate>();

            if (FormatCates != null && ModelState.IsValid)
            {
                foreach (var FormatCate in FormatCates)
                {
                    FormatCateService.Create(FormatCate);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<FormatCate> FormatCates)
        {
            if (FormatCates != null && ModelState.IsValid)
            {
                foreach (var FormatCate in FormatCates)
                {
                    FormatCateService.Update(FormatCate);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<FormatCate> FormatCates)
        {
            if (FormatCates.Any())
            {
                foreach (var FormatCate in FormatCates)
                {
                    FormatCateService.Delete(FormatCate);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

