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
    public class MessageController : Controller
    {
        //
        // GET: /Login/

        //
        // GET: /Register/

        private IMemberService memberService;
        private IMember_ActionService member_ActionService;
        private IMember_MessageService member_MessageService;
        private ISys_MessageService sys_MessageService;
        public MessageController(
            IMemberService _memberService
            , IMember_ActionService _member_ActionService
            , IMember_MessageService _member_MessageService
            , ISys_MessageService _sys_MessageService
            )
        {
            memberService = _memberService;
            member_ActionService = _member_ActionService;
            member_MessageService = _member_MessageService;
            sys_MessageService = _sys_MessageService;
        }


        #region 系统信息处理

        public ActionResult Index()
        {
            ViewBag.MenuItem = "message-list";
            return View();
        }


        public ActionResult SysMessage_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;
            var model = sys_MessageService.GetMemberMessage(memberID, Sys_MessageStatus.Show, true);
            return Json(model.ToDataSourceResult(request));
        }



        [HttpPost]
        public ActionResult SysMessageDelete(string ids)
        {
            var result = sys_MessageService.ChangeMessageStatus(ids,
            Sys_MessageStatus.Delete);
            result.Message = "删除留言" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult SysMessageDetails(int ID)
        {
            var Details = sys_MessageService.Find(ID);

            if (Details == null)
            {
                return HttpNotFound();
            }

            return View(new Sys_MessageViewModel()
            {
                ID = Details.ID,
                AddTime = Details.AddTime,
                Content = Details.Content,
                Name = Details.Title
            });
        }


        #endregion

        #region 接收到的留言

        public ActionResult Recive()
        {
            ViewBag.MenuItem = "message-recive";
            return View();
        }


        public ActionResult ReciveMessage_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;
            var model = member_MessageService.GetMemberMessage(memberID, Member_MessageStatus.Show, IsSender: false);
            return Json(model.ToDataSourceResult(request));
        }



        [HttpPost]
        public ActionResult ReciveMessageDelete(string ids)
        {
            var result = member_MessageService.ChangeMessageStatus(ids,
            Member_MessageStatus.Delete, false);
            result.Message = "删除留言" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }


        public ActionResult ReciveMessageDetails(int ID)
        {
            var Details = member_MessageService.Find(ID);

            if (Details == null)
            {
                return HttpNotFound();
            }

            var member = memberService.FindMemberWithProfile(Details.SenderID);

            if (member.Member_Profile == null)
            {
                member.Member_Profile = new Member_Profile();
            }
            return View(new Member_MessageViewModel()
            {
                ID = Details.ID,
                AddTime = Details.AddTime,
                Content = Details.Content,
                MSN = member.Member_Profile.MSN,
                Name = Details.Title,
                NickName = member.NickName,
                Phone = member.Member_Profile.Phone,
                QQ = member.Member_Profile.QQ
            });
        }

        #endregion

        #region  发送出的留言

        public ActionResult Send()
        {
            ViewBag.MenuItem = "message-send";
            return View();
        }

        public ActionResult SendMessage_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;
            var model = member_MessageService.GetMemberMessage(memberID, Member_MessageStatus.Show, IsSender: true);
            return Json(model.ToDataSourceResult(request));
        }

        [HttpPost]
        public ActionResult SendMessageDelete(string ids)
        {
            var result = member_MessageService.ChangeMessageStatus(ids,
            Member_MessageStatus.Delete, true);
            result.Message = "删除留言" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult SendMessageDetails(int ID)
        {
            var Details = member_MessageService.Find(ID);

            if (Details == null)
            {
                return HttpNotFound();
            }

            var member = memberService.FindMemberWithProfile(Details.RecipientID);

            if (member.Member_Profile == null)
            {
                member.Member_Profile = new Member_Profile();
            }

            return View(new Member_MessageViewModel()
            {
                ID = Details.ID,
                AddTime = Details.AddTime,
                Content = Details.Content,
                MSN = member.Member_Profile.MSN,
                Name = Details.Title,
                NickName = member.NickName,
                Phone = member.Member_Profile.Phone,
                QQ = member.Member_Profile.QQ
            });
        }

        #endregion
    }
}
