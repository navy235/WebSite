
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("TopCompany")]
    public partial class TopCompany : TopBase
    {
        public virtual Company Company { get; set; }
    }
}