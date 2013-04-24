
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class OutDoor : MediaBase
    {

        public OutDoor()
        {
            this.AreaAtt = new HashSet<AreaAtt>();
            this.AuctionCalendar = new HashSet<AuctionCalendar>();
            this.Hit = 0;
            this.Message = 0;
            this.Favorite = 0;

        }
        [Required(ErrorMessage = "请输入价格")]
        [Display(Name = "价格")]
        public decimal Price { get; set; }


        [Display(Name = "价格说明")]
        [MaxLength(100)]
        public string PriceExten { get; set; }


        [Required(ErrorMessage = "请输入具体位置")]
        [Display(Name = "具体位置")]
        [MaxLength(100)]
        public string Location { get; set; }


        [Required(ErrorMessage = "请在地图上标注具体坐标")]
        [Display(Name = "具体坐标")]
        public decimal Lng { get; set; }


        [Required(ErrorMessage = "请在地图上标注具体坐标")]
        [Display(Name = "具体坐标")]
        public decimal Lat { get; set; }


        [Display(Name = "具体坐标")]
        public bool HasLight { get; set; }


        [MaxLength(50)]
        public string LightStrat { get; set; }

        [MaxLength(50)]
        public string LightEnd { get; set; }


        public decimal Wdith { get; set; }

        public decimal Height { get; set; }

        public int TotalFaces { get; set; }
        public int TrafficAuto { get; set; }
        public int TrafficPerson { get; set; }


        public int CityCode { get; set; }
        public int FormatCode { get; set; }
        public int MeidaCode { get; set; }
        public int PeriodCode { get; set; }
        public int OwnerCode { get; set; }

        public System.DateTime Deadline { get; set; }

        public int Status { get; set; }

        public virtual ICollection<AreaAtt> AreaAtt { get; set; }

        public virtual Area Area { get; set; }

        public virtual OutDoorMediaCate OutDoorMediaCate { get; set; }

        public virtual PeriodCate PeriodCate { get; set; }

        public virtual FormatCate FormatCate { get; set; }

        public virtual OwnerCate OwnerCate { get; set; }

        public virtual ICollection<AuctionCalendar> AuctionCalendar { get; set; }

        public virtual MapImg MapImg { get; set; }

        public virtual MediaImg MediaImg { get; set; }

        public virtual CredentialsImg CredentialsImg { get; set; }

    }
}