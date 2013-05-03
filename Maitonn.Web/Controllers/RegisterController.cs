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
        private ICompanyService companyService;
        public RegisterController(IUnitOfWork _DB_Service
            , IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , ICompanyService _companyService)
        {
            DB_Service = _DB_Service;
            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            companyService = _companyService;
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
                    return Redirect(Url.Action("regok"));

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

        public ActionResult RegBiz()
        {
            return View(new RegBizModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegBiz(RegBizModel model)
        {
            if (ModelState.IsValid)
            {
                #region 注册用户并登录
                try
                {
                    RegisterModel rm = new RegisterModel()
                    {
                        Email = model.Email,
                        NickName = model.NickName,
                        Password = model.Password
                    };

                    Member mb = memberService.Create(rm);

                    memberService.SetLoginCookie(mb);

                    ProfileModel pm = new ProfileModel()
                    {
                        CityCode = model.CityCode,
                        Borthday = DateTime.Now,
                        NickName = mb.NickName,
                        RealName = model.LinkMan,
                        Sex = model.Sex
                    };

                    memberService.SaveMemberBaseInfo(mb.MemberID, pm);

                    ContactModel cm = new ContactModel()
                    {
                        Address = model.Address,
                        Email = model.Email,
                        Mobile = model.Mobile,
                        Phone = model.Phone,
                        Position = model.Position
                    };

                    memberService.SaveMemberContact(mb.MemberID, cm);

                    CompanyReg cr = new CompanyReg()
                    {
                        Address = model.Address,
                        BussinessCode = model.BussinessCode,
                        CityCode = model.BussinessCode,
                        Description = model.Description,
                        FundCode = model.FundCode,
                        LinkMan = model.LinkMan,
                        Mobile = model.Mobile,
                        Name = model.Name,
                        Phone = model.Phone,
                        Position = model.Position,
                        ScaleCode = model.ScaleCode,
                        Sex = model.Sex
                    };

                    companyService.SaveBasInfo(mb.MemberID, cr);

                    //memberService.SetLoginCookie(mb);
                    return Redirect(Url.Action("regauth"));

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


        [BaseAuthorize]
        public ActionResult RegAuth()
        {
            Company cpy = companyService.Find(CookieHelper.MemberID);
            if (cpy == null)
            {
                return Content("<script>alert('您的邮箱已经激活，请勿重复激活!');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
            }

            return View(new BizAuthModel()
            {
                MemberID = CookieHelper.MemberID
            });
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegAuth(BizAuthModel model)
        {

            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                result = companyService.SaveCompanyAuthInfo(CookieHelper.MemberID, model);
                if (result.Success)
                {
                    return Redirect(Url.Action("activeemail"));
                }
                else
                {
                    return View(model);
                }
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
                    return Redirect(Url.Action("regok"));

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


        [BaseAuthorize]
        public ActionResult RegOk()
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            Member member = memberService.FindMemberWithProfile(memberID);
            if (member.Member_Profile == null)
            {
                member.Member_Profile = new Member_Profile();
            }
            ProfileModel pm = new ProfileModel()
            {
                MemberID = member.MemberID,
                Borthday = member.Member_Profile.Borthday,
                Description = member.Member_Profile.Description,
                NickName = member.NickName,
                RealName = member.Member_Profile.RealName,
                CityCode = member.Member_Profile.CityCode,
                Sex = member.Member_Profile.Sex
            };
            return View(pm);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegOk(ProfileModel model)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    var memberID = Convert.ToInt32(CookieHelper.UID);
                    memberService.SaveMemberBaseInfo(memberID, model);
                    return Redirect(Url.Action("activeemail"));
                }
                catch (Exception ex)
                {
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }
        }

        [BaseAuthorize]
        public ActionResult ActiveEmail()
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            Member member = memberService.Find(memberID);
            ViewBag.Email = member.Email;
            if (member.Status <= (int)MemberStatus.Registered)
            {
                int actionEmailActive = (int)MemberActionType.EmailActvie;
                int limitMins = Convert.ToInt32(ConfigSetting.GetBindEmailTimeDiffMin);

                if (!member_ActionService.HasActionByActionTypeInLimiteTime(memberID, actionEmailActive, limitMins))
                {
                    string emailKey = Guid.NewGuid().ToString();

                    EmailModel em = emailService.GetActiveEmailMail(member.MemberID, member.Email,
                        member.NickName,
                        emailKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, actionEmailActive, emailKey);
                }
            }
            else
            {
                return Content("<script>alert('您的邮箱已经激活，请勿重复激活!');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
            }
            return View();
        }

        [BaseAuthorize]
        public ActionResult GetActiveEmail()
        {
            var memberID = Convert.ToInt32(CookieHelper.UID);
            Member member = memberService.Find(memberID);
            if (member.Status <= (int)MemberStatus.Registered)
            {
                int actionEmailActive = (int)MemberActionType.EmailActvie;
                int limitMins = Convert.ToInt32(ConfigSetting.GetBindEmailTimeDiffMin);
                if (member_ActionService.HasActionByActionTypeInLimiteTime(memberID, actionEmailActive, limitMins))
                {
                    return Content("<script>alert('您所使用的邮箱刚获取过激活邮件，请到您的邮箱收取邮件!');window.top.location='" + Url.Action("activeemail") + "';</script>");
                }
                else
                {
                    string emailKey = Guid.NewGuid().ToString();

                    EmailModel em = emailService.GetActiveEmailMail(member.MemberID, member.Email,
                        member.NickName,
                        emailKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, actionEmailActive, emailKey);
                    return Content("<script>alert('绑定邮件已经发送到您的邮箱，请在" + ConfigSetting.ActiveEmailTimeDiffHour + "小时内进行绑定');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
                }
            }
            else
            {
                return Content("<script>alert('您的邮箱已经激活，请勿重复激活!');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
            }
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
