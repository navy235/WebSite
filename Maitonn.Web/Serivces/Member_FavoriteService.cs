using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Member_FavoriteService : IMember_FavoriteService
    {
        private readonly IUnitOfWork DB_Service;

        public Member_FavoriteService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_Favorite> GetALL()
        {
            return DB_Service.Set<Member_Favorite>();
        }

        public IQueryable<Member_Favorite> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Member_Favorite>();
        }


        public void Create(Member_Favorite model)
        {
            DB_Service.Add<Member_Favorite>(model);
            DB_Service.Commit();
        }


        public ServiceResult Update(Member_Favorite model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var target = Find(model.ID);
                DB_Service.Attach<Member_Favorite>(target);
                target.Status = model.Status;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public Member_Favorite Find(int ID)
        {
            return DB_Service.Set<Member_Favorite>().Single(x => x.ID == ID);
        }



        public void Delete(Member_Favorite model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Member_Favorite>(target);
            DB_Service.Commit();
        }



        public ServiceResult DeleteAll(string ids)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = ids.Split(',').Select(x => Convert.ToInt32(x));
                DB_Service.Set<Member_Favorite>().Where(x => IdsArray.Contains(x.ID))
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