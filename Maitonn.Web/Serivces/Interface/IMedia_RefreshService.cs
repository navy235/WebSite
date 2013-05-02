using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMedia_RefreshService
    {
        IQueryable<Media_Refresh> GetALL();

        IQueryable<Media_Refresh> GetKendoALL();

        void Create(Media_Refresh model);

        void Update(Media_Refresh model);

        void Delete(Media_Refresh model);

        Media_Refresh Find(int Media_RefreshID);
    }
}