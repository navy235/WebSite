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
    public class RolesController : Controller
    {

        private IRoleService roleService;
        private IDepartmentService departmentService;
        private IPermissionService permissionService;

        public RolesController(IRoleService _roleService
            , IDepartmentService _departmentService
            , IPermissionService _permissionService)
        {
            roleService = _roleService;
            permissionService = _permissionService;
            departmentService = _departmentService;
        }

        #region KendoGrid Action
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var roles = roleService.GetKendoALL().OrderBy(x => x.ID).ToList();
            return Json(roles.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Roles> roles)
        {
            var results = new List<Roles>();

            if (roles != null && ModelState.IsValid)
            {
                foreach (var role in roles)
                {
                    roleService.Create(role);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Roles> roles)
        {
            if (roles != null && ModelState.IsValid)
            {
                foreach (var role in roles)
                {
                    roleService.Update(role);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Roles> roles)
        {
            if (roles.Any())
            {
                foreach (var role in roles)
                {
                    roleService.Delete(role);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }


        #endregion


        #region Create Edit

        public ActionResult Create()
        {
            var permissions = GetGroupForeignData();
            ViewBag.Data_Permissions = permissions;
            return View(new RoleModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(RoleModel model)
        {
            var permissions = GetGroupForeignData();
            ViewBag.Data_Permissions = permissions;
            if (ModelState.IsValid)
            {
                try
                {
                    Roles rls = new Roles();
                    rls.Name = model.Name;
                    rls.Description = model.Description;
                    var permissionsArray = model.Permissions.Split(',').Select(x => Convert.ToInt32(x)).ToList();
                    var PermissionList = permissionService.GetALL(permissionsArray);
                    rls.Permissions.AddRange(PermissionList);
                    roleService.Create(rls);
                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    ViewBag.Message = ex.Message;
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }


        }

        public ActionResult Edit(int id)
        {
            RoleModel rml = new RoleModel();
            Roles rs = new Roles();
            rs = roleService.IncludePermissionsFind(id);
            rml.ID = rs.ID;
            rml.Name = rs.Name;
            rml.Description = rs.Description;
            List<int> PermissionsList = new List<int>();
            PermissionsList = rs.Permissions.Select(x => x.ID).ToList();
            var permissions = GetGroupForeignData(PermissionsList);
            ViewBag.Data_Permissions = permissions;
            return View(rml);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(RoleModel model)
        {
            var permissionsArray = model.Permissions.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            var permissions = GetGroupForeignData(permissionsArray);
            ViewBag.Data_Permissions = permissions;
            if (ModelState.IsValid)
            {
                try
                {
                    roleService.Update(model);
                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    ViewBag.Message = ex.Message;
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }

        }



        public Dictionary<string, List<SelectListItem>> GetGroupForeignData(List<int> selectIdList)
        {
            Dictionary<string, List<SelectListItem>> data = new Dictionary<string, List<SelectListItem>>();

            var parentList = departmentService.GetIncludeALL();

            foreach (var p in parentList)
            {
                List<SelectListItem> clist = new List<SelectListItem>();
                clist = p.Permissions.Select(x => new SelectListItem()
                {
                    Text = x.Name,
                    Value = x.ID.ToString(),
                    Selected = selectIdList.Contains(x.ID)
                }).ToList();
                data.Add(p.Name, clist);
            }
            return data;
        }

        public Dictionary<string, List<SelectListItem>> GetGroupForeignData()
        {
            return GetGroupForeignData(new List<int>());
        }

        #endregion





    }
}

