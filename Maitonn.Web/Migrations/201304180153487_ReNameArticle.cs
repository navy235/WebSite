namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ReNameArticle : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "dbo.Article", name: "ArtileCode", newName: "ArticleCode");
        }
        
        public override void Down()
        {
            RenameColumn(table: "dbo.Article", name: "ArticleCode", newName: "ArtileCode");
        }
    }
}
