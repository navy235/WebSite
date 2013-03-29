using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;

using Maitonn.Core;
namespace Maitonn.Web
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/

        //
        // GET: /Register/
        private IUnitOfWork DB_Service;
        private IMemberService memberService;

        public LoginController(IUnitOfWork _DB_Service
            , IMemberService _memberService)
        {
            DB_Service = _DB_Service;
            memberService = _memberService;
        }

        public ActionResult Index(string username = null)
        {
            var model = new LogOnModel();
            if (!string.IsNullOrEmpty(username))
            {
                model.Email = username;
            }

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(LogOnModel model, string ReturnUrl = null, bool Remember = false)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    string Md5Password = CheckHelper.StrToMd5(model.Password);
                    if (memberService.Login(model.Email, Md5Password))
                    {
                        ViewBag.Message = null;

                        if (!string.IsNullOrEmpty(ReturnUrl))
                            return Redirect(ReturnUrl);
                        else
                            return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        ViewBag.Message = "您的用户名和密码不匹配";
                        return View(model);
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            else
            {
                ViewBag.Message = "您的输入有误请确认后提交";
                return View(model);
            }
        }

        public ActionResult LogOut()
        {
            CookieHelper.ClearCookie();
            return RedirectToAction("Index");
        }


        public ActionResult Design()
        {
            return View();
        }

        public ActionResult QQ()
        {
            //应用的APPID
            string app_id = "100314725";
            //应用的APPKEY
            string app_secret = "04080cd408e3a9e5c5a562db2e160678";
            //成功授权后的回调地址
            string my_url = "http://www.dotaeye.com/login/qq";

            //Step1：获取Authorization Code
            //session_start();
            string code = Request.QueryString["code"];
            if (string.IsNullOrEmpty(code))
            {
                //state参数用于防止CSRF攻击，成功授权后回调时会原样带回
                Session["state"] = Guid.NewGuid();//md5(uniqid(rand(), TRUE)); 
                //拼接URL     
                string dialog_url = "https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id="
                   + app_id + "&redirect_uri=" + Server.UrlEncode(my_url) + "&state="
                   + Session["state"];
                return Content("<script>window.top.location.href='" + dialog_url + "'</script>");
            }

            //Step2：通过Authorization Code获取Access Token
            if (Request["state"].ToString().Equals(Session["state"].ToString()))
            {
                //拼接URL   
                string token_url = "https://graph.qq.com/oauth2.0/token?grant_type=authorization_code&"
                + "client_id=" + app_id + "&redirect_uri=" + Server.UrlEncode(my_url)
                + "&client_secret=" + app_secret + "&code=" + code;

                string response = HttpHelper.WebPageContentGet(token_url, System.Text.Encoding.UTF8);
                NameValueCollection msg;
                if (response.IndexOf("callback") != -1)
                {
                    int lpos = response.IndexOf("(");
                    int rpos = response.IndexOf(")");
                    response = response.Substring(lpos + 1, rpos - lpos - 1);
                    msg = ParseJson(response);

                    if (!string.IsNullOrEmpty(msg["error"]))
                    {

                        return View(new OpenLoginStatus()
                        {
                            Success = false,
                            Error = msg["error"].ToString(),
                            Message = msg["error_description"]
                        });
                    }
                }
                NameValueCollection ps = ParseUrlParameters(response);
                string graph_url = "https://graph.qq.com/oauth2.0/me?access_token=" + ps["access_token"];
                string str = HttpHelper.WebPageContentGet(graph_url, System.Text.Encoding.Default);
                if (str.IndexOf("callback") != -1)
                {
                    int lpos = str.IndexOf("(");
                    int rpos = str.IndexOf(")");
                    str = str.Substring(lpos + 1, rpos - lpos - 1);
                }
                NameValueCollection user = ParseJson(str);
                if (!string.IsNullOrEmpty(user["error"]))
                {
                    return View(new OpenLoginStatus()
                    {
                        Success = false,
                        Error = user["error"].ToString(),
                        Message = user["error_description"]
                    });
                }
                OpenLoginStatus OpenUser = new OpenLoginStatus()
                {
                    Success = true,
                    OpenType = (int)OpenLoginType.QQ,
                    OpenId = user["openid"].ToString()
                };
                if (memberService.OpenUserLogin(OpenUser, OpenLoginType.QQ))
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    string user_profile_url = "https://graph.qq.com/user/get_user_info?access_token="
                        + ps["access_token"] +
                        "&oauth_consumer_key=" + app_id +
                        "&openid=" + OpenUser.OpenId;
                    string response_profile = HttpHelper.WebPageContentGet(user_profile_url, System.Text.Encoding.UTF8);
                    NameValueCollection userProfile = ParseJson(response_profile);
                    OpenUser.NickName = userProfile["nickname"].ToString();
                    Session["registerAuto"] = OpenUser;
                    return RedirectToAction("RegAuto", "Register");
                }

            }
            else
            {
                return View(new OpenLoginStatus()
                {
                    Success = false,
                    Error = "The state does not match. You may be a victim of CSRF.",
                    Message = "request=" + Request["state"] + ",session=" + Session["state"]
                });
            }

        }

        public ActionResult Sina()
        {
            //应用的APPID 
            string app_id = "536362505";
            //应用的APPKEY 
            string app_secret = "0378c9aabc8a757d124cb01c1e9c04bf";
            //成功授权后的回调地址 
            string my_url = "http://www.dotaeye.com/login/sina";

            //Step1：获取Authorization Code 
            //session_start(); 
            string code = Request.QueryString["code"];
            if (string.IsNullOrEmpty(code))
            {
                //state参数用于防止CSRF攻击，成功授权后回调时会原样带回 
                Session["state"] = Guid.NewGuid();//md5(uniqid(rand(), TRUE));  
                //拼接URL      
                string dialog_url = "https://api.weibo.com/oauth2/authorize?response_type=code&client_id="
                   + app_id + "&redirect_uri=" + Server.UrlEncode(my_url) + "&state="
                   + Session["state"];
                return Content("<script> window.top.location.href='" + dialog_url + "'</script>");
            }
            if (Request["state"].ToString().Equals(Session["state"].ToString()))
            {
                Session["state"] = null;
                //拼接URL    
                string token_url = "https://api.weibo.com/oauth2/access_token";
                string data = "grant_type=authorization_code&client_id=" + app_id + "&redirect_uri=" + Server.UrlEncode(my_url)
                + "&client_secret=" + app_secret + "&code=" + code;
                string response = HttpHelper.WebPagePostGet(token_url, data, System.Text.Encoding.UTF8);

                NameValueCollection user = ParseJson(response);
                if (!string.IsNullOrEmpty(user["error"]))
                {
                    return View(new OpenLoginStatus()
                    {
                        Success = false,
                        Error = user["error"].ToString(),
                        Message = user["error_description"].ToString()
                    });
                }
                OpenLoginStatus OpenUser = new OpenLoginStatus()
                {
                    Success = true,
                    OpenType = (int)OpenLoginType.Sina,
                    Uid = user["uid"].ToString(),
                    OpenId = user["access_token"].ToString()
                };
                if (memberService.OpenUserLogin(OpenUser, OpenLoginType.Sina))
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    string user_profile_url = "https://api.weibo.com/2/users/show.json?access_token=" + OpenUser.OpenId + "&uid=" + OpenUser.Uid;
                    string response_profile = HttpHelper.WebPageContentGet(user_profile_url, System.Text.Encoding.UTF8);
                    NameValueCollection userProfile = ParseJson(response_profile);
                    OpenUser.NickName = userProfile["screen_name"].ToString();
                    Session["registerAuto"] = OpenUser;
                    return RedirectToAction("RegAuto", "Register");
                }
            }
            else
            {
                return View(new OpenLoginStatus()
                {
                    Success = false,
                    Error = "The state does not match. You may be a victim of CSRF",
                    Message = "request=" + Request["state"] + ",session=" + Session["state"]
                });

            }
        }

        public ActionResult Taobao()
        {
            //应用的APPID 
            string app_id = "21401739";
            //应用的APPKEY 
            string app_secret = "04d68b746dccbf3499e23962f3557ad1";
            //成功授权后的回调地址 
            string my_url = "http://www.dotaeye.com/login/taobao";

            //Step1：获取Authorization Code 
            //session_start(); 
            string code = Request.QueryString["code"];
            if (string.IsNullOrEmpty(code))
            {
                //state参数用于防止CSRF攻击，成功授权后回调时会原样带回 
                Session["state"] = Guid.NewGuid();//md5(uniqid(rand(), TRUE));  
                //拼接URL      
                string dialog_url = "https://oauth.taobao.com/authorize?response_type=code&client_id="
                   + app_id + "&redirect_uri=" + Server.UrlEncode(my_url) + "&state="
                   + Session["state"];
                return Content("<script>window.top.location.href='" + dialog_url + "'</script>");
            }
            if (Request["state"].ToString().Equals(Session["state"].ToString()))
            {
                Session["state"] = null;
                //拼接URL    
                string token_url = "https://oauth.taobao.com/token";
                string data = "grant_type=authorization_code&client_id=" + app_id + "&redirect_uri=" + Server.UrlEncode(my_url)
                + "&client_secret=" + app_secret + "&code=" + code;
                string response = HttpHelper.WebPagePostGet(token_url, data, System.Text.Encoding.UTF8);

                NameValueCollection user = ParseJson(response);
                if (!string.IsNullOrEmpty(user["error"]))
                {
                    return View(new OpenLoginStatus()
                    {
                        Success = false,
                        Error = user["error"].ToString(),
                        Message = user["error_description"].ToString()
                    });
                }
                OpenLoginStatus OpenUser = new OpenLoginStatus()
                {
                    Success = true,
                    OpenType = (int)OpenLoginType.Taobao,
                    Uid = user["taobao_user_id"].ToString(),
                    OpenId = user["access_token"].ToString(),
                    NickName = user["taobao_user_nick"].ToString()

                };
                if (memberService.OpenUserLogin(OpenUser, OpenLoginType.Taobao))
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    Session["registerAuto"] = OpenUser;
                    return RedirectToAction("RegAuto", "Register");
                }
            }
            else
            {
                return View(new OpenLoginStatus()
                {
                    Success = false,
                    Error = "The state does not match. You may be a victim of CSRF",
                    Message = "request=" + Request["state"] + ",session=" + Session["state"]
                });

            }
        }
        public ActionResult Douban()
        {
            //应用的APPID 
            string app_id = "0a884abce749d7631f98e036b5dd8629";
            //应用的APPKEY 
            string app_secret = "1644cb8e38d733d2";
            //成功授权后的回调地址 
            string my_url = "http://www.dotaeye.com/login/douban";

            //Step1：获取Authorization Code 
            //session_start(); 
            string code = Request.QueryString["code"];
            if (string.IsNullOrEmpty(code))
            {
                //state参数用于防止CSRF攻击，成功授权后回调时会原样带回 
                Session["state"] = Guid.NewGuid();//md5(uniqid(rand(), TRUE));  
                //拼接URL      
                string dialog_url = "https://www.douban.com/service/auth2/auth?response_type=code&client_id="
                   + app_id + "&redirect_uri=" + Server.UrlEncode(my_url) + "&state="
                   + Session["state"];
                return Content("<script>window.top.location.href='" + dialog_url + "'</script>");
            }
            if (Request["state"].ToString().Equals(Session["state"].ToString()))
            {
                Session["state"] = null;
                //拼接URL    
                string token_url = "https://www.douban.com/service/auth2/token";
                string data = "grant_type=authorization_code&client_id=" + app_id + "&redirect_uri=" + Server.UrlEncode(my_url)
                + "&client_secret=" + app_secret + "&code=" + code;
                string response = HttpHelper.WebPagePostGet(token_url, data, System.Text.Encoding.UTF8);
                NameValueCollection user = ParseJson(response);
                if (!string.IsNullOrEmpty(user["error"]))
                {
                    return View(new OpenLoginStatus()
                    {
                        Success = false,
                        Error = user["error"].ToString(),
                        Message = user["error_description"].ToString()
                    });
                }
                OpenLoginStatus OpenUser = new OpenLoginStatus()
                {
                    Success = true,
                    OpenType = (int)OpenLoginType.Douban,
                    Uid = user["douban_user_id"].ToString(),
                    OpenId = user["access_token"].ToString()
                };
                if (memberService.OpenUserLogin(OpenUser, OpenLoginType.Douban))
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    string user_profile_url = "https://api.douban.com/v2/user/" + OpenUser.Uid;
                    string response_profile = HttpHelper.WebPageContentGet(user_profile_url, System.Text.Encoding.UTF8);
                    NameValueCollection userProfile = ParseJson(response_profile);
                    OpenUser.NickName = userProfile["name"].ToString();
                    Session["registerAuto"] = OpenUser;
                    return RedirectToAction("RegAuto", "Register");
                }
            }
            else
            {
                return View(new OpenLoginStatus()
                {
                    Success = false,
                    Error = "The state does not match. You may be a victim of CSRF",
                    Message = "request=" + Request["state"] + ",session=" + Session["state"]
                });

            }
        }

        public ActionResult Renren()
        {
            //应用的APPID 
            string app_id = "3110750b91874b708336d595355b1090";
            //应用的APPKEY 
            string app_secret = "766220cde659449cbbe22bec8abda805";
            //成功授权后的回调地址 
            string my_url = "http://www.dotaeye.com/login/renren";

            //Step1：获取Authorization Code 
            //session_start(); 
            string code = Request.QueryString["code"];
            if (string.IsNullOrEmpty(code))
            {
                //state参数用于防止CSRF攻击，成功授权后回调时会原样带回 
                Session["state"] = Guid.NewGuid();//md5(uniqid(rand(), TRUE));  
                //拼接URL      
                string dialog_url = "https://graph.renren.com/oauth/authorize?response_type=code&client_id="
                   + app_id + "&redirect_uri=" + Server.UrlEncode(my_url) + "&state="
                   + Session["state"];
                return Content("<script>window.top.location.href='" + dialog_url + "'</script>");
            }
            if (Request["state"].ToString().Equals(Session["state"].ToString()))
            {
                Session["state"] = null;
                //拼接URL    
                string token_url = "https://graph.renren.com/oauth/token?grant_type=authorization_code&client_id=" + app_id + "&redirect_uri=" + Server.UrlEncode(my_url)
                + "&client_secret=" + app_secret + "&code=" + code;
                string response = HttpHelper.WebPageContentGet(token_url, System.Text.Encoding.UTF8);
                NameValueCollection user = ParseJson(response);
                if (!string.IsNullOrEmpty(user["error"]))
                {
                    return View(new OpenLoginStatus()
                    {
                        Success = false,
                        Error = user["error"].ToString(),
                        Message = user["error_description"].ToString()
                    });
                }
                OpenLoginStatus OpenUser = new OpenLoginStatus()
                {
                    Success = true,
                    OpenType = (int)OpenLoginType.Renren,
                    NickName = user["name"].ToString(),
                    OpenId = user["access_token"].ToString()
                };
                if (memberService.OpenUserLogin(OpenUser, OpenLoginType.Renren))
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    Session["registerAuto"] = OpenUser;
                    return RedirectToAction("RegAuto", "Register");
                }
            }
            else
            {
                return View(new OpenLoginStatus()
                {
                    Success = false,
                    Error = "The state does not match. You may be a victim of CSRF",
                    Message = "request=" + Request["state"] + ",session=" + Session["state"]
                });

            }
        }
        NameValueCollection ParseJson(string json_code)
        {
            NameValueCollection mc = new NameValueCollection();
            Regex regex = new Regex(@"(\s*\""?([^""]*)\""?\s*\:\s*\""?([^""]*)\""?\,?)");
            json_code = json_code.Trim();
            if (json_code.StartsWith("{"))
            {
                json_code = json_code.Substring(1, json_code.Length - 2);
            }
            foreach (Match m in regex.Matches(json_code))
            {
                mc.Add(m.Groups[2].Value, m.Groups[3].Value);
                //Response.Write(m.Groups[2].Value + "=" + m.Groups[3].Value + "<br/>"); 
            }
            return mc;
        }
        NameValueCollection ParseUrlParameters(string str_params)
        {
            NameValueCollection nc = new NameValueCollection();
            foreach (string p in str_params.Split('&'))
            {
                string[] p_s = p.Split('=');
                nc.Add(p_s[0], p_s[1]);
            }
            return nc;
        }
    }
}
