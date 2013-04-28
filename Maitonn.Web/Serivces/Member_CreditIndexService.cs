using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
using System.Data.Entity;
using System.Data.SqlClient;
namespace Maitonn.Web
{
    public class Member_CreditIndexService : IMember_CreditIndexService
    {

        private readonly IUnitOfWork DB_Service;

        public Member_CreditIndexService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public int AddCreditIndex(int MemberID, int CreditIndex, string Type, string Description = null, int RelateID = 0)
        {
            if (string.IsNullOrEmpty(Description))
            {
                Description = string.Empty;
            }
            var memberId = new SqlParameter("memberId", MemberID);
            var creditIndex = new SqlParameter("CreditIndex", CreditIndex);
            var type = new SqlParameter("type", Type);
            var description = new SqlParameter("description", Description);
            var relateId = new SqlParameter("relateId", RelateID);
            return DB_Service.SqlQuery<int>(" [dbo].[P_AddCreditIndex] @memberId,@type,@CreditIndex,@description,@relateId",
                  memberId,
                  type,
                  creditIndex,
                  description,
                  relateId).FirstOrDefault();
        }


        public int GetMemberCreditIndex(int MemberID)
        {
            var CreditIndex = DB_Service.Set<Member_CreditIndex>().SingleOrDefault(x => x.MemberID == MemberID);
            if (CreditIndex == null)
            {
                return 0;
            }
            else
            {
                return CreditIndex.TotalCreditIndex;
            }

        }
    }
}