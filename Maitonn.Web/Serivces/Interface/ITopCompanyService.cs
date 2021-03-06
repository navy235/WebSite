﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface ITopCompanyService
    {
        List<TopLimitModel> GetTopSourceLimit(int day);

        ServiceResult PayTopCompany(List<TopCompany> model, int price);

        IQueryable<TopCompany> GetALL();

        IQueryable<TopCompany> GetKendoALL();

        void Create(TopCompany model);

        void Update(TopCompany model);

        void Delete(TopCompany model);

        TopCompany Find(int ID);


    }
}