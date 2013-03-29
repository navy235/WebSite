using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;
using System.Web.Mvc;
namespace Maitonn.Web
{
    public interface IAreaAttService
    {
        List<SelectListItem> GetSelectList();

        List<SelectListItem> GetSelectList(IEnumerable<int> SelectedIdList);

        IQueryable<AreaAtt> GetList(IEnumerable<int> IdList);

        IQueryable<AreaAtt> GetList();

        IQueryable<AreaAtt> GetALL();

        IQueryable<AreaAtt> GetKendoALL();

        void Create(AreaAtt model);

        void Update(AreaAtt model);

        void Delete(AreaAtt model);

        AreaAtt Find(int ID);
    }
}