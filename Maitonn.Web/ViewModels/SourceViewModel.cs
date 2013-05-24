using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public class HttpLinkItem
    {
        public int ID { get; set; }

        public int MemberID { get; set; }

        public string ImgUrl { get; set; }

        public string MidImgUrl { get; set; }

        public string SmallImgUrl { get; set; }

        public string HintClass { get; set; }

        public string Url { get; set; }

        public string Name { get; set; }

        public decimal Price { get; set; }

        public string ProvinceName { get; set; }

        public int Province { get; set; }

        public string CityName { get; set; }

        public int City { get; set; }

        public string CategoryName { get; set; }

        public int CategoryCode { get; set; }

        public string PCategoryName { get; set; }

        public int PCategoryCode { get; set; }

        public string PeriodName { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public string Mobile { get; set; }

        public string Phone { get; set; }

        public string CompanyName { get; set; }

        public int MemberCreditIndex { get; set; }

        public int MemberStatus { get; set; }

        public bool Selected { get; set; }

        public decimal Width { get; set; }

        public decimal Height { get; set; }

        public int TotalFaces { get; set; }

        public DateTime AddTime { get; set; }

        public string FormatCateName { get; set; }

        public string PeriodCateName { get; set; }


    }

    public class HttpLinkGroup
    {
        public HttpLinkGroup()
        {
            this.Items = new List<HttpLinkItem>();
        }

        public HttpLinkItem Group { get; set; }

        public List<HttpLinkItem> Items { get; set; }
    }

    public class HttpLinkGallery
    {
        public HttpLinkGallery()
        {
            this.Tabs = new List<HttpLinkGroup>();
        }

        public HttpLinkItem Gallery { get; set; }

        public List<HttpLinkGroup> Tabs { get; set; }

    }

    public class ListSource
    {
        public List<HttpLinkItem> Items { get; set; }

        public int PageSize { get; set; }

        public int CurrentPage { get; set; }

        public int TotalCount { get; set; }

        public string Querywords { get; set; }
    }

    public class ListSort
    {
        public bool SortDefault { get; set; }

        public bool SortPriceDesc { get; set; }

        public bool SortPriceAsc { get; set; }
    }

}