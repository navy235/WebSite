namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddMedia_refresh : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Media_Refresh",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        MediaID = c.Int(nullable: false),
                        MemberID = c.Int(nullable: false),
                        AddTime = c.DateTime(nullable: false),
                        EndTime = c.DateTime(nullable: false),
                        DayLimit = c.Int(nullable: false),
                        CurrentTimes = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Media_Refresh");
        }
    }
}
