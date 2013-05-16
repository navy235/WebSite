using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public class FavoriteViewModel
    {
        public int ID { get; set; }

        public int MediaID { get; set; }

        public int TargetID { get; set; }

        public string Name { get; set; }



        public string CompanyName { get; set; }

        public string ImgUrl { get; set; }

        public DateTime AddTime { get; set; }

        public string ProvinceName { get; set; }

        public string CityName { get; set; }

        public string MediaCategoryName { get; set; }

        public string PMediaCategoryName { get; set; }

    }
}