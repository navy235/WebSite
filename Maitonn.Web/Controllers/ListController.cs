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
            ListViewModel model = new ListViewModel();

            model.ListMenu = GetListMenu(searchTrem);

            model.Braed = GetBread(province, model.ListMenu);

            model.HotList = GetHotList();
            model.SuggestList = GetSuggestList();
            model.CompanyList = GetCompanyList();
            model.Search = GetSearch(searchTrem);
            model.Province = province;

            model.PriceListFilter = GetPriceListFilter(searchTrem);
            model.DefaultOrderUrl = Url.Action("index", new
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

            model.PriceOrderAscUrl = Url.Action("index", new
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

            model.PriceOrderDescUrl = Url.Action("index", new
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
            model.Result = GetResult(searchTrem);

            if (searchTrem.Order == 0)
            {
                model.isSortDefault = true;
            }
            else if (searchTrem.Order == (int)SortProperty.Price)
            {
                if (searchTrem.Descending == (int)SortDirection.Descending)
                {
                    model.isSortPriceDesc = true;
                }
                else
                {
                    model.isSortPriceAsc = true;
                }
            }

            return View(model);
        }

        private PriceListFilterViewModel GetPriceListFilter(ListSearchItemViewModel searchTrem)
        {
            PriceListFilterViewModel model = new PriceListFilterViewModel();

            model.Name = UIHelper.PriceList.Single(x => x.Value == searchTrem.Price.ToString()).Text;

            model.Items = UIHelper.PriceList.Select(x => new CategoryViewModel()
            {
                Name = x.Text,
                Selected = x.Value == searchTrem.Price.ToString(),
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = searchTrem.FormatCode,
                    ownercode = searchTrem.OwnerCode,
                    periodcode = searchTrem.PeriodCode,
                    price = Convert.ToInt32(x.Value),
                    order = 0,
                    descending = 0,
                    page = 1,
                })

            }).ToList();

            return model;
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

        private ListPageViewModel GetResult(ListSearchItemViewModel searchTrem)
        {
            const int PageSize = 15;
            var model = new ListPageViewModel();
            var query = new List<ListSearchProductViewModel>();
            LuceneSearchService Service = new LuceneSearchService();
            var searchFilter = GetSearchFilter(searchTrem.Query, searchTrem.Order, searchTrem.Descending, searchTrem.Page, PageSize);
            int totalHits;
            using (MiniProfiler.Current.Step("LuceneSearch"))
            {
                query = Service.Search(searchTrem, searchFilter, out totalHits);
            }
            model.Items = query;

            model.TotalCount = totalHits;
            model.CurrentPage = searchTrem.Page;
            model.PageSize = PageSize;
            model.Querywords = string.IsNullOrEmpty(searchTrem.Query) ? "" : searchTrem.Query;

            return model;
        }

        [ChildActionOnly]
        public ActionResult Menu(string province = "quanguo")
        {
            if (!CookieHelper.Province.Equals(province, StringComparison.CurrentCultureIgnoreCase))
            {
                CookieHelper.SetProvinceCookie(province);
            }
            TopHotListMenuViewModel model = GetMenu(province);
            return View(model);
        }

        private TopHotListMenuViewModel GetMenu(string province)
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
                    Url = Url.Action("index", new
                    {
                        province = province,
                        mediacode = item.ID
                    })
                };
                clvm.Category = cvm;
                //子类导航
                List<CategoryViewModel> ChildCategories = item.ChildCategoies.Select(x => new CategoryViewModel
                {
                    CID = x.ID.ToString(),
                    Name = x.CateName,

                    Url = Url.Action("index", new
                    {
                        province = province,

                        mediacode = item.ID,
                        childmediacode = x.ID
                    })
                }).ToList();
                clvm.ChildCategories = ChildCategories;
                model.Items.Add(clvm);
            }
            return model;

        }


        /// <summary>
        /// 获取左边导航链接
        /// </summary>
        /// <param name="searchTrem">搜索条件集合</param>
        /// <returns></returns>
        private TopHotListMenuViewModel GetListMenu(ListSearchItemViewModel searchTrem)
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
                    Url = Url.Action("index", new
                    {
                        province = searchTrem.Province,
                        city = searchTrem.City,
                        mediacode = item.ID
                    }),
                    Selected = searchTrem.MediaCode == item.ID
                };

                clvm.Category = cvm;


                //子类导航
                List<CategoryViewModel> ChildCategories = item.ChildCategoies.Select(x => new CategoryViewModel
                {
                    CID = x.ID.ToString(),
                    Name = x.CateName,
                    Selected = x.ID == searchTrem.ChildMediaCode,
                    Url = Url.Action("index", new
                    {
                        province = searchTrem.Province,
                        city = searchTrem.City,
                        mediacode = item.ID,
                        childmediacode = x.ID
                    })
                }).ToList();
                clvm.ChildCategories = ChildCategories;
                clvm.Category.Selected = clvm.Category.Selected ?
                    clvm.Category.Selected :
                    ChildCategories.Any(x => x.Selected == true);
                model.Items.Add(clvm);
            }
            return model;
        }


        private BraedViewModel GetBread(string province, TopHotListMenuViewModel listmenu)
        {
            BraedViewModel model = new BraedViewModel();

            CategoryViewModel home = new CategoryViewModel()
            {
                Url = Url.Action("index", "home", new
                {
                    province = province
                })
            };
            model.Items.Add(home);
            foreach (var item in listmenu.Items)
            {
                if (item.Category.Selected)
                {
                    model.Items.Add(item.Category);

                    foreach (var childitem in item.ChildCategories)
                    {
                        if (childitem.Selected)
                        {
                            model.Items.Add(childitem);
                        }
                    }
                }
            }
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

        /// <summary>
        /// 获取搜索条件列表
        /// </summary>
        /// <param name="searchTrem"></param>
        /// <returns></returns>
        private ListSearchViewModel GetSearch(ListSearchItemViewModel searchTrem)
        {
            ListSearchViewModel model = new ListSearchViewModel();

            CategoryListViewModel clvm = new CategoryListViewModel();

            var provinceid = EnumHelper.GetProvinceValue(searchTrem.Province);

            if (provinceid != 35)
            {
                clvm.Category = new CategoryViewModel()
                {
                    Name = "城市",
                    Url = Url.Action("index", new
                    {
                        province = searchTrem.Province,
                        city = 0,
                        mediacode = searchTrem.MediaCode,
                        childmediacode = searchTrem.ChildMediaCode,
                        formatcode = searchTrem.FormatCode,
                        ownercode = searchTrem.OwnerCode,
                        periodcode = searchTrem.PeriodCode
                    })
                };
                clvm.ChildCategories = areaService.GetALL().Where(x => x.PID == provinceid).ToList().Select(x => new CategoryViewModel
                {
                    CID = x.ID.ToString(),
                    Name = x.CateName,
                    Url = Url.Action("index", new
                    {
                        province = searchTrem.Province,
                        city = x.ID,
                        mediacode = searchTrem.MediaCode,
                        childmediacode = searchTrem.ChildMediaCode,
                        formatcode = searchTrem.FormatCode,
                        ownercode = searchTrem.OwnerCode,
                        periodcode = searchTrem.PeriodCode

                    }),
                    Selected = x.ID == searchTrem.City
                }).ToList();
                model.items.Add(clvm);
            }

            //if (!string.IsNullOrEmpty(searchTrem.City))
            //{
            //    var citycode = searchTrem.City.Substring(0, 3);

            //    clvm = new CategoryListViewModel();
            //    clvm.Category = new CategoryViewModel()
            //    {
            //        Name = "城市",
            //        Url = Url.Action("index", new
            //        {
            //            city = citycode,
            //            mediacode = searchTrem.MediaCode,
            //            formatcode = searchTrem.FormatCode,
            //            ownercode = searchTrem.OwnerCode,
            //            periodcode = searchTrem.PeriodCode
            //        })
            //    };

            //    clvm.ChildCategories = areaService.GetALL().Where(x => x.PID.Equals(citycode, StringComparison.CurrentCultureIgnoreCase)).ToList().Select(x => new CategoryViewModel
            //    {
            //          CID = x.ID.ToString(),
            //        Name = x.CateName,
            //        Selected = string.IsNullOrEmpty(searchTrem.City) ? false : searchTrem.City.Equals(x.ID, StringComparison.CurrentCultureIgnoreCase),
            //        Url = Url.Action("index", new
            //        {
            //            city = x.ID,
            //            mediacode = searchTrem.MediaCode,
            //            formatcode = searchTrem.FormatCode,
            //            ownercode = searchTrem.OwnerCode,
            //            periodcode = searchTrem.PeriodCode

            //        })
            //    }).ToList();

            //    model.items.Add(clvm);

            //}

            //clvm = new CategoryListViewModel();

            //clvm.Category = new CategoryViewModel()
            //{
            //    Name = "类别",
            //    Url = Url.Action("index", new
            //    {
            //        city = searchTrem.City,
            //        mediacode = searchTrem.MediaCode,
            //        formatcode = searchTrem.FormatCode,
            //        ownercode = searchTrem.OwnerCode,
            //        periodcode = searchTrem.PeriodCode
            //    })
            //};
            //clvm.ChildCategories = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new CategoryViewModel
            //{
            //      CID = x.ID.ToString(),
            //    Name = x.CateName,
            //    Url = Url.Action("index", new
            //    {
            //        city = searchTrem.City,
            //        mediacode = x.ID,
            //        formatcode = searchTrem.FormatCode,
            //        ownercode = searchTrem.OwnerCode,
            //        periodcode = searchTrem.PeriodCode

            //    }),
            //    Selected = string.IsNullOrEmpty(searchTrem.MediaCode) ? false : searchTrem.MediaCode.StartsWith(x.ID, StringComparison.CurrentCultureIgnoreCase)
            //}).ToList();

            //model.items.Add(clvm);


            //if (!string.IsNullOrEmpty(searchTrem.MediaCode))
            //{
            //    var mediacode = searchTrem.MediaCode.Substring(0, 3);
            //    clvm = new CategoryListViewModel();
            //    clvm.Category = new CategoryViewModel()
            //    {
            //        Name = "子类",
            //        Url = Url.Action("index", new
            //        {
            //            city = searchTrem.City,
            //            mediacode = mediacode,
            //            formatcode = searchTrem.FormatCode,
            //            ownercode = searchTrem.OwnerCode,
            //            periodcode = searchTrem.PeriodCode
            //        })
            //    };

            //    clvm.ChildCategories = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(mediacode, StringComparison.CurrentCultureIgnoreCase)).ToList().Select(x => new CategoryViewModel
            //    {
            //          CID = x.ID.ToString(),
            //        Name = x.CateName,
            //        Url = Url.Action("index", new
            //        {
            //            city = searchTrem.City,
            //            mediacode = x.ID,
            //            formatcode = searchTrem.FormatCode,
            //            ownercode = searchTrem.OwnerCode,
            //            periodcode = searchTrem.PeriodCode

            //        }),
            //        Selected = string.IsNullOrEmpty(searchTrem.MediaCode) ? false : searchTrem.MediaCode.Equals(x.ID, StringComparison.CurrentCultureIgnoreCase)
            //    }).ToList();
            //    model.items.Add(clvm);
            //}

            clvm = new CategoryListViewModel();
            clvm.Category = new CategoryViewModel()
            {
                Name = "表现形式",
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    ownercode = searchTrem.OwnerCode,
                    periodcode = searchTrem.PeriodCode
                })
            };
            clvm.ChildCategories = formatCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new CategoryViewModel
            {
                CID = x.ID.ToString(),
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = x.ID,
                    ownercode = searchTrem.OwnerCode,
                    periodcode = searchTrem.PeriodCode

                }),
                Selected = searchTrem.FormatCode == 0 ? false : searchTrem.FormatCode == x.ID
            }).ToList();
            model.items.Add(clvm);

            clvm = new CategoryListViewModel();
            clvm.Category = new CategoryViewModel()
            {
                Name = "代理类型",
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = searchTrem.FormatCode,
                    periodcode = searchTrem.PeriodCode
                })

            };
            clvm.ChildCategories = ownerCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new CategoryViewModel
            {
                CID = x.ID.ToString(),
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = searchTrem.FormatCode,
                    ownercode = x.ID,
                    periodcode = searchTrem.PeriodCode

                }),
                Selected = searchTrem.OwnerCode == 0 ? false : searchTrem.OwnerCode == x.ID
            }).ToList();

            model.items.Add(clvm);


            clvm = new CategoryListViewModel();
            clvm.Category = new CategoryViewModel()
            {
                Name = "购买周期",
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = searchTrem.FormatCode,
                    ownercode = searchTrem.OwnerCode
                })
            };
            clvm.ChildCategories = periodCateService.GetALL().Where(x => x.PID.Equals(null)).ToList().Select(x => new CategoryViewModel
            {
                CID = x.ID.ToString(),
                Name = x.CateName,
                Url = Url.Action("index", new
                {
                    province = searchTrem.Province,
                    city = searchTrem.City,
                    mediacode = searchTrem.MediaCode,
                    childmediacode = searchTrem.ChildMediaCode,
                    formatcode = searchTrem.FormatCode,
                    ownercode = searchTrem.OwnerCode,
                    periodcode = x.ID

                }),
                Selected = searchTrem.PeriodCode == 0 ? false : searchTrem.PeriodCode == x.ID
            }).ToList();

            model.items.Add(clvm);

            return model;
        }

    }
}
