using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface IStaticTemplateService
    {
        IQueryable<StaticTemplate> GetALL();

        IQueryable<StaticTemplate> GetKendoALL();

        void Create(StaticTemplate model);

        void Update(StaticTemplate model);

        void Delete(StaticTemplate model);

        StaticTemplate Find(int StaticTemplateID);

        StaticTemplate Find(string TemplateKey, int ProvinceCode);

    }
}