using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Media_FavoritesService : IMedia_FavoritesService
    {
        private readonly IUnitOfWork DB_Service;

        public Media_FavoritesService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Media_Favorites> GetALL()
        {
            return DB_Service.Set<Media_Favorites>();
        }

        public IQueryable<Media_Favorites> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Media_Favorites>();
        }


        public void Create(Media_Favorites model)
        {
            DB_Service.Add<Media_Favorites>(model);
            DB_Service.Commit();
        }


        public void Update(Media_Favorites model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Media_Favorites>(target);
            target.Status = model.Status;
            DB_Service.Commit();
        }


        public Media_Favorites Find(int PermissionID)
        {
            return DB_Service.Set<Media_Favorites>().Single(x => x.ID == PermissionID);
        }

        public void Delete(Media_Favorites model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Media_Favorites>(target);
            DB_Service.Commit();
        }
    }
}