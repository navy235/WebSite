using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
using System.Data.Entity;
using Kendo.Mvc.Extensions;

namespace Maitonn.Web
{
    public class SourceService : ISourceService
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
        private ITopMediaService topMediaService;
        private ITopCompanyService topCompanyService;
        private ICompanyService companyService;
        private ISearchService searchService;
        public SourceService(
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
            , ITopMediaService _topMediaService
            , ITopCompanyService _topCompanyService
            , ICompanyService _companyService
            , ISearchService _searchService
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
            topMediaService = _topMediaService;
            topCompanyService = _topCompanyService;
            companyService = _companyService;
            searchService = _searchService;
        }


        /// <summary>
        /// 获取分类导航菜单数据
        /// </summary>
        /// <returns></returns>
        public List<HttpLinkGroup> GetLeftMenu(int province)
        {
            List<HttpLinkGroup> result = new List<HttpLinkGroup>();

            var category = outDoorMediaCateService.IncludeGetALL().ToList();

            foreach (var item in category)
            {
                HttpLinkGroup groupItem = new HttpLinkGroup();

                HttpLinkItem groupLink = new HttpLinkItem()
                {
                    ID = item.ID,
                    Name = item.CateName,
                    Province = province
                };

                groupItem.Group = groupLink;

                List<HttpLinkItem> items = item.ChildCategoies.Select(x => new HttpLinkItem
                {
                    ID = x.ID,
                    Name = x.CateName,
                    Province = province,
                    PCategoryCode = groupLink.ID,
                    CategoryCode = x.ID

                }).ToList();

                groupItem.Items = items;
                result.Add(groupItem);
            }

            return result;

        }

        public List<HttpLinkGroup> GetProvinceList(int province)
        {
            List<HttpLinkGroup> result = new List<HttpLinkGroup>();

            HttpLinkGroup quanguo = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "全国"
                }
            };

            HttpLinkItem quanguoLink = new HttpLinkItem()
            {
                Name = "全国",
                ProvinceName = ProvinceName.quanguo.ToString()
            };

            quanguo.Items.Add(quanguoLink);

            result.Add(quanguo);

            var provinceList = UIHelper.ProvinceList.Where(x => x.Value != "quanguo").OrderBy(x => x.Value).ToList();

            foreach (var item in provinceList)
            {
                var prefix = item.Value.Substring(0, 1).ToUpper();

                var groupItem = result.SingleOrDefault(x => x.Group.Name == prefix);

                if (groupItem == null)
                {
                    groupItem = new HttpLinkGroup()
                    {
                        Group = new HttpLinkItem()
                        {
                            Name = item.Value.Substring(0, 1).ToUpper()
                        }
                    };
                    result.Add(groupItem);
                }

                HttpLinkItem itemLink = new HttpLinkItem()
                {
                    Name = item.Text,
                    ProvinceName = item.Value
                };
                groupItem.Items.Add(itemLink);
            }
            return result;
        }

        public List<HttpLinkItem> GetSlider(int province, int take)
        {
            var quanguoCode = (int)ProvinceName.quanguo;

            var result = sliderImgService.GetALL()
              .Where(x => x.EndTime > DateTime.Now)
              .Where(x => x.ProvinceCode == province || x.ProvinceCode == quanguoCode)
              .OrderByDescending(x => x.Status)
              .ThenByDescending(x => x.OrderIndex)
              .Take(take)
              .Select(x => new HttpLinkItem()
              {
                  Url = x.LinkUrl,
                  ImgUrl = x.ImgUrl,
                  Name = x.Title

              }).ToList();

            return result;
        }

        public List<HttpLinkItem> GetSuggestMedia(bool isQuanGuo, int province, int take, int city = 0, int PCategoryCode = 0, int CategoryCode = 0)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();


            var query = topMediaService.GetALL()
                .Include(x => x.OutDoor)
                .Include(x => x.OutDoor.MediaImg)
                .Include(x => x.OutDoor.PeriodCate)
                .Include(x => x.OutDoor.Area)
                .Include(x => x.OutDoor.Area.PCategory)
                .Include(x => x.OutDoor.OutDoorMediaCate)
                .Include(x => x.OutDoor.OutDoorMediaCate.PCategory)
                .Include(x => x.OutDoor.Member.SelfCompany)
                .Where(x => x.TopStart < DateTime.Now && x.TopEnd > DateTime.Now);

            if (isQuanGuo)
            {
                query = query.Where(x => x.IsQuanGuo == true);
            }
            else
            {
                query = query.Where(x => x.ProvinceCode == province);
            }

            if (city != 0)
            {
                query = query.Where(x => x.CityCode == city);
            }

            if (CategoryCode != 0)
            {
                query = query.Where(x => x.CategoryCode == CategoryCode);
            }
            else
            {
                if (PCategoryCode != 0)
                {
                    query = query.Where(x => x.OutDoor.OutDoorMediaCate.PCategory.ID == PCategoryCode);
                }
            }

            var searchBySql = false;

            if (searchBySql)
            {
                result = query.OrderByDescending(x => x.ProvinceCode)
                    .Take(take)
                    .Select(x => new HttpLinkItem()
                {
                    ID = x.MediaID,
                    CategoryCode = x.OutDoor.MeidaCode,
                    CategoryName = x.OutDoor.OutDoorMediaCate.CateName,
                    City = x.OutDoor.Area.ID,
                    CityName = x.OutDoor.Area.CateName,
                    ImgUrl = x.OutDoor.MediaImg.FocusImgUrl,
                    Name = x.OutDoor.Name,
                    PCategoryCode = x.OutDoor.OutDoorMediaCate.PCategory.ID,
                    PCategoryName = x.OutDoor.OutDoorMediaCate.PCategory.CateName,
                    Price = x.OutDoor.Price,
                    Province = x.OutDoor.Area.PCategory.ID,
                    ProvinceName = x.OutDoor.Area.PCategory.CateName,
                    Title = x.OutDoor.Name,
                    PeriodName = x.OutDoor.PeriodCate.CateName,
                    CompanyName = x.OutDoor.Member.SelfCompany.Name,
                    MemberID = x.MemberID

                }).ToList();
            }
            else
            {
                List<int> keys = query.OrderByDescending(x => x.ProvinceCode)
                    .Take(take).Select(x => x.MediaID)
                    .ToList();

                if (keys.Count > 0)
                {
                    result = searchService.Search(keys);
                }

            }

            return result;
        }

        public List<HttpLinkItem> GetGoodMedia(int province, int take, int city = 0, int PCategoryCode = 0, int CategoryCode = 0)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var quanguoCode = (int)ProvinceName.quanguo;

            var memberQuery = memberService.GetAll()
                .Include(x => x.Company)
                .Include(x => x.Member_CreditIndex);

            if (quanguoCode != province)
            {
                memberQuery = memberQuery.Where(x => x.Company.Area.PCategory.ID == province);

                if (city != 0)
                {
                    memberQuery = memberQuery.Where(x => x.Company.Area.ID == city);
                }
            }

            var memberKeys = memberQuery.OrderByDescending(x => x.Member_CreditIndex.TotalCreditIndex).Take(take).Select(x => x.MemberID).ToList();

            foreach (var key in memberKeys)
            {
                var item = outDoorService.GetList(OutDoorStatus.ShowOnline, true).Include(x => x.Member.SelfCompany).Where(x => x.MemberID == key);

                if (CategoryCode != 0)
                {
                    item = item.Where(x => x.MeidaCode == CategoryCode);
                }
                else
                {
                    if (PCategoryCode != 0)
                    {
                        item = item.Where(x => x.OutDoorMediaCate.PCategory.ID == PCategoryCode);
                    }
                }
                var mediaItems = item.OrderByDescending(x => x.AddTime).Take(1).Select(x => new HttpLinkItem()
               {
                   ID = x.MediaID,
                   CategoryCode = x.MeidaCode,
                   CategoryName = x.OutDoorMediaCate.CateName,
                   City = x.Area.ID,
                   CityName = x.Area.CateName,
                   ImgUrl = x.MediaImg.FocusImgUrl,
                   Name = x.Name,
                   PCategoryCode = x.OutDoorMediaCate.PCategory.ID,
                   PCategoryName = x.OutDoorMediaCate.PCategory.CateName,
                   Price = x.Price,
                   Province = x.Area.PCategory.ID,
                   ProvinceName = x.Area.PCategory.CateName,
                   Title = x.Name,
                   PeriodName = x.PeriodCate.CateName,
                   CompanyName = x.Member.SelfCompany.Name,
                   MemberID = x.MemberID

               }).ToList();

                result.AddRange(mediaItems);
            }

            return result;
        }

        public List<HttpLinkItem> GetAuthMedia(int province, int take, int city = 0, int PCategoryCode = 0, int CategoryCode = 0)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var quanguoCode = (int)ProvinceName.quanguo;

            var query = outDoorService.GetList(OutDoorStatus.ShowOnline, true).Include(x => x.Member.SelfCompany);


            if (quanguoCode != province)
            {
                query = query.Where(x => x.Area.PCategory.ID == province);

                if (city != 0)
                {
                    query = query.Where(x => x.Area.ID == city);
                }
            }

            if (CategoryCode != 0)
            {
                query = query.Where(x => x.MeidaCode == CategoryCode);
            }
            else
            {
                if (PCategoryCode != 0)
                {
                    query = query.Where(x => x.OutDoorMediaCate.PCategory.ID == PCategoryCode);
                }
            }

            result = query.OrderByDescending(x => x.AuthStatus)
                .ThenByDescending(x => x.LastTime)
                .Take(take)
                .Select(x => new HttpLinkItem()
                {
                    ID = x.MediaID,
                    CategoryCode = x.MeidaCode,
                    CategoryName = x.OutDoorMediaCate.CateName,
                    City = x.Area.ID,
                    CityName = x.Area.CateName,
                    ImgUrl = x.MediaImg.FocusImgUrl,
                    Name = x.Name,
                    PCategoryCode = x.OutDoorMediaCate.PCategory.ID,
                    PCategoryName = x.OutDoorMediaCate.PCategory.CateName,
                    Price = x.Price,
                    Province = x.Area.PCategory.ID,
                    ProvinceName = x.Area.PCategory.CateName,
                    Title = x.Name,
                    PeriodName = x.PeriodCate.CateName,
                    CompanyName = x.Member.SelfCompany.Name,
                    MemberID = x.MemberID

                }).ToList();

            return result;
        }

        public List<HttpLinkItem> GetNewMedia(int province, int take, int city = 0, int PCategoryCode = 0, int CategoryCode = 0)
        {

            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var quanguoCode = (int)ProvinceName.quanguo;


            var query = outDoorService.GetList(OutDoorStatus.ShowOnline, true).Include(x => x.Member.SelfCompany);


            if (quanguoCode != province)
            {
                query = query.Where(x => x.Area.PCategory.ID == province);

                if (city != 0)
                {
                    query = query.Where(x => x.Area.ID == city);
                }
            }

            if (CategoryCode != 0)
            {
                query = query.Where(x => x.MeidaCode == CategoryCode);
            }
            else
            {
                if (PCategoryCode != 0)
                {
                    query = query.Where(x => x.OutDoorMediaCate.PCategory.ID == PCategoryCode);
                }
            }

            result = query.OrderByDescending(x => x.AddTime)
                .Take(take)
                .Select(x => new HttpLinkItem()
                {
                    ID = x.MediaID,
                    CategoryCode = x.MeidaCode,
                    CategoryName = x.OutDoorMediaCate.CateName,
                    City = x.Area.ID,
                    CityName = x.Area.CateName,
                    ImgUrl = x.MediaImg.FocusImgUrl,
                    Name = x.Name,
                    PCategoryCode = x.OutDoorMediaCate.PCategory.ID,
                    PCategoryName = x.OutDoorMediaCate.PCategory.CateName,
                    Price = x.Price,
                    Province = x.Area.PCategory.ID,
                    ProvinceName = x.Area.PCategory.CateName,
                    Title = x.Name,
                    PeriodName = x.PeriodCate.CateName,
                    CompanyName = x.Member.SelfCompany.Name,
                    MemberID = x.MemberID

                }).ToList();

            return result;
        }

        public List<HttpLinkItem> GetSuggestCompany(bool isQuanGuo, int province, int take, int city = 0, int PCategoryCode = 0, int CategoryCode = 0)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var query = topCompanyService.GetALL()
                .Include(x => x.Company)
                .Include(x => x.Company.CompanyLogoImg)
                .Include(x => x.Company.Area)
                .Include(x => x.Company.Area.PCategory)
                .Where(x => x.TopStart < DateTime.Now && x.TopEnd > DateTime.Now);

            if (isQuanGuo)
            {
                query = query.Where(x => x.IsQuanGuo == true);
            }
            else
            {
                query = query.Where(x => x.ProvinceCode == province);

                if (city != 0)
                {
                    query = query.Where(x => x.CityCode == city);
                }
            }

            if (CategoryCode != 0)
            {
                query = query.Where(x => x.CategoryCode == CategoryCode);
            }
            else
            {
                if (PCategoryCode != 0)
                {
                    query = query.Where(x => x.Company.Area.PCategory.ID == PCategoryCode);
                }
            }

            var searchBySql = true;

            if (searchBySql)
            {
                result = query.OrderByDescending(x => x.ProvinceCode).Take(take).Select(x => new HttpLinkItem()
                {
                    ID = x.MemberID,
                    City = x.Company.Area.ID,
                    CityName = x.Company.Area.CateName,
                    ImgUrl = x.Company.CompanyLogoImg.FocusImgUrl,
                    Name = x.Company.Name,
                    Province = x.Company.Area.PCategory.ID,
                    ProvinceName = x.Company.Area.PCategory.CateName,
                    Title = x.Company.Name,
                    Description = x.Company.Description,
                    Mobile = x.Company.Mobile,
                    Phone = x.Company.Phone


                }).ToList();
            }

            return result;
        }

        public List<HttpLinkItem> GetGoodCompany(int province, int take)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var status = (int)CompanyStatus.CompanyAuth;

            result = companyService.GetAll()
                .Include(x => x.Creator)
                .Include(x => x.Creator.Member_VIP)
                .Include(x => x.CompanyLogoImg)
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Where(x => x.Creator.Member_VIP.EndTime > DateTime.Now && x.Status >= status)
                .OrderByDescending(x => x.Creator.Member_VIP.AddTime)
                .Take(take)
                .Select(x => new HttpLinkItem()
                {
                    ID = x.MemberID,
                    City = x.Area.ID,
                    CityName = x.Area.CateName,
                    ImgUrl = x.CompanyLogoImg.FocusImgUrl,
                    Name = x.Name,
                    Province = x.Area.PCategory.ID,
                    ProvinceName = x.Area.PCategory.CateName,
                    Title = x.Name,
                    Description = x.Description,
                    Mobile = x.Mobile,
                    Phone = x.Phone

                }).ToList();

            return result;
        }


        public List<HttpLinkItem> GetRelateCompany(int province, int take, int city = 0)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            var quanguoCode = (int)ProvinceName.quanguo;
            var status = (int)CompanyStatus.CompanyAuth;

            var query = companyService.GetAll()
                .Include(x => x.Creator)
                .Include(x => x.Creator.Member_VIP)
                .Include(x => x.CompanyLogoImg)
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Where(x => x.Creator.Member_VIP.EndTime > DateTime.Now && x.Status >= status);

            if (quanguoCode != province)
            {
                query = query.Where(x => x.Area.PCategory.ID == province);
                if (city != 0)
                {
                    query = query.Where(x => x.CityCode == city);
                }
            }
            result = query.OrderByDescending(x => x.Creator.Member_VIP.AddTime)
                .Take(take)
                .Select(x => new HttpLinkItem()
                {
                    ID = x.MemberID,
                    City = x.Area.ID,
                    CityName = x.Area.CateName,
                    ImgUrl = x.CompanyLogoImg.FocusImgUrl,
                    Name = x.Name,
                    Province = x.Area.PCategory.ID,
                    ProvinceName = x.Area.PCategory.CateName,
                    Title = x.Name,
                    Description = x.Description,
                    Mobile = x.Mobile,
                    Phone = x.Phone
                }).ToList();

            return result;
        }
    }
}