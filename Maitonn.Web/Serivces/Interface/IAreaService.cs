using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface IAreaService
    {
        IQueryable<Area> GetALL();

        IQueryable<Area> GetKendoALL();

        void Create(Area model);

        void Update(Area model);

        void Delete(Area model);

        Area Find(int AreaID);

    }
}