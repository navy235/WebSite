using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public class HttpLinkItem
    {
        public int ID { get; set; }

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

}