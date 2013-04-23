using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Sys_MessageService : ISys_MessageService
    {

        private readonly IUnitOfWork DB_Service;

        public Sys_MessageService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public ServiceResult SendMessage(Sys_Message Message)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                Message.Status = (int)Sys_MessageStatus.Show;
                DB_Service.Add<Sys_Message>(Message);
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
                var Message = DB_Service.Set<Sys_Message>().Single(x => x.ID == MessageID);
                DB_Service.Attach<Sys_Message>(Message);
                Message.IsRead = true;
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult DeleteMessage(int MessageID)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var Message = DB_Service.Set<Sys_Message>().Single(x => x.ID == MessageID);
                DB_Service.Attach<Sys_Message>(Message);
                Message.Status = (int)Sys_MessageStatus.Delete;
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public IQueryable<Sys_Message> GetMemberMessage(int MemberID, Sys_MessageStatus MessageStatus, bool IncludeUpLevel = false)
        {
            var StatusVlaue = (int)MessageStatus;
            var query = DB_Service.Set<Sys_Message>().Where(x => x.MemberID == MemberID);
            if (IncludeUpLevel)
            {
                query = query.Where(x => x.Status >= StatusVlaue);
            }
            else
            {
                query = query.Where(x => x.Status == StatusVlaue);
            }
            return query;
        }


        public ServiceResult ChangeMessageStatus(string Ids, Sys_MessageStatus MessageStatus)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = Ids.Split(',').Select(x => Convert.ToInt32(x));
                var StatusValue = (int)MessageStatus;
                DB_Service.Set<Sys_Message>().Where(x => IdsArray.Contains(x.ID)).ToList().ForEach(x => x.Status = StatusValue);
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public Sys_Message Find(int ID)
        {
            return DB_Service.Set<Sys_Message>().Single(x => x.ID == ID);
        }
    }
}