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
    public class GroupController : Controller
    {
        //
        // GET: /Group/

        private IRoleService roleService;

        private IGroupService groupService;

        public GroupController(IRoleService _roleService
            , IGroupService _groupService
         )
        {
            roleService = _roleService;
            groupService = _groupService;
        }


        #region KendoGrid Action
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {
            var groups = groupService.GetKendoALL().OrderBy(x => x.GroupID).ToList();
            return Json(groups.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Group> groups)
        {
            var results = new List<Group>();

            if (groups != null && ModelState.IsValid)
            {
                foreach (var group in groups)
                {
                    groupService.Create(group);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Group> groups)
        {
            if (groups != null && ModelState.IsValid)
            {
                foreach (var group in groups)
                {
                    groupService.Update(group);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Group> groups)
        {
            if (groups.Any())
            {
                foreach (var group in groups)
                {
                    groupService.Delete(group);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }


        #endregion



        #region Create Edit
        public ActionResult Create()
        {
            var roles = GetForeignData();
            ViewBag.Data_RolesList = roles;
            return View(new GroupModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GroupModel model)
        {
            var roles = GetForeignData();
            ViewBag.Data_RolesList = roles;

            if (ModelState.IsValid)
            {
                try
                {
                    Group gps = new Group();
                    gps.Name = model.Name;
                    gps.Description = model.Description;
                    var rolesArray = model.RolesList.Split(',').Select(x => Convert.ToInt32(x));
                    var RoleList = roleService.GetALL(rolesArray);
                    gps.Roles.AddRange(RoleList);
                    groupService.Create(gps);
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

            GroupModel gpm = new GroupModel();
            Group gps = new Group();
            gps = groupService.IncludeFind(id);
            gpm.ID = gps.GroupID;
            gpm.Name = gps.Name;
            gpm.Description = gps.Description;
            List<int> RolesList = new List<int>();
            RolesList = gps.Roles.Select(x => x.ID).ToList();
            var roles = GetForeignData(RolesList);
            ViewBag.Data_RolesList = roles;
            return View(gpm);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(GroupModel model)
        {
            var rolesArray = model.RolesList.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            var roles = GetForeignData(rolesArray);
            ViewBag.Data_RolesList = roles;
            if (ModelState.IsValid)
            {
                try
                {
                    groupService.Update(model);
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

        public List<SelectListItem> GetForeignData(List<int> selectIdList)
        {
            List<SelectListItem> data = new List<SelectListItem>();
            data = roleService.GetALL().ToList().Select(x => new SelectListItem
            {
                Text = x.Name,
                Value = x.ID.ToString(),
                Selected = selectIdList.Contains(x.ID)
            }).ToList();
            return data;
        }

        public List<SelectListItem> GetForeignData()
        {
            return GetForeignData(new List<int>());
        }

        #endregion
    }
}
