namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertFavorite : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Member_Favorite", "AddTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.Member_Favorite", "Status", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Member_Favorite", "Status");
            DropColumn("dbo.Member_Favorite", "AddTime");
        }
    }
}
