
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
    public class CompanyReg
    {

        [HintSeparateTitle("基本信息")]
        [Required(ErrorMessage = "请输入公司名称")]
        [Display(Name = "公司名称")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "公司名称含有非法字符.")]
        //[Remote("NickNameExists", "AjaxService", ErrorMessage = "该公司名称含有非法字符或已经注册")]
        [StringCheckLength(7, 50)]
        [Hint("请输入7-50位公司名称，英文、数字或中文均可（中文占2个字符）。")]
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
        [StringCheckLength(10, 2000)]
        [Hint("请输入10-2000位公司简介，（中文占2个字符）。")]
        [HintClass("textarea")]
        public string Description { get; set; }


        [HintSeparateTitle("联系方式")]
        [Required(ErrorMessage = "请输入公司联系地址")]
        [Display(Name = "联系地址")]
        [StringCheckLength(7, 50)]
        [Hint("公司联系地址7-50个字，英文、数字或中文均可（中文占2个字符），不允许填写电话和特殊符号.")]
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
        [Required(ErrorMessage = "请上传企业LOGO.")]
        [Display(Name = "企业LOGO")]
        [UIHint("UploadImgEdit")]
        [HintClass("uploadlogo")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        [HintLabel("请上传不小于200X200像素的图片,图片文件大小不超过5M")]
        public string Logo { get; set; }


        [Required(ErrorMessage = "请上传企业营业执照.")]
        [Display(Name = "企业执照")]
        [UIHint("UploadImgList")]
        [HintClass("uploadlist")]
        [AdditionalMetadata("UploadImgList", "")]
        [AdditionalMetadata("UploadImgListMaxLength", "6")]
        [HintLabel("请上传1-6张不小于800X600像素的图片,图片文件大小不超过5M")]
        public string CompanyImg { get; set; }


        [Required(ErrorMessage = "请上传联系人身份证照片.")]
        [Display(Name = "身份证照片")]
        [UIHint("UploadImgList")]
        [HintClass("uploadlist")]
        [AdditionalMetadata("UploadImgList", "2")]
        [AdditionalMetadata("UploadImgListMaxLength", "6")]
        [HintLabel("请上传1-6张不小于800X600像素的图片,图片文件大小不超过5M")]
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



    public class CompanyLogo
    {
        [HiddenInput(DisplayValue = false)]
        public int CompanyID { get; set; }


        [Required(ErrorMessage = "请上传企业LOGO")]
        [Display(Name = "企业LOGO")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        public string LogoUrl { get; set; }
    }

    public class CompanyBanner
    {
        [HiddenInput(DisplayValue = false)]
        public int CompanyID { get; set; }


        [Required(ErrorMessage = "请上传企业Banner")]
        [Display(Name = "企业Banner")]
        [UIHint("UploadImg")]
        public string BannerUrl { get; set; }
    }

    public class CompanyCredentials
    {

        [Required(ErrorMessage = "请输入证书名称")]
        [Display(Name = "证书名称")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "证书名称含有非法字符.")]
        [StringCheckLength(7, 20)]
        [Hint("请输入7-20位证书名称，英文、数字或中文均可（中文占2个字符）。")]
        public string Name { get; set; }

        [Required(ErrorMessage = "请上传企业证书")]
        [Display(Name = "企业证书")]
        [UIHint("UploadImg")]
        public string Url { get; set; }

        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }
    }


    public class CompanyShopIndexViewModel
    {
        public CompanyShopIndexViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public IPagedList<CompanyProductViewModel> CompanyProduct { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopIntroViewModel
    {
        public CompanyShopIntroViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public string Province { get; set; }

        public string City{ get; set; }

        public string BussinessName { get; set; }

        public string ScaleName { get; set; }

        public string FundName { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopSourceViewModel
    {
        public CompanyShopSourceViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public IPagedList<CompanyProductViewModel> CompanyProduct { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopNoticeViewModel
    {
        public CompanyShopNoticeViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public IPagedList<CompanyNoticeViewModel> CompanyNotice { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopViewNoticeViewModel
    {
        public CompanyShopViewNoticeViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public CompanyNoticeViewModel CompanyNotice { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopContactViewModel
    {
        public CompanyShopContactViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public CompanyContactViewModel CompanyContact { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }


        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopCredentialsViewModel
    {
        public CompanyShopCredentialsViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public IPagedList<CompanyCredentialsViewModel> CompanyCredentials { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyShopMessageViewModel
    {
        public CompanyShopMessageViewModel()
        {
            this.CompanyCategory = new List<CompanyCategoryViewModel>();
            this.CompanyLinks = new List<CompanyLinksViewModel>();
        }

        public int MemberID { get; set; }

        public string Name { get; set; }

        public string Logo { get; set; }

        public string Banner { get; set; }

        public string Description { get; set; }

        public string Addresss { get; set; }

        public int SourceCount { get; set; }

        public List<CompanyCategoryViewModel> CompanyCategory { get; set; }

        public List<CompanyLinksViewModel> CompanyLinks { get; set; }
    }

    public class CompanyContactViewModel
    {

        [Display(Name = "联系地址", Order = 0)]
        public string Address { get; set; }

        [Required(ErrorMessage = "请输入联系人")]
        [Display(Name = "联系人", Order = 1)]
        public string LinkMan { get; set; }


        [Display(Name = "手机号码", Order = 2)]
        public string Mobile { get; set; }

        [Display(Name = "电话号码", Order = 3)]
        public string Phone { get; set; }


        [Display(Name = "传真", Order = 4)]
        public string Fax { get; set; }

        [Display(Name = "QQ号码", Order = 5)]
        public string QQ { get; set; }

        [Display(Name = "MSN", Order = 6)]
        public string MSN { get; set; }

        [Display(Name = "地图位置", Order = 7)]
        [UIHint("MapMarker")]
        public string Position { get; set; }

    }

    public class CompanyCategoryViewModel
    {

        public CompanyCategoryViewModel()
        {
            this.Childrens = new List<CompanyCategoryViewModel>();
        }

        public string Name { get; set; }

        public bool IsParent { get; set; }

        public int ID { get; set; }

        public int Count { get; set; }

        public List<CompanyCategoryViewModel> Childrens { get; set; }
    }

    public class CompanyProductViewModel
    {

        public int ID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string ImgUrl { get; set; }

        public string Url { get; set; }

        public string ParentMediaCateName { get; set; }

        public int ParentMediaCateCode { get; set; }

        public string MediaCateName { get; set; }

        public int MediaCateCode { get; set; }

        public string OwnerCateName { get; set; }

        public decimal Price { get; set; }

        public DateTime Addtime { get; set; }

    }

    public class CompanyCredentialsViewModel
    {

        public int ID { get; set; }

        public string Name { get; set; }

        public string ImgUrl { get; set; }

        public DateTime Addtime { get; set; }

    }

    public class CompanyNoticeViewModel
    {

        public int ID { get; set; }

        [Display(Name = "标题")]
        public string Name { get; set; }


        [Display(Name = "内容")]
        public string Content { get; set; }


        [Display(Name = "状态")]
        public int Status { get; set; }


        [Display(Name = "添加时间")]
        public DateTime AddTime { get; set; }

    }

    public class AddCompanyNoticeViewModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入公告标题")]
        [Display(Name = "公告标题")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "公告标题含有非法字符.")]
        [StringCheckLength(7, 50)]
        [Hint("请输入7-50位公告标题，英文、数字或中文均可（中文占2个字符）。")]
        public string Name { get; set; }


        [Required(ErrorMessage = "请输入公告内容")]
        [Display(Name = "公告内容")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(10, 2000)]
        [Hint("请输入10-2000位公告内容，（中文占2个字符）。")]
        [HintClass("textarea")]
        public string Content { get; set; }
    }




    public class CompanyMessageViewModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }


        [Display(Name = "标题")]
        public string Name { get; set; }


        [Display(Name = "内容")]
        public string Content { get; set; }


        [Display(Name = "状态")]
        public int Status { get; set; }


        [Display(Name = "添加时间")]
        public DateTime AddTime { get; set; }

    }

    public class CompanyMessageDetailsViewModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }


        [Display(Name = "标题")]
        public string Name { get; set; }


        [Display(Name = "内容")]
        [HintClass("textarea")]
        public string Content { get; set; }


        [Display(Name = "状态")]
        [HiddenInput(DisplayValue = false)]
        public int Status { get; set; }

        [HintSeparateTitle("联系人信息")]
        [Display(Name = "留言人")]
        public string NickName { get; set; }

        [Display(Name = "手机")]
        public string Phone { get; set; }

        [Display(Name = "QQ")]
        public string QQ { get; set; }

        [Display(Name = "MSN")]
        public string MSN { get; set; }

        [Display(Name = "留言时间")]
        public DateTime AddTime { get; set; }




    }

    public class AddCompanyMessageViewModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入留言标题")]
        [Display(Name = "留言标题")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "留言标题含有非法字符.")]
        [StringCheckLength(7, 50)]
        [Hint("请输入7-50位公告标题，英文、数字或中文均可（中文占2个字符）。")]
        public string Name { get; set; }

        [Required(ErrorMessage = "请输入留言标题")]
        [Display(Name = "留言标题")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(10, 2000)]
        [Hint("请输入10-2000位公告内容，（中文占2个字符）。")]
        [HintClass("textarea")]
        public string Content { get; set; }

        [Required(ErrorMessage = "请输入验证码")]
        [Display(Name = "验证码：")]
        [StringLength(4, ErrorMessage = "长度为4位", MinimumLength = 4)]
        [Remote("ValidateVCode", "AjaxService", ErrorMessage = "验证码错误或过期")]
        [UIHint("ValidateVCode")]
        [HintClass("validatecode")]
        public string Vcode { get; set; }
    }

    public class CompanyLinksViewModel
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string ImgUrl { get; set; }

        public string Url { get; set; }
    }

}