namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterCompanyNotice : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CompanyMessage", "Status", c => c.Int(nullable: false));
            AddColumn("dbo.CompanyNotice", "Status", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.CompanyNotice", "Status");
            DropColumn("dbo.CompanyMessage", "Status");
        }
    }
}
