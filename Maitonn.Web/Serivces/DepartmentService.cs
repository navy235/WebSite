using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class DepartmentService : IDepartmentService
    {
        private readonly IUnitOfWork DB_Service;

        public DepartmentService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Department> GetALL()
        {
            return DB_Service.Set<Department>();
        }


        public IQueryable<Department> GetIncludeALL()
        {
            return DB_Service.Set<Department>().Include(x => x.Permissions);
        }
    }
}