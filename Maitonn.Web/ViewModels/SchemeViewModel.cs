namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel;
    using System.Web.Security;
    using System.Linq;
    using System.Web;
    using System.Globalization;
    using System.Web.Mvc;
    using Maitonn.Core;

    public class SchemeAddViewModel
    {

        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入方案名称")]
        [Display(Name = "方案名称")]
        [CheckContact]
        [StringCheckLength(8, 30)]
        [Hint("请输入8-30位方案名称，英文、数字或中文均可（中文占2个字符）。")]
        public string Name { get; set; }

        [Required(ErrorMessage = "请输入方案描述")]
        [Display(Name = "方案描述")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(10, 2000)]
        [Hint("请输入10-2000位方案描述，（中文占2个字符）。")]
        [HintClass("textarea")]
        public string Description { get; set; }
    }




    public class SchemeViewModel
    {

        public SchemeViewModel()
        {
            this.Medias = new List<SchemeMediaViewModel>();
        }

        public int ID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public DateTime AddTime { get; set; }

        public List<SchemeMediaViewModel> Medias { get; set; }

    }



    public class SchemeMediaViewModel
    {
        public int ID { get; set; }

        public int MediaID { get; set; }

        public int MemberID { get; set; }

        public int SchemeID { get; set; }

        public string ProvinceName { get; set; }

        public string CityName { get; set; }

        public string PCategoryName { get; set; }

        public string CategoryName { get; set; }

        public string FormatName { get; set; }

        public string PeriodName { get; set; }

        public string OwnerName { get; set; }

        public string Description { get; set; }

        public int TrafficAuto { get; set; }

        public int TrafficPerson { get; set; }

        public bool HasLight { get; set; }

        public string LightStrat { get; set; }

        public string LightEnd { get; set; }

        public decimal Wdith { get; set; }

        public decimal Height { get; set; }

        public int TotalFaces { get; set; }

        public string Name { get; set; }

        public string CompanyName { get; set; }

        public string Mobile { get; set; }

        public string Phone { get; set; }

        public string ImgUrl { get; set; }

        public decimal Price { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime EndTime { get; set; }

    }

    public class AddSchemeViewModel
    {
        public int id { get; set; }

        public string schemeName { get; set; }

        public string schemeDescription { get; set; }

        public string endTime { get; set; }

        public string startTime { get; set; }

        public int schemeId { get; set; }

        public string price { get; set; }

        public int periodCode { get; set; }

        public int periodCount { get; set; }
    }

    public class AjaxEditSchemeViewModel
    {
        public int id { get; set; }

        public string startTime { get; set; }

        public string price { get; set; }

        public int periodCode { get; set; }

        public int periodCount { get; set; }
    }

    public class EditSchemeMediaViewModel
    {
        public string Name { get; set; }

        public decimal Uprice { get; set; }

        public decimal Price { get; set; }

        public int PeriodCode { get; set; }

        public int MediaID { get; set; }

        public int ID { get; set; }

        public int SchemeID { get; set; }

        public int PeriodCount { get; set; }

        public DateTime StartTime { get; set; }
    }
}