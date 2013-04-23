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
        public int GetMemberVIP(int MemberID)
        {
            var vip = DB_Service.Set<Member_VIP>().Single(x => x.MemberID == MemberID);
            if (vip == null)
            {
                return 0;
            }
            else
            {
                return vip.VipLevel;
            }
        }

        public ServiceResult PayVIP(int MemberID, PayVIPViewModel VipModel, PayList PayOrder)
        {
            throw new NotImplementedException();
        }

        public ServiceResult PayMoney(int MemberID, PayMoneyViewModel MoneyModel, PayList PayOrder)
        {
            throw new NotImplementedException();
        }
    }
}