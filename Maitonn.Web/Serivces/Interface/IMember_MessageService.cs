using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public interface IMember_MessageService
    {

        Member_Message Find(int ID);

        ServiceResult SendMessage(Member_Message Message);

        ServiceResult ReadMessage(int MessageID);

        ServiceResult DeleteMessage(int MessageID, bool IsSender);

        ServiceResult ChangeMessageStatus(string ids, Member_MessageStatus MessageStatus, bool IsSender);

        IQueryable<Member_Message> GetMemberMessage(int MemberID, Member_MessageStatus MessageStatus, bool IsSender, bool IncludeUpLevel = false);
    }
}