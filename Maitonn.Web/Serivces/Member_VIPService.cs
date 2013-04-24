using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_VIPService : IMember_VIPService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_VIPService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public ServiceResult PayVIP(int MemberID, PayVIPViewModel VipModel, PayList PayOrder)
        {
            throw new NotImplementedException();
        }

        public ServiceResult PayMoney(int MemberID, PayMoneyViewModel MoneyModel, PayList PayOrder)
        {
            throw new NotImplementedException();
        }

        public int GetMemberVIPLevel(int MemberID, bool includeExpries)
        {
            var vip = GetMemberVIP(MemberID, includeExpries);

            if (vip == null)
            {
                return 0;
            }
            else
            {
                return vip.VipLevel;
            }
        }

        public Member_VIP GetMemberVIP(int MemberID, bool includeExpries)
        {
            var query = DB_Service.Set<Member_VIP>();
            if (!includeExpries)
            {
                query = query.Where(x => x.MemberID == MemberID && x.EndTime > DateTime.Now);
            }
            else
            {
                query = query.Where(x => x.MemberID == MemberID);
            }
            return query.FirstOrDefault();
        }
    }
}