using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Web;
using PagedList;
using PagedList.Mvc;

namespace Maitonn.Web
{

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

        public double MinX { get; set; }

        public double MinY { get; set; }

        public double MaxX { get; set; }

        public double MaxY { get; set; }

    }

    public class ProvinceViewModel
    {
        public string Name { get; set; }
        public string Url { get; set; }
    }

    

}