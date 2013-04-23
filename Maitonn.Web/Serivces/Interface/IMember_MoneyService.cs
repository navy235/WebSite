using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_MoneyService
    {
        int AddMoney(int MemberID, int Money, string Type, string Description = null, int RelateID = 0);

        int GetMemberMoney(int MemberID);
    }
}