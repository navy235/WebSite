namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddMemberVIP : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Member_Profile", "VipStartTime");
            DropColumn("dbo.Member_Profile", "VipEndTime");
            DropColumn("dbo.Member_Profile", "VipLevel");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Member_Profile", "VipLevel", c => c.Int(nullable: false));
            AddColumn("dbo.Member_Profile", "VipEndTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.Member_Profile", "VipStartTime", c => c.DateTime(nullable: false));
        }
    }
}
