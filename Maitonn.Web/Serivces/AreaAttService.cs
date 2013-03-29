using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class AreaAttService : IAreaAttService
    {
        private readonly IUnitOfWork DB_Service;

        public AreaAttService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public List<SelectListItem> GetSelectList()
        {
            return DB_Service.Set<AreaAtt>().ToList().Select(x => new SelectListItem()
              {
                  Value = x.ID.ToString(),
                  Text = x.AttName
              }).ToList();
        }


        public List<SelectListItem> GetSelectList(IEnumerable<int> SelectedIdList)
        {
            return DB_Service.Set<AreaAtt>().ToList().Select(x => new SelectListItem()
            {
                Value = x.ID.ToString(),
                Text = x.AttName,
                Selected = SelectedIdList.Contains(x.ID)
            }).ToList();
        }

        public IQueryable<AreaAtt> GetList(IEnumerable<int> IdList)
        {
            return DB_Service.Set<AreaAtt>().Where(x => IdList.Contains(x.ID));
        }

        public IQueryable<AreaAtt> GetList()
        {
            return DB_Service.Set<AreaAtt>();
        }


        public IQueryable<AreaAtt> GetALL()
        {
            return DB_Service.Set<AreaAtt>();
        }

        public IQueryable<AreaAtt> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<AreaAtt>();
        }

        public void Create(AreaAtt model)
        {
            DB_Service.Add<AreaAtt>(model);
            DB_Service.Commit();
        }

        public void Update(AreaAtt model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<AreaAtt>(target);
            target.AttName = model.AttName;
            DB_Service.Commit();
        }

        public void Delete(AreaAtt model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<AreaAtt>(target);
            DB_Service.Commit();
        }

        public AreaAtt Find(int ID)
        {
            return DB_Service.Set<AreaAtt>().Single(x => x.ID == ID);
        }
    }
}