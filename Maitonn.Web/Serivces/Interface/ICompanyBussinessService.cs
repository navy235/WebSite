using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface ICompanyBussinessService
    {
        IQueryable<CompanyBussiness> GetALL();

        IQueryable<CompanyBussiness> GetKendoALL();

        void Create(CompanyBussiness model);

        void Update(CompanyBussiness model);

        void Delete(CompanyBussiness model);

        CompanyBussiness Find(int CompanyBussinessID);

    }
}