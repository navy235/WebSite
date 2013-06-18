using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using System.Transactions;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class SliderImgService : ISliderImgService
    {
        private readonly IUnitOfWork DB_Service;
        private readonly IMember_MoneyService Member_MoneyService;
        public SliderImgService(IUnitOfWork DB_Service
             , IMember_MoneyService Member_MoneyService)
        {
            this.DB_Service = DB_Service;
            this.Member_MoneyService = Member_MoneyService;
        }

        public IQueryable<SliderImg> GetALL()
        {
            return DB_Service.Set<SliderImg>();
        }

        public IQueryable<SliderImg> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<SliderImg>();
        }


        public void Create(SliderImg model)
        {
            DB_Service.Add<SliderImg>(model);
            DB_Service.Commit();
        }


        public void Update(SliderImg model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<SliderImg>(target);
            target.Title = model.Title;
            target.ImgUrl = model.ImgUrl;
            target.MemberID = model.MemberID;
            target.OrderIndex = model.OrderIndex;
            target.ProvinceCode = model.ProvinceCode;
            target.Status = model.Status;
            target.TopTime = model.TopTime;
            target.LinkUrl = model.LinkUrl;
            DB_Service.Commit();
        }


        public SliderImg Find(int ID)
        {
            return DB_Service.Set<SliderImg>().Single(x => x.ID == ID);
        }

        public void Delete(SliderImg model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<SliderImg>(target);
            DB_Service.Commit();
        }

        public ServiceResult PayTopSliderImg(List<SliderImg> model, int price)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    model.ForEach(x => Create(x));

                    Member_MoneyService.AddMoney(model[0].MemberID, -price, "0701");

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


            var sql = @"select count(0) Count,REPLACE(CONVERT(char(10),toptime,120),N'-0','-') Time from [SliderImg]
  
                       group by toptime";

            result = DB_Service.SqlQuery<TopLimitModel>(sql).ToList();

            return result;
        }
    }
}