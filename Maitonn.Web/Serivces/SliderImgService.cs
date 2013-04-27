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
            target.AddTime = DateTime.Now;
            target.EndTime = model.EndTime;
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

        public ServiceResult PayTopSliderImg(SliderImg model, int price)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    Create(model);
                    Member_MoneyService.AddMoney(model.MemberID, -price, "0701", null, model.ID);
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