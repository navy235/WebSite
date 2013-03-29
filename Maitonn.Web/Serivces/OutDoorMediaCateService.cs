using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class OutDoorMediaCateService : IOutDoorMediaCateService
    {
        private readonly IUnitOfWork DB_Service;

        public OutDoorMediaCateService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<OutDoorMediaCate> GetALL()
        {
            return DB_Service.Set<OutDoorMediaCate>();
        }

        public IQueryable<OutDoorMediaCate> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<OutDoorMediaCate>();
        }


        public void Create(OutDoorMediaCate model)
        {
            DB_Service.Add<OutDoorMediaCate>(model);
            DB_Service.Commit();
        }


        public ServiceResult Update(OutDoorMediaCate model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var target = Find(model.ID);
                DB_Service.Attach<OutDoorMediaCate>(target);
                target.CateName = model.CateName;
                target.PID = model.PID;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public OutDoorMediaCate Find(int ID)
        {
            return DB_Service.Set<OutDoorMediaCate>().Single(x => x.ID == ID);
        }

  

        public void Delete(OutDoorMediaCate model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<OutDoorMediaCate>(target);
            DB_Service.Commit();
        }


        public IQueryable<OutDoorMediaCate> IncludeGetALL()
        {
            return DB_Service.Set<OutDoorMediaCate>().Include(x => x.ChildCategoies).Where(x => x.PID.Equals(null));
        }
    }
}