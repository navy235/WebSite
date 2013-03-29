using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class RegisterController : Controller
    {
        //
        // GET: /Register/
        private IUnitOfWork DB_Service;
        private IMemberService memberService;
        private IEmailService emailService;
        private IMember_ActionService member_ActionService;

        public RegisterController(IUnitOfWork _DB_Service
            , IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService)
        {
            DB_Service = _DB_Service;
            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
        }

        public ActionResult Index()
        {
            return View(new RegisterModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                #region 注册用户并登录
                try
                {
                    Member mb = memberService.Create(model);
                    memberService.SetLoginCookie(mb);
                    return Redirect(Url.Action("Regok"));

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                #endregion
            }
            else
            {
                return View(model);
            }
        }

        public ActionResult RegAuto()
        {
            if (null == Session["registerAuto"])
            {
                return RedirectToAction("Index");
            }
            else
            {
                OpenLoginStatus OpenUser = (OpenLoginStatus)Session["registerAuto"];
                Session["registerAuto"] = null;
                return View(new RegisterModel()
                {
                    OpenType = OpenUser.OpenType,
                    OpenID = OpenUser.OpenId,
                    NickName = OpenUser.NickName
                });
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegAuto(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                #region 注册用户并登录
                try
                {
                    Member mb = memberService.Create(model);
                    memberService.SetLoginCookie(mb);
                    return Redirect(Url.Action("Regok"));

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                #endregion
            }
            else
            {
                return View(model);
            }
        }



        public ActionResult RegOk()
        {
            return View();
        }

        public ActionResult RegCompany()
        {
            return View(new CompanyReg());
        }

        public ActionResult GetPassword()
        {
            ViewBag.SendMail = false;
            return View(new GetPasswordModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GetPassword(GetPasswordModel model)
        {
            if (ModelState.IsValid)
            {
                int memberAction = (int)MemberActionType.GetPassword;
                int limitMin = Convert.ToInt32(ConfigSetting.GetPasswordEmailTimeDiffMin);
                if (memberService.HasGetPasswordActionInLimitTime(model, limitMin, memberAction))
                {
                    ViewBag.SendMail = true;
                    ViewBag.HasSendMail = true;
                    ViewBag.Message = limitMin;
                }
                else
                {
                    Member member = memberService.FindMemberByEmail(model.Email);
                    string userKey = Guid.NewGuid().ToString();

                    EmailModel em = emailService.GetResetPasswordMail(member.MemberID, member.Email, member.NickName, userKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, memberAction, userKey);

                    ViewBag.HasSendMail = false;
                    ViewBag.SendMail = true;
                    ViewBag.Title = "";
                }
                return View(model);

            }
            return View(model);
        }


        public ActionResult ResetPassword(string userKey)
        {
            if (string.IsNullOrEmpty(userKey))
            {
                return Content("<script>alert('非法提交!');window.top.location='/" + Url.Action("GetPassword") + "';</script>");
            }
            else
            {
                int limitHours = Convert.ToInt32(ConfigSetting.ResetPasswordTimeDiffHour);
                if (member_ActionService.HasDescriptionActionInLimiteTime(userKey, limitHours))
                {
                    ViewBag.haveChangePwd = false;
                    return View(new ResetPasswordModel());
                }
                else
                {
                    return Content("<script>alert('您的验证已过期或非法提交，请重新获取密码!');window.location='/" + Url.Action("GetPassword") + "';</script>");
                }
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ResetPassword(string userKey, ResetPasswordModel model)
        {

            if (string.IsNullOrEmpty(userKey))
            {
                return Content("<script>alert('非法提交!');window.top.location='/" + Url.Action("GetPassword") + "';</script>");
            }
            else
            {

                bool isFound;
                Member member = memberService.FindDescriptionMemberInLimitTime(userKey, 12, out isFound);
                if (isFound)
                {
                    if (model.NewPassword.Equals(model.ConfirmPassword, StringComparison.OrdinalIgnoreCase))
                    {
                        memberService.ResetPassword(member, model.NewPassword);
                    }
                    ViewBag.haveChangePwd = true;
                    ViewBag.Email = member.Email;
                    return View(model);
                }
                else
                {
                    return Content("<script>alert('您的验证已过期或非法提交，请重新获取密码!');window.location='/" + Url.Action("GetPassword") + "';</script>");
                }
            }
        }
    }
}
