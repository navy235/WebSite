using System;
using System.Linq;
using System.Collections.Generic;

namespace Maitonn.Web
{
    public interface ICompanyScaleService
    {
        IQueryable<CompanyScale> GetALL();

        IQueryable<CompanyScale> GetKendoALL();

        void Create(CompanyScale model);

        void Update(CompanyScale model);

        void Delete(CompanyScale model);

        CompanyScale Find(int CompanyScaleID);

    }
}