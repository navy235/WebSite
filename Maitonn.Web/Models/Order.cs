
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Web.Script.Serialization;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Order
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int ApiID { get; set; }

        public DateTime AddTime { get; set; }

        public DateTime EndTime { get; set; }

        public int ProductID { get; set; }

        [Display(Name = "状态")]
        public int Status { get; set; }

    }
}
