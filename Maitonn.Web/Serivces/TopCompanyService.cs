using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Transactions;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class TopCompanyService : ITopCompanyService
    {
        private readonly IUnitOfWork DB_Service;
        private readonly IMember_MoneyService Member_MoneyService;
        public TopCompanyService(IUnitOfWork DB_Service
             , IMember_MoneyService Member_MoneyService)
        {
            this.DB_Service = DB_Service;
            this.Member_MoneyService = Member_MoneyService;
        }

        public IQueryable<TopCompany> GetALL()
        {
            return DB_Service.Set<TopCompany>();
        }

        public IQueryable<TopCompany> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<TopCompany>();
        }


        public void Create(TopCompany model)
        {
            DB_Service.Add<TopCompany>(model);
            DB_Service.Commit();
        }


        public void Update(TopCompany model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<TopCompany>(target);
            target.TopStart = model.TopStart;
            target.TopEnd = model.TopEnd;
            target.MemberID = model.MemberID;
            target.IsByCategory = model.IsByCategory;
            target.ProvinceCode = model.ProvinceCode;
            target.CityCode = model.CityCode;
            target.IsByChildCategory = model.IsByChildCategory;
            target.IsQuanGuo = model.IsQuanGuo;
            target.PCategoryCode = model.PCategoryCode;
            DB_Service.Commit();
        }


        public TopCompany Find(int ID)
        {
            return DB_Service.Set<TopCompany>().Single(x => x.ID == ID);
        }

        public void Delete(TopCompany model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<TopCompany>(target);
            DB_Service.Commit();
        }

        public ServiceResult PayTopCompany(TopCompany model, int price)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    Create(model);
                    Member_MoneyService.AddMoney(model.MemberID, -price, "0703", null, model.ID);
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }
    }
}