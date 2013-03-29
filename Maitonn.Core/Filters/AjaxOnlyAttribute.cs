using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Maitonn.Core
{
    public class AjaxOnlyAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (!filterContext.HttpContext.Request.IsAjaxRequest())
                filterContext.HttpContext.Response.Redirect("/ErrorPages/404");
        }

        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {

        }
    }
}
