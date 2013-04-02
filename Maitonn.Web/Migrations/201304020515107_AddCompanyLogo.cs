namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddCompanyLogo : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CompanyLogoImg",
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
            
            CreateTable(
                "dbo.CompanyCredentialsImg",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        CompanyID = c.Int(nullable: false),
                        MemberID = c.Int(nullable: false),
                        ImgUrl = c.String(maxLength: 200),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Company", t => t.CompanyID, cascadeDelete: true)
                .Index(t => t.CompanyID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.CompanyCredentialsImg", new[] { "CompanyID" });
            DropIndex("dbo.CompanyLogoImg", new[] { "CompanyID" });
            DropForeignKey("dbo.CompanyCredentialsImg", "CompanyID", "dbo.Company");
            DropForeignKey("dbo.CompanyLogoImg", "CompanyID", "dbo.Company");
            DropTable("dbo.CompanyCredentialsImg");
            DropTable("dbo.CompanyLogoImg");
        }
    }
}
