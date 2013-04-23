namespace Maitonn.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddRelationOnMemberMoney : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Member_Money", "Member_MemberID", "dbo.Member");
            DropIndex("dbo.Member_Money", new[] { "Member_MemberID" });
            AddForeignKey("dbo.Member_Money", "MemberID", "dbo.Member", "MemberID");
            CreateIndex("dbo.Member_Money", "MemberID");
            DropColumn("dbo.Member_Money", "Member_MemberID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Member_Money", "Member_MemberID", c => c.Int());
            DropIndex("dbo.Member_Money", new[] { "MemberID" });
            DropForeignKey("dbo.Member_Money", "MemberID", "dbo.Member");
            CreateIndex("dbo.Member_Money", "Member_MemberID");
            AddForeignKey("dbo.Member_Money", "Member_MemberID", "dbo.Member", "MemberID");
        }
    }
}
