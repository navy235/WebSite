using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public interface IMember_Money_ListService
    {

        IQueryable<Member_Money_List> GetMemberMoneyList(int MemberID);

        IQueryable<Member_Money_List> GetMemberMoneyList(int MemberID, bool IsAdd);
    }
}