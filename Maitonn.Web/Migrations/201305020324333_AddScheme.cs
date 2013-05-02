namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddScheme : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Member_Scheme",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        Name = c.String(maxLength: 50),
                        Description = c.String(maxLength: 250),
                        AddTime = c.DateTime(nullable: false),
                        LastTime = c.DateTime(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Member", t => t.MemberID, cascadeDelete: true)
                .Index(t => t.MemberID);
            
            CreateTable(
                "dbo.Scheme_Media",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MediaID = c.Int(nullable: false),
                        SchemeID = c.Int(nullable: false),
                        PeriodCode = c.Int(nullable: false),
                        PeriodCount = c.Int(nullable: false),
                        Price = c.Decimal(nullable: false, precision: 18, scale: 2),
                        StartTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Member_Scheme", t => t.SchemeID, cascadeDelete: true)
                .Index(t => t.SchemeID);
            
            CreateTable(
                "dbo.Member_Favorite",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        MediaID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Member", t => t.MemberID, cascadeDelete: true)
                .Index(t => t.MemberID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.Member_Favorite", new[] { "MemberID" });
            DropIndex("dbo.Scheme_Media", new[] { "SchemeID" });
            DropIndex("dbo.Member_Scheme", new[] { "MemberID" });
            DropForeignKey("dbo.Member_Favorite", "MemberID", "dbo.Member");
            DropForeignKey("dbo.Scheme_Media", "SchemeID", "dbo.Member_Scheme");
            DropForeignKey("dbo.Member_Scheme", "MemberID", "dbo.Member");
            DropTable("dbo.Member_Favorite");
            DropTable("dbo.Scheme_Media");
            DropTable("dbo.Member_Scheme");
        }
    }
}
