using System;
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

        [GenerateStatic]
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

        [GenerateStatic]
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
        [GenerateStatic]
        public ActionResult Intro(int id)
        {
            CompanyShopIntroViewModel model = new CompanyShopIntroViewModel();

            var company = companyService.IncludeFindCompanyProfile(id);
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
            model.ScaleName = company.CompanyScale.CateName;
            model.BussinessName = company.CompanyBussiness.CateName;
            model.FundName = company.CompanyFund.CateName;
            model.City = company.Area.CateName;
            model.Province = company.Area.PCategory.CateName;


            return View(model);
        }

        [GenerateStatic]
        public ActionResult Notice(int id, int page = 1)
        {
            CompanyShopNoticeViewModel model = new CompanyShopNoticeViewModel();
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
            model.CompanyNotice = GetCompanyNotice(id, page);
            model.SourceCount = model.CompanyNotice.TotalItemCount;
            return View(model);
        }
        [GenerateStatic]
        public ActionResult ViewNotice(int id, int noticeId)
        {
            CompanyShopViewNoticeViewModel model = new CompanyShopViewNoticeViewModel();
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
            var notice = companyService.GetCompanyNotice(noticeId);
            if (notice == null)
            {
                return HttpNotFound();
            }

            model.CompanyNotice = new CompanyNoticeViewModel()
            {
                ID = notice.ID,
                Content = notice.Content,
                AddTime = notice.AddTime,
                Name = notice.Title
            };

            return View(model);
        }

        [GenerateStatic]
        public ActionResult Contact(int id)
        {

            CompanyShopContactViewModel model = new CompanyShopContactViewModel();
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

            model.CompanyContact = new CompanyContactViewModel()
            {
                Address = company.Address,
                Fax = company.Fax,
                LinkMan = company.LinkMan,
                Mobile = company.Mobile,
                MSN = company.MSN,
                Phone = company.Phone,
                Position = company.Lat + "|" + company.Lng,
                QQ = company.QQ
            };
            return View(model);

        }
        [GenerateStatic]
        public ActionResult Credentials(int id, int page = 1)
        {
            CompanyShopCredentialsViewModel model = new CompanyShopCredentialsViewModel();
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
            model.CompanyCredentials = GetCompanyCredentials(id, page);
            model.SourceCount = model.CompanyCredentials.TotalItemCount;

            return View(model);

        }

        [BaseAuthorize]
        public ActionResult Message(int id)
        {
            CompanyShopMessageViewModel model = new CompanyShopMessageViewModel();

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
        [BaseAuthorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Message(int id, AddCompanyMessageViewModel model)
        {
            ServiceResult result = new ServiceResult();
            if (ModelState.IsValid)
            {
                var memberID = Convert.ToInt32(CookieHelper.UID);
                result = companyService.AddCompanyMessage(id, memberID, model);
                result.Message = "留言" + (result.Success ? "成功！" : "失败！");
                TempData["Service_Result"] = result;
                if (result.Success)
                {
                    return RedirectToAction("index");
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
            var stateValue = (int)OutDoorStatus.ShowOnline;

            var query = outDoorService.GetOutDoorByMember(MemberID).Where(x => x.Status >= stateValue).Select(x => new CompanyProductViewModel()
              {
                  ID = x.MediaID,
                  Description = x.Description,
                  ImgUrl = x.MediaImg.FocusImgUrl,
                  ParentMediaCateCode = x.OutDoorMediaCate.PCategory.ID,
                  ParentMediaCateName = x.OutDoorMediaCate.PCategory.CateName,
                  MediaCateCode = x.OutDoorMediaCate.ID,
                  MediaCateName = x.OutDoorMediaCate.CateName,
                  Province = x.Area.PCategory.ID,
                  ProvinceName = x.Area.PCategory.CateName,
                  City = x.Area.ID,
                  CityName = x.Area.CateName,
                  Format = x.FormatCate.ID,
                  FormatName = x.FormatCate.CateName,
                  Name = x.Name,
                  PeriodCateName = x.PeriodCate.CateName,
                  Period = x.PeriodCate.ID,
                  OwnerCateName = x.OwnerCate.CateName,
                  Price = x.Price,
                  Addtime = x.LastTime

              }).OrderByDescending(x => x.Addtime);

            const int pageSize = 10;

            var result = query.ToPagedList<CompanyProductViewModel>(page, pageSize);

            //if (result.PageNumber != 1 && page > result.PageCount)
            //    return null;

            return result;
        }

        private IPagedList<CompanyProductViewModel> GetCompanyProduct(int MemberID, int page, int c, int cc)
        {

            var stateValue = (int)OutDoorStatus.ShowOnline;

            var query = outDoorService.GetOutDoorByMember(MemberID).Where(x => x.Status >= stateValue);

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
                 Province = x.Area.PCategory.ID,
                 ProvinceName = x.Area.PCategory.CateName,
                 City = x.Area.ID,
                 CityName = x.Area.CateName,
                 Format = x.FormatCate.ID,
                 FormatName = x.FormatCate.CateName,
                 Name = x.Name,
                 OwnerCateName = x.OwnerCate.CateName,
                 PeriodCateName = x.PeriodCate.CateName,
                 Period = x.PeriodCate.ID,
                 Price = x.Price,
                 Addtime = x.LastTime

             }).OrderByDescending(x => x.Addtime);

            const int pageSize = 10;
            var result = newquery.ToPagedList<CompanyProductViewModel>(page, pageSize);

            if (result.PageNumber != 1 && page > result.PageCount)
                return null;

            return result;
        }


        private IPagedList<CompanyCredentialsViewModel> GetCompanyCredentials(int MemberID, int page)
        {
            var query = companyService.GetCompanyCredentials(MemberID).Select(x => new CompanyCredentialsViewModel()
            {
                ID = x.ID,
                ImgUrl = x.Url,
                Name = x.Name

            }).OrderByDescending(x => x.ID);
            const int pageSize = 10;
            var result = query.ToPagedList<CompanyCredentialsViewModel>(page, pageSize);

            if (result.PageNumber != 1 && page > result.PageCount)
                return null;

            return result;
        }

        private IPagedList<CompanyNoticeViewModel> GetCompanyNotice(int MemberID, int page)
        {
            var query = companyService.GetCompanyNoticeList(MemberID, CompanyNoticeStatus.ShowOnLine, true).Select(x => new CompanyNoticeViewModel()
            {
                ID = x.ID,
                Name = x.Name,
                Content = x.Content,
                AddTime = x.AddTime

            }).OrderByDescending(x => x.ID);
            const int pageSize = 10;
            var result = query.ToPagedList<CompanyNoticeViewModel>(page, pageSize);
            if (result.PageNumber != 1 && page > result.PageCount)
                return null;
            return result;

        }
    }

}
