using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using Maitonn.Core;

namespace Maitonn.Web
{
    public static class ConfigSetting
    {
        public static string Default_AvtarUrl { get; set; }

        public static string GetPasswordEmailTimeDiffMin { get; set; }

        public static string ResetPasswordTimeDiffHour { get; set; }

        public static string GetBindEmailTimeDiffMin { get; set; }

        public static string ActiveEmailTimeDiffHour { get; set; }

        static ConfigSetting()
        {
            Default_AvtarUrl = ConfigurationManager.AppSettings["Default_AvtarUrl"];
            GetPasswordEmailTimeDiffMin = ConfigurationManager.AppSettings["GetPasswordEmailTimeDiffMin"];
            ResetPasswordTimeDiffHour = ConfigurationManager.AppSettings["ResetPasswordTimeDiffHour"];
            GetBindEmailTimeDiffMin = ConfigurationManager.AppSettings["GetBindEmailTimeDiffMin"];
            ActiveEmailTimeDiffHour = ConfigurationManager.AppSettings["ActiveEmailTimeDiffHour"];
        }
    }
}