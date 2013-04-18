
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Web.Script.Serialization;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Product
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public string Name { get; set; }

        public string Content { get; set; }

        public DateTime AddTime { get; set; }

        [Display(Name = "状态")]
        public int Status { get; set; }

    }
}
