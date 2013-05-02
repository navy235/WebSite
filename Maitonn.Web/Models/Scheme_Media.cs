namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Web.Script.Serialization;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Scheme_Media
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int MediaID { get; set; }

        public int SchemeID { get; set; }

        public int PeriodCode { get; set; }

        public int PeriodCount { get; set; }

        public decimal Price { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime EndTime { get; set; }

        public virtual Member_Scheme Member_Scheme { get; set; }


    }
}