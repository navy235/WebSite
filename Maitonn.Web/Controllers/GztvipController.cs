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
        public GztvipController(
            IMemberService _memberService
            , IMember_ActionService _member_ActionService
            , IMember_MessageService _member_MessageService
            , ISys_MessageService _sys_MessageService
            , IMember_VIPService _member_VIPService
            , IMember_MoneyService _member_MoneyService
            , IPayListService _payListService
            )
        {
            memberService = _memberService;
            member_ActionService = _member_ActionService;
            member_MessageService = _member_MessageService;
            sys_MessageService = _sys_MessageService;
            member_VIPService = _member_VIPService;
            member_MoneyService = _member_MoneyService;
            payListService = _payListService;
        }

        public ActionResult Index()
        {
            ViewBag.MenuItem = "gztvip-index";
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            return View(vip);
        }

        public ActionResult Open()
        {
            ViewBag.MenuItem = "gztvip-open";
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
