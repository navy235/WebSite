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

            ShowViewModel model = new ShowViewModel();

            model.Braed = GetBread(CookieHelper.Province, outdoor);
            model.ListMenu = GetListMenu();
            model.Item = outdoor;
            model.MediaID = id;
            model.Company = new CompanyShopIntroViewModel()
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
                MemberID = company.MemberID
                
                
            };
            return View(model);
        }
        /// <summary>
        /// 获取左边导航链接
        /// </summary>
        /// <param name="searchTrem">搜索条件集合</param>
        /// <returns></returns>
        private TopHotListMenuViewModel GetListMenu()
        {
            TopHotListMenuViewModel model = new TopHotListMenuViewModel();
            var category = outDoorMediaCateService.IncludeGetALL().ToList();
            foreach (var item in category)
            {
                CategoryListViewModel clvm = new CategoryListViewModel();

                //父类导航
                CategoryViewModel cvm = new CategoryViewModel()
                {
                    CID = item.ID.ToString(),
                    Name = item.CateName,
                    Url = Url.Action("index", "list", new
                    {
                        province = CookieHelper.Province,

                        mediacode = item.ID
                    })
                };
                clvm.Category = cvm;
                //子类导航
                List<CategoryViewModel> ChildCategories = item.ChildCategoies.Select(x => new CategoryViewModel
                {
                    CID = x.ID.ToString(),
                    Name = x.CateName,

                    Url = Url.Action("index", "list", new
                    {
                        province = CookieHelper.Province,
                        mediacode = item.ID,
                        childmediacode = x.ID
                    })
                }).ToList();
                clvm.ChildCategories = ChildCategories;
                model.Items.Add(clvm);
            }
            return model;
        }


        private BraedViewModel GetBread(string province, OutDoor outdoor)
        {
            BraedViewModel model = new BraedViewModel();

            CategoryViewModel breaditem = new CategoryViewModel()
            {
                Url = Url.Action("index", "home", new
                {
                    province = province
                })
            };
            model.Items.Add(breaditem);

            breaditem = new CategoryViewModel()
            {
                Url = Url.Action("index", "list", new
                {
                    province = province,
                    mediacode = outdoor.OutDoorMediaCate.PCategory.ID,

                }),
                Name = outdoor.OutDoorMediaCate.PCategory.CateName
            };

            model.Items.Add(breaditem);

            breaditem = new CategoryViewModel()
            {
                Url = Url.Action("index", "list", new
                {
                    province = province,
                    mediacode = outdoor.OutDoorMediaCate.PCategory.ID,
                    childmediacode = outdoor.OutDoorMediaCate.ID

                }),
                Name = outdoor.OutDoorMediaCate.CateName
            };

            model.Items.Add(breaditem);

            breaditem = new CategoryViewModel()
           {
               Name = outdoor.Name
           };

            model.Items.Add(breaditem);
            return model;
        }

        private ListProductViewModel GetHotList()
        {
            ListProductViewModel model = new ListProductViewModel();
            model.Name = "热门资源";
            var product = outDoorService.GetVerifyList(OutDoorStatus.ShowOnline, true).Take(8).ToList();
            model.Items = product.Select(x => new ProductViewModel()
            {
                ID = x.MediaID,
                ImgUrl = x.FocusImg,
                Name = x.Name,
                Price = x.Price,
                City = x.City,
                Province = x.Province
            }).ToList();
            return model;
        }

        private ListProductViewModel GetSuggestList()
        {
            ListProductViewModel model = new ListProductViewModel();
            model.Name = "推荐资源";
            var product = outDoorService.GetVerifyList(OutDoorStatus.ShowOnline, true).Take(6).ToList();
            model.Items = product.Select(x => new ProductViewModel()
            {
                ID = x.MediaID,
                ImgUrl = x.FocusImg,
                Name = x.Name,
                Price = x.Price,
                City = x.City,
                Province = x.Province
            }).ToList();
            return model;
        }

        private ListLinksViewModel GetCompanyList()
        {
            ListLinksViewModel model = new ListLinksViewModel();
            var product = outDoorService.GetVerifyList(OutDoorStatus.ShowOnline, true).Take(5).ToList();
            model.Items = product.Select(x => new CategoryViewModel()
            {
                CID = x.MediaID.ToString(),
                ImgUrl = x.FocusImg,
                Name = x.Name,
                Url = Url.Action("index", "list", new { mediacode = x.MediaCode })
            }).ToList();
            return model;
        }

    }
}
