namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlertServerItem : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.TopBase", "MediaID", "dbo.OutDoor");
            DropForeignKey("dbo.SaleBase", "MediaID", "dbo.OutDoor");
            DropIndex("dbo.TopBase", new[] { "MediaID" });
            DropIndex("dbo.SaleBase", new[] { "MediaID" });
            AlterColumn("dbo.OutDoor", "Description", c => c.String(nullable: false, maxLength: 2000));
            DropTable("dbo.TopBase");
            DropTable("dbo.SaleBase");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.SaleBase",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MediaID = c.Int(nullable: false),
                        SaleStart = c.DateTime(nullable: false),
                        SaleEnd = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.TopBase",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MediaID = c.Int(nullable: false),
                        TopStart = c.DateTime(nullable: false),
                        TopEnd = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            AlterColumn("dbo.OutDoor", "Description", c => c.String(nullable: false, maxLength: 2500));
            CreateIndex("dbo.SaleBase", "MediaID");
            CreateIndex("dbo.TopBase", "MediaID");
            AddForeignKey("dbo.SaleBase", "MediaID", "dbo.OutDoor", "MediaID", cascadeDelete: true);
            AddForeignKey("dbo.TopBase", "MediaID", "dbo.OutDoor", "MediaID", cascadeDelete: true);
        }
    }
}
