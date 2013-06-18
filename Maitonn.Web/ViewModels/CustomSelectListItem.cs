using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Maitonn.Web
{
    public class CustomSelectListItem : SelectListItem
    {
        public bool Disabled { get; set; }
    }
}