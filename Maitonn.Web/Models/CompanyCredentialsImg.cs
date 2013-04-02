
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class CompanyCredentialsImg : PkImgBase
    {

        public int CompanyID { get; set; }

        [ForeignKey("CompanyID")]
        public virtual Company Company { get; set; }
    }
}