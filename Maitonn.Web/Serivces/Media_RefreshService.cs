using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Media_RefreshService : IMedia_RefreshService
    {
        private readonly IUnitOfWork DB_Service;

        public Media_RefreshService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Media_Refresh> GetALL()
        {
            return DB_Service.Set<Media_Refresh>();
        }

        public IQueryable<Media_Refresh> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Media_Refresh>();
        }


        public void Create(Media_Refresh model)
        {
            DB_Service.Add<Media_Refresh>(model);
            DB_Service.Commit();
        }


        public void Update(Media_Refresh model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Media_Refresh>(target);
            target.CurrentTimes = model.CurrentTimes;
            target.DayLimit = model.DayLimit;
            DB_Service.Commit();
        }


        public Media_Refresh Find(int ID)
        {
            return DB_Service.Set<Media_Refresh>().Single(x => x.ID == ID);
        }


        public void Delete(Media_Refresh model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Media_Refresh>(target);
            DB_Service.Commit();
        }

    }
}