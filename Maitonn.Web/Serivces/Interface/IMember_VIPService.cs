using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_VIPService
    {
        int GetMemberVIP(int MemberID);

        ServiceResult PayVIP(int MemberID, PayVIPViewModel VipModel, PayList PayOrder);

        ServiceResult PayMoney(int MemberID, PayMoneyViewModel MoneyModel, PayList PayOrder);
    }
}