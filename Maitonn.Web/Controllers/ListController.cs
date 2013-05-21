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
using PagedList;
using PagedList.Mvc;
using StackExchange.Profiling;
namespace Maitonn.Web
{
    public class ListController : Controller
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
        private ISourceService sourceService;
        private ISearchService searchService;
        public ListController(
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
            , ISourceService _sourceService
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
            sourceService = _sourceService;
            searchService = _searchService;
        }


        public ActionResult Index(string province = "quanguo", int city = 0,
            int mediacode = 0,
            int childmediacode = 0,
            int formatcode = 0,
            int ownercode = 0,
            int periodcode = 0,
            int price = 0,
            int order = 0,
            int descending = 0,
            int page = 1,
            string query = null)
        {

            var provinceValue = EnumHelper.GetProvinceValue(province);

            var isQuanGuo = provinceValue == (int)ProvinceName.quanguo;

            var LeftMenu = sourceService.GetLeftMenu(provinceValue);

            //搜索条件
            ListSearchItemViewModel searchTrem = new ListSearchItemViewModel()
            {
                Province = province,
                City = city,
                MediaCode = mediacode,
                ChildMediaCode = childmediacode,
                FormatCode = formatcode,
                OwnerCode = ownercode,
                PeriodCode = periodcode,
                Page = page,
                Price = price,
                Order = order,
                Descending = descending,
                Query = query
            };

            ViewBag.LeftMenu = SetLeftMenu(LeftMenu, searchTrem);

            ViewBag.Bread = GetBread(LeftMenu, searchTrem);

            ViewBag.SuggestList = sourceService.GetSuggestMedia(isQuanGuo, provinceValue, 5, searchTrem.MediaCode, searchTrem.ChildMediaCode);

            ViewBag.HotList = sourceService.GetGoodMedia(provinceValue, 5, searchTrem.City, searchTrem.MediaCode, searchTrem.ChildMediaCode);

            ViewBag.SuggestCompanyList = sourceService.GetSuggestCompany(isQuanGuo, provinceValue, 5, searchTrem.City, searchTrem.MediaCode, searchTrem.ChildMediaCode);

            ViewBag.RelateCompany = sourceService.GetRelateCompany(provinceValue, 5, searchTrem.City);

            ViewBag.Search = GetSearch(searchTrem);

            ViewBag.PriceListFilter = GetPriceListFilter(searchTrem);

            ViewBag.DefaultOrderUrl = Url.Action("index", new
            {
                province = searchTrem.Province,
                city = searchTrem.City,
                mediacode = searchTrem.MediaCode,
                childmediacode = searchTrem.ChildMediaCode,
                formatcode = searchTrem.FormatCode,
                ownercode = searchTrem.OwnerCode,
                periodcode = searchTrem.PeriodCode,
                price = searchTrem.Price,
                order = 0,
                descending = 0,
                page = searchTrem.Page,

            });

            ViewBag.PriceOrderAscUrl = Url.Action("index", new
            {
                province = searchTrem.Province,
                city = searchTrem.City,
                mediacode = searchTrem.MediaCode,
                childmediacode = searchTrem.ChildMediaCode,
                formatcode = searchTrem.FormatCode,
                ownercode = searchTrem.OwnerCode,
                periodcode = searchTrem.PeriodCode,
                price = searchTrem.Price,
                order = (int)SortProperty.Price,
                descending = (int)SortDirection.Ascending,
                page = searchTrem.Page
            });

            ViewBag.PriceOrderDescUrl = Url.Action("index", new
            {
                province = searchTrem.Province,
                city = searchTrem.City,
                mediacode = searchTrem.MediaCode,
                childmediacode = searchTrem.ChildMediaCode,
                formatcode = searchTrem.FormatCode,
                ownercode = searchTrem.OwnerCode,
                periodcode = searchTrem.PeriodCode,
                price = searchTrem.Price,
                order = (int)SortProperty.Price,
                descending = (int)SortDirection.Descending,
                page = searchTrem.Page
            });

            ViewBag.Result = GetResult(searchTrem);

            if (searchTrem.Order == 0)
            {
                ViewBag.isSortDefault = true;
            }
            else if (searchTrem.Order == (int)SortProperty.Price)
            {
                if (searchTrem.Descending == (int)SortDirection.Descending)
                {
                    ViewBag.isSortPriceDesc = true;
                }
                else
                {
                    ViewBag.isSortPriceAsc = true;
                }
            }

            return View();
        }

        private List<HttpLinkGroup> SetLeftMenu(List<HttpLinkGroup> list, ListSearchItemViewModel search)
        {
            foreach (var item in list)
            {
                item.Group.Selected = item.Group.CategoryCode == search.MediaCode;
                foreach (var childItem in item.Items)
                {
                    childItem.Selected = childItem.CategoryCode == search.ChildMediaCode;
                }
            }
            return list;
        }

        private List<HttpLinkItem> GetPriceListFilter(ListSearchItemViewModel search)
        {
            List<HttpLinkItem> result = new List<HttpLinkItem>();

            result = UIHelper.PriceList.Select(x => new HttpLinkItem()
            {
                Name = x.Text,
                Selected = x.Value == search.Price.ToString(),
                Url = Url.Action("index", new
                {
                    province = search.Province,
                    city = search.City,
                    mediacode = search.MediaCode,
                    childmediacode = search.ChildMediaCode,
                    formatcode = search.FormatCode,
                    ownercode = search.OwnerCode,
                    periodcode = search.PeriodCode,
                    price = Convert.ToInt32(x.Value),
                    order = 0,
                    descending = 0,
                    page = 1,
                })

            }).ToList();

            return result;
        }

        private SearchFilter GetSearchFilter(string q, int sortOrder, int descending, int page, int pageSize)
        {
            var searchFilter = new SearchFilter
            {
                PageSize = pageSize,
                SearchTerm = q,
                Skip = (page - 1) * pageSize, // pages are 1-based. 
                Take = pageSize
            };
            searchFilter.SortProperty = (SortProperty)sortOrder;

            searchFilter.SortDirection = (SortDirection)descending;

            return searchFilter;
        }

        private ListSource GetResult(ListSearchItemViewModel search)
        {
            const int PageSize = 15;
            var model = new ListSource();
            var query = new List<HttpLinkItem>();
            var searchFilter = GetSearchFilter(search.Query, search.Order, search.Descending, search.Page, PageSize);
            int totalHits;
            using (MiniProfiler.Current.Step("LuceneSearch"))
            {
                query = searchService.Search(search, searchFilter, out totalHits);
            }
            model.Items = query;
            model.TotalCount = totalHits;
            model.CurrentPage = search.Page;
            model.PageSize = PageSize;
            model.Querywords = string.IsNullOrEmpty(search.Query) ? "" : search.Query;
            return model;
        }

        [ChildActionOnly]
        public ActionResult Menu(string province = "quanguo")
        {
            if (!CookieHelper.Province.Equals(province, StringComparison.CurrentCultureIgnoreCase))
            {
                CookieHelper.SetProvinceCookie(province);
            }
            var provinceValue = EnumHelper.GetProvinceValue(province);
            List<HttpLinkGroup> model = sourceService.GetLeftMenu(provinceValue);
            return View(model);
        }

        private List<HttpLinkItem> GetBread(List<HttpLinkGroup> menu, ListSearchItemViewModel search)
        {
            List<HttpLinkItem> model = new List<HttpLinkItem>();

            HttpLinkItem home = new HttpLinkItem()
            {
                Url = Url.Action("index", "home", new
                {
                    province = search.Province
                })
            };
            model.Add(home);

            foreach (var item in menu)
            {
                if (item.Group.Selected)
                {
                    model.Add(new HttpLinkItem()
                    {
                        Name = item.Group.Name,
                        Url = Url.Action("index", "list", new
                        {
                            province = search.Province,
                            city = search.City,
                            mediacode = item.Group.CategoryCode
                        })
                    });

                    foreach (var childitem in item.Items)
                    {
                        if (childitem.Selected)
                        {
                            model.Add(new HttpLinkItem()
                            {
                                Name = childitem.Name,
                                Url = Url.Action("index", "list", new
                                {
                                    province = search.Province,
                                    city = search.City,
                                    mediacode = item.Group.CategoryCode,
                                    childmediacode = childitem.CategoryCode
                                })
                            });
                        }
                    }
                }
            }
            return model;
        }


        /// <summary>
        /// 获取搜索条件列表
        /// </summary>
        /// <param name="searchTrem"></param>
        /// <returns></returns>
        private List<HttpLinkGroup> GetSearch(ListSearchItemViewModel search)
        {

            List<HttpLinkGroup> result = new List<HttpLinkGroup>();

            var provinceValue = EnumHelper.GetProvinceValue(search.Province);

            #region CityGroup

            if (provinceValue != (int)ProvinceName.quanguo)
            {
                HttpLinkGroup cityGroup = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "城市",
                        Url = Url.Action("index", new
                          {
                              province = search.Province,
                              city = 0,
                              mediacode = search.MediaCode,
                              childmediacode = search.ChildMediaCode,
                              formatcode = search.FormatCode,
                              ownercode = search.OwnerCode,
                              periodcode = search.PeriodCode
                          })
                    }
                };
                cityGroup.Items = areaService.GetALL().Where(x => x.PID == provinceValue).ToList().Select(x => new HttpLinkItem()
                {
                    ID = x.ID,
                    Name = x.CateName,
                    Url = Url.Action("index", new
                    {
                        province = search.Province,
                        city = x.ID,
                        mediacode = search.MediaCode,
                        childmediacode = search.ChildMediaCode,
                        formatcode = search.FormatCode,
                        ownercode = search.OwnerCode,
                        periodcode = search.PeriodCode

                    }),
                    Selected = x.ID == search.City
                }).ToList();
                result.Add(cityGroup);
            }

            #endregion

            #region MediaCode

            HttpLinkGroup categoryGroup = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "媒体类别",
                    Url = Url.Action("index", new
                    {
                        city = search.City,
                        mediacode = search.MediaCode,
                        formatcode = search.FormatCode,
                        ownercode = search.OwnerCode,
                        periodcode = search.PeriodCode
                    })
                }
            };
            categoryGroup.Items = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new HttpLinkItem()
            {
                ID = x.ID,
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    city = search.City,
                    mediacode = x.ID,
                    formatcode = search.FormatCode,
                    ownercode = search.OwnerCode,
                    periodcode = search.PeriodCode

                }),
                Selected = search.MediaCode == x.ID

            }).ToList();

            result.Add(categoryGroup);

            #endregion

            #region ChildMediaCode
            if (search.MediaCode != 0)
            {
                HttpLinkGroup childCategoryGroup = new HttpLinkGroup()
                {
                    Group = new HttpLinkItem()
                    {
                        Name = "媒体子类别",
                        Url = Url.Action("index", new
                        {
                            city = search.City,
                            mediacode = search.MediaCode,
                            childmediacode = search.ChildMediaCode,
                            formatcode = search.FormatCode,
                            ownercode = search.OwnerCode,
                            periodcode = search.PeriodCode
                        })
                    }
                };

                childCategoryGroup.Items = outDoorMediaCateService.GetALL().Where(x => x.PID == search.MediaCode).ToList().Select(x => new HttpLinkItem()
                {
                    ID = x.ID,
                    Name = x.CateName,
                    Url = Url.Action("index", new
                    {
                        city = search.City,
                        mediacode = search.MediaCode,
                        childmediacode = x.ID,
                        formatcode = search.FormatCode,
                        ownercode = search.OwnerCode,
                        periodcode = search.PeriodCode

                    }),
                    Selected = search.ChildMediaCode == x.ID

                }).ToList();

                result.Add(childCategoryGroup);
            }
            #endregion

            #region FormatCode
            HttpLinkGroup formatGroup = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "表现形式",
                    Url = Url.Action("index", new
                     {
                         province = search.Province,
                         city = search.City,
                         mediacode = search.MediaCode,
                         childmediacode = search.ChildMediaCode,
                         ownercode = search.OwnerCode,
                         periodcode = search.PeriodCode
                     })
                }
            };
            formatGroup.Items = formatCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new HttpLinkItem()
            {
                ID = x.ID,
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    city = search.City,
                    mediacode = search.MediaCode,
                    childmediacode = search.ChildMediaCode,
                    formatcode = x.ID,
                    ownercode = search.OwnerCode,
                    periodcode = search.PeriodCode

                }),
                Selected = search.FormatCode == x.ID

            }).ToList();

            result.Add(formatGroup);

            #endregion

            #region OwnerCode
            HttpLinkGroup ownerGroup = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "表现形式",
                    Url = Url.Action("index", new
                    {
                        province = search.Province,
                        city = search.City,
                        mediacode = search.MediaCode,
                        childmediacode = search.ChildMediaCode,
                        formatcode = search.FormatCode,
                        periodcode = search.PeriodCode
                    })
                }
            };
            ownerGroup.Items = ownerCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new HttpLinkItem()
            {
                ID = x.ID,
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    city = search.City,
                    mediacode = search.MediaCode,
                    childmediacode = search.ChildMediaCode,
                    formatcode = search.FormatCode,
                    ownercode = x.ID,
                    periodcode = search.PeriodCode

                }),
                Selected = search.OwnerCode == x.ID

            }).ToList();

            result.Add(ownerGroup);

            #endregion

            #region PeriodCode
            HttpLinkGroup periodGroup = new HttpLinkGroup()
            {
                Group = new HttpLinkItem()
                {
                    Name = "表现形式",
                    Url = Url.Action("index", new
                    {
                        province = search.Province,
                        city = search.City,
                        mediacode = search.MediaCode,
                        childmediacode = search.ChildMediaCode,
                        formatcode = search.FormatCode,
                        ownercode = search.OwnerCode
                    })
                }
            };
            periodGroup.Items = periodCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new HttpLinkItem()
            {
                ID = x.ID,
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    city = search.City,
                    mediacode = search.MediaCode,
                    childmediacode = search.ChildMediaCode,
                    formatcode = search.FormatCode,
                    ownercode = search.OwnerCode,
                    periodcode = x.ID

                }),
                Selected = search.PeriodCode == x.ID

            }).ToList();

            result.Add(periodGroup);

            #endregion

            return result;

        }

    }
}
