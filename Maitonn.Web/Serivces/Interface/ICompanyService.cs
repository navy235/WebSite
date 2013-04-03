using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;

namespace Maitonn.Web
{
    public interface ICompanyService
    {
        Company Create(CompanyReg model);

        Company Update(CompanyReg model);

        Company Find(int MemberID);

        Company FindByCompanyID(int CompanyID);

        Company IncludeFindByCompanyID(int CompanyID);

        Company IncludeFind(int MemberID);

        CompanyCredentialsImg GetCompanyCredentials(int MemberID, int CredentialsID);

        CompanyLogo GetCompanyLogo(int MemberID);

        CompanyBanner GetCompanyBanner(int MemberID);

        ServiceResult SaveCompanyLogo(int MemberID, CompanyLogo logo);

        ServiceResult SaveCompanyBanner(int MemberID, CompanyBanner banner);

        ServiceResult SaveCompanyCredentials(int MemberID, CompanyCredentials credentials);

        ServiceResult UpdateCompanyCredentials(int MemberID, CompanyCredentials credentials);

        ServiceResult DeleteCompanyCredentials(int MemberID, int CredentialsID);

        IEnumerable<CompanyCredentials> GetCompanyCredentials(int MemberID);

        IQueryable<CompanyVerifyViewModel> GetVerifyList();

        IQueryable<CompanyVerifyViewModel> GetVerifyList(CompanyStatus CompanyStatus);

        bool ChangeStatus(string CompangIds, CompanyStatus CompanyStatus);
    }
}