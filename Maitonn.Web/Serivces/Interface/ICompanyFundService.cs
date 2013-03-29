using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface ICompanyFundService
    {
        IQueryable<CompanyFund> GetALL();

        IQueryable<CompanyFund> GetKendoALL();

        void Create(CompanyFund model);

        void Update(CompanyFund model);

        void Delete(CompanyFund model);

        CompanyFund Find(int CompanyFundID);

    }
}