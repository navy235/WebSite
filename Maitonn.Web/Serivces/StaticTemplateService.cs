using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class StaticTemplateService : IStaticTemplateService
    {
        private readonly IUnitOfWork DB_Service;

        public StaticTemplateService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<StaticTemplate> GetALL()
        {
            return DB_Service.Set<StaticTemplate>();
        }

        public IQueryable<StaticTemplate> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<StaticTemplate>();
        }


        public void Create(StaticTemplate model)
        {
            DB_Service.Add<StaticTemplate>(model);
            DB_Service.Commit();
        }


        public void Update(StaticTemplate model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<StaticTemplate>(target);
            target.ProvinceCode = model.ProvinceCode;
            target.Content = model.Content;
            DB_Service.Commit();
        }


        public StaticTemplate Find(int PermissionID)
        {
            return DB_Service.Set<StaticTemplate>().Single(x => x.ID == PermissionID);
        }


        public StaticTemplate Find(string TemplateKey, int Province)
        {
            return DB_Service.Set<StaticTemplate>()
                .Single(x => x.TemplateKey.Equals(TemplateKey, StringComparison.CurrentCultureIgnoreCase)
                    && x.ProvinceCode == Province);
        }

        public void Delete(StaticTemplate model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<StaticTemplate>(target);
            DB_Service.Commit();
        }
    }
}