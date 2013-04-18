namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddStaticTemplateDuration : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.StaticTemplate", "Duration", c => c.Int(nullable: false));
            AddColumn("dbo.StaticTemplate", "DurationDate", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.StaticTemplate", "DurationDate");
            DropColumn("dbo.StaticTemplate", "Duration");
        }
    }
}
