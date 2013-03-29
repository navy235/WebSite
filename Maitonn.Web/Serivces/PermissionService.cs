using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class PermissionService : IPermissionService
    {
        private readonly IUnitOfWork DB_Service;

        public PermissionService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Permissions> GetALL()
        {
            return DB_Service.Set<Permissions>();
        }

        public IQueryable<Permissions> GetALL(IEnumerable<int> IDs)
        {
            return DB_Service.Set<Permissions>().Where(x => IDs.Contains(x.ID));
        }

        public IQueryable<Permissions> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Permissions>();
        }


        public void Create(Permissions model)
        {
            DB_Service.Add<Permissions>(model);
            DB_Service.Commit();
        }


        public void Update(Permissions model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Permissions>(target);
            target.Name = model.Name;
            target.Action = model.Action;
            target.Namespace = model.Namespace;
            target.Controller = model.Controller;
            target.Description = model.Description;
            target.DepartmentID = model.DepartmentID;
            DB_Service.Commit();
        }


        public Permissions Find(int PermissionID)
        {
            return DB_Service.Set<Permissions>().Single(x => x.ID == PermissionID);
        }

        public Permissions IncludeFind(int PermissionID)
        {
            return DB_Service.Set<Permissions>()
                .Include(x => x.Roles)
                .Single(x => x.ID == PermissionID);
        }

        public void Delete(Permissions model)
        {
            var target = IncludeFind(model.ID);
            DB_Service.Remove<Permissions>(target);
            DB_Service.Commit();
        }


    }
}