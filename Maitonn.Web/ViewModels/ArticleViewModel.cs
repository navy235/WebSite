
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

    public class ArticleViewModel
    {
        [HiddenInput(DisplayValue = false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入文章名称")]
        [Display(Name = "文章名称")]
        [StringLength(25, ErrorMessage = "请输入{2}-{1}位{0}", MinimumLength = 4)]
        public string Name { get; set; }


        [Required(ErrorMessage = "请选择文章类别")]
        [Display(Name = "文章类别")]
        [HintClass("city")]
        [UIHint("SingleDropdownList")]
        public int ArticleCode { get; set; }


        [Required(ErrorMessage = "请选择文章内容")]
        [UIHint("RichEditor")]
        [HintClass("richeditor")]
        [Display(Name = "文章内容")]
        [AllowHtml]
        public string Content { get; set; }

    }
}