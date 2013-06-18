
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Web.Script.Serialization;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class SliderImg
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请上传图片")]
        [Display(Name = "上传图片")]
        [MaxLength(250)]
        public string ImgUrl { get; set; }


        [Required(ErrorMessage = "请填写图片链接地址")]
        [Display(Name = "图片链接地址")]
        [MaxLength(250)]
        public string LinkUrl { get; set; }


        [Required(ErrorMessage = "请填写图片标题")]
        [Display(Name = "图片标题")]
        [MaxLength(50)]
        public string Title { get; set; }


        [Display(Name = "排序")]
        public int OrderIndex { get; set; }


        [Display(Name = "添加日期")]
        public DateTime AddTime { get; set; }

        [Display(Name = "置顶日期")]
        public DateTime TopTime { get; set; }

        [Display(Name = "省份")]
        public int ProvinceCode { get; set; }

        public int MemberID { get; set; }

        [Required(ErrorMessage = "请选择状态")]
        [Display(Name = "状态")]
        public int Status { get; set; }

    }
}
