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
    public class AreaAttController : Controller
    {

        private IAreaAttService areaAttService;
        public AreaAttController(
              IAreaAttService _areaAttService
           )
        {
            areaAttService = _areaAttService;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var AreaAtt = areaAttService.GetKendoALL().OrderByDescending(x => x.ID).ToList();
            return Json(AreaAtt.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<AreaAtt> AreaAtt)
        {
            var results = new List<AreaAtt>();
            if (AreaAtt != null && ModelState.IsValid)
            {
                foreach (var areaatt in AreaAtt)
                {
                    areaAttService.Create(areaatt);
                    results.Add(areaatt);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<AreaAtt> AreaAtt)
        {
            if (AreaAtt != null && ModelState.IsValid)
            {
                foreach (var areaatt in AreaAtt)
                {
                    areaAttService.Update(areaatt);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<AreaAtt> AreaAtt)
        {
            if (AreaAtt.Any())
            {
                foreach (var areaatt in AreaAtt)
                {
                    areaAttService.Delete(areaatt);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

    }
}
