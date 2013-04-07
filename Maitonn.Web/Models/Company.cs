
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class Company
    {
        public Company()
        {
            this.Employees = new HashSet<Member>();
            this.CompanyCredentialsImg = new HashSet<CompanyCredentialsImg>();
            this.CompanyNotice = new HashSet<CompanyNotice>();
            this.CompanyMessage = new HashSet<CompanyMessage>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CompanyID { get; set; }

        [Key]
        public int MemberID { get; set; }

        [MaxLength(50)]
        public string Name { get; set; }

        [MaxLength(50)]
        public string LinkMan { get; set; }

        public bool Sex { get; set; }

        [MaxLength(150)]
        public string Address { get; set; }

        [MaxLength(50)]
        public string Phone { get; set; }

        [MaxLength(50)]
        public string Mobile { get; set; }

        [MaxLength(50)]
        public string Fax { get; set; }

        [MaxLength(50)]
        public string QQ { get; set; }

        [MaxLength(50)]
        public string MSN { get; set; }

        public double Lat { get; set; }

        public double Lng { get; set; }

        public int CityCode { get; set; }

        public int ScaleCode { get; set; }

        public int FundCode { get; set; }

        public int BussinessCode { get; set; }

        public System.DateTime LastTime { get; set; }

        [MaxLength(50)]
        public string LastIP { get; set; }

        public System.DateTime AddTime { get; set; }

        [MaxLength(50)]
        public string AddIP { get; set; }

        [MaxLength(2000)]
        public string Description { get; set; }

        [MaxLength(500)]
        public string Unapprovedlog { get; set; }

        public int Status { get; set; }

        [ForeignKey("MemberID")]
        public virtual Member Creator { get; set; }

        public virtual ICollection<Member> Employees { get; set; }

        public virtual Area Area { get; set; }

        public virtual CompanyScale CompanyScale { get; set; }

        public virtual CompanyFund CompanyFund { get; set; }

        public virtual CompanyBussiness CompanyBussiness { get; set; }

        public virtual CompanyImg CompanyImg { get; set; }

        public virtual LinkManImg LinkManImg { get; set; }

        public virtual CompanyBannerImg CompanyBannerImg { get; set; }

        public virtual CompanyLogoImg CompanyLogoImg { get; set; }

        public virtual ICollection<CompanyCredentialsImg> CompanyCredentialsImg { get; set; }

        public virtual ICollection<CompanyMessage> CompanyMessage { get; set; }

        public virtual ICollection<CompanyNotice> CompanyNotice { get; set; }

    }
}
