namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertServerItemAddTopType : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ServerItem", "TopType", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.ServerItem", "TopType");
        }
    }
}
