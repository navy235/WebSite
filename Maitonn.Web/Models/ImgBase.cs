
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class ImgBase
    {
      
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }


        public int MemberID { get; set; }

        [Required(ErrorMessage = "请上传图片.")]
        [Display(Name = "上传图片")]
        [MaxLength(2000)]
        public string ImgUrls { get; set; }


        [Display(Name = "焦点图片")]
        [MaxLength(200)]
        public string FocusImgUrl { get; set; }
    }
}
