using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Groupervice : IGroupService
    {
        private readonly IUnitOfWork DB_Service;
        private IRoleService roleService;

        public Groupervice(IUnitOfWork DB_Service
            , IRoleService roleService)
        {
            this.DB_Service = DB_Service;
            this.roleService = roleService;
        }

        public IQueryable<Group> GetALL()
        {
            return DB_Service.Set<Group>();
        }

        public IQueryable<Group> GetALL(IEnumerable<int> IDs)
        {
            return DB_Service.Set<Group>().Where(x => IDs.Contains(x.GroupID));
        }

        public IQueryable<Group> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Group>();
        }


        public void Create(Group model)
        {
            DB_Service.Add<Group>(model);
            DB_Service.Commit();
        }


        public void Update(Group model)
        {
            var target = Find(model.GroupID);
            DB_Service.Attach<Group>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            DB_Service.Commit();
        }

        public void Update(GroupModel model)
        {
            var rolesArray = model.RolesList.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            var target = IncludeFind(model.ID);
            DB_Service.Attach<Group>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            var RoleList = roleService.GetALL(rolesArray);
            var currentroleArray = target.Roles.Select(x => x.ID).ToList();
            foreach (Roles rl in roleService.GetALL())
            {
                if (rolesArray.Contains(rl.ID))
                {
                    if (!currentroleArray.Contains(rl.ID))
                    {
                        target.Roles.Add(rl);
                    }
                }
                else
                {
                    if (currentroleArray.Contains(rl.ID))
                    {
                        target.Roles.Remove(rl);
                    }
                }
            }

            DB_Service.Commit();
        }

        public Group Find(int GroupID)
        {
            return DB_Service.Set<Group>().Single(x => x.GroupID == GroupID);
        }

        public Group IncludeFind(int GroupID)
        {
            return DB_Service.Set<Group>()
                .Include(x => x.Roles)
                .Single(x => x.GroupID == GroupID);
        }

        public void Delete(Group model)
        {
            var target = IncludeFind(model.GroupID);
            DB_Service.Remove<Group>(target);
            DB_Service.Commit();
        }

        public bool CheckPermission(int groupID, string controller, string action)
        {
            var query = DB_Service.Set<Group>()
                 .Include(x => x.Roles)
                 .Where(g =>
                     (g.Roles.Any(r =>
                         r.Permissions.Count(p =>
                             p.Controller.Equals(controller, StringComparison.OrdinalIgnoreCase)
                             &&
                             (p.Action.Equals(action, StringComparison.OrdinalIgnoreCase) || p.Action.Equals("controller", StringComparison.OrdinalIgnoreCase))) > 0))
                     && g.GroupID == groupID);
            return query.Any();
        }
    }
}