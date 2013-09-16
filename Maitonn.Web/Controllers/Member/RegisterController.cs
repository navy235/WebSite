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
        private IMember_MoneyService member_MoneySerivce;
        private IMember_CreditIndexService member_CreditIndexService;
        public RegisterController(IUnitOfWork _DB_Service
            , IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , ICompanyService _companyService
            , IMember_MoneyService _member_MoneySerivce
            , IMember_CreditIndexService _member_CreditIndexService)
        {
            DB_Service = _DB_Service;
            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            companyService = _companyService;
            member_MoneySerivce = _member_MoneySerivce;
            member_CreditIndexService = _member_CreditIndexService;
        }

        #region 普通注册


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

                    //首次注册奖励2个币
                    member_MoneySerivce.AddMoney(mb.MemberID, 2, "0002");

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

                    member_MoneySerivce.AddMoney(mb.MemberID, 2, "0002");

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
            else
            {
                return Redirect(Url.Action("baseinfo", "personal"));
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

                    member_MoneySerivce.AddMoney(memberID, 2, "0005");

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

        #endregion


        #region 企业注册

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
                        CityCode = model.CityCode,
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

                    member_MoneySerivce.AddMoney(mb.MemberID, 4, "0006");

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


        #region 企业注册认证信息填写

        [BaseAuthorize]
        public ActionResult RegAuth()
        {

            Member member = memberService.Find(CookieHelper.MemberID);

            if (member.Status >= (int)MemberStatus.CompanyAuth)
            {
                return Content("<script>alert('您的企业已经认证通过了!');window.top.location='" + Url.Action("index", "personal") + "';</script>");
            }
            else
            {
                if (member.Status >= (int)MemberStatus.EmailActived)
                {
                    return Redirect(Url.Action("OpenBiz"));
                }

                Company cpy = companyService.Find(CookieHelper.MemberID);

                if (cpy == null)
                {
                    return Content("<script>alert('请先填写企业基本信息然后再填写认证信息!');window.top.location='" + Url.Action("openbiz") + "';</script>");
                }
                else
                {
                    if (cpy.Status > (int)CompanyStatus.Default)
                    {
                        return View(new BizAuthModel()
                        {
                            MemberID = CookieHelper.MemberID,
                            CompanyImg = cpy.CompanyImg.ImgUrls,
                            LinManImg = cpy.LinkManImg.ImgUrls,
                            Logo = cpy.CompanyLogoImg.FocusImgUrl
                        });
                    }
                    else
                    {
                        return View(new BizAuthModel());
                    }
                }
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegAuth(BizAuthModel model)
        {

            Member member = memberService.Find(CookieHelper.MemberID);

            if (member.Status >= (int)MemberStatus.CompanyAuth)
            {
                return Content("<script>alert('您的企业已经认证通过了!');window.top.location='" + Url.Action("index", "personal") + "';</script>");
            }
            else
            {
                if (member.Status >= (int)MemberStatus.EmailActived)
                {
                    return Redirect(Url.Action("OpenBiz"));
                }

                Company cpy = companyService.Find(CookieHelper.MemberID);

                if (cpy == null)
                {
                    return Content("<script>alert('请先填写企业基本信息然后再填写认证信息!');window.top.location='" + Url.Action("openbiz") + "';</script>");
                }
                else
                {


                    ServiceResult result = new ServiceResult();

                    if (ModelState.IsValid)
                    {
                        if (cpy.Status > (int)CompanyStatus.Default)
                        {
                            result = companyService.UpdateCompanyAuthInfo(CookieHelper.MemberID, model);
                        }
                        else
                        {
                            result = companyService.CreateCompanyAuthInfo(CookieHelper.MemberID, model);
                        }

                        if (result.Success)
                        {
                            return Redirect(Url.Action("BizActiveEmail"));
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
            }

        }

        #endregion


        #endregion


        #region 普通用户企业入驻

        [BaseAuthorize]
        public ActionResult OpenBiz()
        {
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.EmailActived)
            {
                return Content("<script>alert('您的邮箱还未绑定，请先绑定邮箱再进行企业认证!');window.top.location='" + Url.Action("activeemail") + "';</script>");
            }
            else
            {
                if (member.Status >= (int)MemberStatus.CompanyAuth)
                {
                    return Content("<script>alert('您的企业已经认证通过了!');window.top.location='" + Url.Action("index", "personal") + "';</script>");
                }
                else
                {
                    var company = companyService.IncludeFind(member.MemberID);

                    if (company == null)
                    {
                        return View(new OpenBizModel());
                    }
                    else
                    {

                        var model = new OpenBizModel()
                         {
                             Address = company.Address,
                             BussinessCode = company.BussinessCode,
                             CityCode = company.CityCode,
                             Description = company.Description,
                             FundCode = company.FundCode,
                             LinkMan = company.LinkMan,
                             Mobile = company.Mobile,
                             Name = company.Name,
                             Phone = company.Phone,
                             Position = company.Lat + "|" + company.Lng,
                             ScaleCode = company.ScaleCode,
                             Sex = company.Sex

                         };
                        if (company.LinkManImg != null)
                        {
                            model.LinManImg = company.LinkManImg.ImgUrls;
                        }
                        if (company.CompanyImg != null)
                        {
                            model.CompanyImg = company.CompanyImg.ImgUrls;
                        }
                        if (company.CompanyLogoImg != null)
                        {
                            model.Logo = company.CompanyLogoImg.FocusImgUrl;
                        }
                        return View(model);
                    }
                }
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [BaseAuthorize]
        public ActionResult OpenBiz(OpenBizModel model)
        {
            if (ModelState.IsValid)
            {
                #region 企业入驻
                try
                {
                    Member member = memberService.Find(CookieHelper.MemberID);

                    if (member.Status < (int)MemberStatus.EmailActived)
                    {
                        return Content("<script>alert('您的邮箱还未绑定，请先绑定邮箱再进行企业认证!');window.top.location='" + Url.Action("activeemail") + "';</script>");
                    }
                    else
                    {
                        if (member.Status >= (int)MemberStatus.CompanyAuth)
                        {
                            return Content("<script>alert('您的企业已经认证通过了!');window.top.location='" + Url.Action("index", "personal") + "';</script>");
                        }
                        else
                        {
                            var company = companyService.IncludeFind(member.MemberID);

                            if (company == null)
                            {
                                CompanyReg reg = new CompanyReg()
                                {
                                    Address = model.Address,
                                    BussinessCode = model.BussinessCode,
                                    CityCode = model.CityCode,
                                    Description = model.Description,
                                    FundCode = model.FundCode,
                                    LinkMan = model.LinkMan,
                                    Mobile = model.Mobile,
                                    Name = model.Name,
                                    Phone = model.Phone,
                                    Position = model.Position,
                                    ScaleCode = model.ScaleCode,
                                    Sex = model.Sex,
                                    CompanyImg = model.CompanyImg,
                                    LinManImg = model.LinManImg,
                                    Logo = model.Logo
                                };
                                companyService.Create(reg);
                            }
                            else
                            {
                                CompanyReg reg = new CompanyReg()
                                {
                                    Address = model.Address,
                                    BussinessCode = model.BussinessCode,
                                    CityCode = model.CityCode,
                                    Description = model.Description,
                                    FundCode = model.FundCode,
                                    LinkMan = model.LinkMan,
                                    Mobile = model.Mobile,
                                    Name = model.Name,
                                    Phone = model.Phone,
                                    Position = model.Position,
                                    ScaleCode = model.ScaleCode,
                                    Sex = model.Sex,
                                    CompanyImg = model.CompanyImg,
                                    LinManImg = model.LinManImg,
                                    Logo = model.Logo,
                                    Fax = company.Fax,
                                    MSN = company.MSN,
                                    QQ = company.QQ
                                };

                                companyService.Update(reg);
                            }
                        }
                    }

                    //memberService.SetLoginCookie(mb);
                    return Redirect(Url.Action("bizOk"));

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
        public ActionResult BizOk()
        {
            Member member = memberService.Find(CookieHelper.MemberID);

            if (member.Status < (int)MemberStatus.EmailActived)
            {
                return Content("<script>alert('您的邮箱还未绑定，请先绑定邮箱再进行企业认证!');window.top.location='" + Url.Action("activeemail") + "';</script>");
            }
            else
            {
                if (member.Status >= (int)MemberStatus.CompanyAuth)
                {
                    return Content("<script>alert('您的企业已经认证通过了!');window.top.location='" + Url.Action("index", "personal") + "';</script>");
                }
                else
                {
                    var company = companyService.IncludeFind(member.MemberID);
                    if (company == null)
                    {
                        return Redirect(Url.Action("OpenBiz"));
                    }
                    else
                    {
                        return View();
                    }
                }

            }
        }

        #endregion


        [BaseAuthorize]
        public ActionResult BizActiveEmail()
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

                    EmailModel em = emailService.GetBizActiveEmailMail(member.MemberID, member.Email,
                        member.NickName,
                        emailKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, actionEmailActive, emailKey);
                }
            }
            else
            {
                return Content("<script>alert('您的邮箱已经绑定，请勿重复绑定!');window.top.location='" + Url.Action("activeok") + "';</script>");
            }

            return View();
        }


        [BaseAuthorize]
        public ActionResult ActiveOk()
        {
            Member member = memberService.Find(CookieHelper.MemberID);

            if (member.Status < (int)MemberStatus.EmailActived)
            {
                return Content("<script>alert('您的邮箱还未绑定，请先绑定邮箱再进行企业认证!');window.top.location='" + Url.Action("activeemail") + "';</script>");
            }

            return View();
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

                    EmailModel em = emailService.GetBizActiveEmailMail(member.MemberID, member.Email,
                        member.NickName,
                        emailKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, actionEmailActive, emailKey);
                }
            }
            else
            {
                return Content("<script>alert('您的邮箱已经绑定，请勿重复绑定!');window.top.location='" + Url.Action("index", "home") + "';</script>");
            }
            return View();
        }


        public ActionResult EmailActive(string email, string emailKey)
        {
            if (string.IsNullOrEmpty(emailKey) || !memberService.ExistsEmail(email))
            {
                return Content("<script>alert('非法提交!');window.top.location='/" + Url.Action("index", "home") + "';</script>");
            }
            else
            {
                int limitHours = Convert.ToInt32(ConfigSetting.ActiveEmailTimeDiffHour);

                bool isFound = false;

                int emailActived = (int)MemberStatus.EmailActived;

                Member member = memberService.FindDescriptionMemberInLimitTime(emailKey, limitHours, out isFound);

                if (isFound)
                {
                    if (member.Status >= emailActived)
                    {
                        return Content("<script>alert('您的邮箱已经绑定，请勿重复绑定!');window.top.location='" + Url.Action("index", "home") + "';</script>");
                    }
                    else
                    {
                        if (member.Status < (int)MemberStatus.Registered)
                        {
                            return Content("<script>alert('您的帐号由于非法操作已经被锁定!');window.top.location='" + Url.Action("index", "home") + "';</script>");
                        }
                        else
                        {
                            var company = companyService.Find(member.MemberID);

                            if (company != null && company.Status > (int)CompanyStatus.Default)
                            {
                                emailActived = (int)MemberStatus.CompanyApply;
                            }

                            memberService.ActiveEmail(member, emailActived);

                            member_MoneySerivce.AddMoney(member.MemberID, 3, "0003");

                            member_CreditIndexService.AddCreditIndex(member.MemberID, 3, "0001");

                            return Redirect(Url.Action("ActiveOk"));
                        }
                    }
                }
                else
                {
                    return Content("<script>alert('您的验证已过期或非法提交，请重新获取绑定邮件!');window.location='" + Url.Action("activeemail") + "';</script>");
                }

            }
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
                    return Content("<script>alert('您所使用的邮箱刚获取过绑定邮件，请到您的邮箱收取邮件!');window.top.location='" + Url.Action("activeemail") + "';</script>");
                }
                else
                {
                    string emailKey = Guid.NewGuid().ToString();

                    EmailModel em = emailService.GetBizActiveEmailMail(member.MemberID, member.Email,
                        member.NickName,
                        emailKey);
                    emailService.SendMail(em);

                    member_ActionService.Create(member, actionEmailActive, emailKey);



                    return Content("<script>alert('绑定邮件已经发送到您的邮箱，请在" + ConfigSetting.ActiveEmailTimeDiffHour + "小时内进行绑定');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
                }
            }
            else
            {
                return Content("<script>alert('您的邮箱已经绑定，请勿重复绑定!');window.top.location='" + Url.Action("bindemail", "personal") + "';</script>");
            }
        }


        #region 重置密码

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

        #endregion
    }
}
