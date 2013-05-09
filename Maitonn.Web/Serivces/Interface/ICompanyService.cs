using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;

namespace Maitonn.Web
{
    public interface ICompanyService
    {
        Company Create(CompanyReg model);

        Company SaveBasInfo(int MemberID, CompanyReg model);

        Company Update(CompanyReg model);

        Company Find(int MemberID);

        Company FindByCompanyID(int CompanyID);

        Company IncludeFindByCompanyID(int CompanyID);

        Company IncludeFind(int MemberID);

        Company IncludeFindCompanyProfile(int MemberID);

        Company ShowIndexCompanyProfile(int MemberID);

        CompanyCredentialsImg GetCompanyCredentialsSingle(int CredentialsID);

        CompanyNotice GetCompanyNotice(int NoticeID);

        CompanyMessage GetCompanyMessage(int MessageID);

        CompanyLogo GetCompanyLogo(int MemberID);

        CompanyBanner GetCompanyBanner(int MemberID);

        ServiceResult UpdateCompanyContact(int MemberID, CompanyContactInfoViewModel model);

        ServiceResult CreateCompanyAuthInfo(int MemberID, BizAuthModel model);

        ServiceResult UpdateCompanyAuthInfo(int MemberID, BizAuthModel model);

        ServiceResult SaveCompanyLogo(int MemberID, CompanyLogo logo);

        ServiceResult SaveCompanyBanner(int MemberID, CompanyBanner banner);

        ServiceResult SaveCompanyCredentials(int MemberID, CompanyCredentials credentials);

        ServiceResult UpdateCompanyCredentials(int MemberID, CompanyCredentials credentials);

        ServiceResult DeleteCompanyCredentials(int MemberID, int CredentialsID);

        CompanyStatus GetCompanyStatus(int MemberID);


        IEnumerable<CompanyCredentials> GetCompanyCredentials(int MemberID);

        IEnumerable<CompanyNoticeViewModel> GetCompanyNoticeList(int MemberID, CompanyNoticeStatus CompanyNoticeStatus, bool inCludeUpLevel = false);

        IEnumerable<CompanyMessageViewModel> GetCompanyMessageList(int MemberID, CompanyMessageStatus CompanyMessageStatus, bool inCludeUpLevel = false);

        IQueryable<Company> GetAll();

        IQueryable<CompanyVerifyViewModel> GetVerifyList();

        IQueryable<CompanyVerifyViewModel> GetVerifyList(CompanyStatus CompanyStatus);

        bool ChangeStatus(string CompangIds, CompanyStatus CompanyStatus);

        ServiceResult ChangeCompanyNoticeStatus(string Ids, CompanyNoticeStatus CompanyNoticeStatus);

        ServiceResult ChangeCompanyMessageStatus(string Ids, CompanyMessageStatus CompanyMessageStatus);

        ServiceResult AddCompanyNotice(int MemberID, AddCompanyNoticeViewModel model);

        ServiceResult EditCompanyNotice(int MemberID, AddCompanyNoticeViewModel model);

        ServiceResult AddCompanyMessage(int MemberID, int AddMemberID, AddCompanyMessageViewModel model);

    }
}