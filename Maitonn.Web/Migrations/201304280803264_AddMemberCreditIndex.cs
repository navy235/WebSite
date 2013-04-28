namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddMemberCreditIndex : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Member_CreditIndex",
                c => new
                    {
                        MemberID = c.Int(nullable: false),
                        ID = c.Int(nullable: false, identity: true),
                        TotalCreditIndex = c.Int(nullable: false),
                        CreditIndex00 = c.Int(nullable: false),
                        CreditIndex01 = c.Int(nullable: false),
                        CreditIndex02 = c.Int(nullable: false),
                        CreditIndex03 = c.Int(nullable: false),
                        CreditIndex04 = c.Int(nullable: false),
                        CreditIndex05 = c.Int(nullable: false),
                        CreditIndex06 = c.Int(nullable: false),
                        CreditIndex07 = c.Int(nullable: false),
                        CreditIndex08 = c.Int(nullable: false),
                        CreditIndex09 = c.Int(nullable: false),
                        Member_MemberID = c.Int(),
                    })
                .PrimaryKey(t => t.MemberID)
                .ForeignKey("dbo.Member", t => t.Member_MemberID)
                .Index(t => t.Member_MemberID);
            
            CreateTable(
                "dbo.Member_CreditIndex_List",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Key = c.String(maxLength: 4),
                        MemberID = c.Int(nullable: false),
                        CreditIndex = c.Int(nullable: false),
                        RelateID = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        Description = c.String(maxLength: 250),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Member_CreditIndex_Type",
                c => new
                    {
                        Key = c.String(nullable: false, maxLength: 4),
                        CreditIndex = c.Int(nullable: false),
                        TimeLimit = c.Int(nullable: false),
                        DayLimit = c.Int(nullable: false),
                        CreditIndexLimit = c.Int(nullable: false),
                        Name = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Key);
            
            AddForeignKey("dbo.OutDoor", "MemberID", "dbo.Member", "MemberID", cascadeDelete: true);
            CreateIndex("dbo.OutDoor", "MemberID");
        }
        
        public override void Down()
        {
            DropIndex("dbo.Member_CreditIndex", new[] { "Member_MemberID" });
            DropIndex("dbo.OutDoor", new[] { "MemberID" });
            DropForeignKey("dbo.Member_CreditIndex", "Member_MemberID", "dbo.Member");
            DropForeignKey("dbo.OutDoor", "MemberID", "dbo.Member");
            DropTable("dbo.Member_CreditIndex_Type");
            DropTable("dbo.Member_CreditIndex_List");
            DropTable("dbo.Member_CreditIndex");
        }
    }
}
