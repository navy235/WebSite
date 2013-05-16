using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_SchemeService
    {
        IQueryable<Member_Scheme> GetALL();

        IQueryable<Member_Scheme> GetKendoALL();

        void Create(Member_Scheme model);

        void Update(Member_Scheme model);

        void Delete(Member_Scheme model);

        Member_Scheme Find(int Member_SchemeID);

        ServiceResult DeleteAll(string ids);
    }
}