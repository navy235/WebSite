namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertTopBase : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.TopCompany", "IsByChildCategory", c => c.Boolean(nullable: false));
            AddColumn("dbo.TopMedia", "IsByChildCategory", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.TopMedia", "IsByChildCategory");
            DropColumn("dbo.TopCompany", "IsByChildCategory");
        }
    }
}
