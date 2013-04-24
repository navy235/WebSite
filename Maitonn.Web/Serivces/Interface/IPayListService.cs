using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IPayListService
    {
        PayList CreateOrder(PayList OrderItem);

        PayList Find(Guid Pay_No);

        ServiceResult UpdateOrder(PayStatusViewModel PayStatus);

        string GetOrderStatus(Guid Pay_No);


    }
}