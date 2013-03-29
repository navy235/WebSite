using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public class DashBoardViewModel
    {
        public string Name { get; set; }

        public string Version { get; set; }

        public string NickName { get; set; }

        public string GroupName { get; set; }

        public int LoginCount { get; set; }

        public DateTime CurrentTime { get; set; }

        public DateTime LastTime { get; set; }

        public string CurrentIP { get; set; }

        public string LastIP { get; set; }
    }
}