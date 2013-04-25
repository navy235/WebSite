namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertPayList11 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PayList", "ServerID", c => c.Int(nullable: false));
            DropColumn("dbo.PayList", "Month");
        }
        
        public override void Down()
        {
            AddColumn("dbo.PayList", "Month", c => c.Int());
            DropColumn("dbo.PayList", "ServerID");
        }
    }
}
