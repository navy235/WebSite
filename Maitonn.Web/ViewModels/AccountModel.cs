

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


    public class RegisterModel
    {
        [Required(ErrorMessage = "请输入电子邮箱")]
        [Display(Name = "电子邮箱：")]
        [Remote("EmailExists", "AjaxService", ErrorMessage = "该电子邮箱已经注册")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的电子邮箱格式不正确.")]
        [Hint("此电子邮箱将作为广知网登陆帐号,并作为密码找回邮箱，请认真填写。")]
        public string Email { get; set; }

        [Required(ErrorMessage = "请输入昵称")]
        [Display(Name = "昵称：")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "昵称含有非法字符.")]
        [Remote("NickNameExists", "AjaxService", ErrorMessage = "该昵称含有非法字符或已经注册")]
        [StringCheckLength(4, 14)]
        [Hint("请输入4-14位昵称，英文、数字或中文均可（中文占2个字符）。")]
        public string NickName { get; set; }

        [Required(ErrorMessage = "请输入密码")]
        [StringLength(15, ErrorMessage = "请输入{2}-{1}位密码", MinimumLength = 6)]
        [Display(Name = "设定密码：")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [HiddenInput(DisplayValue = false)]
        public string OpenID { get; set; }


        [HiddenInput(DisplayValue = false)]
        public int OpenType { get; set; }


        [Required(ErrorMessage = "请确认密码")]
        [DataType(DataType.Password)]
        [Display(Name = "确认密码：")]
        [System.Web.Mvc.Compare("Password", ErrorMessage = "两次输入的密码不一致")]
        public string ConfirmPassword { get; set; }


        [Required(ErrorMessage = "请输入验证码")]
        [Display(Name = "验证码：")]
        [StringLength(4, ErrorMessage = "长度为4位", MinimumLength = 4)]
        [Remote("ValidateVCode", "AjaxService", ErrorMessage = "验证码错误或过期")]
        [UIHint("ValidateVCode")]
        [HintClass("validatecode")]
        public string Vcode { get; set; }
    }

    public class LogOnModel
    {


        [Required(ErrorMessage = "请输入电子邮箱")]
        [Display(Name = "登录名：")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的电子邮箱格式不正确.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "请输入密码")]
        [StringLength(15, ErrorMessage = "请输入{2}-{1}位密码", MinimumLength = 6)]
        [Display(Name = "密 码：")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "请输入验证码")]
        [Display(Name = "验证码：")]
        [StringLength(4, ErrorMessage = "长度为4位", MinimumLength = 4)]
        [Remote("ValidateVCode", "AjaxService", ErrorMessage = "验证码错误或过期")]
        [UIHint("ValidateVCode")]
        public string Vcode { get; set; }
    }

    public class ProfileModel
    {
        [HiddenInput(DisplayValue = false)]
        public int MemberID { get; set; }

        [Required(ErrorMessage = "请输入真实姓名")]
        [Display(Name = "真实姓名：")]
        [StringCheckLength(4, 10)]
        public string RealName { get; set; }

        [Required(ErrorMessage = "请输入昵称")]
        [Display(Name = "昵称：")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "昵称含有非法字符.")]
        [Remote("NickNameExistsNotMe", "AjaxService", ErrorMessage = "该昵称含有非法字符或已经注册")]
        [StringCheckLength(4, 14)]
        [Hint("请输入4-14位昵称，英文、数字或中文均可（中文占2个字符）。")]
        public string NickName { get; set; }

        [Required(ErrorMessage = "请选择城市")]
        [HintClass("city")]
        [Display(Name = "所在城市")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int CityCode { get; set; }

        [Required(ErrorMessage = "请选择性别")]
        [Display(Name = "性别：")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "男,女")]
        public bool Sex { get; set; }

        [DataType(DataType.DateTime)]
        [Display(Name = "生日：")]
        public DateTime Borthday { get; set; }


        [Required(ErrorMessage = "请输入个人简介")]
        [Display(Name = "个人简介：")]
        [Remote("ValidateDescription", "AjaxService", ErrorMessage = "简介含有非法字符")]
        [DataType(DataType.MultilineText)]
        [StringCheckLength(4, 200)]
        [Hint("请输入至少4-200个字，支持中文、英文。（中文占2个字符）。")]
        public string Description { get; set; }
    }

    public class AvtarModel
    {
        [HiddenInput(DisplayValue = false)]
        public int MemberID { get; set; }


        [Required(ErrorMessage = "请上传头像")]
        [Display(Name = "上传头像")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        [AdditionalMetadata("mustUpload", false)]
        public string AvtarUrl { get; set; }
    }

    public class ContactModel
    {
        [HiddenInput(DisplayValue = false)]
        public int MemberID { get; set; }

        [HiddenInput(DisplayValue = true)]
        [Display(Name = "电子邮箱：")]
        public string Email { get; set; }

        [Required(ErrorMessage = "手机号码")]
        [Display(Name = "手机号码：")]
        [RegularExpression(@"^(13[0-9]|15[-9]|18[0-9])\d{8}$", ErrorMessage = "请输入正确的手机号码.")]
        public string Mobile { get; set; }


        [Display(Name = "固定电话：")]
        [RegularExpression(@"^0\d{2,3}(\-)?\d{7,8}$", ErrorMessage = "请按照格式输入正确的固定电话号码.")]
        [Hint("请按照区号-电话号码（如：021-888234）格式输入")]
        public string Phone { get; set; }

        [Display(Name = "QQ号码：")]
        [RegularExpression(@"^[1-9][0-9]{4,10}$", ErrorMessage = "请输入正确的QQ号码.")]
        public string QQ { get; set; }

        [Display(Name = "MSN：")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的MSN格式不正确.")]
        public string MSN { get; set; }


        [Display(Name = "详细地址：")]
        [StringCheckLength(10, 60)]
        public string Address { get; set; }

        [Display(Name = "地图上标注：")]
        [UIHint("MapMarker")]
        [HintLabel("您还可以在地图上标注您的位置，更方便大家找到您")]
        public string Position { get; set; }

    }


    public class GetPasswordModel
    {
        [Required(ErrorMessage = "请输入电子邮箱")]
        [Display(Name = "电子邮箱：")]
        [Remote("HasEmailUser", "AjaxService", ErrorMessage = "该电子邮箱未被注册")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的电子邮箱格式不正确.")]
        public string Email { get; set; }
    }

    public class ChangePasswordModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入旧密码")]
        [DataType(DataType.Password)]
        [Display(Name = "旧密码")]
        [Remote("ValidatePassword", "AjaxService", ErrorMessage = "旧密码错误")]
        public string OldPassword { get; set; }

        [Required(ErrorMessage = "请输入新密码")]
        [StringLength(15, ErrorMessage = "请输入{2}-{1}位密码", MinimumLength = 6)]
        [Display(Name = "新密码")]
        [DataType(DataType.Password)]
        public string NewPassword { get; set; }


        [Required(ErrorMessage = "请确认密码")]
        [DataType(DataType.Password)]
        [Display(Name = "确认密码")]
        [System.Web.Mvc.Compare("NewPassword", ErrorMessage = "两次输入的密码不一致")]
        public string ConfirmPassword { get; set; }
    }


    public class ResetPasswordModel
    {

        [Required(ErrorMessage = "请输入新密码")]
        [StringLength(15, ErrorMessage = "请输入{2}-{1}位密码", MinimumLength = 6)]
        [Display(Name = "输入新密码：")]
        [DataType(DataType.Password)]
        public string NewPassword { get; set; }


        [Required(ErrorMessage = "请确认密码")]
        [DataType(DataType.Password)]
        [Display(Name = "再确认一次：")]
        [System.Web.Mvc.Compare("NewPassword", ErrorMessage = "两次输入的密码不一致")]
        public string ConfirmPassword { get; set; }
    }


    public class DetailsModel
    {
        public DetailsModel()
        {
            Borthday = DateTime.Now;
        }

        [HiddenInput(DisplayValue = false)]
        public int MemberID { get; set; }

        [Required(ErrorMessage = "请输入电子邮箱")]
        [Display(Name = "电子邮箱：")]
        [Remote("EmailExists", "AjaxService", ErrorMessage = "该电子邮箱已经注册")]
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "输入的电子邮箱格式不正确.")]
        [Hint("此电子邮箱将作为广知网登陆帐号,并作为密码找回邮箱，请认真填写。")]
        public string Email { get; set; }

        [Required(ErrorMessage = "请输入昵称")]
        [Display(Name = "昵称：")]
        [RegularExpression(@"^[\u4e00-\u9fa5|A-Za-z|0-9|_]+$", ErrorMessage = "昵称含有非法字符.")]
        [Remote("NickNameExists", "AjaxService", ErrorMessage = "该昵称含有非法字符或已经注册")]
        [StringCheckLength(4, 14)]
        [Hint("请输入4-14位昵称，英文、数字或中文均可（中文占2个字符）。")]
        public string NickName { get; set; }

        [Required(ErrorMessage = "请设置用户所属群组")]
        [Display(Name = "用户群组：")]
        [UIHint("ForeignKeyForRadio")]
        public int GroupID { get; set; }

        [Required(ErrorMessage = "请输入密码")]
        [StringLength(15, ErrorMessage = "请输入{2}-{1}位密码", MinimumLength = 6)]
        [Display(Name = "设定密码：")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "请确认密码")]
        [DataType(DataType.Password)]
        [Display(Name = "确认密码：")]
        [System.Web.Mvc.Compare("Password", ErrorMessage = "两次输入的密码不一致")]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessage = "请上传头像")]
        [Display(Name = "上传头像：")]
        [HintClass("avtar")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        [AdditionalMetadata("mustUpload", false)]
        public string AvtarUrl { get; set; }

        [Required(ErrorMessage = "请选择城市")]
        [HintClass("city")]
        [Display(Name = "所在城市：")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int CityCode { get; set; }


        [Required(ErrorMessage = "请选择性别")]
        [Display(Name = "性别：")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "男,女")]
        public bool Sex { get; set; }


        [Required(ErrorMessage = "请选择出生日期")]
        [DataType(DataType.DateTime)]
        [Display(Name = "生日：")]
        public DateTime Borthday { get; set; }


        [Required(ErrorMessage = "请输入个人简介")]
        [Display(Name = "个人简介：")]
        [StringCheckLength(4, 200)]
        [Remote("ValidateDescription", "AjaxService", ErrorMessage = "简介含有非法字符")]
        [DataType(DataType.MultilineText)]
        [Hint("请输入至少4-200个字，支持中文、英文。（中文占2个字符）。")]
        public string Description { get; set; }

    }

    public class EditModel
    {
        public EditModel()
        {
            Borthday = DateTime.Now;
        }

        [HiddenInput(DisplayValue = false)]
        public int MemberID { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "电子邮箱：")]
        public string Email { get; set; }


        [HiddenInput(DisplayValue = true)]
        [Display(Name = "电子邮箱：")]
        public string NickName { get; set; }


        [Required(ErrorMessage = "请设置用户所属群组")]
        [Display(Name = "用户群组：")]
        [UIHint("ForeignKeyForRadio")]
        public int GroupID { get; set; }



        [Required(ErrorMessage = "请上传头像")]
        [Display(Name = "上传头像：")]
        [HintClass("avtar")]
        [UIHint("UploadImgEdit")]
        [AdditionalMetadata("UploadImgEdit", "200|200")]
        [AdditionalMetadata("mustUpload", false)]
        public string AvtarUrl { get; set; }


        [Required(ErrorMessage = "请选择城市")]
        [HintClass("city")]
        [Display(Name = "所在城市：")]
        [UIHint("CascadingDropDownList")]
        [AdditionalMetadata("CascadingDropDownList", "ParentDropdownList")]
        public int CityCode { get; set; }


        [Required(ErrorMessage = "请选择性别")]
        [Display(Name = "性别：")]
        [UIHint("Radio")]
        [AdditionalMetadata("Radio", "男,女")]
        public bool Sex { get; set; }


        [Required(ErrorMessage = "请选择出生日期")]
        [DataType(DataType.DateTime)]
        [Display(Name = "生日：")]
        public DateTime Borthday { get; set; }


        [Required(ErrorMessage = "请输入个人简介")]
        [Display(Name = "个人简介：")]
        [StringCheckLength(4, 200)]
        [Remote("ValidateDescription", "AjaxService", ErrorMessage = "简介含有非法字符")]
        [DataType(DataType.MultilineText)]
        [Hint("请输入至少4-200个字，支持中文、英文。（中文占2个字符）。")]
        public string Description { get; set; }

    }

    public class OpenLoginStatus
    {
        public string Uid { get; set; }
        public int OpenType { get; set; }
        public bool Success { get; set; }
        public string OpenId { get; set; }
        public string Error { get; set; }
        public string Message { get; set; }
        public string NickName { get; set; }
    }
}