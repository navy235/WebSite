namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;

    public partial class AleterSliderImgScheme : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SliderImg", "TopTime", c => c.DateTime(nullable: false));
            DropColumn("dbo.SliderImg", "StartTime");
            DropColumn("dbo.SliderImg", "EndTime");
        }

        public override void Down()
        {
            AddColumn("dbo.SliderImg", "EndTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.SliderImg", "StartTime", c => c.DateTime(nullable: false));
            DropColumn("dbo.SliderImg", "TopTime");
        }
    }
}
