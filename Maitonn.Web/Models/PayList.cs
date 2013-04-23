
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Web.Script.Serialization;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class PayList
    {
        [Key]
        public Guid Pay_No { get; set; }

        public int MemberID { get; set; }

        public decimal? Money { get; set; }

        public int? VMoney { get; set; }


        [MaxLength(10)]
        [Display(Name = "产品类型")]
        public string ProductType { get; set; }

        [MaxLength(10)]
        [Display(Name = "支付模式")]
        public string Mode { get; set; }

        [MaxLength(10)]
        [Display(Name = "支付状态")]
        public string Status { get; set; }

        [MaxLength(50)]
        public string AddIP { get; set; }

        public DateTime AddTime { get; set; }

        [MaxLength(150)]
        public string Trade_No { get; set; }

        [MaxLength(50)]
        public string Buy_ID { get; set; }

        [MaxLength(50)]
        public string Buy_Email { get; set; }

    }
}
