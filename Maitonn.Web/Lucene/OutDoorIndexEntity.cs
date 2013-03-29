using System;

namespace Maitonn.Web
{
    public class OutDoorIndexEntity
    {
        public int MediaID { get; set; }

        public string CityName { get; set; }

        public string PCityName { get; set; }

        public string MediaCateName { get; set; }

        public string PMediaCateName { get; set; }

        public string FormatName { get; set; }

        public string PeriodName { get; set; }

        public string OwnerCateName { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public string AreaAtt { get; set; }


        public int Hit { get; set; }

        public int Price { get; set; }

        public DateTime Published { get; set; }
    }
}