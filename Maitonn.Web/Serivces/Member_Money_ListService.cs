using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_Money_ListService : IMember_Money_ListService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_Money_ListService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_Money_List> GetMemberMoneyList(int MemberID)
        {
            var query = DB_Service.Set<Member_Money_List>().Where(x => x.MemberID == MemberID);

            return query;
        }

        public IQueryable<Member_Money_List> GetMemberMoneyList(int MemberID, bool IsAdd)
        {
            var query = GetMemberMoneyList(MemberID);
            if (IsAdd)
            {
                query = query.Where(x => x.Money > 0);
            }
            else
            {
                query = query.Where(x => x.Money < 0);
            }
            return query;
        }
    }
}