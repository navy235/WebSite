using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class ErrorController : Controller
    {
        //
        // GET: /Error/

        public ActionResult Index(int id = 0, string returnurl = null)
        {
            ViewBag.Message = id;
            return Redirect(Url.Action("Index", "Login", new { ReturnUrl = returnurl }));
        }

    }
}
