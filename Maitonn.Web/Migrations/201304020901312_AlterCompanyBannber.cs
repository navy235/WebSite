namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterCompanyBannber : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CompanyBannerImg",
                c => new
                    {
                        CompanyID = c.Int(nullable: false),
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        ImgUrls = c.String(nullable: false, maxLength: 2000),
                        FocusImgUrl = c.String(maxLength: 200),
                    })
                .PrimaryKey(t => t.CompanyID)
                .ForeignKey("dbo.Company", t => t.CompanyID)
                .Index(t => t.CompanyID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.CompanyBannerImg", new[] { "CompanyID" });
            DropForeignKey("dbo.CompanyBannerImg", "CompanyID", "dbo.Company");
            DropTable("dbo.CompanyBannerImg");
        }
    }
}
