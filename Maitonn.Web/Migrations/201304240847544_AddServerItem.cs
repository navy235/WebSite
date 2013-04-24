namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddServerItem : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.TopBase", "MediaID", "dbo.OutDoor");
            DropForeignKey("dbo.SaleBase", "MediaID", "dbo.OutDoor");
            DropIndex("dbo.TopBase", new[] { "MediaID" });
            DropIndex("dbo.SaleBase", new[] { "MediaID" });
            CreateTable(
                "dbo.TopCompany",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MemberID = c.Int(nullable: false),
                        TopStart = c.DateTime(nullable: false),
                        TopEnd = c.DateTime(nullable: false),
                        IsQuanGuo = c.Boolean(nullable: false),
                        ProvinceCode = c.Int(nullable: false),
                        CityCode = c.Int(nullable: false),
                        IsByCategory = c.Boolean(nullable: false),
                        PCategoryCode = c.Int(nullable: false),
                        CategoryCode = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Company", t => t.MemberID, cascadeDelete: true)
                .Index(t => t.MemberID);
            
            CreateTable(
                "dbo.TopMedia",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MediaID = c.Int(nullable: false),
                        MemberID = c.Int(nullable: false),
                        TopStart = c.DateTime(nullable: false),
                        TopEnd = c.DateTime(nullable: false),
                        IsQuanGuo = c.Boolean(nullable: false),
                        ProvinceCode = c.Int(nullable: false),
                        CityCode = c.Int(nullable: false),
                        IsByCategory = c.Boolean(nullable: false),
                        PCategoryCode = c.Int(nullable: false),
                        CategoryCode = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.OutDoor", t => t.MediaID, cascadeDelete: true)
                .Index(t => t.MediaID);
            
            CreateTable(
                "dbo.ServerItem",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ServerType = c.Int(nullable: false),
                        Name = c.String(maxLength: 50),
                        ImgUrl = c.String(),
                        Description = c.String(maxLength: 2000),
                        HelpUrl = c.String(maxLength: 200),
                        Price = c.Int(nullable: false),
                        IsPayByVMoney = c.Boolean(nullable: false),
                        Money = c.Int(nullable: false),
                        Month = c.Int(nullable: false),
                        GiftMoney = c.Int(nullable: false),
                        GiftMonth = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                        MemberID = c.Int(nullable: false),
                        LastTime = c.DateTime(nullable: false),
                        VipDiscount = c.Decimal(nullable: false, precision: 18, scale: 2),
                        VipDiscount2 = c.Decimal(nullable: false, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.ID);
            
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
            
            DropIndex("dbo.TopMedia", new[] { "MediaID" });
            DropIndex("dbo.TopCompany", new[] { "MemberID" });
            DropForeignKey("dbo.TopMedia", "MediaID", "dbo.OutDoor");
            DropForeignKey("dbo.TopCompany", "MemberID", "dbo.Company");
            AlterColumn("dbo.OutDoor", "Description", c => c.String(nullable: false, maxLength: 2500));
            DropTable("dbo.ServerItem");
            DropTable("dbo.TopMedia");
            DropTable("dbo.TopCompany");
            CreateIndex("dbo.SaleBase", "MediaID");
            CreateIndex("dbo.TopBase", "MediaID");
            AddForeignKey("dbo.SaleBase", "MediaID", "dbo.OutDoor", "MediaID", cascadeDelete: true);
            AddForeignKey("dbo.TopBase", "MediaID", "dbo.OutDoor", "MediaID", cascadeDelete: true);
        }
    }
}
