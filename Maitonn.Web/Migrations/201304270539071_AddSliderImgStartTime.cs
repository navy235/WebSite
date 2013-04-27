namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSliderImgStartTime : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SliderImg", "StartTime", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.SliderImg", "StartTime");
        }
    }
}
