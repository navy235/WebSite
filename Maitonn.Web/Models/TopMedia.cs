
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("TopMedia")]
    public partial class TopMedia : TopBase
    {
        public int MediaID { get; set; }

        public virtual OutDoor OutDoor { get; set; }

    }
}