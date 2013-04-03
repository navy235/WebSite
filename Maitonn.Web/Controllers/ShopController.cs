﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using PagedList;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class ShopController : Controller
    {

        private IMemberService memberService;
        private ICompanyService companyService;
        private IAreaAttService areaAttService;
        private IAreaService areaService;
        private IOutDoorService outDoorService;
        private IOutDoorMediaCateService outDoorMediaCateService;
        private IFormatCateService formatCateService;
        private ICompanyBussinessService companyBussinessService;
        private ICompanyFundService companyFundService;
        private ICompanyScaleService companyScaleService;
        private IPeriodCateService periodCateService;
        private IOwnerCateService ownerCateService;
        private IAuctionCalendarService auctionCalendarService;
        public ShopController(
            IMemberService _memberService
            , ICompanyService _companyService
            , IAreaAttService _areaAttService
            , IAreaService _areaService
            , IOutDoorService _outDoorService
            , IOutDoorMediaCateService _outDoorMediaCateService
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
            companyService = _companyService;
            outDoorService = _outDoorService;
            outDoorMediaCateService = _outDoorMediaCateService;
            formatCateService = _formatCateService;
            companyBussinessService = _companyBussinessService;
            companyFundService = _companyFundService;
            companyScaleService = _companyScaleService;
            periodCateService = _periodCateService;
            ownerCateService = _ownerCateService;
            auctionCalendarService = _auctionCalendarService;
        }


        public ActionResult Index(int id, int page = 1)
        {

            CompanyShopIndexViewModel model = new CompanyShopIndexViewModel();

            var company = companyService.IncludeFind(id);
            if (company == null)
            {
                return HttpNotFound();
            }
            model.MemberID = id;
            model.Name = company.Name;
            model.Description = company.Description;
            model.Logo = company.CompanyLogoImg.ImgUrls;
            model.Banner = company.CompanyBannerImg.ImgUrls;
            model.Addresss = company.Address;
            model.CompanyCategory = GetCompanyCategory(id);
            model.CompanyProduct = GetCompanyProduct(id, page);
            model.SourceCount = model.CompanyProduct.TotalItemCount;
            return View(model);
        }

        public ActionResult Source(int id, int page = 1, int c = 0, int cc = 0)
        {
            CompanyShopSourceViewModel model = new CompanyShopSourceViewModel();

            ViewBag.Category = c;
            ViewBag.ChildCategory = cc;
            var company = companyService.IncludeFind(id);
            if (company == null)
            {
                return HttpNotFound();
            }
            model.MemberID = id;
            model.Name = company.Name;
            model.Description = company.Description;
            model.Logo = company.CompanyLogoImg.ImgUrls;
            model.Banner = company.CompanyBannerImg.ImgUrls;
            model.Addresss = company.Address;
            model.CompanyCategory = GetCompanyCategory(id);
            model.CompanyProduct = GetCompanyProduct(id, page, c, cc);
            model.SourceCount = model.CompanyProduct.TotalItemCount;
            if (cc != 0)
            {
                ViewBag.CategoryName = model.CompanyProduct.First(x => x.MediaCateCode == cc).MediaCateName;
            }
            else if (c != 0)
            {
                ViewBag.CategoryName = model.CompanyCategory.First(x => x.ID == c).Name;
            }

            return View(model);
        }

        public ActionResult Intro(int id)
        {
            CompanyShopIntroViewModel model = new CompanyShopIntroViewModel();

            var company = companyService.IncludeFind(id);
            if (company == null)
            {
                return HttpNotFound();
            }
            model.MemberID = id;
            model.Name = company.Name;
            model.Description = company.Description;
            model.Logo = company.CompanyLogoImg.ImgUrls;
            model.Banner = company.CompanyBannerImg.ImgUrls;
            model.Addresss = company.Address;
            model.CompanyCategory = GetCompanyCategory(id);
            return View(model);
        }

        private List<CompanyCategoryViewModel> GetCompanyCategory(int MemberID)
        {
            var query = (from outdoor in outDoorService.GetOutDoorByMember(MemberID)
                         join category in outDoorMediaCateService.GetALL() on outdoor.MeidaCode equals category.ID
                         group outdoor by new
                         {
                             outdoor.MeidaCode,
                             category.CateName,
                             category.PID
                         } into g
                         select new
                         {
                             ID = g.Key.MeidaCode,
                             PID = g.Key.PID,
                             Name = g.Key.CateName,
                             Count = g.Count()
                         }).ToList();

            List<CompanyCategoryViewModel> result = new List<CompanyCategoryViewModel>();

            foreach (var item in query)
            {
                if (!result.Any(x => x.ID == item.PID.Value))
                {
                    var pcategory = outDoorMediaCateService.Find(item.PID.Value);
                    CompanyCategoryViewModel category = new CompanyCategoryViewModel()
                    {
                        Name = pcategory.CateName,
                        ID = pcategory.ID,
                        IsParent = true
                    };
                    result.Add(category);
                }
                CompanyCategoryViewModel parent = result.Single(x => x.ID == item.PID.Value);

                CompanyCategoryViewModel childCategory = new CompanyCategoryViewModel()
                {
                    Name = item.Name,
                    ID = item.ID,
                    Count = item.Count,
                    IsParent = false
                };

                parent.Childrens.Add(childCategory);

            }

            return result;
        }

        private IPagedList<CompanyProductViewModel> GetCompanyProduct(int MemberID, int page)
        {

            var query = outDoorService.GetOutDoorByMember(MemberID).Select(x => new CompanyProductViewModel()
              {
                  ID = x.MediaID,
                  Description = x.Description,
                  ImgUrl = x.MediaImg.FocusImgUrl,
                  ParentMediaCateCode = x.OutDoorMediaCate.PCategory.ID,
                  ParentMediaCateName = x.OutDoorMediaCate.PCategory.CateName,
                  MediaCateCode = x.OutDoorMediaCate.ID,
                  MediaCateName = x.OutDoorMediaCate.CateName,
                  Name = x.Name,
                  OwnerCateName = x.OwnerCate.CateName,
                  Price = x.Price,
                  Addtime = x.LastTime

              }).OrderByDescending(x => x.Addtime);

            const int pageSize = 20;
            var result = query.ToPagedList<CompanyProductViewModel>(page, pageSize);

            if (result.PageNumber != 1 && page > result.PageCount)
                return null;

            return result;
        }

        private IPagedList<CompanyProductViewModel> GetCompanyProduct(int MemberID, int page, int c, int cc)
        {

            var query = outDoorService.GetOutDoorByMember(MemberID);
            if (cc != 0)
            {
                query = query.Where(x => x.MeidaCode == cc);
            }
            else if (c != 0)
            {
                var pcategory = outDoorMediaCateService.Find(c);
                query = query.Where(x => x.OutDoorMediaCate.PCategory.ID == c);
            }

            var newquery = query.Select(x => new CompanyProductViewModel()
             {
                 ID = x.MediaID,
                 Description = x.Description,
                 ImgUrl = x.MediaImg.FocusImgUrl,
                 ParentMediaCateCode = x.OutDoorMediaCate.PCategory.ID,
                 ParentMediaCateName = x.OutDoorMediaCate.PCategory.CateName,
                 MediaCateCode = x.OutDoorMediaCate.ID,
                 MediaCateName = x.OutDoorMediaCate.CateName,
                 Name = x.Name,
                 OwnerCateName = x.OwnerCate.CateName,
                 Price = x.Price,
                 Addtime = x.LastTime
             }).OrderByDescending(x => x.Addtime);

            const int pageSize = 20;
            var result = newquery.ToPagedList<CompanyProductViewModel>(page, pageSize);

            if (result.PageNumber != 1 && page > result.PageCount)
                return null;

            return result;
        }

    }
}
