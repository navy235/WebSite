

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
using System.Threading;

namespace Maitonn.Web
{
    public class AjaxContentController : Controller
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
        public AjaxContentController(
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

        public ActionResult GetrelateMedia(int province = 0, int city = 0)
        {

            var isQuanGuo = province == (int)ProvinceName.quanguo;

            var model = new List<HttpLinkItem>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetAuthMedia");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", "4");
            cacheDic.Add("city", city.ToString());

            if (CacheService.Exists(cacheDic))
            {
                model = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                model = sourceService.GetAuthMedia(province, 4, city);
                CacheService.Add<List<HttpLinkItem>>(model, cacheDic, 60);
            }

            return PartialView("MediaItem", model);
        }

        public ActionResult GetSuggestMedia(int province = 0)
        {

            var isQuanGuo = province == (int)ProvinceName.quanguo;

            var model = new List<HttpLinkItem>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetSuggestMedia");
            cacheDic.Add("province", province.ToString());
            cacheDic.Add("take", "4");

            if (CacheService.Exists(cacheDic))
            {
                model = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                model = sourceService.GetSuggestMedia(province, 4);
                CacheService.Add<List<HttpLinkItem>>(model, cacheDic, 60);
            }

            return PartialView("MediaItem", model);
        }

        public ActionResult GetMemberMedia(int id = 0)
        {
            var model = outDoorService.GetList(OutDoorStatus.ShowOnline, includeUpLevel: true).Where(x => x.MemberID == id)
                .OrderByDescending(x => x.AddTime)
                .Take(4)
                .Select(x => new HttpLinkItem()
                {
                    Name = x.Name,
                    CategoryName = x.OutDoorMediaCate.CateName,
                    PCategoryName = x.OutDoorMediaCate.PCategory.CateName,
                    ImgUrl = x.MediaImg.FocusImgUrl,
                    ID = x.MediaID,
                    Price = x.Price
                }).ToList();

            return PartialView("MediaItem", model);
        }

        public ActionResult GetSuggestCompany(string province = "quanguo")
        {
            var provinceValue = EnumHelper.GetProvinceValue(province);

            var model = new List<HttpLinkItem>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetSuggestCompany");
            cacheDic.Add("province", provinceValue.ToString());
            cacheDic.Add("take", "4");
            if (CacheService.Exists(cacheDic))
            {
                model = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                model = sourceService.GetSuggestCompany(provinceValue, 4);
                CacheService.Add<List<HttpLinkItem>>(model, cacheDic, 60);
            }

            return PartialView("CompanyItem", model);
        }

        public ActionResult GetGoodCompany(string province = "quanguo")
        {
            var provinceValue = EnumHelper.GetProvinceValue(province);

            var model = new List<HttpLinkItem>();

            Dictionary<string, string> cacheDic = new Dictionary<string, string>();
            cacheDic.Add(CacheService.ServiceName, "sourceService");
            cacheDic.Add(CacheService.ServiceMethod, "GetGoodCompany");
            cacheDic.Add("province", provinceValue.ToString());
            cacheDic.Add("take", "4");
            if (CacheService.Exists(cacheDic))
            {
                model = CacheService.Get<List<HttpLinkItem>>(cacheDic);
            }
            else
            {
                model = sourceService.GetGoodCompany(provinceValue, 4);
                CacheService.Add<List<HttpLinkItem>>(model, cacheDic, 60);
            }

            return PartialView("CompanyItem", model);
        }
    }
}