using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public interface ISys_MessageService
    {

        Sys_Message Find(int ID);

        ServiceResult SendMessage(Sys_Message Message);

        ServiceResult ReadMessage(int MessageID);

        ServiceResult DeleteMessage(int MessageID);

        ServiceResult ChangeMessageStatus(string ids, Sys_MessageStatus MessageStatus);

        IQueryable<Sys_Message> GetMemberMessage(int MemberID, Sys_MessageStatus MessageStatus, bool IncludeUpLevel = false);

    }
}