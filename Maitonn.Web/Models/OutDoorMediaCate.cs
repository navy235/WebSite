namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;

    public partial class OutDoorMediaCate : Category
    {
        public OutDoorMediaCate()
        {
            this.OutDoor = new HashSet<OutDoor>();
         
        }


        public virtual ICollection<OutDoor> OutDoor { get; set; }
    }
}