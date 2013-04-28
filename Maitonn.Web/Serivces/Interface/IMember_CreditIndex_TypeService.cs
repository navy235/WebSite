using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_CreditIndex_TypeService
    {
        IQueryable<Member_CreditIndex_Type> GetALL();

        IQueryable<Member_CreditIndex_Type> GetKendoALL();

        void Create(Member_CreditIndex_Type model);

        void Update(Member_CreditIndex_Type model);

        void Delete(Member_CreditIndex_Type model);

        Member_CreditIndex_Type Find(string Key);
    }
}