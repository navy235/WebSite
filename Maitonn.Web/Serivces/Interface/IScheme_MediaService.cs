using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IScheme_MediaService
    {
        IQueryable<Scheme_Media> GetALL();

        IQueryable<Scheme_Media> GetKendoALL();

        void Create(Scheme_Media model);

        void Update(Scheme_Media model);

        void Delete(Scheme_Media model);

        Scheme_Media Find(int Scheme_MediaID);
    }
}