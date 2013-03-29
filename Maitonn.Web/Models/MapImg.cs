﻿
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class MapImg : ImgBase
    {
        [Key]
        public int MediaID { get; set; }


        [ForeignKey("MediaID")]
        public virtual OutDoor OutDoor { get; set; }
    }
}
