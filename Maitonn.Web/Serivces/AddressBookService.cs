using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class AddressBookService : IAddressBookService
    {
        private readonly IUnitOfWork DB_Service;

        public AddressBookService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<AddressBook> GetALL()
        {
            return DB_Service.Set<AddressBook>();
        }

        public IQueryable<AddressBook> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<AddressBook>();
        }


        public void Create(AddressBook model)
        {
            DB_Service.Add<AddressBook>(model);
            DB_Service.Commit();
        }


        public void Update(AddressBook model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<AddressBook>(target);
            target.Status = model.Status;
            DB_Service.Commit();
        }


        public AddressBook Find(int PermissionID)
        {
            return DB_Service.Set<AddressBook>().Single(x => x.ID == PermissionID);
        }

        public void Delete(AddressBook model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<AddressBook>(target);
            DB_Service.Commit();
        }
    }
}