namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddVIPSetting : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Member_Money",
                c => new
                    {
                        MemberID = c.Int(nullable: false),
                        ID = c.Int(nullable: false, identity: true),
                        TotalMoney = c.Int(nullable: false),
                        Money00 = c.Int(nullable: false),
                        Money01 = c.Int(nullable: false),
                        Money02 = c.Int(nullable: false),
                        Money03 = c.Int(nullable: false),
                        Money04 = c.Int(nullable: false),
                        Money05 = c.Int(nullable: false),
                        Money06 = c.Int(nullable: false),
                        Money07 = c.Int(nullable: false),
                        Money08 = c.Int(nullable: false),
                        Money09 = c.Int(nullable: false),
                        Member_MemberID = c.Int(),
                    })
                .PrimaryKey(t => t.MemberID)
                .ForeignKey("dbo.Member", t => t.Member_MemberID)
                .Index(t => t.Member_MemberID);
            
            CreateTable(
                "dbo.Member_VIP",
                c => new
                    {
                        MemberID = c.Int(nullable: false),
                        ID = c.Int(nullable: false, identity: true),
                        StartTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        AddMemberID = c.Int(nullable: false),
                        VipLevel = c.Int(nullable: false),
                        PayTime = c.Int(nullable: false),
                        Description = c.String(maxLength: 250),
                    })
                .PrimaryKey(t => t.MemberID)
                .ForeignKey("dbo.Member", t => t.MemberID)
                .Index(t => t.MemberID);
            
            CreateTable(
                "dbo.Member_Money_List",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Key = c.String(maxLength: 4),
                        MemberID = c.Int(nullable: false),
                        Money = c.Int(nullable: false),
                        RelateID = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        Description = c.String(maxLength: 250),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Member_Money_Type",
                c => new
                    {
                        Key = c.String(nullable: false, maxLength: 4),
                        Money = c.Int(nullable: false),
                        DayLimit = c.Int(nullable: false),
                        TimeLimit = c.Int(nullable: false),
                        MoneyLimit = c.Int(nullable: false),
                        Name = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Key);
            
            CreateTable(
                "dbo.PayList",
                c => new
                    {
                        Pay_No = c.Guid(nullable: false),
                        MemberID = c.Int(nullable: false),
                        Money = c.Decimal(precision: 18, scale: 2),
                        VMoney = c.Int(),
                        ProductType = c.String(maxLength: 10),
                        Mode = c.String(maxLength: 10),
                        Status = c.String(maxLength: 10),
                        AddIP = c.String(maxLength: 50),
                        AddTime = c.DateTime(nullable: false),
                        Trade_No = c.String(maxLength: 150),
                        Buy_ID = c.String(maxLength: 50),
                        Buy_Email = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Pay_No);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.Member_VIP", new[] { "MemberID" });
            DropIndex("dbo.Member_Money", new[] { "Member_MemberID" });
            DropForeignKey("dbo.Member_VIP", "MemberID", "dbo.Member");
            DropForeignKey("dbo.Member_Money", "Member_MemberID", "dbo.Member");
            DropTable("dbo.PayList");
            DropTable("dbo.Member_Money_Type");
            DropTable("dbo.Member_Money_List");
            DropTable("dbo.Member_VIP");
            DropTable("dbo.Member_Money");
        }
    }
}
