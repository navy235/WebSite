using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Web.Routing;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class ChangeProvinceController : Controller
    {
        //
        // GET: /ChangeProvince/

        public ActionResult Index(string province = "quanguo")
        {
            try
            {
                var request = new HttpRequest(null, HttpContext.Request.UrlReferrer.ToString(), null);
                var response = new HttpResponse(new StringWriter());
                var httpContext = new HttpContext(request, response);
                var routeData = RouteTable.Routes.GetRouteData(new HttpContextWrapper(httpContext));
                var values = routeData.Values;
                CookieHelper.SetProvinceCookie(province);
                values["province"] = province;
                values["city"] = 0;
                var controller = values["controller"].ToString();
                var action = values["action"].ToString();
                return RedirectToAction(action, controller, values);
            }
            catch (Exception ex)
            {
                return RedirectToAction("index", "home", new { province = province });
            }

        }

    }
}
