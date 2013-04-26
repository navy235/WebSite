using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_VIPService
    {
        int GetMemberVIPLevel(int MemberID, bool includeExpries);

        Member_VIP GetMemberVIP(int MemberID, bool includeExpries);

        ServiceResult PayVIP(int MemberID, ServerItem Server, PayList PayOrder);

        ServiceResult PayMoney(int MemberID, PayList PayOrder);
    }
}