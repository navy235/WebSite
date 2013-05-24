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
    public class ShowController : Controller
    {
        private IMemberService memberService;
        private IAreaAttService areaAttService;
        private IAreaService areaService;
        private IOutDoorMediaCateService outDoorMediaCateService;
        private IOutDoorService outDoorService;
        private ICompanyService companyService;
        private IFormatCateService formatCateService;
        private ICompanyBussinessService companyBussinessService;
        private ICompanyFundService companyFundService;
        private ICompanyScaleService companyScaleService;
        private IPeriodCateService periodCateService;
        private IOwnerCateService ownerCateService;
        private IAuctionCalendarService auctionCalendarService;
        private ISourceService sourceService;
        public ShowController(
            IMemberService _memberService
            , IAreaAttService _areaAttService
            , IAreaService _areaService
            , IOutDoorMediaCateService _outDoorMediaCateService
            , IOutDoorService _outDoorService
            , ICompanyService _companyService
            , IFormatCateService _formatCateService
            , ICompanyBussinessService _companyBussinessService
            , ICompanyFundService _companyFundService
            , ICompanyScaleService _companyScaleService
            , IPeriodCateService _periodCateService
            , IOwnerCateService _ownerCateService
            , IAuctionCalendarService _auctionCalendarService
            , ISourceService _sourceService
            )
        {

            areaAttService = _areaAttService;
            areaService = _areaService;
            memberService = _memberService;
            outDoorMediaCateService = _outDoorMediaCateService;
            outDoorService = _outDoorService;
            companyService = _companyService;
            formatCateService = _formatCateService;
            companyBussinessService = _companyBussinessService;
            companyFundService = _companyFundService;
            companyScaleService = _companyScaleService;
            periodCateService = _periodCateService;
            ownerCateService = _ownerCateService;
            auctionCalendarService = _auctionCalendarService;
            sourceService = _sourceService;
        }


        public ActionResult Index(int id)
        {
            var outdoor = outDoorService.IncludeFind(id);

            if (outdoor == null)
            {
                return HttpNotFound();
            }

            var company = companyService.ShowIndexCompanyProfile(outdoor.MemberID);

            if (company == null)
            {
                return HttpNotFound();
            }

            var provinceValue = EnumHelper.GetProvinceValue(CookieHelper.Province);

            ViewBag.Bread = GetBread(CookieHelper.Province, outdoor, company);

            ViewBag.LeftMenu = sourceService.GetLeftMenu(provinceValue);

            ViewBag.Company = new CompanyShopIntroViewModel()
            {
                Addresss = company.Address,
                BussinessName = company.CompanyBussiness.CateName,
                City = company.Area.CateName,
                Description = company.Description,
                FundName = company.CompanyFund.CateName,
                Logo = company.CompanyLogoImg.FocusImgUrl,
                Name = company.Name,
                Province = company.Area.PCategory.CateName,
                ScaleName = company.CompanyScale.CateName,
                MemberID = company.MemberID,
                Mobile = company.Mobile,
                Phone = company.Phone
            };

            return View(outdoor);
        }

        private List<HttpLinkItem> GetBread(string province, OutDoor outdoor, Company company)
        {
            List<HttpLinkItem> model = new List<HttpLinkItem>();

            HttpLinkItem breaditem = new HttpLinkItem()
            {
                Url = Url.Action("index", "home", new
                {
                    province = province
                })
            };

            model.Add(breaditem);

            breaditem = new HttpLinkItem()
            {
                Url = Url.Action("index", "list", new
                {
                    province = province,
                    mediacode = outdoor.OutDoorMediaCate.PCategory.ID,
                }),
                Name = outdoor.OutDoorMediaCate.PCategory.CateName
            };

            model.Add(breaditem);

            breaditem = new HttpLinkItem()
            {
                Url = Url.Action("index", "list", new
                {
                    province = province,
                    mediacode = outdoor.OutDoorMediaCate.PCategory.ID,
                    childmediacode = outdoor.OutDoorMediaCate.ID

                }),
                Name = outdoor.OutDoorMediaCate.CateName
            };

            model.Add(breaditem);

            breaditem = new HttpLinkItem()
            {
                Url = Url.Action("index", "shop", new
                {
                    id = company.MemberID
                }),
                Name = company.Name
            };

            model.Add(breaditem);

            breaditem = new HttpLinkItem()
           {
               Name = outdoor.Name
           };

            model.Add(breaditem);
            return model;
        }

    }
}
