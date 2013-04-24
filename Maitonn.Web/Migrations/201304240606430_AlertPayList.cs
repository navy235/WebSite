namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertPayList : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PayList", "EndTime", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PayList", "EndTime");
        }
    }
}
