namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertPaylistEndtime : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.PayList", "EndTime", c => c.DateTime());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.PayList", "EndTime", c => c.DateTime(nullable: false));
        }
    }
}
