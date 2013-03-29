using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [Permission]
    public class CompanyVerifyController : Controller
    {
        private IMemberService memberService;
        private IEmailService emailService;
        private IMember_ActionService member_ActionService;
        private ICompanyService companyService;
        public CompanyVerifyController(
              IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , ICompanyService _companyService)
        {

            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            companyService = _companyService;
        }

        public ActionResult Index()
        {
            ViewBag.CompanyStatus = UIHelper.CompanyStatusList;
            return View();
        }

        public ActionResult Authed()
        {
            ViewBag.CompanyStatus = UIHelper.CompanyStatusList;
            return View();
        }

        public ActionResult Company_Read([DataSourceRequest] DataSourceRequest request)
        {
            return Json(companyService.GetVerifyList(CompanyStatus.CompanyApply).ToDataSourceResult(request));
        }

        public ActionResult Company_ReadAuthed([DataSourceRequest] DataSourceRequest request)
        {
            return Json(companyService.GetVerifyList(CompanyStatus.CompanyAuth).ToDataSourceResult(request));
        }

        public ActionResult VerifyPass(string ids)
        {
            var success = companyService.ChangeStatus(ids,
                CompanyStatus.CompanyAuth);
            return Json(success);
        }

        public ActionResult VerifyFailed(string ids)
        {
            var success = companyService.ChangeStatus(ids,
             CompanyStatus.CompanyFailed);
            return Json(success);
        }

        public ActionResult Details(int id)
        {

            Company cpy = companyService.IncludeFindByCompanyID(id);

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
}
