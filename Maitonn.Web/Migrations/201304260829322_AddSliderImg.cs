namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSliderImg : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.SliderImg",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ImgUrl = c.String(nullable: false, maxLength: 250),
                        LinkUrl = c.String(nullable: false, maxLength: 250),
                        Title = c.String(nullable: false, maxLength: 50),
                        OrderIndex = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                        ProvinceCode = c.Int(nullable: false),
                        MemberID = c.Int(nullable: false),
                        Status = c.Int(nullable: false),
                        Province_ID = c.Int(),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Category", t => t.Province_ID)
                .Index(t => t.Province_ID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.SliderImg", new[] { "Province_ID" });
            DropForeignKey("dbo.SliderImg", "Province_ID", "dbo.Category");
            DropTable("dbo.SliderImg");
        }
    }
}
