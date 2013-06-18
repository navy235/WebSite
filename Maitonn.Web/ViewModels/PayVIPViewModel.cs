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
    using PagedList;
    using Maitonn.Core;

    public class PayVIPViewModel
    {

        public string Name { get; set; }

        public int Month { get; set; }

        public int GiftMonth { get; set; }

        public int GiftMoney { get; set; }

        public decimal Price { get; set; }

    }


    public class PayMoneyViewModel
    {
        public int Money { get; set; }

        public int GiftMoney { get; set; }

        public decimal Price { get; set; }
    }

    public class PayStatusViewModel
    {
        public string Status { get; set; }

        public string Trade_No { get; set; }

        public string Buy_ID { get; set; }

        public string Buy_Email { get; set; }

        public string Pay_No { get; set; }
    }


    public class PayTopViewModel
    {


        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [HiddenInput(DisplayValue = false)]
        public int TopID { get; set; }



        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶名称：")]
        public string TopName { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶单价：")]
        public decimal Price { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "折扣：")]
        public decimal Discount { get; set; }


        [Required(ErrorMessage = "请选择置顶省份")]
        [Display(Name = "置顶省份：")]
        [UIHint("SingleDropdownList")]
        public int ProvinceCode { get; set; }

        [Required(ErrorMessage = "请输入推广名称")]
        [Display(Name = "推广名称：")]
        [StringCheckLength(4, 50)]
        public string Name { get; set; }



        [Required(ErrorMessage = "请上传轮播图片")]
        [Display(Name = "轮播图片：")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "710|280")]
        [AdditionalMetadata("mustUpload", true)]
        [HintClass("sliderImg")]
        public string ImgUrl { get; set; }


        [Required(ErrorMessage = "请输入链接地址")]
        [Display(Name = "链接地址：")]
        [StringCheckLength(4, 200)]
        public string LinkUrl { get; set; }




        [Required(ErrorMessage = "请选择置顶日期")]
        [Display(Name = "置顶时间：")]
        [DataType(DataType.DateTime)]
        [UIHint("TopTime")]
        [AdditionalMetadata("TopTimeDays", "30")]
        public string TopTime { get; set; }



    }


    public class PayTopMeidaViewModel
    {


        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [HiddenInput(DisplayValue = false)]
        public int TopID { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶名称：")]
        public string TopName { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶单价：")]
        public decimal Price { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "折扣：")]
        public decimal Discount { get; set; }


        [Display(Name = "媒体信息:")]
        [Required(ErrorMessage = "请选择需要置顶的媒体信息")]
        [UIHint("TopSelectSingle")]
        public int? MediaID { get; set; }

        [Required(ErrorMessage = "请选择置顶省份")]
        [Display(Name = "置顶省份：")]
        [UIHint("SingleDropdownList")]
        public int ProvinceCode { get; set; }

        [Required(ErrorMessage = "请选择置顶城市")]
        [Display(Name = "置顶城市", Order = 8)]
        [HintClass("city")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int CityCode { get; set; }


        [Required(ErrorMessage = "请选择媒体一级分类")]
        [Display(Name = "媒体一级分类：")]
        [UIHint("SingleDropdownList")]
        public int ParentMediaCode { get; set; }


        [Required(ErrorMessage = "请选择媒体类别")]
        [Display(Name = "媒体类别", Order = 2)]
        [HintClass("city")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int MeidaCode { get; set; }


        [Required(ErrorMessage = "请选择置顶日期")]
        [Display(Name = "置顶时间：")]
        [DataType(DataType.DateTime)]
        [UIHint("TopTime")]
        [AdditionalMetadata("TopTimeDays", "30")]
        public string TopTime { get; set; }



    }


    public class PayTopComapnyViewModel
    {
        public PayTopComapnyViewModel()
        {

        }

        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [HiddenInput(DisplayValue = false)]
        public int TopID { get; set; }

        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶名称：")]
        public string TopName { get; set; }

        [HiddenInput(DisplayValue = true)]
        [Display(Name = "置顶单价：")]
        public decimal Price { get; set; }

        [HiddenInput(DisplayValue = true)]
        [Display(Name = "折扣：")]
        public decimal Discount { get; set; }

        [Required(ErrorMessage = "请选择置顶省份")]
        [Display(Name = "置顶省份：")]
        [UIHint("SingleDropdownList")]
        public int ProvinceCode { get; set; }

        [Required(ErrorMessage = "请选择置顶日期")]
        [Display(Name = "置顶时间：")]
        [DataType(DataType.DateTime)]
        [UIHint("TopTime")]
        [AdditionalMetadata("TopTimeDays", "30")]
        public string TopTime { get; set; }


    }


    public class TopLimitModel
    {
        public int Count { get; set; }

        public string Time { get; set; }
    }
}