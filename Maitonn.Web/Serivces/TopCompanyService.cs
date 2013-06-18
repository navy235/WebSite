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
            target.TopTime = model.TopTime;
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

        public ServiceResult PayTopCompany(List<TopCompany> model, int price)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    model.ForEach(x => Create(x));
                    Member_MoneyService.AddMoney(model[0].MemberID, -price, "0703");
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public List<TopLimitModel> GetTopSourceLimit(int day)
        {
            List<TopLimitModel> result = new List<TopLimitModel>();

            var startTime = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            startTime = startTime.AddDays(1);

            var endTime = startTime.AddDays(day).AddSeconds(-1);


            var sql = @"select count(0) Count,REPLACE(CONVERT(char(10),toptime,120),N'-0','-') Time from [TopCompany]
  
                       group by toptime";

            result = DB_Service.SqlQuery<TopLimitModel>(sql).ToList();

            return result;
        }
    }
}