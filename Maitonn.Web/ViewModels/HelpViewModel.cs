
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel;
    using System.Web.Security;
    using System.Linq;
    using System.Web;
    using System.Globalization;
    using System.Web.Mvc;
    using Maitonn.Core;

    public class HelpViewModel
    {
        public HelpViewModel()
        {
            this.HelpNav = new List<HelpNavViewModel>();
        }

        public Article Article { get; set; }

        public List<HelpNavViewModel> HelpNav { get; set; }
    }

    public class HelpNavViewModel
    {
        public HelpNavViewModel()
        {
            this.Items = new List<HelpNavItemViewModel>();
        }

        public string Name { get; set; }

        public List<HelpNavItemViewModel> Items { get; set; }
    }

    public class HelpNavItemViewModel
    {
        public string Name { get; set; }

        public int ID { get; set; }

    }
}