
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Owner
    {
        public Owner()
        {
            this.OwnerCate = new OwnerCate();
        }
        [Key]
        public int MediaID { get; set; }


        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int OwnerID { get; set; }

        public string OwnerCode { get; set; }

        public System.DateTime Deadline { get; set; }

        public virtual OutDoor OutDoor { get; set; }

        public virtual OwnerCate OwnerCate { get; set; }


        public virtual CredentialsImg CredentialsImg { get; set; }
    }
}
