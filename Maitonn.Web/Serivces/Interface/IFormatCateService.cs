using System;
using System.Linq;
using System.Collections.Generic;



namespace Maitonn.Web
{
    public interface IFormatCateService
    {
        IQueryable<FormatCate> GetALL();

        IQueryable<FormatCate> GetKendoALL();

        void Create(FormatCate model);

        void Update(FormatCate model);

        void Delete(FormatCate model);

        FormatCate Find(int FormatCateID);

    }
}