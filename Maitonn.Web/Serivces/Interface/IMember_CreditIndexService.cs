using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_CreditIndexService
    {
        int AddCreditIndex(int MemberID, int CreditIndex, string Type, string Description = null, int RelateID = 0);

        int GetMemberCreditIndex(int MemberID);
    }
}