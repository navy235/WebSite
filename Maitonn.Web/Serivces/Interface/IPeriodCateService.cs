using System;
using System.Linq;
using System.Collections.Generic;



namespace Maitonn.Web
{
    public interface IPeriodCateService
    {
        IQueryable<PeriodCate> GetALL();

        IQueryable<PeriodCate> GetKendoALL();

        void Create(PeriodCate model);

        void Update(PeriodCate model);

        void Delete(PeriodCate model);

        PeriodCate Find(int PeriodCateID);

    }
}