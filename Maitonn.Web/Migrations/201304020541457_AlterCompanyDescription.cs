namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterCompanyDescription : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CompanyCredentialsImg", "Title", c => c.String(maxLength: 50));
            AlterColumn("dbo.Company", "Description", c => c.String(maxLength: 2000));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Company", "Description", c => c.String(maxLength: 500));
            DropColumn("dbo.CompanyCredentialsImg", "Title");
        }
    }
}
