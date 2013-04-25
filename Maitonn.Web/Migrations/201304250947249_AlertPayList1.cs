namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertPayList1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PayList", "Month", c => c.Int());
        }
        
        public override void Down()
        {
            DropColumn("dbo.PayList", "Month");
        }
    }
}
