namespace Maitonn.Web
{
    using System;
    using System.Web.Mvc;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public class Media_Refresh
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int MediaID { get; set; }

        public int MemberID { get; set; }

        public DateTime AddTime { get; set; }

        public DateTime EndTime { get; set; }

        public int DayLimit { get; set; }

        public int CurrentTimes { get; set; }
    }
}