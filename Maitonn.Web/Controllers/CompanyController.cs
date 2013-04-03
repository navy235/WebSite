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
    public class CompanyController : Controller
    {


        private IMemberService memberService;
        private IEmailService emailService;
        private IMember_ActionService member_ActionService;
        private ICompanyService companyService;
        private IAreaAttService areaAttService;
        private IOutDoorService outDoorService;
        public CompanyController(
              IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , ICompanyService _companyService
            , IAreaAttService _areaAttService
            , IOutDoorService _outDoorService)
        {

            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            companyService = _companyService;
            areaAttService = _areaAttService;
            outDoorService = _outDoorService;
        }


        public ActionResult Index()
        {

            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-auto";

            if (UserStatus < (int)MemberStatus.EmailActived)
            {
                return View(new CompanyReg());
            }
            else if (UserStatus == (int)MemberStatus.EmailActived)
            {
                return View(new CompanyReg());
            }

            else if (UserStatus == (int)MemberStatus.CompanyFailed || UserStatus == (int)MemberStatus.CompanyApply || UserStatus == (int)MemberStatus.CompanyAuth)
            {
                Company cpy = companyService.Find(MemberID);
                CompanyReg cpr = new CompanyReg()
                {
                    Address = cpy.Address,
                    BussinessCode = cpy.BussinessCode,
                    CityCode = cpy.CityCode,
                    CompanyImg = cpy.CompanyImg.ImgUrls,
                    Description = cpy.Description,
                    Fax = cpy.Fax,
                    FundCode = cpy.FundCode,
                    LinkMan = cpy.LinkMan,
                    LinManImg = cpy.LinkManImg.ImgUrls,
                    Logo = cpy.CompanyLogoImg.ImgUrls,
                    Mobile = cpy.Mobile,
                    MSN = cpy.MSN,
                    Name = cpy.Name,
                    Phone = cpy.Phone,
                    Position = cpy.Lat + "|" + cpy.Lng,
                    QQ = cpy.QQ,
                    ScaleCode = cpy.ScaleCode,
                    Sex = cpy.Sex

                };
                return View(cpr);
            }
            else
            {
                return View(new CompanyReg());
            }

        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(CompanyReg model)
        {
            ViewBag.MenuItem = "company-auto";
            if (ModelState.IsValid)
            {
                try
                {
                    var memberID = Convert.ToInt32(CookieHelper.UID);
                    if (member_ActionService.HasAction(MemberActionType.CompanyApply))
                    {
                        companyService.Update(model);
                        member_ActionService.Create(MemberActionType.CompanyReApply);
                    }
                    else
                    {
                        companyService.Create(model);
                        member_ActionService.Create(MemberActionType.CompanyApply);
                    }
                    memberService.SaveMemberStatus(memberID, MemberStatus.CompanyApply);
                    return RedirectToAction("index");
                }
                catch (DbEntityValidationException ex)
                {
                    ViewBag.Error = ex.Message;
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }


        }


        public ActionResult BaseInfo()
        {

            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-baseinfo";

            if (UserStatus < (int)MemberStatus.CompanyFailed)
            {
                return View(new CompanyReg());
            }
            else
            {
                Company cpy = companyService.Find(MemberID);
                CompanyReg cpr = new CompanyReg()
                {
                    Address = cpy.Address,
                    BussinessCode = cpy.BussinessCode,
                    CityCode = cpy.CityCode,
                    CompanyImg = cpy.CompanyImg.ImgUrls,
                    Description = cpy.Description,
                    Fax = cpy.Fax,
                    FundCode = cpy.FundCode,
                    LinkMan = cpy.LinkMan,
                    LinManImg = cpy.LinkManImg.ImgUrls,
                    Logo = cpy.CompanyLogoImg.ImgUrls,
                    Mobile = cpy.Mobile,
                    MSN = cpy.MSN,
                    Name = cpy.Name,
                    Phone = cpy.Phone,
                    Position = cpy.Lat + "|" + cpy.Lng,
                    QQ = cpy.QQ,
                    ScaleCode = cpy.ScaleCode,
                    Sex = cpy.Sex
                };
                return View(cpr);
            }
        }


        public ActionResult Logo()
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-logo";
            if (UserStatus < (int)MemberStatus.CompanyFailed)
            {
                return View(new CompanyLogo());
            }
            else
            {
                var companylog = companyService.GetCompanyLogo(MemberID);
                return View(companylog);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Logo(CompanyLogo model)
        {
            ViewBag.MenuItem = "company-logo";
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                try
                {
                    var memberID = Convert.ToInt32(CookieHelper.UID);
                    result = companyService.SaveCompanyLogo(memberID, model);
                    if (result.Success)
                    {
                        result.Message = "企业LOGO保存成功！";
                    }
                    else
                    {
                        result.Message = "企业LOGO保存失败！";
                    }
                    TempData["Service_Result"] = result;
                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);
        }


        public ActionResult Banner()
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-banner";
            if (UserStatus < (int)MemberStatus.CompanyFailed)
            {
                return View(new CompanyBanner());
            }
            else
            {
                var companyBanner = companyService.GetCompanyBanner(MemberID);

                if (companyBanner == null)
                {
                    companyBanner = new CompanyBanner();
                }
                return View(companyBanner);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Banner(CompanyBanner model)
        {
            ViewBag.MenuItem = "company-banner";
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                try
                {
                    var memberID = Convert.ToInt32(CookieHelper.UID);
                    result = companyService.SaveCompanyBanner(memberID, model);
                    if (result.Success)
                    {
                        result.Message = "企业Banner保存成功！";
                    }
                    else
                    {
                        result.Message = "企业Banner保存失败！";
                    }
                    TempData["Service_Result"] = result;
                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);
        }



        public ActionResult Credentials()
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-credentials";
            if (UserStatus < (int)MemberStatus.CompanyFailed)
            {
                return View(new List<CompanyCredentials>());
            }
            else
            {
                var companyCredentials = companyService.GetCompanyCredentials(MemberID);
                if (companyCredentials == null)
                {
                    companyCredentials = new List<CompanyCredentials>();
                }
                return View(companyCredentials);
            }
        }

        [HttpPost]
        public ActionResult DeleteCredentials(int ID)
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            ServiceResult result = new ServiceResult();
            result = companyService.DeleteCompanyCredentials(MemberID, ID);
            result.Message = "删除证书" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult AddCredentials()
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-credentials";
            return View(new CompanyCredentials());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddCredentials(CompanyCredentials model)
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-credentials";
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {

                var memberID = Convert.ToInt32(CookieHelper.UID);
                result = companyService.SaveCompanyCredentials(memberID, model);

                result.Message = "添加证书" + (result.Success ? "成功！" : "失败！");
                TempData["Service_Result"] = result;
                if (result.Success)
                {
                    return RedirectToAction("Credentials");
                }
                else
                {
                    return View(model);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);
        }

        public ActionResult EditCredentials(int ID)
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-credentials";
            var credentials = companyService.GetCompanyCredentials(MemberID, ID);
            if (credentials == null)
            {
                return Content("<script>alert('非法操作！');window.history.go(-1);</script>");
            }
            var model = new CompanyCredentials()
            {
                ID = credentials.ID,
                Name = credentials.Title,
                Url = credentials.ImgUrl
            };
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditCredentials(CompanyCredentials model)
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            var UserStatus = Convert.ToInt32(CookieHelper.Status);
            ViewBag.UserStatus = UserStatus;
            ViewBag.MenuItem = "company-credentials";
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {

                var memberID = Convert.ToInt32(CookieHelper.UID);
                result = companyService.UpdateCompanyCredentials(memberID, model);

                result.Message = "编辑证书" + (result.Success ? "成功！" : "失败！");
                TempData["Service_Result"] = result;
                if (result.Success)
                {
                    return RedirectToAction("Credentials");
                }
                else
                {
                    return View(model);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);
        }
    }
}
