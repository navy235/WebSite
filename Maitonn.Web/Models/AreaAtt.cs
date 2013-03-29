namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class AreaAtt
    {
        public AreaAtt()
        {
            this.OutDoor = new HashSet<OutDoor>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Display(Name = "区域属性名称")]
  
        public string AttName { get; set; }

        public virtual ICollection<OutDoor> OutDoor { get; set; }
    }
}
