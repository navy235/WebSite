namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddVideoUrl : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.OutDoor", "VideoUrl", c => c.String(maxLength: 250));
        }
        
        public override void Down()
        {
            DropColumn("dbo.OutDoor", "VideoUrl");
        }
    }
}
