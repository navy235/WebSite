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
    public class PermissionController : Controller
    {
        //
        // GET: /Permission/
        private IDepartmentService departmentService;
        private IPermissionService permissionService;

        public PermissionController(
              IDepartmentService _departmentService
            , IPermissionService _permissionService)
        {

            permissionService = _permissionService;
            departmentService = _departmentService;
        }

        public ActionResult Index()
        {
            ViewBag.DepartmentID = Utilities.CreateSelectList(departmentService.GetALL().ToList(), item => item.DepartmentID, item => item.Name, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {
            var Permissions = permissionService.GetKendoALL().OrderByDescending(x => x.ID).ToList();
            return Json(Permissions.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Permissions> permissions)
        {
            var results = new List<Permissions>();

            if (permissions != null && ModelState.IsValid)
            {
                foreach (var permission in permissions)
                {
                    permissionService.Create(permission);
                    results.Add(permission);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Permissions> permissions)
        {
            if (permissions != null && ModelState.IsValid)
            {
                foreach (var permission in permissions)
                {
                    permissionService.Update(permission);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Permissions> permissions)
        {
            if (permissions.Any())
            {
                foreach (var permission in permissions)
                {
                    permissionService.Delete(permission);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

    }
}
