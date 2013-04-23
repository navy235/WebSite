using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
using System.Data.Entity;
using System.Data.SqlClient;
namespace Maitonn.Web
{
    public class Member_MoneyService : IMember_MoneyService
    {

        private readonly IUnitOfWork DB_Service;

        public Member_MoneyService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public int AddMoney(int MemberID, int Money, string Type, string Description = null, int RelateID = 0)
        {
            var memberId = new SqlParameter("memberId", MemberID);
            var money = new SqlParameter("money", Money);
            var type = new SqlParameter("type", Type);
            var description = new SqlParameter("description", Description);
            var relateId = new SqlParameter("relateId", RelateID);
            return DB_Service.SqlQuery<int>(" [dbo].[P_AddMoney] @memberId,@type,@money,@description,@relateId",
                  memberId,
                  type,
                  money,
                  description,
                  relateId).FirstOrDefault();
        }


        public int GetMemberMoney(int MemberID)
        {
            return DB_Service.Set<Member_Money>().Single(x => x.MemberID == MemberID).TotalMoney;
        }
    }
}