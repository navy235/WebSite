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
    public class DepartmentController : Controller
    {
        //
        // GET: /Department/

        private IUnitOfWork DB_Service;

        public DepartmentController(IUnitOfWork _DB_Service)
        {
            DB_Service = _DB_Service;
        }


        #region KendoGrid Action

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {
            DB_Service.SetProxyCreationEnabledFlase();
            var departments = DB_Service.Set<Department>();
            return Json(departments.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Department> departments)
        {
            var results = new List<Department>();

            if (departments != null && ModelState.IsValid)
            {
                foreach (var department in departments)
                {
                    DB_Service.Add<Department>(department);
                    DB_Service.Commit();
                    results.Add(department);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Department> departments)
        {
            if (departments != null && ModelState.IsValid)
            {
                foreach (var department in departments)
                {
                    var target = DB_Service.Set<Department>().Single(x => x.DepartmentID == department.DepartmentID);
                    if (target != null)
                    {
                        DB_Service.Attach<Department>(target);
                        target.Name = department.Name;
                        target.Leader = department.Leader;
                        target.Description = department.Description;
                        DB_Service.Commit();
                    }
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Department> departments)
        {
            if (departments.Any())
            {
                foreach (var department in departments)
                {
                    var target = DB_Service.Set<Department>().Single(x => x.DepartmentID == department.DepartmentID);
                    DB_Service.Remove<Department>(target);
                    DB_Service.Commit();
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}
