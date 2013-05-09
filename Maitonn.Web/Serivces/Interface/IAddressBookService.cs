using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IAddressBookService
    {
        IQueryable<AddressBook> GetALL();

        IQueryable<AddressBook> GetKendoALL();

        void Create(AddressBook model);

        void Update(AddressBook model);

        void Delete(AddressBook model);

        AddressBook Find(int AddressBookID);
    }
}