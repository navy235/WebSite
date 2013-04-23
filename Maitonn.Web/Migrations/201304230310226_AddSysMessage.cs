namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSysMessage : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Member_Message",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        SenderID = c.Int(nullable: false),
                        RecipientID = c.Int(nullable: false),
                        Content = c.String(maxLength: 4000),
                        MessageType = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        IsRead = c.Boolean(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Member", t => t.SenderID, cascadeDelete: true)
                .ForeignKey("dbo.Member", t => t.RecipientID, cascadeDelete: true)
                .Index(t => t.SenderID)
                .Index(t => t.RecipientID);
            
            CreateTable(
                "dbo.Sys_Message",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        Content = c.String(maxLength: 4000),
                        MessageType = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        IsRead = c.Boolean(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.Member_Message", new[] { "RecipientID" });
            DropIndex("dbo.Member_Message", new[] { "SenderID" });
            DropForeignKey("dbo.Member_Message", "RecipientID", "dbo.Member");
            DropForeignKey("dbo.Member_Message", "SenderID", "dbo.Member");
            DropTable("dbo.Sys_Message");
            DropTable("dbo.Member_Message");
        }
    }
}
