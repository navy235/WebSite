using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class CompanyFundService : ICompanyFundService
    {
        private readonly IUnitOfWork DB_Service;

        public CompanyFundService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<CompanyFund> GetALL()
        {
            return DB_Service.Set<CompanyFund>();
        }

        public IQueryable<CompanyFund> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<CompanyFund>();
        }


        public void Create(CompanyFund model)
        {
            DB_Service.Add<CompanyFund>(model);
            DB_Service.Commit();
        }


        public void Update(CompanyFund model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<CompanyFund>(target);
            target.CateName = model.CateName;
            target.PID = model.PID;
            DB_Service.Commit();
        }


        public CompanyFund Find(int ID)
        {
            return DB_Service.Set<CompanyFund>().Single(x => x.ID == ID);
        }

     
        public void Delete(CompanyFund model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<CompanyFund>(target);
            DB_Service.Commit();
        }
    }
}