using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Configuration;
using Context = System.Web.HttpContext;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.Mvc;
using System.Web.Routing;


namespace Maitonn.Core
{
    public static class HttpHelper
    {
        /// <summary>
        /// 获取访问者客户端IP
        /// </summary>
        public static string IP
        {
            get
            {
                string _ip = Context.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                if (_ip == null || _ip == "" || _ip == "unknown") { _ip = Context.Current.Request.ServerVariables["REMOTE_ADDR"]; }
                if (_ip == null || _ip == "" || _ip == "unknown") { _ip = Context.Current.Request.UserHostAddress; }
                if (_ip.Contains(",")) { _ip = _ip.Split(',')[0]; }

                return _ip;
            }
        }

        public static string GetImgBoxUrl(this HtmlHelper htmlHelper, int ImageSize, string ImageUrl)
        {
            string result = string.Empty;
            if (ImageUrl.IndexOf("_") > -1)
            {
                result = ImageUrl.Substring(0, ImageUrl.LastIndexOf("_"))
                    + "_" + ImageSize +
                    ImageUrl.Substring(ImageUrl.LastIndexOf("."));
            }
            else
            {
                result = ImageUrl.Substring(0, ImageUrl.LastIndexOf("."))
                      + "_" + ImageSize +
                      ImageUrl.Substring(ImageUrl.LastIndexOf("."));
            }
            return result;
        }

        /// <summary>
        /// 抓取网页内容
        /// </summary>
        /// <param name="url">网页地址</param>
        /// <returns></returns>
        public static string WebPageContentGet(string url)
        {
            return WebPageContentGet(url, "gb2312");
        }

        /// <summary>
        /// 抓取网页内容
        /// </summary>
        /// <param name="url">网页地址</param>
        /// <param name="charset">网页编码</param>
        /// <returns></returns>
        public static string WebPageContentGet(string url, string charset)
        {
            System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
            System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();
            Encoding coding;
            if (charset == "gb2312")
            {
                coding = System.Text.Encoding.GetEncoding("gb2312");
            }
            else
            {
                coding = System.Text.Encoding.UTF8;
            }
            System.IO.StreamReader reader = new System.IO.StreamReader(response.GetResponseStream(), coding);
            string s = reader.ReadToEnd();

            reader.Close();
            reader.Dispose();
            response.Close();
            reader = null;
            response = null;
            request = null;
            return s;
        }

        /// <summary>
        /// 抓取网页内容
        /// </summary>
        /// <param name="url">网页地址</param>
        /// <param name="charset">网页编码</param>
        /// <returns></returns>
        public static string WebPageContentGet(string url, Encoding code)
        {
            System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
            System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();
            Encoding coding = code;
            System.IO.StreamReader reader = new System.IO.StreamReader(response.GetResponseStream(), coding);
            string s = reader.ReadToEnd();
            reader.Close();
            reader.Dispose();
            response.Close();
            reader = null;
            response = null;
            request = null;
            return s;
        }

        public static string WebPagePostGet(string url, string data, string charset)
        {
            try
            {
                System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
                request.Method = "POST";
                request.ContentType = "application/x-www-form-urlencoded";
                byte[] byte1 = Encoding.UTF8.GetBytes(data);
                request.ContentLength = byte1.Length;
                Stream newStream = request.GetRequestStream();
                // Send the data.
                newStream.Write(byte1, 0, byte1.Length);    //写入参数
                newStream.Close();

                System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();

                Encoding coding;
                if (charset == "gb2312")
                {
                    coding = System.Text.Encoding.GetEncoding("gb2312");
                }
                else
                {
                    coding = System.Text.Encoding.UTF8;
                }
                System.IO.StreamReader reader = new System.IO.StreamReader(response.GetResponseStream(), coding);
                string s = reader.ReadToEnd();

                reader.Close();
                reader.Dispose();
                response.Close();
                reader = null;
                response = null;
                request = null;
                return s;
            }
            catch (Exception e)
            {
                return "ERROR";
            }
        }


        public static string WebPagePostGet(string url, string data, Encoding code)
        {
            try
            {
                System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(url);
                request.Method = "POST";
                request.ContentType = "application/x-www-form-urlencoded";
                byte[] byte1 = Encoding.UTF8.GetBytes(data);
                request.ContentLength = byte1.Length;
                Stream newStream = request.GetRequestStream();
                // Send the data.
                newStream.Write(byte1, 0, byte1.Length);    //写入参数
                newStream.Close();
                System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();
                Encoding coding = code;
                System.IO.StreamReader reader = new System.IO.StreamReader(response.GetResponseStream(), coding);
                string s = reader.ReadToEnd();

                reader.Close();
                reader.Dispose();
                response.Close();
                reader = null;
                response = null;
                request = null;
                return s;
            }
            catch (Exception e)
            {
                return "ERROR";
            }
        }


    }
}
