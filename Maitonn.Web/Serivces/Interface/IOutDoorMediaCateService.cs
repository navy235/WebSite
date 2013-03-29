using System;
using System.Linq;
using System.Collections.Generic;




namespace Maitonn.Web
{
    public interface IOutDoorMediaCateService
    {
        IQueryable<OutDoorMediaCate> GetALL();

        IQueryable<OutDoorMediaCate> IncludeGetALL();

        IQueryable<OutDoorMediaCate> GetKendoALL();

        void Create(OutDoorMediaCate model);

        ServiceResult Update(OutDoorMediaCate model);

        void Delete(OutDoorMediaCate model);

        OutDoorMediaCate Find(int OutDoorMediaCateID);

    }
}