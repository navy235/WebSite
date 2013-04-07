
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class CompanyNotice
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int MemberID { get; set; }

        public int CompanyID { get; set; }

        [MaxLength(2000)]
        public string Content { get; set; }

        [MaxLength(50)]
        public string Title { get; set; }

        public DateTime AddTime { get; set; }

        public int Status { get; set; }

        [ForeignKey("CompanyID")]
        public virtual Company Company { get; set; }
    }
}
