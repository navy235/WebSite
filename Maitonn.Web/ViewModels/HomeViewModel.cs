using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Web;
using PagedList;
using PagedList.Mvc;

namespace Maitonn.Web
{


    public class ListPageViewModel
    {

        public List<ListSearchProductViewModel> Items { get; set; }

        public int PageSize { get; set; }

        public int CurrentPage { get; set; }

        public int TotalCount { get; set; }

        public string Querywords { get; set; }
    }

    public class ShowViewModel
    {
        public string Province { get; set; }


        public BraedViewModel Braed { get; set; }

        public TopHotListMenuViewModel ListMenu { get; set; }

        public ListProductViewModel HotList { get; set; }

        public ListProductViewModel SuggestList { get; set; }

        public ListLinksViewModel CompanyList { get; set; }

        public ListSearchViewModel Search { get; set; }

        public OutDoor Item { get; set; }

        [UIHint("AuctionCalendar")]
        public int MediaID { get; set; }

        public CompanyShopIntroViewModel Company { get; set; }
    }


    public class BraedViewModel
    {
        public BraedViewModel()
        {
            this.Items = new List<CategoryViewModel>();
        }

        public List<CategoryViewModel> Items { get; set; }
    }


    public class TopMenuViewModel
    {

    }

    public class ListSearchItemViewModel
    {
        public string Province { get; set; }

        public int City { get; set; }

        public int MediaCode { get; set; }

        public int ChildMediaCode { get; set; }

        public int FormatCode { get; set; }

        public int OwnerCode { get; set; }

        public int PeriodCode { get; set; }

        public int Price { get; set; }

        public int Order { get; set; }

        public int Page { get; set; }

        public int Descending { get; set; }

        public int AuthStatus { get; set; }

        public string Query { get; set; }

    }


    public class ListSearchProductViewModel
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string ImgUrl { get; set; }

        public string ProvinceName { get; set; }

        public int ProvinceCode { get; set; }

        public string CityName { get; set; }

        public int CityCode { get; set; }

        public string ParentMediaCateName { get; set; }

        public int ParentMediaCateCode { get; set; }

        public string MediaCateName { get; set; }

        public int MediaCateCode { get; set; }

        public string OwnerCateName { get; set; }

        public string PeriodCateName { get; set; }

        public string FormatCateName { get; set; }

        public decimal Price { get; set; }

        public decimal Width { get; set; }

        public decimal Height { get; set; }

        public int TotalFaces { get; set; }

        public DateTime Addtime { get; set; }

        public int MemberStatus { get; set; }

        public int MemberCreditIndex { get; set; }

        public string CompanyName { get; set; }
    }




    public class ListSearchViewModel
    {
        public ListSearchViewModel()
        {
            this.items = new List<CategoryListViewModel>();
        }

        public List<CategoryListViewModel> items { get; set; }
    }


    public class ListProductViewModel
    {
        public ListProductViewModel()
        {
            this.Items = new List<ProductViewModel>();
        }

        public string Name { get; set; }


        public List<ProductViewModel> Items { get; set; }
    }

    public class ListLinksViewModel
    {
        public ListLinksViewModel()
        {
            this.Items = new List<CategoryViewModel>();
        }
        public List<CategoryViewModel> Items { get; set; }
    }


    public class TopHotViewModel
    {
        public TopHotListMenuViewModel TopHotListMenu { get; set; }

        public SliderBoxViewModel SliderBox { get; set; }

        public SliderTabBoxViewModel SliderTabBox { get; set; }
    }

    public class TopHotListMenuViewModel
    {
        public TopHotListMenuViewModel()
        {
            this.Items = new List<CategoryListViewModel>();
        }
        public List<CategoryListViewModel> Items { get; set; }
    }

    public class SliderBoxViewModel
    {
        public SliderBoxViewModel()
        {
            this.Items = new List<CategoryViewModel>();
        }

        public List<CategoryViewModel> Items { get; set; }
    }

    public class ProductViewModel
    {
        public string ImgUrl { get; set; }

        public int ID { get; set; }

        public string Name { get; set; }

        public decimal Price { get; set; }

        public string Province { get; set; }

        public string City { get; set; }
    }

    public class CategoryViewModel
    {
        public string ImgUrl { get; set; }

        public string CID { get; set; }

        public bool Selected { get; set; }

        public string CssClass { get; set; }

        public string Name { get; set; }

        public string Url { get; set; }
    }

    public class ProvinceViewModel
    {
        public string Name { get; set; }
        public string Url { get; set; }
    }

    public class CategoryListViewModel
    {
        public CategoryViewModel Category { get; set; }

        public List<CategoryViewModel> ChildCategories { get; set; }
    }


    public class SliderTabBoxViewModel
    {
        public SliderTabBoxViewModel()
        {
            this.Tabs = new List<SliderTabContainerViewModel>();
        }

        public List<SliderTabContainerViewModel> Tabs { get; set; }
    }

    public class SliderTabContainerViewModel
    {
        public SliderTabContainerViewModel()
        {
            this.Items = new List<ProductViewModel>();
        }

        public string Name { get; set; }


        public List<ProductViewModel> Items { get; set; }
    }

}