using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_CreditIndex_TypeService : IMember_CreditIndex_TypeService
    {

        private readonly IUnitOfWork DB_Service;

        public Member_CreditIndex_TypeService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_CreditIndex_Type> GetALL()
        {
            return DB_Service.Set<Member_CreditIndex_Type>();
        }

        public IQueryable<Member_CreditIndex_Type> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Member_CreditIndex_Type>();
        }


        public void Create(Member_CreditIndex_Type model)
        {
            DB_Service.Add<Member_CreditIndex_Type>(model);
            DB_Service.Commit();
        }


        public void Update(Member_CreditIndex_Type model)
        {
            var target = Find(model.Key);
            DB_Service.Attach<Member_CreditIndex_Type>(target);
            target.CreditIndex = model.CreditIndex;
            target.DayLimit = model.DayLimit;
            target.CreditIndexLimit = model.CreditIndexLimit;
            target.TimeLimit = model.TimeLimit;
            target.Name = model.Name;
            DB_Service.Commit();
        }


        public Member_CreditIndex_Type Find(string Key)
        {
            return DB_Service.Set<Member_CreditIndex_Type>()
                .Single(x => x.Key.Equals(Key, StringComparison.CurrentCultureIgnoreCase));
        }

        public void Delete(Member_CreditIndex_Type model)
        {
            var target = Find(model.Key);
            DB_Service.Remove<Member_CreditIndex_Type>(target);
            DB_Service.Commit();
        }



    }
}