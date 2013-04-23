using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_Money_TypeService : IMember_Money_TypeService
    {

        private readonly IUnitOfWork DB_Service;

        public Member_Money_TypeService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<Member_Money_Type> GetALL()
        {
            return DB_Service.Set<Member_Money_Type>();
        }

        public IQueryable<Member_Money_Type> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Member_Money_Type>();
        }


        public void Create(Member_Money_Type model)
        {
            DB_Service.Add<Member_Money_Type>(model);
            DB_Service.Commit();
        }


        public void Update(Member_Money_Type model)
        {
            var target = Find(model.Key);
            DB_Service.Attach<Member_Money_Type>(target);
            target.Money = model.Money;
            target.DayLimit = model.DayLimit;
            target.MoneyLimit = model.MoneyLimit;
            target.TimeLimit = model.TimeLimit;
            target.Name = model.Name;
            DB_Service.Commit();
        }


        public Member_Money_Type Find(string Key)
        {
            return DB_Service.Set<Member_Money_Type>()
                .Single(x => x.Key.Equals(Key, StringComparison.CurrentCultureIgnoreCase));
        }

        public void Delete(Member_Money_Type model)
        {
            var target = Find(model.Key);
            DB_Service.Remove<Member_Money_Type>(target);
            DB_Service.Commit();
        }



    }
}