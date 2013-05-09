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
    public class HomeController : Controller
    {
        private IMemberService memberService;
        private IAreaAttService areaAttService;
        private IAreaService areaService;
        private IOutDoorMediaCateService outDoorMediaCateService;
        private IOutDoorService outDoorService;
        private IFormatCateService formatCateService;
        private ICompanyBussinessService companyBussinessService;
        private ICompanyFundService companyFundService;
        private ICompanyScaleService companyScaleService;
        private IPeriodCateService periodCateService;
        private IOwnerCateService ownerCateService;
        private IAuctionCalendarService auctionCalendarService;
        private ISliderImgService sliderImgService;
        private ISourceService sourceService;
        public HomeController(
            IMemberService _memberService
            , IAreaAttService _areaAttService
            , IAreaService _areaService
            , IOutDoorMediaCateService _outDoorMediaCateService
            , IOutDoorService _outDoorService
            , IFormatCateService _formatCateService
            , ICompanyBussinessService _companyBussinessService
            , ICompanyFundService _companyFundService
            , ICompanyScaleService _companyScaleService
            , IPeriodCateService _periodCateService
            , IOwnerCateService _ownerCateService
            , IAuctionCalendarService _auctionCalendarService
            , ISliderImgService _sliderImgService
            , ISourceService _sourceService
            )
        {

            areaAttService = _areaAttService;
            areaService = _areaService;
            memberService = _memberService;
            outDoorMediaCateService = _outDoorMediaCateService;
            outDoorService = _outDoorService;
            formatCateService = _formatCateService;
            companyBussinessService = _companyBussinessService;
            companyFundService = _companyFundService;
            companyScaleService = _companyScaleService;
            periodCateService = _periodCateService;
            ownerCateService = _ownerCateService;
            auctionCalendarService = _auctionCalendarService;
            sliderImgService = _sliderImgService;
            sourceService = _sourceService;
        }

        public ActionResult Index(string province = "quanguo")
        {

            var provinceValue = EnumHelper.GetProvinceValue(province);

            var LeftMenu = sourceService.GetLeftMenu(provinceValue);

            var SliderBox = sourceService.GetSlider(provinceValue, 8);

            var SliderTabBox = GetSliderTabBox(provinceValue);

            var TopCompany = sourceService.GetSuggestCompany(provinceValue, 10);

            var GoodCompany = sourceService.GetGoodCompany(provinceValue, 10);

            var Gallery = GetGallery(provinceValue);

            HomeViewModel model = new HomeViewModel();

            return View(model);
        }


        [ChildActionOnly]
        public ActionResult City(string province = "quanguo")
        {
            if (!CookieHelper.Province.Equals(province, StringComparison.CurrentCultureIgnoreCase))
            {
                CookieHelper.SetProvinceCookie(province);
            }
            ProvinceViewModel model = GetProvince(province);

            return View(model);
        }



        private List<HttpLinkGroup> GetSliderTabBox(int province)
        {
            List<HttpLinkGroup> result = new List<HttpLinkGroup>();

            HttpLinkGroup group = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "推荐资源"
                }
            };

            group.Items = sourceService.GetSuggestMedia(province, 8);

            result.Add(group);

            group = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "优质资源"
                }
            };
            group.Items = sourceService.GetGoodMedia(province, 8);

            result.Add(group);

            group = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "认证资源"
                }
            };
            group.Items = sourceService.GetAuthMedia(province, 8);

            result.Add(group);


            group = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "最新资源"
                }
            };
            group.Items = sourceService.GetNewMedia(province, 8);

            result.Add(group);

            return result;
        }


        private List<HttpLinkGallery> GetGallery(int province)
        {
            List<HttpLinkGallery> result = new List<HttpLinkGallery>();

            var categorys = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(null));

            foreach (var category in categorys)
            {
                HttpLinkGallery galleryContainer = new HttpLinkGallery()
                {
                    Gallery = new HttpLinkItem()
                    {
                        ID = category.ID,
                        Name = category.CateName
                    }
                };

                HttpLinkGroup tab = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "推荐资源"
                    }
                };

                tab.Items = sourceService.GetSuggestMedia(province, 8, category.ID);

                galleryContainer.Tabs.Add(tab);

                tab = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "优质资源"
                    }
                };
                tab.Items = sourceService.GetGoodMedia(province, 8, category.ID);

                galleryContainer.Tabs.Add(tab);

                tab = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "认证资源"
                    }
                };
                tab.Items = sourceService.GetAuthMedia(province, 8, category.ID);

                galleryContainer.Tabs.Add(tab);


                tab = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "最新资源"
                    }
                };

                tab.Items = sourceService.GetNewMedia(province, 8, category.ID);

                galleryContainer.Tabs.Add(tab);

                result.Add(galleryContainer);
            }

            return result;
        }

        private ProvinceViewModel GetProvince(string province)
        {
            int provinceId = EnumHelper.GetProvinceValue(province);

            return new ProvinceViewModel()
            {
                Name = UIHelper.ProvinceList.Single(x => x.Value == province).Text,
                Url = Url.Action("index", "home", new
                  {
                      province = province
                  })
            };
        }
    }

}
