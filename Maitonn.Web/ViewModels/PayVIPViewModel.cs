namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel;
    using System.Web.Security;
    using System.Linq;
    using System.Web;
    using System.Globalization;
    using System.Web.Mvc;
    using PagedList;
    using Maitonn.Core;


    public class PayVIPViewModel
    {

        public string Name { get; set; }

        public int Month { get; set; }

        public int GiftMonth { get; set; }

        public int GiftMoney { get; set; }

        public decimal Price { get; set; }

    }


    public class PayMoneyViewModel
    {
        public int Money { get; set; }

        public int GiftMoney { get; set; }

        public decimal Price { get; set; }
    }

}