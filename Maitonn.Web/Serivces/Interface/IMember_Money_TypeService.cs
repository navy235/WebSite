using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMember_Money_TypeService
    {
        IQueryable<Member_Money_Type> GetALL();

        IQueryable<Member_Money_Type> GetKendoALL();

        void Create(Member_Money_Type model);

        void Update(Member_Money_Type model);

        void Delete(Member_Money_Type model);

        Member_Money_Type Find(string Key);
    }
}