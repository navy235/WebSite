using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using Yahoo.Yui.Compressor;

namespace Maitonn.Core
{
    public class MinFifyAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.HttpContext.Response.Filter = new MinifyResponseFilter(filterContext.HttpContext.Response.Filter);
        }

    }


    public class MinifyResponseFilter : MemoryStream
    {
        private readonly Stream _baseFilter;
        private bool _bundleMinifyCss;
        private bool _bundleMinifyIsEnabled;
        private bool _bundleMinifyJs;
        private StringBuilder _cssBuilder = new StringBuilder();
        private StringBuilder _jsBuilder = new StringBuilder();

        public MinifyResponseFilter(Stream baseFilter, bool bundleMinifyCss = true, bool bundleMinifyJs = true, bool bundleMinifyOnDebug = true)
        {
            this._baseFilter = baseFilter;
            this._bundleMinifyCss = bundleMinifyCss;
            this._bundleMinifyJs = bundleMinifyJs;
            this._bundleMinifyIsEnabled = bundleMinifyOnDebug || ((HttpContext.Current != null) ? !HttpContext.Current.IsDebuggingEnabled : true);
        }

        public override void Close()
        {
            byte[] bytes = this.GetBuffer();
            string html = Encoding.UTF8.GetString(bytes);
            html = this.OmitInlineScriptTag(html);
            html = this.OmitInlineStyleTag(html);
            if ((this._bundleMinifyIsEnabled && this._bundleMinifyJs) && (this._jsBuilder.Length > 0))
            {
                html = html.Replace("</body>", "<script>" + Minify.JS(this._jsBuilder.ToString()) + "</script></body>");
            }
            if ((this._bundleMinifyIsEnabled && this._bundleMinifyCss) && (this._cssBuilder.Length > 0))
            {
                html = html.Replace("</head>", "<style>" + Minify.CSS(this._cssBuilder.ToString()) + "</style></head>");
            }
            bytes = Encoding.UTF8.GetBytes(html);
            this._baseFilter.Write(bytes, 0, bytes.Length);
            this._baseFilter.Close();
            base.Close();
        }

        private string OmitInlineScriptTag(string html)
        {
            if (!this._bundleMinifyJs || !this._bundleMinifyIsEnabled)
            {
                return html;
            }
            Regex regex = new Regex("(?<Tag><script(?<Attributes>[^>]*)>(?<InnerContent>([^<]|<[^/]|</[^s]|</s[^c])*)</script>)", RegexOptions.Multiline | RegexOptions.IgnoreCase);
            return regex.Replace(html, delegate(Match m)
            {
                GroupCollection groups = m.Groups;
                if (groups["Attributes"].Value.Contains(" src="))
                {
                    return groups["Tag"].Value;
                }
                this._jsBuilder.Append(groups["InnerContent"].Value + ";");
                return "";
            });
        }

        private string OmitInlineStyleTag(string html)
        {
            if (!this._bundleMinifyCss || !this._bundleMinifyIsEnabled)
            {
                return html;
            }
            Regex regex = new Regex("<style[^>]*>(?<InnerContent>([^<]|<[^/]|</[^s]|</s[^t])*)</style>", RegexOptions.Multiline | RegexOptions.IgnoreCase);
            return regex.Replace(html, delegate(Match m)
            {
                GroupCollection groups = m.Groups;
                this._cssBuilder.Append(groups["InnerContent"].Value);
                return "";
            });
        }
    }


    internal static class Minify
    {
        internal static string CSS(string css)
        {
            var cssCom = new CssCompressor();
            return cssCom.Compress(css);
        }

        internal static string JS(string strContent)
        {
            var jsCom = new JavaScriptCompressor();

            return jsCom.Compress(strContent);
        }
    }
}