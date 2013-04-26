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
    public class SliderImgViewModel
    {

        public SliderImgViewModel()
        {
            this.EndTime = DateTime.Now;
        }

        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }


        [Required(ErrorMessage = "请选择置顶类型")]
        [Display(Name = "置顶类型")]
        [UIHint("SingleDropdownList")]
        public int SliderImgStatus { get; set; }


        [Required(ErrorMessage = "请选择置顶省份")]
        [Display(Name = "置顶省份")]
        [UIHint("SingleDropdownList")]
        public int ProvinceCode { get; set; }

        [Required(ErrorMessage = "请输入置顶名称")]
        [Display(Name = "置顶名称")]
        [StringCheckLength(4, 50)]
        public string Name { get; set; }


        [Required(ErrorMessage = "请上传轮播图片")]
        [Display(Name = "轮播图片")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "710|280")]
        [HintClass("sliderImg")]
        public string ImgUrl { get; set; }


        [Required(ErrorMessage = "请输入链接地址")]
        [Display(Name = "链接地址")]
        [StringCheckLength(4, 200)]
        public string LinkUrl { get; set; }


        [Display(Name = "排序")]
        [UIHint("Integer")]
        public int OrderIndex { get; set; }


        [Required(ErrorMessage = "请输入结束时间")]
        [Display(Name = "结束时间")]
        [DataType(DataType.DateTime)]
        public DateTime EndTime { get; set; }
    }
}