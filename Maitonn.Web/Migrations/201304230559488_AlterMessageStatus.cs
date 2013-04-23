namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterMessageStatus : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Member_Message", "SenderStatus", c => c.Int(nullable: false));
            AddColumn("dbo.Member_Message", "RecipienterStatus", c => c.Int(nullable: false));
            AlterColumn("dbo.Member_Message", "Title", c => c.String(maxLength: 150));
            AlterColumn("dbo.Sys_Message", "Title", c => c.String(maxLength: 150));
            DropColumn("dbo.Member_Message", "Status");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Member_Message", "Status", c => c.Int(nullable: false));
            AlterColumn("dbo.Sys_Message", "Title", c => c.String(maxLength: 50));
            AlterColumn("dbo.Member_Message", "Title", c => c.String(maxLength: 50));
            DropColumn("dbo.Member_Message", "RecipienterStatus");
            DropColumn("dbo.Member_Message", "SenderStatus");
        }
    }
}
