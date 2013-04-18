using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class ArticleCateService : IArticleCateService
    {
        private readonly IUnitOfWork DB_Service;

        public ArticleCateService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<ArticleCate> GetALL()
        {
            return DB_Service.Set<ArticleCate>();
        }

        public IQueryable<ArticleCate> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<ArticleCate>();
        }


        public void Create(ArticleCate model)
        {
            DB_Service.Add<ArticleCate>(model);
            DB_Service.Commit();
        }


        public void Update(ArticleCate model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<ArticleCate>(target);
            target.CateName = model.CateName;
            target.PID = model.PID;
            DB_Service.Commit();
        }


        public ArticleCate Find(int PermissionID)
        {
            return DB_Service.Set<ArticleCate>().Single(x => x.ID == PermissionID);
        }

        public void Delete(ArticleCate model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<ArticleCate>(target);
            DB_Service.Commit();
        }
    }
}