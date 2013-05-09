namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddOutDoorAuthStatus : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.OutDoor", "AuthStatus", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.OutDoor", "AuthStatus");
        }
    }
}
