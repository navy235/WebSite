using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Caching;

namespace Maitonn.Core
{

    public static class CacheService
    {
        #region Methods

        public static void Add<T>(T o, string key, int min) where T : class
        {
            try
            {
                var expriTime = DateTime.Now.AddMinutes(min);
                Add<T>(o, key, expriTime);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static void Add<T>(T o, string key, DateTime expriTime) where T : class
        {
            try
            {
                HttpContext.Current.Cache.Insert(
                    key,
                    o,
                    null,
                    expriTime,
                    System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public static void Add<T>(T o, Dictionary<string, string> dic, int min) where T : class
        {
            try
            {
                var key = CreateKey(dic);
                var expriTime = DateTime.Now.AddMinutes(min);
                Add<T>(o, key, expriTime);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static void Add<T>(T o, Dictionary<string, string> dic, DateTime expriTime) where T : class
        {
            try
            {
                var key = CreateKey(dic);
                HttpContext.Current.Cache.Insert(
                    key,
                    o,
                    null,
                    expriTime,
                    System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public static void AddInt32Value(int o, Dictionary<string, string> dic, int min)
        {
            try
            {
                var key = CreateKey(dic);
                var expriTime = DateTime.Now.AddMinutes(min);
                AddInt32Value(o, dic, expriTime);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static void AddInt32Value(int o, Dictionary<string, string> dic, DateTime expriTime)
        {
            try
            {
                var key = CreateKey(dic);
                HttpContext.Current.Cache.Insert(
                    key,
                    o,
                    null,
                    expriTime,
                    System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception ex)
            {

                throw;
            }
        }


        public static void Clear(string key)
        {
            try
            {
                key = System.Security.Principal.WindowsIdentity.GetCurrent().User.AccountDomainSid.ToString() + key;
                HttpContext.Current.Cache.Remove(key);
            }
            catch (Exception ex)
            {

                throw;

            }
        }

        public static void Clear()
        {
            IDictionaryEnumerator CacheEnum = HttpContext.Current.Cache.GetEnumerator();

            ArrayList al = new ArrayList();

            while (CacheEnum.MoveNext())
            {
                al.Add(CacheEnum.Key);
            }

            foreach (string key in al)
            {
                HttpContext.Current.Cache.Remove(key);
            }
        }

        public static bool Exists(string key)
        {
            try
            {
                return HttpContext.Current.Cache[key] != null;
            }
            catch (Exception ex)
            {
                throw;
                //return false;
            }
        }

        public static bool Exists(Dictionary<string, string> dic)
        {
            try
            {
                var key = CreateKey(dic);
                return Exists(key);
            }
            catch (Exception ex)
            {
                throw;
                //return false;
            }
        }

        public static T Get<T>(string key) where T : class
        {
            try
            {
                return (T)HttpContext.Current.Cache[key];
            }
            catch
            {
                return null;
            }
        }

        public static T Get<T>(Dictionary<string, string> dic) where T : class
        {
            try
            {
                var key = CreateKey(dic);
                return Get<T>(key);
            }
            catch
            {
                return null;
            }
        }

        public static int GetInt32Value(Dictionary<string, string> dic)
        {
            try
            {
                var key = CreateKey(dic);
                var value = HttpContext.Current.Cache[key];
                return Convert.ToInt32(value);
            }
            catch
            {
                return 0;
            }
        }

        public static string CreateKey(Dictionary<string, string> dic)
        {
            return string.Join("&", dic.OrderBy(x => x.Key).Select(x => HttpUtility.UrlEncode(x.Key.ToLower()) + "=" + HttpUtility.UrlEncode(x.Value.ToLower())));
        }

        public static readonly string ServiceName = "ServiceName";

        public static readonly string ServiceMethod = "ServiceMethod";

        #endregion
    }


}
