namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class StaticTemplate
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [MaxLength(50)]
        public string TemplateKey { get; set; }

        public int ProvinceCode { get; set; }

        public int Duration { get; set; }

        public DateTime DurationDate { get; set; }

        public Area Province { get; set; }

        public string Content { get; set; }

    }
}
