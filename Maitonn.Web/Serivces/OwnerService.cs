using System;
using System.Linq;
using System.Linq.Expressions;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
using Kendo.Mvc.Extensions;

namespace Maitonn.Web
{
    public class OwnerService : IOwnerService
    {
        private readonly IUnitOfWork DB_Service;

        public OwnerService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public Owner FindByMediaID(int MediaID)
        {
            return DB_Service.Set<Owner>()
                .Include(x => x.CredentialsImg)
                .Include(x => x.OwnerCate)
                .Where(x => x.MediaID == MediaID).Single();
        }
    }
}