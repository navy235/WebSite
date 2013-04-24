using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IServerItemService
    {
        IQueryable<ServerItem> GetALL();

        IQueryable<ServerItem> GetKendoALL();

        void Create(ServerItem model);

        void Update(ServerItem model);

        void Delete(ServerItem model);

        ServerItem Find(int ID);
    }
}