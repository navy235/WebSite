namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterTopBase : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.TopCompany", "TopTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.TopMedia", "TopTime", c => c.DateTime(nullable: false));
            DropColumn("dbo.TopCompany", "TopStart");
            DropColumn("dbo.TopCompany", "TopEnd");
            DropColumn("dbo.TopMedia", "TopStart");
            DropColumn("dbo.TopMedia", "TopEnd");
        }
        
        public override void Down()
        {
            AddColumn("dbo.TopMedia", "TopEnd", c => c.DateTime(nullable: false));
            AddColumn("dbo.TopMedia", "TopStart", c => c.DateTime(nullable: false));
            AddColumn("dbo.TopCompany", "TopEnd", c => c.DateTime(nullable: false));
            AddColumn("dbo.TopCompany", "TopStart", c => c.DateTime(nullable: false));
            DropColumn("dbo.TopMedia", "TopTime");
            DropColumn("dbo.TopCompany", "TopTime");
        }
    }
}
