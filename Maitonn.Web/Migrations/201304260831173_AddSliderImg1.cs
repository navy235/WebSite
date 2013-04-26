namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSliderImg1 : DbMigration
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
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.SliderImg");
        }
    }
}
