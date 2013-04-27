namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddServerItemType : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ServerItem", "IsQuanGuo", c => c.Boolean(nullable: false));
            AddColumn("dbo.ServerItem", "IsByCategory", c => c.Boolean(nullable: false));
            AddColumn("dbo.ServerItem", "IsByChildCategory", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.ServerItem", "IsByChildCategory");
            DropColumn("dbo.ServerItem", "IsByCategory");
            DropColumn("dbo.ServerItem", "IsQuanGuo");
        }
    }
}
