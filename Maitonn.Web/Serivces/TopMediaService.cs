using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Transactions;
using Maitonn.Core;
using System.Data.Entity;

namespace Maitonn.Web
{
    public class TopMediaService : ITopMediaService
    {
        private readonly IUnitOfWork DB_Service;
        private readonly IMember_MoneyService Member_MoneyService;
        public TopMediaService(IUnitOfWork DB_Service
             , IMember_MoneyService Member_MoneyService)
        {
            this.DB_Service = DB_Service;
            this.Member_MoneyService = Member_MoneyService;
        }

        public IQueryable<TopMedia> GetALL()
        {
            return DB_Service.Set<TopMedia>();
        }

        public IQueryable<TopMedia> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<TopMedia>();
        }


        public void Create(TopMedia model)
        {
            DB_Service.Add<TopMedia>(model);
            DB_Service.Commit();
        }


        public void Update(TopMedia model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<TopMedia>(target);
            target.TopTime = model.TopTime;

            target.MemberID = model.MemberID;
            target.IsByCategory = model.IsByCategory;
            target.ProvinceCode = model.ProvinceCode;
            target.CityCode = model.CityCode;
            target.IsByChildCategory = model.IsByChildCategory;
            target.IsQuanGuo = model.IsQuanGuo;
            target.PCategoryCode = model.PCategoryCode;
            target.MediaID = model.MediaID;
            DB_Service.Commit();
        }


        public TopMedia Find(int ID)
        {
            return DB_Service.Set<TopMedia>().Single(x => x.ID == ID);
        }

        public void Delete(TopMedia model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<TopMedia>(target);
            DB_Service.Commit();
        }

        public ServiceResult PayTopMedia(List<TopMedia> model, int price)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    model.ForEach(x => Create(x));
                    Member_MoneyService.AddMoney(model[0].MemberID, -price, "0702");
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


            var sql = @"select count(0) Count,REPLACE(CONVERT(char(10),toptime,120),N'-0','-') Time from [TopMedia]
  
                       group by toptime";

            result = DB_Service.SqlQuery<TopLimitModel>(sql).ToList();

            return result;
        }


    }
}