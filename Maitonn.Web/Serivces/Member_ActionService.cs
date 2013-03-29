using System;
using System.Linq;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Member_ActionService : IMember_ActionService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_ActionService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public Member_Action Create(Member member, int memberAction, string description)
        {
            Member_Action member_Action = new Member_Action()
            {
                MemberID = member.MemberID,
                ActionType = memberAction,
                AddTime = DateTime.Now,
                Description = description,
                IP = HttpHelper.IP
            };
            DB_Service.Add<Member_Action>(member_Action);
            DB_Service.Commit();
            return member_Action;
        }

        public bool HasDescriptionActionInLimiteTime(string description, int limitHours)
        {
            DateTime LimitDate = DateTime.Now.AddHours(-limitHours);
            var query = DB_Service.Set<Member_Action>()
                   .Where(x => x.Description.Equals(description, StringComparison.OrdinalIgnoreCase)
                   && x.AddTime > LimitDate
                   );
            return query.Count() > 0;
        }


        public bool HasActionByActionTypeInLimiteTime(int MemberID, int memberAction, int limitMins)
        {
            DateTime LimitDate = DateTime.Now.AddMinutes(-limitMins);
            var query = DB_Service.Set<Member_Action>()
                  .Where(x => x.MemberID == MemberID
                  && x.ActionType == memberAction
                  && x.AddTime > LimitDate
                  );
            return query.Count() > 0;
        }


        public Member_Action Create(Core.MemberActionType MemberActionType, string description)
        {
            var MemberID = Convert.ToInt32(CookieHelper.UID);
            Member_Action member_Action = new Member_Action()
            {
                MemberID = MemberID,
                ActionType = (int)MemberActionType,
                AddTime = DateTime.Now,
                Description = description,
                IP = HttpHelper.IP
            };
            DB_Service.Add<Member_Action>(member_Action);
            DB_Service.Commit();
            return member_Action;
        }

        public Member_Action Create(Core.MemberActionType MemberActionType)
        {
            return Create(MemberActionType, string.Empty);
        }


        public bool HasAction(MemberActionType MemberActionType)
        {
            var MemberID = Convert.ToInt32(CookieHelper.UID);
            var type = (int)MemberActionType;
            return DB_Service.Set<Member_Action>().Any(x => x.MemberID == MemberID && x.ActionType == type);
        }
    }
}