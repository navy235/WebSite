using System;
using System.IO;
using System.IO.Compression;
using System.Web;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Mvc;
using BundlingAndMinifyingInlineCssJs.ResponseFilters;

namespace Maitonn.Core
{
    public class ClearWhiteSpaceAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.HttpContext.Response.Filter = new StringFilterStream(filterContext.HttpContext.Response.Filter);
        }

    }
}