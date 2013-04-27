namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class ServerItem
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int ServerType { get; set; }

        [Display(Name = "服务名称")]
        [MaxLength(50)]
        public string Name { get; set; }

        public string ImgUrl { get; set; }

        [Display(Name = "服务描述")]
        [MaxLength(2000)]
        public string Description { get; set; }

        [MaxLength(200)]
        public string HelpUrl { get; set; }

        public int Price { get; set; }

        public bool IsPayByVMoney { get; set; }

        public bool IsQuanGuo { get; set; }

        public bool IsByCategory { get; set; }

        public bool IsByChildCategory { get; set; }

        public int Money { get; set; }

        public int Month { get; set; }

        public int GiftMoney { get; set; }

        public int GiftMonth { get; set; }

        public DateTime AddTime { get; set; }

        public DateTime EndTime { get; set; }

        public int MemberID { get; set; }

        public DateTime LastTime { get; set; }

        public decimal VipDiscount { get; set; }

        public decimal VipDiscount2 { get; set; }
    }
}