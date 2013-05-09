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
            ViewBag.MenuItem = "company-baseinfo";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            else
            {
                var company = companyService.IncludeFind(CookieHelper.MemberID);
                var model = new CompanyBaseInfoViewModel()
                {
                    BussinessCode = company.BussinessCode,
                    CityCode = company.CityCode,
                    Description = company.Description,
                    FundCode = company.FundCode,
                    Name = company.Name,
                    Logo = company.CompanyLogoImg.FocusImgUrl,
                    CompanyImg = company.CompanyImg.ImgUrls,
                    LinManImg = company.LinkManImg.ImgUrls,
                    ScaleCode = company.ScaleCode
                };
                return View(model);
            }
        }

        public ActionResult Contact()
        {
            ViewBag.MenuItem = "company-contact";
            var company = companyService.Find(CookieHelper.MemberID);
            var model = new CompanyContactInfoViewModel()
            {
                Fax = company.Fax,
                LinkMan = company.LinkMan,
                Mobile = company.Mobile,
                MSN = company.MSN,
                Phone = company.Phone,
                QQ = company.QQ,
                Sex = company.Sex
            };
            return View(model);

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(CompanyContactInfoViewModel model)
        {
            ViewBag.MenuItem = "company-contact";
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                try
                {
                    result = companyService.UpdateCompanyContact(CookieHelper.MemberID, model);
                    result.Message = "联系信息保存" + (result.Success ? "成功！" : "失败！");
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
            TempData["Service_Result"] = result;
            return View(model);
        }


        public ActionResult Logo()
        {
            ViewBag.MenuItem = "shop-logo";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            else
            {
                var companylog = companyService.GetCompanyLogo(CookieHelper.MemberID);
                return View(companylog);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Logo(CompanyLogo model)
        {
            ViewBag.MenuItem = "shop-logo";
            ServiceResult result = new ServiceResult();
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            if (ModelState.IsValid)
            {
                try
                {
                    result = companyService.SaveCompanyLogo(CookieHelper.MemberID, model);
                    result.Message = "企业LOGO保存" + (result.Success ? "成功！" : "失败！");
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
            TempData["Service_Result"] = result;
            return View(model);
        }


        public ActionResult Banner()
        {
            ViewBag.MenuItem = "shop-banner";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            else
            {
                var companyBanner = companyService.GetCompanyBanner(CookieHelper.MemberID);
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
            ViewBag.MenuItem = "shop-banner";
            ServiceResult result = new ServiceResult();
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            if (ModelState.IsValid)
            {
                try
                {
                    result = companyService.SaveCompanyBanner(CookieHelper.MemberID, model);
                    result.Message = "企业BANNER保存" + (result.Success ? "成功！" : "失败！");
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
            TempData["Service_Result"] = result;
            return View(model);
        }


        #region 企业证书
        public ActionResult Credentials()
        {
            ViewBag.MenuItem = "company-credentials";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            else
            {
                var companyCredentials = companyService.GetCompanyCredentials(CookieHelper.MemberID);
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
            ServiceResult result = new ServiceResult();
            result = companyService.DeleteCompanyCredentials(CookieHelper.MemberID, ID);
            result.Message = "删除证书" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult AddCredentials()
        {
            ViewBag.MenuItem = "company-credentials";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            return View(new CompanyCredentials());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddCredentials(CompanyCredentials model)
        {
            ViewBag.MenuItem = "company-credentials";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {

                result = companyService.SaveCompanyCredentials(CookieHelper.MemberID, model);
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
            ViewBag.MenuItem = "company-credentials";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }

            var credentials = companyService.GetCompanyCredentialsSingle(ID);
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
            ViewBag.MenuItem = "company-credentials";
            ServiceResult result = new ServiceResult();
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            if (ModelState.IsValid)
            {
                result = companyService.UpdateCompanyCredentials(CookieHelper.MemberID, model);
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

        #endregion

        #region 企业公告

        public ActionResult Notice()
        {
            ViewBag.MenuItem = "shop-notice";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            ViewBag.CompanyNoticeStatus = UIHelper.CompanyNoticeStatusList;
            return View();
        }

        public ActionResult AddNotice()
        {
            ViewBag.MenuItem = "shop-notice";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            return View(new AddCompanyNoticeViewModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddNotice(AddCompanyNoticeViewModel model)
        {
            ViewBag.MenuItem = "shop-notice";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                result = companyService.AddCompanyNotice(CookieHelper.MemberID, model);
                result.Message = "添加企业公告" + (result.Success ? "成功！" : "失败！");
                TempData["Service_Result"] = result;
                if (result.Success)
                {
                    return RedirectToAction("Notice");
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

        public ActionResult EditNotice(int id)
        {
            ViewBag.MenuItem = "shop-notice";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            var notice = companyService.GetCompanyNotice(id);
            if (notice == null)
            {
                return Content("<script>alert('非法操作！');window.history.go(-1);</script>");
            }
            var model = new AddCompanyNoticeViewModel()
            {
                ID = notice.ID,
                Name = notice.Title,
                Content = notice.Content
            };
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditNotice(AddCompanyNoticeViewModel model)
        {
            ViewBag.MenuItem = "shop-notice";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                result = companyService.EditCompanyNotice(CookieHelper.MemberID, model);
                result.Message = "编辑企业公告" + (result.Success ? "成功！" : "失败！");
                TempData["Service_Result"] = result;
                if (result.Success)
                {
                    return RedirectToAction("Notice");
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

        public ActionResult Notice_Read([DataSourceRequest] DataSourceRequest request)
        {
            var model = companyService.GetCompanyNoticeList(CookieHelper.MemberID, CompanyNoticeStatus.NotShow, true);
            return Json(model.ToDataSourceResult(request));
        }

        [HttpPost]
        public ActionResult NoticeNotShow(string ids)
        {
            var result = companyService.ChangeCompanyNoticeStatus(ids,
               CompanyNoticeStatus.NotShow);
            result.Message = "设置未显示" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        [HttpPost]
        public ActionResult NoticeShow(string ids)
        {
            var result = companyService.ChangeCompanyNoticeStatus(ids,
             CompanyNoticeStatus.ShowOnLine);
            result.Message = "设置显示" + (result.Success ? "成功！" : "失败！");
            return Json(result);

        }

        [HttpPost]
        public ActionResult NoticeDelete(string ids)
        {
            var result = companyService.ChangeCompanyNoticeStatus(ids,
            CompanyNoticeStatus.Delete);
            result.Message = "删除公告" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        #endregion

        #region 企业留言

        public ActionResult Message()
        {
            ViewBag.MenuItem = "shop-message";
            var member = memberService.Find(CookieHelper.MemberID);
            if (member.Status < (int)MemberStatus.CompanyAuth)
            {
                return Redirect(Url.Action("openbiz", "register"));
            }
            return View();
        }

        public ActionResult Message_Read([DataSourceRequest] DataSourceRequest request)
        {
            var model = companyService.GetCompanyMessageList(CookieHelper.MemberID, CompanyMessageStatus.NotShow, true);
            return Json(model.ToDataSourceResult(request));
        }

        [HttpPost]
        public ActionResult MessageDelete(string ids)
        {
            var result = companyService.ChangeCompanyMessageStatus(ids,
            CompanyMessageStatus.Delete);
            result.Message = "删除留言" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult MessageDetails(int ID)
        {
            var Details = companyService.GetCompanyMessage(ID);
            if (Details == null)
            {
                return HttpNotFound();
            }
            var member = memberService.FindMemberWithProfile(Details.MemberID);
            if (member.Member_Profile == null)
            {
                member.Member_Profile = new Member_Profile();
            }
            return View(new CompanyMessageDetailsViewModel()
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
