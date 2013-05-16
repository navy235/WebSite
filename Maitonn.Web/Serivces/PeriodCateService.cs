using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class PeriodCateService : IPeriodCateService
    {
        private readonly IUnitOfWork DB_Service;

        public PeriodCateService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<PeriodCate> GetALL()
        {
            return DB_Service.Set<PeriodCate>();
        }

        public IQueryable<PeriodCate> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<PeriodCate>();
        }


        public void Create(PeriodCate model)
        {
            DB_Service.Add<PeriodCate>(model);
            DB_Service.Commit();
        }


        public void Update(PeriodCate model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<PeriodCate>(target);
            target.CateName = model.CateName;
            target.OrderIndex = model.OrderIndex;
            target.PID = model.PID;
            DB_Service.Commit();
        }


        public PeriodCate Find(int ID)
        {
            return DB_Service.Set<PeriodCate>().Single(x => x.ID == ID);
        }

   


        public void Delete(PeriodCate model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<PeriodCate>(target);
            DB_Service.Commit();
        }
    }
}