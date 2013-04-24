using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.Validation;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class PayListService : IPayListService
    {
        private readonly IUnitOfWork DB_Service;

        public PayListService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public PayList CreateOrder(PayList OrderItem)
        {
            DB_Service.Add<PayList>(OrderItem);
            DB_Service.Commit();
            return OrderItem;
        }

        public ServiceResult UpdateOrder(PayStatusViewModel PayStatus)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                Guid Pay_No = new Guid(PayStatus.Pay_No);
                PayList orderItem = Find(Pay_No);
                DB_Service.Attach<PayList>(orderItem);
                orderItem.Status = PayStatus.Status;
                orderItem.Trade_No = PayStatus.Trade_No;
                orderItem.Buy_Email = PayStatus.Buy_Email;
                orderItem.Buy_ID = PayStatus.Buy_ID;
                orderItem.EndTime = DateTime.Now;
                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;

        }

        public string GetOrderStatus(Guid Pay_No)
        {
            return DB_Service.Set<PayList>().SingleOrDefault(x => x.Pay_No.Equals(Pay_No)).Status;
        }

        public PayList Find(Guid Pay_No)
        {
            return DB_Service.Set<PayList>().SingleOrDefault(x => x.Pay_No.Equals(Pay_No));
        }
    }
}