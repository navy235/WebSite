using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public interface IMember_CreditIndex_ListService
    {

        IQueryable<Member_CreditIndex_List> GetMemberCreditIndexList(int MemberID);

        IQueryable<Member_CreditIndex_List> GetMemberCreditIndexList(int MemberID, bool IsAdd);
    }
}