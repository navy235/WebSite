using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Maitonn.Core;
namespace Maitonn.Web
{
    // 注意: 有关启用 IIS6 或 IIS7 经典模式的说明，
    // 请访问 http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            LogHelper.SetConfig();
        }

        protected void Application_Error(Object sender, EventArgs e)
        {
            //记录错误日志
            Exception objExp = HttpContext.Current.Server.GetLastError();
            LogHelper.WriteLog("\r\n ClientIP:" + Request.UserHostAddress + "\r\n ErrUrl:" + Request.Url + "\r\n ErrMessage:" + Server.GetLastError().Message, objExp);
        }
    }
}