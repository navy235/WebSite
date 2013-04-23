using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Member_MessageService : IMember_MessageService
    {

        private readonly IUnitOfWork DB_Service;

        public Member_MessageService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }


        public ServiceResult SendMessage(Member_Message Message)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                Message.RecipienterStatus = (int)Member_MessageStatus.Show;
                Message.SenderStatus = (int)Member_MessageStatus.Show;
                DB_Service.Add<Member_Message>(Message);
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult ReadMessage(int MessageID)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var Message = DB_Service.Set<Member_Message>().Single(x => x.ID == MessageID);
                DB_Service.Attach<Member_Message>(Message);
                Message.IsRead = true;
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult DeleteMessage(int MessageID, bool IsSender)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var Message = DB_Service.Set<Member_Message>().Single(x => x.ID == MessageID);
                DB_Service.Attach<Member_Message>(Message);
                if (IsSender)
                {
                    Message.SenderStatus = (int)Member_MessageStatus.Delete;
                }
                else
                {
                    Message.RecipienterStatus = (int)Member_MessageStatus.Delete;
                }
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public IQueryable<Member_Message> GetMemberMessage(int MemberID, Member_MessageStatus MessageStatus, bool IsSender, bool IncludeUpLevel = false)
        {
            var StatusVlaue = (int)MessageStatus;
            var query = DB_Service.Set<Member_Message>();
            if (IsSender)
            {
                query = query.Where(x => x.SenderID == MemberID);
            }
            else
            {
                query = query.Where(x => x.RecipientID == MemberID);
            }
            if (IncludeUpLevel)
            {
                if (IsSender)
                {
                    query = query.Where(x => x.SenderStatus >= StatusVlaue);
                }
                else
                {
                    query = query.Where(x => x.RecipienterStatus >= StatusVlaue);
                }
            }
            else
            {
                if (IsSender)
                {
                    query = query.Where(x => x.SenderStatus == StatusVlaue);
                }
                else
                {
                    query = query.Where(x => x.RecipienterStatus == StatusVlaue);
                }
            }
            return query;
        }



        public ServiceResult ChangeMessageStatus(string Ids, Member_MessageStatus MessageStatus, bool IsSender)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = Ids.Split(',').Select(x => Convert.ToInt32(x));
                var StatusValue = (int)MessageStatus;
                if (IsSender)
                {
                    DB_Service.Set<Member_Message>().Where(x => IdsArray.Contains(x.ID)).ToList().ForEach(x => x.SenderStatus = StatusValue);
                }
                else
                {
                    DB_Service.Set<Member_Message>().Where(x => IdsArray.Contains(x.ID)).ToList().ForEach(x => x.RecipienterStatus = StatusValue);
                }
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public Member_Message Find(int ID)
        {
            return DB_Service.Set<Member_Message>().Single(x => x.ID == ID);
        }
    }
}