﻿using System;
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
    public class GzipCompressJsAndReplaceWhiteSpaceAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (filterContext.ActionDescriptor.GetCustomAttributes(typeof(SkipGzipCompressJsAndReplaceWhiteSpaceAttribute), false).Any())
            {
                return;
            }

            HttpRequestBase request = filterContext.HttpContext.Request;
            HttpResponseBase response = filterContext.HttpContext.Response;

            string acceptEncoding = request.Headers["Accept-Encoding"];
            if (acceptEncoding == null)
                return;
            if (!String.IsNullOrEmpty(acceptEncoding))
            {
                acceptEncoding = acceptEncoding.ToUpperInvariant();
                if (acceptEncoding.Contains("GZIP"))
                {
                    response.AppendHeader("Content-encoding", "gzip");
                    response.Filter = new GZipStream(response.Filter, CompressionMode.Compress);
                }
                else if (acceptEncoding.Contains("DEFLATE"))
                {
                    response.AppendHeader("Content-encoding", "deflate");
                    response.Filter = new DeflateStream(response.Filter, CompressionMode.Compress);
                }
            }
            response.Filter = new MinifyResponseFilter(filterContext.HttpContext.Response.Filter);
            response.Filter = new StringFilterStream(filterContext.HttpContext.Response.Filter);
        }
    }
}