//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class TopBase
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int MemberID { get; set; }

        public System.DateTime TopStart { get; set; }

        public System.DateTime TopEnd { get; set; }

        public bool IsQuanGuo { get; set; }

        public int ProvinceCode { get; set; }

        public int CityCode { get; set; }

        public bool IsByCategory { get; set; }

        public int PCategoryCode { get; set; }

        public int CategoryCode { get; set; }


    }
}
