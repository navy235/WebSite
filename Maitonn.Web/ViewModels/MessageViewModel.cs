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


    public class Sys_MessageViewModel
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


        [Display(Name = "留言时间")]
        public DateTime AddTime { get; set; }
    }

    public class Member_MessageViewModel
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
}