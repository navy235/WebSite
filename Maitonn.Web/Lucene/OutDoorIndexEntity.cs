using System;

namespace Maitonn.Web
{
    public class OutDoorIndexEntity
    {
        public int MediaID { get; set; }

        public int Province { get; set; }

        public int City { get; set; }

        public int MediaCode { get; set; }

        public int PMediaCode { get; set; }

        public int FormatCode { get; set; }

        public int PeriodCode { get; set; }

        public int OwnerCode { get; set; }

        public int Status { get; set; }

        public string ProvinceName { get; set; }

        public string CityName { get; set; }

        public string MediaCateName { get; set; }

        public string PMediaCateName { get; set; }

        public string FormatName { get; set; }

        public string PeriodName { get; set; }

        public string OwnerCateName { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public string AreaAtt { get; set; }

        public string ImgUrl { get; set; }

        public int Hit { get; set; }

        public decimal Price { get; set; }

        public decimal Width { get; set; }

        public decimal Height { get; set; }

        public int TotalFaces { get; set; }

        public DateTime Published { get; set; }
    }
}