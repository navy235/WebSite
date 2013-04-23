namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Sys_Message
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int MemberID { get; set; }

        [MaxLength(150)]
        public string Title { get; set; }

        [MaxLength(4000)]
        public string Content { get; set; }

        public int MessageType { get; set; }

        public DateTime AddTime { get; set; }

        public bool IsRead { get; set; }

        public int Status { get; set; }


    }
}