using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Member_SchemeService : IMember_SchemeService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_SchemeService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_Scheme> GetALL()
        {
            return DB_Service.Set<Member_Scheme>();
        }

        public IQueryable<Member_Scheme> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Member_Scheme>();
        }


        public void Create(Member_Scheme model)
        {
            DB_Service.Add<Member_Scheme>(model);
            DB_Service.Commit();
        }


        public void Update(Member_Scheme model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Member_Scheme>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            target.LastTime = DateTime.Now;
            target.Status = model.Status;
            DB_Service.Commit();
        }


        public Member_Scheme Find(int ID)
        {
            return DB_Service.Set<Member_Scheme>().Single(x => x.ID == ID);
        }


        public void Delete(Member_Scheme model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Member_Scheme>(target);
            DB_Service.Commit();
        }


        public ServiceResult DeleteAll(string ids)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = ids.Split(',').Select(x => Convert.ToInt32(x));
                DB_Service.Set<Member_Scheme>().Include(x => x.Scheme_Media).Where(x => IdsArray.Contains(x.ID))
                    .ToList().ForEach(x => Delete(x));
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }
    }
}