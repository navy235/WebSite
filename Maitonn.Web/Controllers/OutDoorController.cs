using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;

using Maitonn.Core;
namespace Maitonn.Web
{
    [BaseAuthorize]
    public class OutDoorController : Controller
    {
        //
        // GET: /Login/

        //
        // GET: /Register/

        private IMemberService memberService;
        private IEmailService emailService;
        private IMember_ActionService member_ActionService;
        private IAreaAttService areaAttService;
        private IOutDoorService outDoorService;
        private IAuctionCalendarService auctionCalendarService;
        public OutDoorController(
            IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , IAreaAttService _areaAttService
            , IOutDoorService _outDoorService
            , IAuctionCalendarService _auctionCalendarService
            )
        {

            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            areaAttService = _areaAttService;
            outDoorService = _outDoorService;
            auctionCalendarService = _auctionCalendarService;
        }

        public ActionResult Index()
        {
            ViewBag.MenuItem = "outdoor-list";

            return View();
        }


        public ActionResult OutDoor_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            var model = outDoorService.GetMemberOutDoor(memberID, OutDoorStatus.ShowOnline, true);
            return Json(model.ToDataSourceResult(request));
        }

        public ActionResult Preverify()
        {
            ViewBag.MenuItem = "outdoor-preverify";
            return View();
        }


        public ActionResult OutDoor_Preverify([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            var model = outDoorService.GetMemberOutDoor(memberID, OutDoorStatus.PreVerify);
            return Json(model.ToDataSourceResult(request));
        }

        public ActionResult VerifyFailed()
        {
            ViewBag.MenuItem = "outdoor-verifyfailed";
            return View();
        }

        public ActionResult OutDoor_VerifyFailed([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            var model = outDoorService.GetMemberOutDoor(memberID, OutDoorStatus.VerifyFailed);
            return Json(model.ToDataSourceResult(request));
        }


        public ActionResult Delete()
        {
            ViewBag.MenuItem = "outdoor-delete";
            return View();
        }



        public ActionResult OutDoor_Delete([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            var model = outDoorService.GetMemberOutDoor(memberID, OutDoorStatus.Deleted);
            return Json(model.ToDataSourceResult(request));
        }

        public ActionResult NotShow()
        {
            ViewBag.MenuItem = "outdoor-notshow";
            return View();
        }

        #region Set OutDoorStatus

        [HttpPost]
        public ActionResult SetNotShow(string ids)
        {
            var success = outDoorService.ChangeStatus(ids,
                OutDoorStatus.NoShow);
            return Json(success);
        }

        [HttpPost]
        public ActionResult SetDelete(string ids)
        {
            var success = outDoorService.ChangeStatus(ids,
             OutDoorStatus.Deleted);
            return Json(success);
        }

        [HttpPost]
        public ActionResult SetShow(string ids)
        {

            var success = outDoorService.ChangeStatus(ids,
             OutDoorStatus.ShowOnline);
            return Json(success);
        }

        #endregion

        public ActionResult OutDoor_NoShow([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            var model = outDoorService.GetMemberOutDoor(memberID, OutDoorStatus.NoShow);
            return Json(model.ToDataSourceResult(request));
        }


        public ActionResult Add()
        {
            ViewBag.MenuItem = "outdoor-publish";
            ViewBag.Data_AreaAtt = areaAttService.GetSelectList();
            return View(new OutDoorViewModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(OutDoorViewModel model)
        {
            ViewBag.MenuItem = "outdoor-publish";
            ServiceResult result = new ServiceResult();
            var AreaAttArray = new List<int>();
            if (!ModelState.IsValid)
            {
                result.Message = "请检查表单是否填写完整！";
                result.AddServiceError("请检查表单是否填写完整！");
            }
            else
            {
                try
                {
                    AreaAttArray = model.AreaAtt.Split(',').Select(x => Convert.ToInt32(x)).ToList();
                    for (var i = 0; i < 100; i++)
                    {
                        outDoorService.Create(model);
                    }
                    result.Message = "添加户外成功！";
                    TempData["Service_Result"] = result;
                    return RedirectToAction("preverify");

                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }

            }
            ViewBag.Data_AreaAtt = areaAttService.GetSelectList(AreaAttArray);
            return View(model);
        }


        public ActionResult Edit(int id)
        {
            ViewBag.MenuItem = "outdoor-list";
            if (outDoorService.HasOutDoorByMember(id))
            {
                OutDoorViewModel odv = outDoorService.GetOutDoorViewModel(id);
                ViewBag.Data_AreaAtt = areaAttService.GetSelectList(odv.AreaAtt.Split(',').Select(x => Convert.ToInt32(x)));
                return View(odv);
            }
            else
            {
                return Content("<script>alert('非法操作！');window.history.go(-1);</script>");
            }

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(OutDoorViewModel model)
        {
            ViewBag.MenuItem = "outdoor-list";
            var AreaAttArray = new List<int>();
            ServiceResult result = new ServiceResult();
            if (!ModelState.IsValid)
            {
                result.Message = "请检查表单是否填写完整！";
                result.AddServiceError("请检查表单是否填写完整！");
            }
            else
            {
                try
                {
                    AreaAttArray = model.AreaAtt.Split(',').Select(x => Convert.ToInt32(x)).ToList();
                    outDoorService.Update(model);
                    result.Message = "编辑户外成功！";
                    TempData["Service_Result"] = result;
                    return RedirectToAction("preverify");
                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }

            }
            ViewBag.Data_AreaAtt = areaAttService.GetSelectList(AreaAttArray);
            return View(model);
        }





        public ActionResult SetAuctionCalendar(int id)
        {
            ViewBag.MenuItem = "outdoor-list";
            if (outDoorService.HasOutDoorByMember(id))
            {
                OutDoorSetAuctionCalendarViewModel model = outDoorService.GetOutDoorSetAuctionCalendarViewModel(id);
                return View(model);
            }
            else
            {
                return Content("<script>alert('非法操作！');window.history.go(-1);</script>");
            }

        }
        public ActionResult GetAuctionCalendar(int id)
        {
            List<AuctionCalendarViewModel> data = new List<AuctionCalendarViewModel>();
            var query = auctionCalendarService.GetALL(id).ToList();
            foreach (var item in query)
            {
                data.AddRange(GetAuctionCalendarViewModel(item));
            }
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddAuctionCalendar(int id, string startTime, string endTime)
        {
            List<AuctionCalendarViewModel> data = new List<AuctionCalendarViewModel>();
            DateTime _startTime = Convert.ToDateTime(startTime);
            DateTime _endtime = Convert.ToDateTime(endTime);
            AuctionCalendar model = new AuctionCalendar();
            if (auctionCalendarService.ValidateAuction(id, _startTime, _endtime))
            {
                model = new AuctionCalendar()
                  {
                      MediaID = id,
                      StartTime = _startTime,
                      EndTime = _endtime
                  };
                auctionCalendarService.Create(model);
            }
            data.AddRange(GetAuctionCalendarViewModel(model));
            return Json(data);
        }

        [HttpPost]
        public ActionResult DeleteAuctionCalendar(int mediaid, int id)
        {
            bool result = false;
            if (outDoorService.HasOutDoorByMember(mediaid))
            {
                auctionCalendarService.Delete(id);
                result = true;
            }
            return Json(result);
        }

        public List<AuctionCalendarViewModel> GetAuctionCalendarViewModel(AuctionCalendar model)
        {
            List<AuctionCalendarViewModel> data = new List<AuctionCalendarViewModel>();
            bool hasTwo = false;
            var CurrentYear = DateTime.Now.Year;
            var currentYearFirtDay = new DateTime(CurrentYear, 1, 1);
            var NextYear = DateTime.Now.Year + 1;
            var nextYearFirtDay = new DateTime(NextYear, 1, 1);
            if (model.StartTime < currentYearFirtDay)
            {
                model.StartTime = currentYearFirtDay;
            }
            if (model.StartTime.Year != model.EndTime.Year)
            {
                hasTwo = true;
            }
            if (!hasTwo)
            {
                AuctionCalendarViewModel item = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = (model.EndTime < nextYearFirtDay)
                };
                if (item.Top)
                {
                    item.Left = (model.StartTime - currentYearFirtDay).Days;
                    item.Width = (model.EndTime - model.StartTime).Days;
                }
                else
                {
                    item.Left = (model.StartTime - nextYearFirtDay).Days;
                    item.Width = (model.EndTime - model.StartTime).Days;
                }
                data.Add(item);
            }
            else
            {

                AuctionCalendarViewModel item1 = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = true,
                    HasTwo = true,
                    Left = (model.StartTime - currentYearFirtDay).Days,
                    ShowLeft = true,
                    Width = (new DateTime(CurrentYear, 12, 30) - model.StartTime).Days
                };

                AuctionCalendarViewModel item2 = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = false,
                    HasTwo = true,
                    ShowLeft = false,
                    Left = 0,
                    Width = (model.EndTime - new DateTime(NextYear, 1, 1)).Days
                };
                data.Add(item1);
                data.Add(item2);
            }

            return data;

        }




    }
}
