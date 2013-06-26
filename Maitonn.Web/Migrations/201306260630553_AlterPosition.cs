namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterPosition : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.OutDoor", "Lng", c => c.Double(nullable: false));
            AlterColumn("dbo.OutDoor", "Lat", c => c.Double(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.OutDoor", "Lat", c => c.Decimal(nullable: false, precision: 18, scale: 2));
            AlterColumn("dbo.OutDoor", "Lng", c => c.Decimal(nullable: false, precision: 18, scale: 2));
        }
    }
}
