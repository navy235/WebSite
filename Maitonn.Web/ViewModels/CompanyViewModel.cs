
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
    public class CompanyReg
    {

        [HintSeparateTitle("基本信息")]
        [Required(ErrorMessage = "请输入公司名称")]
        [Display(Name = "公司名称")]
        [RegularExpression(@"^[\u4e00-\u9fa5A|Za-z|0-9|_]+$", ErrorMessage = "公司名称含有非法字符.")]
        //[Remote("NickNameExists", "AjaxService", ErrorMessage = "该公司名称含有非法字符或已经注册")]
        [StringCheckLength(7, 25)]
        [Hint("请输入7-25位公司名称，英文、数字或中文均可（中文占2个字符）。")]
        public string Name { get; set; }


        [Required(ErrorMessage = "请选择公司所在城市")]
        [Display(Name = "所在城市")]
        [HintClass("city")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int CityCode { get; set; }


        [Required(ErrorMessage = "请选择公司主要业务")]
        [Display(Name = "主要业务")]
        [UIHint("SingleDropdownList")]
        public int BussinessCode { get; set; }

        [Required(ErrorMessage = "请选择企业规模")]
        [Display(Name = "企业规模")]
        [UIHint("SingleDropdownList")]
        public int ScaleCode { get; set; }

        [Required(ErrorMessage = "请选择公司注册资金")]
        [Display(Name = "注册资金")]
        [UIHint("SingleDropdownList")]
        public int FundCode { get; set; }


        [Required(ErrorMessage = "请输入公司简介.")]
        [Display(Name = "公司简介")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(10, 500)]
        [Hint("请输入10-500位公司简介，（中文占2个字符）。")]
        public string Description { get; set; }


        [HintSeparateTitle("联系方式")]
        [Required(ErrorMessage = "请输入公司联系地址")]
        [Display(Name = "联系地址")]
        [StringLength(25, ErrorMessage = "请输入{2}-{1}位公司联系地址", MinimumLength = 7)]
        [Hint("公司联系地址7-25个字，不允许填写电话和特殊符号.")]
        public string Address { get; set; }


        [Display(Name = "地图位置")]
        [Required(ErrorMessage = "请标记公司所在地图坐标.")]
        [UIHint("MapMarker")]
        public string Position { get; set; }


        [Required(ErrorMessage = "请输入联系人")]
        [Display(Name = "联系人")]
        [StringCheckLength(4, 10)]
        [Hint("请输入4-10位联系人姓名，（中文占2个字符）。")]
        public string LinkMan { get; set; }

        [Required(ErrorMessage = "请选择联系人性别")]
        [Display(Name = "性别")]
        [AdditionalMetadata("Radio", "男,女")]
        [UIHint("Radio")]
        public bool Sex { get; set; }


        [Display(Name = "手机号码")]
        [RegularExpression(@"^(13[0-9]|15[-9]|18[0-9])\d{8}$", ErrorMessage = "您输入的手机号码格式不正确.")]
        [Hint("请输入手机号码.")]
        public string Mobile { get; set; }



        [Display(Name = "电话号码")]
        [Hint("请输入电话号码,电话号码格式010-2013042-1323，区号加电话号码加分机号码，无分机可以不填")]
        [RegularExpression(@"^0\d{2,3}(\-)?\d{7,8}$", ErrorMessage = "您输入的电话号码格式不正确.")]
        [RequireWith("Mobile", "手机号码")]
        public string Phone { get; set; }


        [Display(Name = "传真")]
        [RegularExpression(@"^^\d{3}-\d{8}(-\d{3,4})?|\d{4}-\d{7}(-\d{3,4})??$", ErrorMessage = "您输入的传真号码格式不正确.")]
        [Hint("请输传真号码,传真格式010-2013042-1323，区号加传真号码加分机号码，无分机可以不填")]
        public string Fax { get; set; }

        [Display(Name = "QQ号码")]
        [RegularExpression(@"^[1-9][0-9]{4,10}$", ErrorMessage = "您输入的QQ号码格式不正确.")]
        [Hint("请输入QQ号码.")]
        public string QQ { get; set; }

        [Display(Name = "MSN")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的MSN格式不正确.")]
        [Hint("请输入MSN.")]
        public string MSN { get; set; }


        [HintSeparateTitle("认证信息")]
        [Required(ErrorMessage = "请上传企业营业执照.")]
        [Display(Name = "企业执照")]
        [UIHint("UploadImgList")]
        [HintClass("uploadlist")]
        [AdditionalMetadata("UploadImgList", "")]
        [AdditionalMetadata("UploadImgListMaxLength", "6")]
        [HintLabel("请上传1-6张不小于800X600像素的图片,图片文件大小不小于5M")]
        public string CompanyImg { get; set; }


        [Required(ErrorMessage = "请上传联系人身份证照片.")]
        [Display(Name = "身份证照片")]
        [UIHint("UploadImgList")]
        [HintClass("uploadlist")]
        [AdditionalMetadata("UploadImgList", "2")]
        [AdditionalMetadata("UploadImgListMaxLength", "6")]
        [HintLabel("请上传1-6张不小于800X600像素的图片,图片文件大小不小于5M")]
        public string LinManImg { get; set; }


    }


    public class CompanyVerifyViewModel
    {
        [Display(Name = "公司ID")]
        public int CompanyID { get; set; }

        [Display(Name = "公司名称")]
        public string Name { get; set; }

        [Display(Name = "公司描述")]
        public string Description { get; set; }

        [Display(Name = "公司联系人")]
        public string LinkMan { get; set; }

        [Display(Name = "联系方式")]
        public string Contact { get; set; }

        [Display(Name = "审核状态")]
        public int Status { get; set; }

        [Display(Name = "添加时间")]
        public DateTime AddTime { get; set; }

        [Display(Name = "最后时间")]
        public DateTime LastTime { get; set; }

    }
}