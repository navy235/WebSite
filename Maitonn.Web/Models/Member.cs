
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class Member
    {
        public Member()
        {
            this.Member_Action = new HashSet<Member_Action>();
            this.MemberID = 200000;
        }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "�û�ID")]
        public int MemberID { get; set; }

        public int? CompanyID { get; set; }

        [MaxLength(50)]
        [Display(Name = "��������")]
        public string Email { get; set; }

        [MaxLength(50)]
        [Display(Name = "�ǳ�")]
        public string NickName { get; set; }

        [MaxLength(50)]
        [Display(Name = "����")]
        public string Password { get; set; }

        [MaxLength(500)]
        [Display(Name = "ͷ��")]
        public string AvtarUrl { get; set; }

        public int GroupID { get; set; }

        [Display(Name = "����¼")]
        public System.DateTime LastTime { get; set; }

        [MaxLength(50)]
        [Display(Name = "����¼IP")]
        public string LastIP { get; set; }

        [Display(Name = "����ʱ��")]
        public System.DateTime AddTime { get; set; }

        public int OpenType { get; set; }

        [MaxLength(50)]
        public string OpenID { get; set; }

        [MaxLength(50)]
        [Display(Name = "����IP")]
        public string AddIP { get; set; }

        [Display(Name = "��¼����")]
        public int LoginCount { get; set; }

        public int Status { get; set; }

        public virtual Group Group { get; set; }


        public virtual ICollection<Member_Action> Member_Action { get; set; }

        public virtual ICollection<Member_Scheme> Member_Scheme { get; set; }

        public virtual ICollection<Member_Favorite> Member_Favorite { get; set; }

        public virtual ICollection<OutDoor> OutDoor { get; set; }

        public virtual Company SelfCompany { get; set; }

        [ForeignKey("CompanyID")]
        public virtual Company Company { get; set; }

        public virtual Member_Profile Member_Profile { get; set; }

        public virtual Member_VIP Member_VIP { get; set; }

        public virtual Member_Money Member_Money { get; set; }

        public virtual Member_CreditIndex Member_CreditIndex { get; set; }

     

    }
}
