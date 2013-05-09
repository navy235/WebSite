using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface IMedia_FavoritesService
    {
        IQueryable<Media_Favorites> GetALL();

        IQueryable<Media_Favorites> GetKendoALL();

        void Create(Media_Favorites model);

        void Update(Media_Favorites model);

        void Delete(Media_Favorites model);

        Media_Favorites Find(int Media_FavoritesID);
    }
}