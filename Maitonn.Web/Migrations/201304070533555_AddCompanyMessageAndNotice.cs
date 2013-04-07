namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddCompanyMessageAndNotice : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CompanyMessage",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        CompanyID = c.Int(nullable: false),
                        MemberID = c.Int(nullable: false),
                        Content = c.String(maxLength: 2000),
                        Title = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Member", t => t.MemberID, cascadeDelete: true)
                .ForeignKey("dbo.Company", t => t.CompanyID, cascadeDelete: true)
                .Index(t => t.MemberID)
                .Index(t => t.CompanyID);
            
            CreateTable(
                "dbo.CompanyNotice",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        CompanyID = c.Int(nullable: false),
                        Content = c.String(maxLength: 2000),
                        Title = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Company", t => t.CompanyID, cascadeDelete: true)
                .Index(t => t.CompanyID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.CompanyNotice", new[] { "CompanyID" });
            DropIndex("dbo.CompanyMessage", new[] { "CompanyID" });
            DropIndex("dbo.CompanyMessage", new[] { "MemberID" });
            DropForeignKey("dbo.CompanyNotice", "CompanyID", "dbo.Company");
            DropForeignKey("dbo.CompanyMessage", "CompanyID", "dbo.Company");
            DropForeignKey("dbo.CompanyMessage", "MemberID", "dbo.Member");
            DropTable("dbo.CompanyNotice");
            DropTable("dbo.CompanyMessage");
        }
    }
}
