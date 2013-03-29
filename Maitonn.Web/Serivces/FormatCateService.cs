using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class FormatCateService : IFormatCateService
    {
        private readonly IUnitOfWork DB_Service;

        public FormatCateService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<FormatCate> GetALL()
        {
            return DB_Service.Set<FormatCate>();
        }

        public IQueryable<FormatCate> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<FormatCate>();
        }


        public void Create(FormatCate model)
        {
            DB_Service.Add<FormatCate>(model);
            DB_Service.Commit();
        }


        public void Update(FormatCate model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<FormatCate>(target);
            target.CateName = model.CateName;
            target.PID = model.PID;
            DB_Service.Commit();
        }


        public FormatCate Find(int ID)
        {
            return DB_Service.Set<FormatCate>().Single(x => x.ID == ID);
        }

   
        public void Delete(FormatCate model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<FormatCate>(target);
            DB_Service.Commit();
        }
    }
}