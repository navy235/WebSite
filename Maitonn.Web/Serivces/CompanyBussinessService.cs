using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class CompanyBussinessService : ICompanyBussinessService
    {
        private readonly IUnitOfWork DB_Service;

        public CompanyBussinessService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<CompanyBussiness> GetALL()
        {
            return DB_Service.Set<CompanyBussiness>();
        }

        public IQueryable<CompanyBussiness> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<CompanyBussiness>();
        }


        public void Create(CompanyBussiness model)
        {
            DB_Service.Add<CompanyBussiness>(model);
            DB_Service.Commit();
        }


        public void Update(CompanyBussiness model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<CompanyBussiness>(target);
            target.CateName = model.CateName;
            target.PID = model.PID;
            DB_Service.Commit();
        }


        public CompanyBussiness Find(int ID)
        {
            return DB_Service.Set<CompanyBussiness>().Single(x => x.ID == ID);
        }

   
        public void Delete(CompanyBussiness model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<CompanyBussiness>(target);
            DB_Service.Commit();
        }
    }
}