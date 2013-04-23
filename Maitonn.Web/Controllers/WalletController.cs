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
    public class WalletController : Controller
    {
        private IMemberService memberService;
        private IMember_Money_ListService member_Money_ListService;
        private IMember_MoneyService member_MoneyService;
        public WalletController(
            IMemberService _memberService
            , IMember_Money_ListService _member_Money_ListService
            , IMember_MoneyService _member_MoneyService
            )
        {
            memberService = _memberService;
            member_Money_ListService = _member_Money_ListService;
            member_MoneyService = _member_MoneyService;
        }


        public ActionResult Index()
        {
            ViewBag.MenuItem = "wallet-list";

            return View();
        }

        public ActionResult Wallet_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;

            var model = member_Money_ListService.GetMemberMoneyList(memberID, IsAdd: false);

            return Json(model.ToDataSourceResult(request));
        }

        public ActionResult Gain()
        {
            ViewBag.MenuItem = "wallet-gain";
            return View();
        }

        public ActionResult WalletGain_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;

            var model = member_Money_ListService.GetMemberMoneyList(memberID, IsAdd: true);

            return Json(model.ToDataSourceResult(request));
        }

    }
}
