
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
    public class ServerItemViewModel
    {

        public ServerItemViewModel()
        {
            this.VipDiscount = 10;
            this.VipDiscount2 = 10;
            this.EndTime = DateTime.Now;
        }

        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请选择服务类型")]
        [Display(Name = "服务类型")]
        [UIHint("SingleDropdownList")]
        public int ServerType { get; set; }


        [Required(ErrorMessage = "请输入服务名称")]
        [Display(Name = "服务名称")]
        [StringCheckLength(4, 50)]
        public string Name { get; set; }


        [Required(ErrorMessage = "请上传服务标识图片")]
        [Display(Name = "服务标识图片")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        [AdditionalMetadata("mustUpload", false)]
        [HintClass("avtar")]
        public string ImgUrl { get; set; }

        [Required(ErrorMessage = "请输入媒体补充说明.")]
        [Display(Name = "媒体补充说明")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(4, 500)]
        public string Description { get; set; }

        [Required(ErrorMessage = "请输入帮助地址")]
        [Display(Name = "帮助地址")]
        [StringCheckLength(4, 200)]
        public string HelpUrl { get; set; }


        [Required(ErrorMessage = "请输入价格")]
        [Display(Name = "价格")]
        [UIHint("Integer")]
        public int Price { get; set; }

        [Required(ErrorMessage = "请输入支付模式")]
        [Display(Name = "支付模式")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "网银支付,广知币")]
        public bool IsPayByVMoney { get; set; }

        [Required(ErrorMessage = "请输入投放模式")]
        [Display(Name = "投放模式")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "全国投放,地区投放")]
        public bool IsQuanGuo { get; set; }

        [Required(ErrorMessage = "请输入是否按类别投放")]
        [Display(Name = "按类别投放")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "否,是")]
        public bool IsByCategory { get; set; }

        [Required(ErrorMessage = "请输入是否二级类别投放")]
        [Display(Name = "二级类别投放")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "否,是")]
        public bool IsByChildCategory { get; set; }

        [Display(Name = "基础币值")]
        [UIHint("Integer")]
        public int Money { get; set; }

        [Display(Name = "基础月份")]
        [UIHint("Integer")]
        public int Month { get; set; }

        [Display(Name = "获赠币值")]
        [UIHint("Integer")]
        public int GiftMoney { get; set; }

        [Display(Name = "获赠月份")]
        [UIHint("Integer")]
        public int GiftMonth { get; set; }

        [Display(Name = "VIP折扣")]
        [UIHint("Price")]
        [AdditionalMetadata("Price", "0,10")]
        [AdditionalMetadata("PriceUnit", "折")]
        public decimal VipDiscount { get; set; }

        [Display(Name = "VIP2折扣")]
        [UIHint("Price")]
        [AdditionalMetadata("Price", "0,10")]
        [AdditionalMetadata("PriceUnit", "折")]
        public decimal VipDiscount2 { get; set; }


        //[Required(ErrorMessage = "请输入开始时间")]
        //[Display(Name = "开始时间", Order = 16)]
        //[DataType(DataType.DateTime)]
        //public DateTime StartTime { get; set; }

        [Required(ErrorMessage = "请输入服务结束时间")]
        [Display(Name = "服务结束时间")]
        [DataType(DataType.DateTime)]
        public DateTime EndTime { get; set; }
    }
}