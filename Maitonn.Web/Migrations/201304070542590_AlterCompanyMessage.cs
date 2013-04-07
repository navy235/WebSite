namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterCompanyMessage : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CompanyMessage", "AddTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.CompanyNotice", "AddTime", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.CompanyNotice", "AddTime");
            DropColumn("dbo.CompanyMessage", "AddTime");
        }
    }
}
