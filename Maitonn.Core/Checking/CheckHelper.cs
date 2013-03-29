using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;

namespace Maitonn.Core
{
    public class CheckHelper
    {
        /// <summary>
        /// 返回MD5加密后的字符串 用户密码用
        /// </summary>
        /// <param name="str">需要加密的字符串</param>
        /// <returns></returns>
        public static string StrToMd5(string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").Substring(8, 16).ToLower();
        }


        /// <summary>
        /// 返回SHA1加密后的字符串
        /// </summary>
        /// <param name="str">需要加密的字符串</param>
        /// <returns></returns>
        public static string StrToSHA1(string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "SHA1").ToLower().Substring(3, 30);
        }


        /// <summary>
        /// 等同JS的 escape函数
        /// </summary>
        /// <param name="s">转换的字符串</param>
        /// <returns></returns>
        public static string Escape(string s)
        {
            if (s == null || s == "")
                return String.Empty;
            return System.Web.HttpUtility.UrlEncodeUnicode(s);

        }

        /// <summary>
        /// 返回URL逆转换为正常字符串
        /// </summary>
        /// <param name="s">需要转换的字符串</param>
        /// <returns></returns>
        public static string StrUrlDecode(string s)
        {
            if (s == null || s.Trim() == string.Empty) { return string.Empty; }
            return HttpUtility.UrlDecode(s, System.Text.Encoding.GetEncoding("GB2312"));
        }


        /// <summary>
        /// 等同JS的 unescape函数
        /// </summary>
        /// <param name="s">转换的字符串</param>
        /// <returns></returns>
        public static string UnEscape(string s)
        {
            if (s == null || s == "")
                return String.Empty;
            return System.Web.HttpUtility.UrlDecode(s);
        }

        /// <summary>
        /// 强制验证，将单引号转换为空字符
        /// </summary>
        /// <param name="s">需要转换的字符串</param>
        /// <returns></returns>
        public static string StrToEmpty(string s)
        {
            return StrToEmpty(s, 0);
        }
        /// <summary>
        /// 强制验证，将单引号转换为空字符,并返回指定长度的字符串
        /// </summary>
        /// <param name="s">需要转换的字符串</param>
        /// <param name="l">返回的字符长度, 小于等于0时不作限制</param>
        /// <returns></returns>
        public static string StrToEmpty(string s, int l)
        {
            if (s == null || s.Trim() == string.Empty) { return string.Empty; }

            s = s.Trim();

            if (l > 0 && s.Length > l) { s = s.Substring(0, l); }
            return s.Replace("'", "");
        }

        /// <summary>
        /// 强制验证，将单引号，双引号转换为空字符,并返回结果
        /// </summary>
        /// <param name="s">需要转换的字符串</param>
        /// <returns></returns>
        public static string StrDToEmpty(string s)
        {
            return StrDToEmpty(s, 0);
        }

        /// <summary>
        /// 强制验证，将单引号，双引号转换为空字符,并返回结果
        /// </summary>
        /// <param name="s">需要转换的字符串</param>
        /// <returns></returns>
        public static string StrDToEmpty(string s, int l)
        {
            if (s == null || s.Trim() == string.Empty) { return string.Empty; }
            s = s.Trim();
            s = StrToEmpty(s);
            s = s.Replace("\"", "").Replace("“", "").Replace("”", "").Replace("＂", "");

            if (l > 0 && s.Length > l) { s = s.Substring(0, l); }
            return s;
        }


    }
}
