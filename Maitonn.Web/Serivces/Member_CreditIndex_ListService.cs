using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_CreditIndex_ListService : IMember_CreditIndex_ListService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_CreditIndex_ListService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_CreditIndex_List> GetMemberCreditIndexList(int MemberID)
        {
            var query = DB_Service.Set<Member_CreditIndex_List>().Where(x => x.MemberID == MemberID);

            return query;
        }

        public IQueryable<Member_CreditIndex_List> GetMemberCreditIndexList(int MemberID, bool IsAdd)
        {
            var query = GetMemberCreditIndexList(MemberID);
            if (IsAdd)
            {
                query = query.Where(x => x.CreditIndex > 0);
            }
            else
            {
                query = query.Where(x => x.CreditIndex < 0);
            }
            return query;
        }
    }
}