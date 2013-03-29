using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [Permission]
    public class MemberController : Controller
    {
        //

        private IMemberService memberService;
        private IGroupService groupService;
        public MemberController(
          IMemberService _memberService
            , IGroupService _groupService)
        {
            memberService = _memberService;
            groupService = _groupService;
        }


        #region KendoGrid Action
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var members = memberService.GetKendoAll().ToList();
            return Json(members.ToDataSourceResult(request));
        }

        #endregion

        //#region Create Edit
        public ActionResult Create()
        {
            var groups = GetForeignData();
            ViewBag.Data_GroupID = groups;
            return View(new DetailsModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(DetailsModel model)
        {
            var groups = GetForeignData();
            ViewBag.Data_GroupID = groups;

            if (ModelState.IsValid)
            {
                try
                {
                    memberService.Create(model);
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

            EditModel model = new EditModel();
            Member member = memberService.FindMemberWithProfile(id);
            model.MemberID = member.MemberID;
            model.Email = member.Email;
            model.NickName = member.NickName;
            model.GroupID = member.GroupID;
            model.AvtarUrl = member.AvtarUrl;
            model.CityCode = member.Member_Profile.CityCode;
            model.Sex = member.Member_Profile.Sex;
            model.Borthday = member.Member_Profile.Borthday;
            model.Description = member.Member_Profile.Description;
            List<int> GroupList = new List<int>();
            GroupList.Add(model.GroupID);
            ViewBag.Data_GroupID = GetForeignData(GroupList);
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(EditModel model)
        {

            List<int> GroupList = new List<int>();
            GroupList.Add(model.GroupID);
            var groups = GetForeignData(GroupList);
            ViewBag.Data_GroupID = groups;
            if (ModelState.IsValid)
            {
                try
                {
                    memberService.Update(model);
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
            data = groupService.GetALL().ToList().Select(x => new SelectListItem
            {
                Text = x.Name,
                Value = x.GroupID.ToString(),
                Selected = selectIdList.Contains(x.GroupID)
            }).ToList();
            return data;
        }

        public List<SelectListItem> GetForeignData()
        {
            return GetForeignData(new List<int>());
        }

        //#endregion

    }
}
