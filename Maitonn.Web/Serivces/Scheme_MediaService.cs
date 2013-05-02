using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class Scheme_MediaService : IScheme_MediaService
    {
        private readonly IUnitOfWork DB_Service;

        public Scheme_MediaService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Scheme_Media> GetALL()
        {
            return DB_Service.Set<Scheme_Media>();
        }

        public IQueryable<Scheme_Media> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Scheme_Media>();
        }


        public void Create(Scheme_Media model)
        {
            DB_Service.Add<Scheme_Media>(model);
            DB_Service.Commit();
        }


        public void Update(Scheme_Media model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Scheme_Media>(target);
            target.PeriodCode = model.PeriodCode;
            target.Price = model.Price;
            target.StartTime = model.StartTime;
            target.EndTime = model.EndTime;
            DB_Service.Commit();
        }


        public Scheme_Media Find(int ID)
        {
            return DB_Service.Set<Scheme_Media>().Single(x => x.ID == ID);
        }


        public void Delete(Scheme_Media model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Scheme_Media>(target);
            DB_Service.Commit();
        }

    }
}