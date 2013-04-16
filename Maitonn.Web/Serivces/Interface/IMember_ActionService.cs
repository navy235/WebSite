using System;


using Maitonn.Core;

namespace Maitonn.Web
{
    public interface IMember_ActionService
    {
        Member_Action Create(Member member, int memberAction, string description);

        Member_Action Create(MemberActionType MemberActionType, string description);

        Member_Action Create(MemberActionType MemberActionType);

        bool HasAction(MemberActionType MemberActionType);

        bool HasDescriptionActionInLimiteTime(string description, int limitHours);

        /// <summary>
        /// 用户在指定分钟内是否有memberActionType的操作
        /// </summary>
        /// <param name="MemberID"></param>
        /// <param name="memberAction"></param>
        /// <param name="limitMins"></param>
        /// <returns></returns>
        bool HasActionByActionTypeInLimiteTime(int MemberID, int memberAction, int limitMins);
    }
}