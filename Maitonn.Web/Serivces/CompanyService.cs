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
        public Company SaveBasInfo(int MemberID, CompanyReg model)
        {
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



            DB_Service.Add<Company>(company);
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
            if (company.CompanyImg == null)
            {
                CompanyImg cimg = new CompanyImg()
                {
                    FocusImgUrl = model.CompanyImg.Split(',')[0],
                    ImgUrls = model.CompanyImg,
                    MemberID = MemberID,
                    CompanyID = company.CompanyID
                };
                company.CompanyImg = cimg;
            }
            else
            {
                company.CompanyImg.FocusImgUrl = model.CompanyImg.Split(',')[0];
                company.CompanyImg.ImgUrls = model.CompanyImg;
            }

            if (company.LinkManImg == null)
            {
                LinkManImg limg = new LinkManImg()
                {
                    FocusImgUrl = model.LinManImg.Split(',')[0],
                    ImgUrls = model.LinManImg,
                    MemberID = MemberID,
                    CompanyID = company.CompanyID
                };
                company.LinkManImg = limg;
            }
            else
            {
                company.CompanyImg.FocusImgUrl = model.CompanyImg.Split(',')[0];
                company.CompanyImg.ImgUrls = model.CompanyImg;
            }

            if (company.CompanyLogoImg == null)
            {

                CompanyLogoImg logoimg = new CompanyLogoImg()
                {
                    FocusImgUrl = model.Logo,
                    ImgUrls = model.Logo,
                    CompanyID = company.CompanyID,
                    MemberID = MemberID
                };

                company.CompanyLogoImg = logoimg;
            }
            else
            {
                company.CompanyLogoImg.FocusImgUrl = model.Logo;
                company.CompanyLogoImg.ImgUrls = model.Logo;
            }

            DB_Service.Commit();

            return company;
        }


        public Company Find(int MemberID)
        {
            return DB_Service.Set<Company>().SingleOrDefault(x => x.MemberID == MemberID);
        }


        public Company IncludeFind(int MemberID)
        {
            return DB_Service.Set<Company>()
                .Include(x => x.CompanyImg)
                .Include(x => x.LinkManImg)
                .Include(x => x.CompanyLogoImg)
                .Include(x => x.CompanyBannerImg)
                .SingleOrDefault(x => x.MemberID == MemberID);
        }

        public Company IncludeCategoryFind(int MemberID)
        {
            return DB_Service.Set<Company>()
                 .Include(x => x.Area)
                 .Include(x => x.Area.PCategory)
                 .SingleOrDefault(x => x.MemberID == MemberID);
        }

        public Company IncludeFindCompanyProfile(int MemberID)
        {
            return DB_Service.Set<Company>()
            .Include(x => x.CompanyImg)
            .Include(x => x.LinkManImg)
            .Include(x => x.CompanyLogoImg)
            .Include(x => x.CompanyBannerImg)
            .Include(x => x.CompanyBussiness)
            .Include(x => x.CompanyScale)
            .Include(x => x.CompanyFund)
            .Include(x => x.Area)
            .Include(x => x.Area.PCategory)
            .Single(x => x.MemberID == MemberID);
        }

        public Company ShowIndexCompanyProfile(int MemberID)
        {
            return DB_Service.Set<Company>()
            .Include(x => x.CompanyLogoImg)
            .Include(x => x.CompanyBussiness)
            .Include(x => x.CompanyScale)
            .Include(x => x.CompanyFund)
            .Include(x => x.Area)
            .Include(x => x.Area.PCategory)
            .Single(x => x.MemberID == MemberID);
        }

        public IQueryable<Company> GetAll()
        {
            return DB_Service.Set<Company>();
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
                var company = DB_Service.Set<Company>().Include(x => x.CompanyBannerImg).Single(x => x.MemberID == MemberID);
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
                var company = DB_Service.Set<Company>().Include(x => x.CompanyCredentialsImg).Single(x => x.MemberID == MemberID);
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
                var companyCredentials = GetCompanyCredentialsSingle(credentials.ID);
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


        public CompanyCredentialsImg GetCompanyCredentialsSingle(int CredentialsID)
        {
            return DB_Service.Set<CompanyCredentialsImg>().Single(x => x.ID == CredentialsID);
        }


        public ServiceResult DeleteCompanyCredentials(int MemberID, int CredentialsID)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var model = GetCompanyCredentialsSingle(CredentialsID);
                DB_Service.Remove<CompanyCredentialsImg>(model);
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public IEnumerable<CompanyNoticeViewModel> GetCompanyNoticeList(int MemberID, CompanyNoticeStatus CompanyNoticeStatus, bool inCludeUpLevel = false)
        {
            var NoticeStatus = (int)CompanyNoticeStatus;

            var company = DB_Service.Set<Company>()
                .Include(x => x.CompanyNotice).Where(x => x.MemberID == MemberID).First();

            var query = company.CompanyNotice.AsQueryable();

            if (inCludeUpLevel)
            {
                query = query.Where(x => x.Status >= NoticeStatus);
            }
            else
            {
                query = query.Where(x => x.Status == NoticeStatus);
            }
            return query.Select(x => new CompanyNoticeViewModel()
             {
                 ID = x.ID,
                 AddTime = x.AddTime,
                 Content = x.Content,
                 Name = x.Title,
                 Status = x.Status
             });

        }

        public IEnumerable<CompanyMessageViewModel> GetCompanyMessageList(int MemberID, CompanyMessageStatus CompanyMessageStatus, bool inCludeUpLevel = false)
        {
            var MessageStatus = (int)CompanyMessageStatus;
            var company = DB_Service.Set<Company>()
                .Include(x => x.CompanyMessage).Where(x => x.MemberID == MemberID).First();

            var query = company.CompanyMessage.AsQueryable();
            if (inCludeUpLevel)
            {
                query = query.Where(x => x.Status >= MessageStatus);
            }
            else
            {
                query = query.Where(x => x.Status == MessageStatus);
            }

            return query.Select(x => new CompanyMessageViewModel()
            {
                ID = x.ID,
                AddTime = x.AddTime,
                Content = x.Content,
                Name = x.Title,
                Status = x.Status
            });
        }

        public ServiceResult UpdateCompanyContact(int MemberID, CompanyContactInfoViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = IncludeFind(MemberID);
                DB_Service.Attach<Company>(company);
                company.LinkMan = model.LinkMan;
                company.Fax = model.Fax;
                company.Mobile = model.Mobile;
                company.MSN = model.MSN;
                company.Phone = model.Phone;
                company.QQ = model.QQ;
                company.Sex = model.Sex;
                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;

        }

        public ServiceResult CreateCompanyAuthInfo(int MemberID, BizAuthModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = Find(MemberID);

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

                company.Status = (int)CompanyStatus.CompanyApply;

                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult UpdateCompanyAuthInfo(int MemberID, BizAuthModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = IncludeFind(MemberID);

                DB_Service.Attach<Company>(company);

                company.CompanyImg.FocusImgUrl = model.CompanyImg.Split(',')[0];
                company.CompanyImg.ImgUrls = model.CompanyImg;
                company.LinkManImg.FocusImgUrl = model.LinManImg.Split(',')[0];
                company.LinkManImg.ImgUrls = model.LinManImg;
                company.CompanyLogoImg.FocusImgUrl = model.Logo;
                company.CompanyLogoImg.ImgUrls = model.Logo;

                company.Status = (int)CompanyStatus.CompanyApply;

                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult ChangeCompanyNoticeStatus(string Ids, CompanyNoticeStatus CompanyNoticeStatus)
        {

            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = Ids.Split(',').Select(x => Convert.ToInt32(x));
                var StatusValue = (int)CompanyNoticeStatus;
                DB_Service.Set<CompanyNotice>().Where(x => IdsArray.Contains(x.ID)).ToList().ForEach(x => x.Status = StatusValue);
                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;

        }

        public ServiceResult ChangeCompanyMessageStatus(string Ids, CompanyMessageStatus CompanyMessageStatus)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var IdsArray = Ids.Split(',').Select(x => Convert.ToInt32(x));
                var StatusValue = (int)CompanyMessageStatus;
                DB_Service.Set<CompanyMessage>().Where(x => IdsArray.Contains(x.ID)).ToList().ForEach(x => x.Status = StatusValue);
                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public ServiceResult AddCompanyNotice(int MemberID, AddCompanyNoticeViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = DB_Service.Set<Company>().Include(x => x.CompanyNotice).Single(x => x.MemberID == MemberID);
                DB_Service.Attach<Company>(company);
                CompanyNotice cn = new CompanyNotice()
                {
                    MemberID = MemberID,
                    AddTime = DateTime.Now,
                    Content = model.Content,
                    Title = model.Name,
                    Status = (int)CompanyNoticeStatus.ShowOnLine
                };
                company.CompanyNotice.Add(cn);
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult EditCompanyNotice(int MemberID, AddCompanyNoticeViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var notice = GetCompanyNotice(model.ID);
                DB_Service.Attach<CompanyNotice>(notice);
                notice.Title = model.Name;
                notice.Content = model.Content;
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public ServiceResult AddCompanyMessage(int MemberID, int AddMemberID, AddCompanyMessageViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var company = DB_Service.Set<Company>().Include(x => x.CompanyMessage).Single(x => x.MemberID == MemberID);
                DB_Service.Attach<Company>(company);
                CompanyMessage cm = new CompanyMessage()
                {
                    MemberID = AddMemberID,
                    AddTime = DateTime.Now,
                    Content = model.Content,
                    Title = model.Name,
                    Status = (int)CompanyMessageStatus.NotShow
                };
                company.CompanyMessage.Add(cm);
                DB_Service.Commit();
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public CompanyNotice GetCompanyNotice(int NoticeID)
        {
            return DB_Service.Set<CompanyNotice>().Single(x => x.ID == NoticeID);
        }


        public CompanyMessage GetCompanyMessage(int MessageID)
        {
            return DB_Service.Set<CompanyMessage>().Single(x => x.ID == MessageID);
        }

        public CompanyStatus GetCompanyStatus(int MemberID)
        {
            var status = DB_Service.Set<Company>().Single(x => x.MemberID == MemberID).Status;
            return (CompanyStatus)status;
        }



    }
}