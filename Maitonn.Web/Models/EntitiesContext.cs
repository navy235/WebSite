using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using WebBackgrounder;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class EntitiesContext : UnitOfWork, IWorkItemsContext
    {
        public EntitiesContext()
            : base("Maitonn")
        {

        }


        public IDbSet<WorkItem> WorkItems { get; set; }

        public IDbSet<Member_Money> Member_Money { get; set; }

        public IDbSet<Member_Money_List> Member_Money_List { get; set; }

        public IDbSet<Member_Money_Type> Member_Money_Type { get; set; }

        public IDbSet<PayList> PayList { get; set; }

        public IDbSet<Member_Message> Member_Message { get; set; }

        public IDbSet<Sys_Message> Sys_Message { get; set; }

        public IDbSet<TopCompany> TopCompany { get; set; }

        public IDbSet<TopMedia> TopMedia { get; set; }

        public IDbSet<ServerItem> ServerItem { get; set; }

        public IDbSet<SliderImg> SliderImg { get; set; }

        public IDbSet<Member_CreditIndex> Member_CreditIndex { get; set; }

        public IDbSet<Member_CreditIndex_List> Member_CreditIndex_List { get; set; }

        public IDbSet<Member_CreditIndex_Type> Member_CreditIndex_Type { get; set; }

        public IDbSet<Media_Refresh> Media_Refresh { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();


            #region Category
            modelBuilder.Entity<Category>()
              .Map<Category>(m => m.Requires("CategoryType").HasValue("Category"))
              .Map<OwnerCate>(m => m.Requires("CategoryType").HasValue("Owner"))
              .Map<PeriodCate>(m => m.Requires("CategoryType").HasValue("Period"))
              .Map<FormatCate>(m => m.Requires("CategoryType").HasValue("Format"))
              .Map<OutDoorMediaCate>(m => m.Requires("CategoryType").HasValue("OutDoorMedia"))
              .Map<Area>(m => m.Requires("CategoryType").HasValue("Area"))
              .Map<ArticleCate>(m => m.Requires("CategoryType").HasValue("Article"))
              .Map<CompanyScale>(m => m.Requires("CategoryType").HasValue("CompanyScale"))
              .Map<CompanyBussiness>(m => m.Requires("CategoryType").HasValue("CompanyBussiness"))
              .Map<CompanyFund>(m => m.Requires("CategoryType").HasValue("CompanyFund"));

            modelBuilder.Entity<Category>()
                .HasOptional(c => c.PCategory)
                .WithMany(pc => pc.ChildCategoies)
                .HasForeignKey(c => c.PID)
                .WillCascadeOnDelete(false);


            #endregion


            #region Member


            modelBuilder.Entity<Member>()
                .HasOptional(m => m.Member_Profile)
                .WithRequired(x => x.Member);

            modelBuilder.Entity<Member>()
             .HasOptional(m => m.Member_VIP)
             .WithRequired(x => x.Member);

            modelBuilder.Entity<Member>()
               .HasOptional(m => m.Member_Money)
               .WithRequired(x => x.Member);


            modelBuilder.Entity<Member>()
               .HasOptional(m => m.Member_CreditIndex)
               .WithRequired(x => x.Member);


            modelBuilder.Entity<Member>()
                .HasOptional(m => m.Company)
                .WithMany(c => c.Employees)
                .HasForeignKey(m => m.CompanyID);


            modelBuilder.Entity<Member_Scheme>()
                  .HasMany(s => s.Scheme_Media)
                  .WithRequired(m => m.Member_Scheme)
                  .HasForeignKey(o => o.SchemeID)
                  .WillCascadeOnDelete(true);

            modelBuilder.Entity<Member_Profile>()
                 .HasRequired(m => m.Area)
                 .WithMany(a => a.Member_Profile)
                 .HasForeignKey(m => m.CityCode);

            #endregion



            #region Company
            modelBuilder.Entity<Company>()
               .HasRequired(c => c.Creator)
               .WithOptional(m => m.SelfCompany)
               .WillCascadeOnDelete(false);

            modelBuilder.Entity<Company>()
               .HasRequired(m => m.Area)
               .WithMany(c => c.Company)
               .HasForeignKey(o => o.CityCode)
               .WillCascadeOnDelete(false);

            modelBuilder.Entity<Company>()
               .HasRequired(m => m.CompanyScale)
               .WithMany(c => c.Company)
               .HasForeignKey(o => o.ScaleCode)
               .WillCascadeOnDelete(false);


            modelBuilder.Entity<Company>()
               .HasRequired(m => m.CompanyFund)
               .WithMany(c => c.Company)
               .HasForeignKey(o => o.FundCode)
               .WillCascadeOnDelete(false);


            modelBuilder.Entity<Company>()
               .HasRequired(m => m.CompanyBussiness)
               .WithMany(c => c.Company)
               .HasForeignKey(o => o.BussinessCode)
               .WillCascadeOnDelete(false);

            modelBuilder.Entity<Company>()
                .HasOptional(o => o.LinkManImg)
                .WithRequired(m => m.Company);

            modelBuilder.Entity<Company>()
                .HasOptional(o => o.CompanyImg)
                .WithRequired(m => m.Company);


            modelBuilder.Entity<Company>()
                .HasOptional(o => o.CompanyLogoImg)
                .WithRequired(m => m.Company);

            modelBuilder.Entity<Company>()
             .HasOptional(o => o.CompanyBannerImg)
             .WithRequired(m => m.Company);


            modelBuilder.Entity<Company>()
              .HasMany(o => o.CompanyCredentialsImg)
              .WithRequired(m => m.Company);

            modelBuilder.Entity<Company>()
            .HasMany(o => o.CompanyMessage)
            .WithRequired(m => m.Company);

            modelBuilder.Entity<Company>()
            .HasMany(o => o.CompanyNotice)
            .WithRequired(m => m.Company);

            #endregion




            modelBuilder.Entity<Permissions>()
                .HasRequired(p => p.Department).WithMany(d => d.Permissions).HasForeignKey(p => p.DepartmentID);





            //多对多关系
            modelBuilder.Entity<Roles>()
                .HasMany(b => b.Permissions)
                .WithMany(c => c.Roles)
                .Map
                (
                    m =>
                    {
                        m.MapLeftKey("RoleID");
                        m.MapRightKey("PermissionID");
                        m.ToTable("Role_Permissions");
                    }
                );

            modelBuilder.Entity<Group>()
           .HasMany(g => g.Roles)
           .WithMany(r => r.Group)
           .Map
           (
               m =>
               {
                   m.MapLeftKey("GroupID");
                   m.MapRightKey("RoleID");
                   m.ToTable("Group_Roles");
               }
           );



            modelBuilder.Entity<OutDoor>()
                .HasKey(o => o.MediaID);


            modelBuilder.Entity<OutDoor>()
                .HasRequired(m => m.Area)
                .WithMany(c => c.OutDoor)
                .HasForeignKey(o => o.CityCode)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OutDoor>()
                .HasRequired(m => m.PeriodCate)
                .WithMany(c => c.OutDoor)
                .HasForeignKey(o => o.PeriodCode)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OutDoor>()
                .HasRequired(m => m.FormatCate)
                .WithMany(c => c.OutDoor)
                .HasForeignKey(o => o.FormatCode)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OutDoor>()
                 .HasRequired(o => o.OwnerCate)
                 .WithMany(oc => oc.OutDoor)
                 .HasForeignKey(o => o.OwnerCode)
                 .WillCascadeOnDelete(false);

            modelBuilder.Entity<OutDoor>()
                .HasRequired(m => m.OutDoorMediaCate)
                .WithMany(c => c.OutDoor)
                .HasForeignKey(o => o.MeidaCode)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OutDoor>()
                .HasOptional(o => o.MediaImg)
                .WithRequired(m => m.OutDoor);

            modelBuilder.Entity<OutDoor>()
                .HasOptional(o => o.MapImg)
                .WithRequired(m => m.OutDoor);

            modelBuilder.Entity<OutDoor>()
                .HasOptional(o => o.CredentialsImg)
                .WithRequired(o => o.OutDoor);

            modelBuilder.Entity<OutDoor>()
                .HasMany(o => o.AuctionCalendar)
                .WithRequired(a => a.OutDoor)
                .HasForeignKey(a => a.MediaID);

            modelBuilder.Entity<OutDoor>()
                .HasRequired(o => o.Member)
                .WithMany(m => m.OutDoor)
                .HasForeignKey(o => o.MemberID);


            //多对多关系
            modelBuilder.Entity<OutDoor>()
                .HasMany(b => b.AreaAtt)
                .WithMany(c => c.OutDoor)
                .Map
                (
                    m =>
                    {
                        m.MapLeftKey("OutDoorID");
                        m.MapRightKey("AreaAttID");
                        m.ToTable("OutDoor_AreaAtt");
                    }
                );





            modelBuilder.Entity<Article>()
                .HasRequired(m => m.ArticleCate)
                .WithMany(c => c.Article)
                .HasForeignKey(o => o.ArticleCode)
                .WillCascadeOnDelete(false);


            modelBuilder.Entity<StaticTemplate>()
              .HasRequired(m => m.Province)
              .WithMany(c => c.StaticTemplate)
              .HasForeignKey(o => o.ProvinceCode)
              .WillCascadeOnDelete(false);


            base.OnModelCreating(modelBuilder);
        }
    }
}