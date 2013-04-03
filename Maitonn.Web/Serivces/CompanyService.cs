using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Data.Entity.Validation;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class CompanyService : ICompanyService
    {

        private readonly IUnitOfWork DB_Service;
        private readonly IMemberService memberService;
        public CompanyService(IUnitOfWork DB_Service,
            IMemberService memberService)
        {
            this.DB_Service = DB_Service;
            this.memberService = memberService;

        }

        public Company Create(CompanyReg model)
        {
            var MemberID = Convert.ToInt32(CookieHelper.UID);
            Company company = new Company();
            company.AddIP = HttpHelper.IP;
            company.Address = model.Address;
            company.AddTime = DateTime.Now;
            company.BussinessCode = model.BussinessCode;
            company.CityCode = model.CityCode;
            company.Description = model.Description;

            company.Fax = model.Fax;
            company.FundCode = model.FundCode;
            company.LastIP = HttpHelper.IP;
            company.LastTime = DateTime.Now;
            company.Lat = Convert.ToSingle(model.Position.Split('|')[0]);
            company.Lng = Convert.ToSingle(model.Position.Split('|')[1]);
            company.LinkMan = model.LinkMan;

            company.MemberID = MemberID;
            company.Mobile = model.Mobile;
            company.MSN = model.MSN;
            company.Name = model.Name;
            company.Phone = model.Phone;
            company.QQ = model.QQ;
            company.ScaleCode = model.ScaleCode;
            company.Sex = model.Sex;
            company.Status = (int)CompanyStatus.CompanyApply;
            DB_Service.Add<Company>(company);
            DB_Service.Commit();

            DB_Service.Attach<Company>(company);
            CompanyImg cimg = new CompanyImg()
            {
                FocusImgUrl = model.CompanyImg.Split(',')[0],
                ImgUrls = model.CompanyImg,
                MemberID = MemberID,
                CompanyID = company.CompanyID
            };
            company.CompanyImg = cimg;

            LinkManImg limg = new LinkManImg()
            {
                FocusImgUrl = model.LinManImg.Split(',')[0],
                ImgUrls = model.LinManImg,
                MemberID = MemberID,
                CompanyID = company.CompanyID
            };
            company.LinkManImg = limg;

            CompanyLogoImg logoimg = new CompanyLogoImg()
            {
                FocusImgUrl = model.Logo,
                ImgUrls = model.Logo,
                CompanyID = company.CompanyID,
                MemberID = MemberID
            };

            company.CompanyLogoImg = logoimg;

            DB_Service.Commit();

            return company;

        }


        public Company Update(CompanyReg model)
        {
            var MemberID = Convert.ToInt32(CookieHelper.UID);

            Company company = IncludeFind(MemberID);
            DB_Service.Attach<Company>(company);
            company.LastIP = HttpHelper.IP;
            company.Address = model.Address;
            company.LastTime = DateTime.Now;
            company.BussinessCode = model.BussinessCode;
            company.CityCode = model.CityCode;
            company.Description = model.Description;

            company.Fax = model.Fax;
            company.FundCode = model.FundCode;
            company.Lat = Convert.ToSingle(model.Position.Split('|')[0]);
            company.Lng = Convert.ToSingle(model.Position.Split('|')[1]);
            company.LinkMan = model.LinkMan;

            company.MemberID = MemberID;
            company.Mobile = model.Mobile;
            company.MSN = model.MSN;
            company.Name = model.Name;
            company.Phone = model.Phone;
            company.QQ = model.QQ;
            company.ScaleCode = model.ScaleCode;
            company.Sex = model.Sex;
            company.Status = (int)CompanyStatus.CompanyApply;
            company.CompanyImg.FocusImgUrl = model.CompanyImg.Split(',')[0];
            company.CompanyImg.ImgUrls = model.CompanyImg;
            company.LinkManImg.FocusImgUrl = model.LinManImg.Split(',')[0];
            company.LinkManImg.ImgUrls = model.LinManImg;
            company.CompanyLogoImg.FocusImgUrl = model.Logo;
            company.CompanyLogoImg.ImgUrls = model.Logo;

            DB_Service.Commit();

            return company;
        }


        public Company Find(int MemberID)
        {
            return DB_Service.Set<Company>().Single(x => x.MemberID == MemberID);
        }


        public Company IncludeFind(int MemberID)
        {
            return DB_Service.Set<Company>()
                .Include(x => x.CompanyImg)
                .Include(x => x.LinkManImg)
                .Include(x => x.CompanyLogoImg)
                .Include(x => x.CompanyBannerImg)
                .Include(x => x.CompanyCredentialsImg)
                .Single(x => x.MemberID == MemberID);
        }


        public IQueryable<CompanyVerifyViewModel> GetVerifyList()
        {

            return DB_Service.Set<Company>().Select(x => new CompanyVerifyViewModel()
            {
                CompanyID = x.CompanyID,
                Name = x.Name,
                Description = x.Description,
                LinkMan = x.LinkMan,
                Contact = (string.IsNullOrEmpty(x.Mobile) ? "" : "手机:" + x.Mobile) + (string.IsNullOrEmpty(x.Phone) ? "" : "电话:" + x.Phone),
                Status = x.Status,
                AddTime = x.AddTime,
                LastTime = x.LastTime
            });

        }
        public IQueryable<CompanyVerifyViewModel> GetVerifyList(CompanyStatus CompanyStatus)
        {
            int CompanyStatusValue = (int)CompanyStatus;
            return GetVerifyList().Where(x => x.Status == CompanyStatusValue);
        }

        public Company FindByCompanyID(int CompanyID)
        {
            return DB_Service.Set<Company>().Single(x => x.CompanyID == CompanyID);
        }


        public Company IncludeFindByCompanyID(int CompanyID)
        {
            return DB_Service.Set<Company>()
                .Include(x => x.CompanyImg)
                .Include(x => x.LinkManImg)
                .Include(x => x.CompanyLogoImg)
                .Include(x => x.CompanyBannerImg)
                .Include(x => x.CompanyCredentialsImg)
                .Single(x => x.CompanyID == CompanyID);
        }


        public bool ChangeStatus(string CompangIds, CompanyStatus CompanyStatus)
        {
            var result = true;
            try
            {
                var IdsArray = CompangIds.Split(',').Select(x => Convert.ToInt32(x));
                var CompanyStatusValue = (int)CompanyStatus;
                DB_Service.Set<Company>().Where(x => IdsArray.Contains(x.CompanyID)).ToList().ForEach(x => x.Status = CompanyStatusValue);
                DB_Service.Commit();
                var MemberIDs = GetCompanyMemberIDs(IdsArray);

                if (CompanyStatus == CompanyStatus.CompanyFailed)
                {
                    memberService.ChangeStatus(MemberIDs, MemberStatus.CompanyFailed);
                }
                else if (CompanyStatus == CompanyStatus.CompanyAuth)
                {
                    memberService.ChangeStatus(MemberIDs, MemberStatus.CompanyAuth);
                }
            }
            catch (DbEntityValidationException ex)
            {
                result = false;
            }
            return result;

        }

        public IEnumerable<int> GetCompanyMemberIDs(IEnumerable<int> companyIDs)
        {
            return DB_Service.Set<Company>().Where(x => companyIDs.Contains(x.CompanyID)).Select(x => x.MemberID);
        }


        public CompanyLogo GetCompanyLogo(int MemberID)
        {
            return DB_Service.Set<Company>()
               .Include(x => x.CompanyLogoImg).Where(x => x.MemberID == MemberID).Select(x => new CompanyLogo()
               {
                   CompanyID = x.CompanyID,
                   LogoUrl = x.CompanyLogoImg.ImgUrls

               }).First();

        }

        public ServiceResult SaveCompanyLogo(int MemberID, CompanyLogo logo)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = IncludeFind(MemberID);
                DB_Service.Attach<Company>(company);
                company.CompanyLogoImg.FocusImgUrl = logo.LogoUrl;
                company.CompanyLogoImg.ImgUrls = logo.LogoUrl;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public CompanyBanner GetCompanyBanner(int MemberID)
        {
            return DB_Service.Set<Company>()
            .Include(x => x.CompanyBannerImg).Where(x => x.MemberID == MemberID).Select(x => new CompanyBanner()
            {
                CompanyID = x.CompanyID,
                BannerUrl = x.CompanyBannerImg.ImgUrls
            }).First();
        }

        public ServiceResult SaveCompanyBanner(int MemberID, CompanyBanner banner)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = IncludeFind(MemberID);
                DB_Service.Attach<Company>(company);
                if (company.CompanyBannerImg == null)
                {
                    company.CompanyBannerImg = new CompanyBannerImg();
                }
                company.CompanyBannerImg.FocusImgUrl = banner.BannerUrl;
                company.CompanyBannerImg.ImgUrls = banner.BannerUrl;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public IEnumerable<CompanyCredentials> GetCompanyCredentials(int MemberID)
        {
            var company = DB_Service.Set<Company>()
            .Include(x => x.CompanyCredentialsImg).Where(x => x.MemberID == MemberID).First();

            return company.CompanyCredentialsImg.Select(x => new CompanyCredentials()
            {
                Url = x.ImgUrl,
                Name = x.Title,
                ID = x.ID
            });

        }

        public ServiceResult SaveCompanyCredentials(int MemberID, CompanyCredentials credentials)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = IncludeFind(MemberID);
                DB_Service.Attach<Company>(company);
                CompanyCredentialsImg cimg = new CompanyCredentialsImg()
                {
                    ImgUrl = credentials.Url,
                    MemberID = MemberID,
                    Title = credentials.Name
                };
                company.CompanyCredentialsImg.Add(cimg);
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public ServiceResult UpdateCompanyCredentials(int MemberID, CompanyCredentials credentials)
        {

            ServiceResult result = new ServiceResult();
            try
            {
                var companyCredentials = GetCompanyCredentials(MemberID, credentials.ID);
                DB_Service.Attach<CompanyCredentialsImg>(companyCredentials);
                companyCredentials.ImgUrl = credentials.Url;
                companyCredentials.Title = credentials.Name;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public CompanyCredentialsImg GetCompanyCredentials(int MemberID, int CredentialsID)
        {
            return DB_Service.Set<CompanyCredentialsImg>().Single(x => x.MemberID == MemberID && x.ID == CredentialsID);
        }


        public ServiceResult DeleteCompanyCredentials(int MemberID, int CredentialsID)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var model = GetCompanyCredentials(MemberID, CredentialsID);
                DB_Service.Remove<CompanyCredentialsImg>(model);
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }
    }
}