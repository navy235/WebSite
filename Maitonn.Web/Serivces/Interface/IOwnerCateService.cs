using System;
using System.Linq;
using System.Collections.Generic;



namespace Maitonn.Web
{
    public interface IOwnerCateService
    {
        IQueryable<OwnerCate> GetALL();

        IQueryable<OwnerCate> GetKendoALL();

        void Create(OwnerCate model);

        void Update(OwnerCate model);

        void Delete(OwnerCate model);

        OwnerCate Find(int OwnerCateID);

    }
}