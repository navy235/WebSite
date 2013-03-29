namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public abstract class MediaBase
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MediaID { get; set; }

        [Required(ErrorMessage = "请输入媒体名称.")]
        [Display(Name = "媒体名称")]
        [MaxLength(50)]
        public string Name { get; set; }


        [Required(ErrorMessage = "请输入媒体补充说明.")]
        [Display(Name = "媒体补充说明")]
        [MaxLength(2500)]
        public string Description { get; set; }

        public int Integrity { get; set; }

        public int Hit { get; set; }

        public System.DateTime AddTime { get; set; }

        public System.DateTime LastTime { get; set; }

        public int Favorite { get; set; }

        public int Message { get; set; }

        public int MemberID { get; set; }

        [MaxLength(50)]
        public string AddIP { get; set; }

        public int AdminUser { get; set; }

        [MaxLength(50)]
        public string LastIP { get; set; }

        [MaxLength(500)]
        public string Unapprovedlog { get; set; }

        [MaxLength(100)]
        public string SeoTitle { get; set; }

        [MaxLength(250)]
        public string SeoDes { get; set; }

        [MaxLength(100)]
        public string Seokeywords { get; set; }
    }
}