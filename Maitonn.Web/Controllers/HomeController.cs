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

        [MinFify]
        public ActionResult Index(string province = "quanguo")
        {

            if (!province.Equals(ProvinceName.quanguo.ToString(), StringComparison.CurrentCultureIgnoreCase))
            {
                CookieHelper.SetProvinceCookie(province);
            }

            var provinceValue = EnumHelper.GetProvinceValue(province);

            var isQuanGuo = provinceValue == (int)ProvinceName.quanguo;

            ViewBag.LeftMenu = GetLeftMenu(provinceValue);

            ViewBag.SliderBox = GetSlider(provinceValue, 8);

            ViewBag.SliderTabBox = GetSliderTabBox(provinceValue);

            ViewBag.TopCompany = GetSuggestCompany(provinceValue, 10);

            ViewBag.GoodCompany = GetGoodCompany(provinceValue, 10);

            ViewBag.Gallery = GetGallery(provinceValue, 6);

            return View();
        }


        private List<HttpLinkGroup> GetLeftMenu(int province)
        {
            List<HttpLinkGroup> result = new List<HttpLinkGroup>();
            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetLeftMenu");
            cacheDic.Add("province", province.ToString());
            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkGroup>>(cacheDic);
            }
            else
            {
                result = sourceService.GetLeftMenu(province);
                CacheService.Add<List<HttpLinkGroup>>(result, cacheDic, 60);
            }
            return result;

        }

        private List<HttpLinkItem> GetSlider(int province, int take)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();
            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetSlider");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", take.ToString());
            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                result = sourceService.GetSlider(province, take);
                CacheService.Add<List<HttpLinkItem>>(result, cacheDic, 60);
            }
            return result;

        }

        private List<HttpLinkItem> GetSuggestCompany(int province, int take)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();
            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetSuggestCompany");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", take.ToString());
            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                result = sourceService.GetSuggestCompany(province, take);
                CacheService.Add<List<HttpLinkItem>>(result, cacheDic, 60);
            }
            return result;
        }

        private List<HttpLinkItem> GetGoodCompany(int province, int take)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();
            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetGoodCompany");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", take.ToString());
            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                result = sourceService.GetGoodCompany(province, take);
                CacheService.Add<List<HttpLinkItem>>(result, cacheDic, 60);
            }
            return result;
        }


        [ChildActionOnly]
        public ActionResult City(string province = "quanguo")
        {

            var provinceValue = EnumHelper.GetProvinceValue(province);

            if (!CookieHelper.Province.Equals(province, StringComparison.CurrentCultureIgnoreCase))
            {
                CookieHelper.SetProvinceCookie(province);
            }

            ProvinceViewModel model = GetProvince(province);

            ViewBag.ProvinceList = sourceService.GetProvinceList(provinceValue);

            return View(model);
        }



        private List<HttpLinkGroup> GetSliderTabBox(int province)
        {

            bool isQuanGuo = province == (int)ProvinceName.quanguo;

            List<HttpLinkGroup> result = new List<HttpLinkGroup>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "HomeController");
            cacheDic.Add(CacheService.ServiceMethod, "GetSliderTabBox");
            cacheDic.Add("province", province.ToString());
            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkGroup>>(cacheDic);
            }
            else
            {
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

                CacheService.Add<List<HttpLinkGroup>>(result, cacheDic, 60);
            }
            return result;
        }


        private List<HttpLinkGallery> GetGallery(int province, int take)
        {
            bool isQuanGuo = province == (int)ProvinceName.quanguo;

            List<HttpLinkGallery> result = new List<HttpLinkGallery>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "HomeController");
            cacheDic.Add(CacheService.ServiceMethod, "GetGallery");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", take.ToString());

            if (CacheService.Exists(cacheDic))
            {
                result = CacheService.Get<List<HttpLinkGallery>>(cacheDic);
            }
            else
            {

                var categorys = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(null)).ToList();

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

                    tab.Items = sourceService.GetSuggestMedia(province, take, 0, category.ID);

                    galleryContainer.Tabs.Add(tab);

                    tab = new HttpLinkGroup()
                    {
                        Group = new HttpLinkItem()
                        {
                            Name = "优质资源"
                        }
                    };
                    tab.Items = sourceService.GetGoodMedia(province, take, 0, category.ID);

                    galleryContainer.Tabs.Add(tab);

                    tab = new HttpLinkGroup()
                    {
                        Group = new HttpLinkItem()
                        {
                            Name = "认证资源"
                        }
                    };
                    tab.Items = sourceService.GetAuthMedia(province, take, 0, category.ID);

                    galleryContainer.Tabs.Add(tab);


                    tab = new HttpLinkGroup()
                    {
                        Group = new HttpLinkItem()
                        {
                            Name = "最新资源"
                        }
                    };

                    tab.Items = sourceService.GetNewMedia(province, take, 0, category.ID);

                    galleryContainer.Tabs.Add(tab);

                    result.Add(galleryContainer);
                }

                CacheService.Add<List<HttpLinkGallery>>(result, cacheDic, 60);
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
