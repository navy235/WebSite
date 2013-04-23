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
        public GztvipController(
            IMemberService _memberService
            , IMember_ActionService _member_ActionService
            , IMember_MessageService _member_MessageService
            , ISys_MessageService _sys_MessageService
            , IMember_VIPService _member_VIPService
            , IMember_MoneyService _member_MoneyService
            )
        {
            memberService = _memberService;
            member_ActionService = _member_ActionService;
            member_MessageService = _member_MessageService;
            sys_MessageService = _sys_MessageService;
            member_VIPService = _member_VIPService;
            member_MoneyService = _member_MoneyService;
        }

        public ActionResult Index()
        {
            return View();
        }

    }
}
