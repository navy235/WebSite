using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class RoleService : IRoleService
    {
        private readonly IUnitOfWork DB_Service;
        private readonly IPermissionService PermissionService;

        public RoleService(IUnitOfWork DB_Service
            , IPermissionService PermissionService)
        {
            this.DB_Service = DB_Service;
            this.PermissionService = PermissionService;
        }

        public IQueryable<Roles> GetALL()
        {
            return DB_Service.Set<Roles>();
        }

        public IQueryable<Roles> GetALL(IEnumerable<int> IDs)
        {
            return DB_Service.Set<Roles>().Where(x => IDs.Contains(x.ID));
        }

        public IQueryable<Roles> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Roles>();
        }


        public void Create(Roles model)
        {
            DB_Service.Add<Roles>(model);
            DB_Service.Commit();
        }


        public void Update(Roles model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<Roles>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            DB_Service.Commit();
        }

        public void Update(RoleModel model)
        {
            var permissionsArray = model.Permissions.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            var target = IncludePermissionsFind(model.ID);
            DB_Service.Attach<Roles>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            var PermissionList = PermissionService.GetALL(permissionsArray);
            var currentPermissionArray = target.Permissions.Select(x => x.ID).ToList();
            foreach (Permissions ps in PermissionService.GetALL())
            {
                if (permissionsArray.Contains(ps.ID))
                {
                    if (!currentPermissionArray.Contains(ps.ID))
                    {
                        target.Permissions.Add(ps);
                    }
                }
                else
                {
                    if (currentPermissionArray.Contains(ps.ID))
                    {
                        target.Permissions.Remove(ps);
                    }
                }
            }
            DB_Service.Commit();
        }


        public Roles Find(int RoleID)
        {
            return DB_Service.Set<Roles>().Single(x => x.ID == RoleID);
        }

        public Roles IncludeFind(int RoleID)
        {
            return DB_Service.Set<Roles>()
                .Include(x => x.Permissions)
                .Include(x => x.Group)
                .Single(x => x.ID == RoleID);
        }
        public Roles IncludePermissionsFind(int RoleID)
        {

            return DB_Service.Set<Roles>()
                .Include(x => x.Permissions)
                .Single(x => x.ID == RoleID);
        }

        public void Delete(Roles model)
        {
            var target = IncludeFind(model.ID);
            DB_Service.Remove<Roles>(target);
            DB_Service.Commit();
        }





    }
}