using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_FavoriteService
    {
        IQueryable<Member_Favorite> GetALL();

        IQueryable<Member_Favorite> GetKendoALL();

        void Create(Member_Favorite model);

        ServiceResult Update(Member_Favorite model);

        void Delete(Member_Favorite model);

        Member_Favorite Find(int Member_FavoriteID);

        ServiceResult DeleteAll(string ids);


    }
}