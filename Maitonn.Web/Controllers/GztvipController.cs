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

namespace Maitonn.Web.Controllers
{
    [BaseAuthorize]
    public class GztvipController : Controller
    {
        //
        // GET: /Gztvip/
        private IMemberService memberService;
        private IMember_ActionService member_ActionService;
        private IMember_MessageService member_MessageService;
        private ISys_MessageService sys_MessageService;
        private IMember_VIPService member_VIPService;
        private IMember_MoneyService member_MoneyService;
        private IPayListService payListService;
        private IServerItemService serverItemService;
        public GztvipController(
            IMemberService _memberService
            , IMember_ActionService _member_ActionService
            , IMember_MessageService _member_MessageService
            , ISys_MessageService _sys_MessageService
            , IMember_VIPService _member_VIPService
            , IMember_MoneyService _member_MoneyService
            , IPayListService _payListService
            , IServerItemService _serverItemService
            )
        {
            memberService = _memberService;
            member_ActionService = _member_ActionService;
            member_MessageService = _member_MessageService;
            sys_MessageService = _sys_MessageService;
            member_VIPService = _member_VIPService;
            member_MoneyService = _member_MoneyService;
            payListService = _payListService;
            serverItemService = _serverItemService;
        }

        public ActionResult Index()
        {
            ViewBag.MenuItem = "gztvip-index";
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            var serverType = (int)ServerType.NomarlVIPServer;
            if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
            {
                serverType = vip.VipLevel;
                var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);
                ViewBag.Money = money;
            }
            var servers = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType >= serverType).OrderBy(x => x.AddTime).ToList();
            ViewBag.Servers = servers;
            return View(vip);
        }

        public ActionResult Open(int id)
        {
            ViewBag.MenuItem = "gztvip-open";
            var serverType = (int)ServerType.NomarlVIPServer;
            var server = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType >= serverType && x.ID == id).FirstOrDefault();
            if (server == null)
            {
                return HttpNotFound();
            }

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
            {
                var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

                ViewBag.Money = money;

                if (server.ServerType < vip.VipLevel)
                {
                    return Content("<script>alert('您当前的版本的广知通权益比所选择的要高请选择更高的权益版本的广知通升级!');window.top.location='" + Url.Action("Index") + "';</script>");
                }
                else if (server.ServerType == vip.VipLevel)
                {
                    ViewBag.Renew = true;
                    server.Money = server.Month * 10;
                }
                else
                {
                    ViewBag.Upgrade = true;
                    var day = UIHelper.DateDiff(DateDiffType.Day, DateTime.Now, vip.EndTime);
                    server.Money = day * 2;
                }
            }
            else
            {
                if (vip != null)
                {
                    ViewBag.Renew = true;
                    server.Money = server.Month * 10;
                }
                else
                {
                    ViewBag.FirstTime = true;
                    server.Money = server.Month * 5;
                }
            }
            ViewBag.Server = server;


            return View(vip);
        }

        [HttpPost]

        public ActionResult Open(int ID, int Price)
        {
            ServiceResult result = new ServiceResult();
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            var server = serverItemService.Find(ID);
            try
            {
                if (server == null)
                {
                    return Content("<script>alert('您提交的表单有误!');window.top.location='" + Url.Action("Index") + "';</script>");
                }

                PayList orderItem = new PayList();
                orderItem.Pay_No = Guid.NewGuid();
                orderItem.MemberID = CookieHelper.MemberID;
                orderItem.Money = server.Price;
                orderItem.ServerID = ID;
                orderItem.Mode = "VIPTest";
                orderItem.ProductType = UIHelper.ServerTypeList.Single(x => x.Value == server.ServerType.ToString()).Text;
                orderItem.Status = Pay_State.Applying.ToString();
                orderItem.AddTime = DateTime.Now;
                orderItem.AddIP = HttpHelper.IP;
                payListService.CreateOrder(orderItem);

                result = member_VIPService.PayVIP(CookieHelper.MemberID, server, orderItem);
               
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }

            result.Message = "VIP开通" + (result.Success ? "成功！" : "失败！");
            TempData["Service_Result"] = result;
            ViewBag.Server = server;
            return View(vip);

        }

        public ActionResult OpenOK()
        {
            return View();
        }

        public ActionResult CreateOrder()
        {
            PayList orderItem = new PayList();
            orderItem.Pay_No = Guid.NewGuid();
            orderItem.MemberID = CookieHelper.MemberID;
            orderItem.Money = 800;
            orderItem.VMoney = 200;
            orderItem.Mode = "VIPTest";
            orderItem.ProductType = "VIP1";
            orderItem.Status = Pay_State.Applying.ToString();
            orderItem.AddTime = DateTime.Now;
            orderItem.AddIP = HttpHelper.IP;
            payListService.CreateOrder(orderItem);
            ViewBag.PayNo = orderItem.Pay_No;
            return View();
        }

        public ActionResult UpdateOrder()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UpdateOrder(string Pay_No)
        {
            PayStatusViewModel PayStatus = new PayStatusViewModel();
            PayStatus.Pay_No = Pay_No;
            PayStatus.Buy_Email = CookieHelper.Email;
            PayStatus.Buy_ID = CookieHelper.UID;
            PayStatus.Trade_No = "29038423784523849573247856";
            PayStatus.Status = Pay_State.ApplyOk.ToString();
            payListService.UpdateOrder(PayStatus);
            return View();
        }

    }
}
