using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using System.Configuration;

namespace Maitonn.Core
{
    public class CookieHelper
    {

        #region  Nomarl Cookies
        /// <summary>
        /// 会员登录Cookies
        /// </summary>
        /// <param name="uid">用户ID</param>
        /// <param name="email">Email</param>
        /// <param name="nickName">昵称</param>
        /// <param name="avtarImgUrl">头像地址</param>
        /// <param name="sex">性别</param>
        /// <param name="loginCount">登录次数</param>
        /// <param name="pwd">密码</param>
        /// <param name="cookiedate">记住</param>
        public static void LoginCookieSave(string uid,
            string email,
            string nickName,
            string avtarUrl,
            string groupID,
            string Status,
            string pwd,
            string remember)
        {

            System.Web.HttpCookie cookie = new System.Web.HttpCookie(ConfigurationManager.AppSettings["CookieName"]);
            cookie.Values.Add("UID", CheckHelper.Escape(uid));
            cookie.Values.Add("NickName", CheckHelper.Escape(nickName));
            cookie.Values.Add("Email", CheckHelper.Escape(email));
            cookie.Values.Add("AvtarUrl", avtarUrl);
            cookie.Values.Add("GroupID", groupID);
            cookie.Values.Add("Status", Status);
            cookie.Values.Add("PWD", CheckHelper.StrToSHA1(pwd));

            switch (remember)
            {
                case "1":
                    cookie.Expires = DateTime.Now.AddDays(1); break;
                case "2":
                    cookie.Expires = DateTime.Now.AddDays(2); break;
                case "3":
                    cookie.Expires = DateTime.Now.AddYears(1); break;
            }

            cookie.Domain = ConfigurationManager.AppSettings["LocalDomain"];
            HttpContext.Current.Response.AppendHeader("P3P: CP", "CURa ADMa DEVa PSAo PSDo OUR BUS UNI PUR INT DEM STA PRE COM NAV OTC NOI DSP COR");
            HttpContext.Current.Response.AppendCookie(cookie);

            //保存常驻COOKIE
            //WinCookieSave(email, nid);

            //保存登录痕迹
            //WinLoginTraceCookieSave(uid);
        }

        /// <summary>
        /// 设置省份cookie
        /// </summary>
        /// <param name="province"></param>
        public static void SetProvinceCookie(string province)
        {
            System.Web.HttpCookie cookie = new System.Web.HttpCookie(ConfigurationManager.AppSettings["ProvinceName"]);
            cookie.Values.Add("province", CheckHelper.Escape(province));
            cookie.Expires = DateTime.Now.AddDays(7);
            cookie.Domain = ConfigurationManager.AppSettings["LocalDomain"];
            HttpContext.Current.Response.AppendHeader("P3P: CP", "CURa ADMa DEVa PSAo PSDo OUR BUS UNI PUR INT DEM STA PRE COM NAV OTC NOI DSP COR");
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 清除常驻的COOKIE
        /// </summary>
        public static void ClearProvinceCookie()
        {
            System.Web.HttpCookie cookie = new System.Web.HttpCookie(ConfigurationManager.AppSettings["ProvinceName"]);
            cookie.Expires = DateTime.Now.AddDays(-1);
            cookie.Domain = ConfigurationManager.AppSettings["LocalDomain"];
            HttpContext.Current.Response.Cookies.Add(cookie);
        }


        /// <summary>
        /// 清除常驻的COOKIE
        /// </summary>
        public static void ClearCookie()
        {
            System.Web.HttpCookie cookie = new System.Web.HttpCookie(ConfigurationManager.AppSettings["CookieName"]);
            cookie.Expires = DateTime.Now.AddDays(-1);
            cookie.Domain = ConfigurationManager.AppSettings["LocalDomain"];
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        /// <summary>
        /// 获取Cookie
        /// </summary>
        /// <param name="cookieName">Cookie名称</param>
        /// <param name="key">键值</param>
        /// <returns></returns>
        public static string GetCookie(string cookieName, string key)
        {
            if (HttpContext.Current.Request.Cookies[cookieName] == null || HttpContext.Current.Request.Cookies[cookieName].Values[key] == null)
            {
                return string.Empty;
            }
            return CheckHelper.StrUrlDecode(HttpContext.Current.Request.Cookies[cookieName].Values[key]);
        }

        #endregion

        public static string UID
        {
            get
            {
                string _uid = GetCookie(ConfigurationManager.AppSettings["CookieName"], "uid");
                if (_uid == "") { return string.Empty; }
                if (_uid.Contains(",")) { ClearCookie(); return string.Empty; }
                return CheckHelper.UnEscape(_uid).Replace("'", "").ToLower();
            }
        }

        public static int MemberID
        {
            get { return Convert.ToInt32(UID); }
        }

        public static string NickName
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "NickName"));
            }
        }

        public static string AvtarUrl
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "AvtarUrl"));
            }
        }

        public static string GroupID
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "GroupID"));
            }
        }

        public static string Email
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "Email"));
            }
        }

        public static string Status
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "Status"));
            }
        }

        public static string PWD
        {
            get
            {
                return CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["CookieName"], "PWD"));
            }
        }


        public static bool IsLogin
        {
            get
            {
                string uid = UID;
                //如果UID为空,表示未登陆
                if (uid.Length <= 0)
                {
                    return false;
                }
                int Uid = Convert.ToInt32(uid);
                if (Uid > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }



        public static string Province
        {
            get
            {
                var province = CheckHelper.UnEscape(GetCookie(ConfigurationManager.AppSettings["ProvinceName"], "province"));
                if (string.IsNullOrEmpty(province))
                {
                    SetProvinceCookie("quanguo");
                    province = "quanguo";
                }
                return province;
            }
        }
    }
}
