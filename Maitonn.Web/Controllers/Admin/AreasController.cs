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
    public class AreasController : Controller
    {
        //
        // GET: /Area/
        private IAreaService areaService;
        public AreasController(
             IAreaService _areaService
          )
        {
            areaService = _areaService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.PID = Utilities.CreateSelectList(
                areaService.GetALL()
                .Where(x => x.PID.Equals(null)).ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var Areas = areaService.GetKendoALL().OrderBy(x => x.ID);
            return Json(Areas.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Area> areas)
        {
            var results = new List<Area>();

            if (areas != null && ModelState.IsValid)
            {
                foreach (var area in areas)
                {
                    areaService.Create(area);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Area> areas)
        {
            if (areas != null && ModelState.IsValid)
            {
                foreach (var area in areas)
                {
                    areaService.Update(area);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Area> areas)
        {
            if (areas.Any())
            {
                foreach (var area in areas)
                {
                    areaService.Delete(area);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}

