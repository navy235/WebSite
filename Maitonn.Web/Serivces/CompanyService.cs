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

        public CompanyService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;

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

            DB_Service.Commit();

            return company;

        }


        public Company Find(int MemberID)
        {
            return DB_Service.Set<Company>().Single(x => x.MemberID == MemberID);
        }


        public Company IncludeFind(int MemberID)
        {
            return DB_Service.Set<Company>().Include(x => x.CompanyImg)
                .Include(x => x.LinkManImg).Single(x => x.MemberID == MemberID);
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
            return DB_Service.Set<Company>().Include(x => x.CompanyImg)
               .Include(x => x.LinkManImg).Single(x => x.CompanyID == CompanyID);
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
            }
            catch (DbEntityValidationException ex)
            {
                result = false;
            }
            return result;

        }
    }
}