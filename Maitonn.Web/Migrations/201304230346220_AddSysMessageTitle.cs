namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSysMessageTitle : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Member_Message", "Title", c => c.String(maxLength: 50));
            AddColumn("dbo.Sys_Message", "Title", c => c.String(maxLength: 50));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Sys_Message", "Title");
            DropColumn("dbo.Member_Message", "Title");
        }
    }
}
