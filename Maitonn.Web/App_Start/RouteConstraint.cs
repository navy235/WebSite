using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class ProvinceConstraint : IRouteConstraint
    {
        private List<string> _ProvinceList { get; set; }

        public ProvinceConstraint()
        {
            this.Init();
        }

        public bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
        {
            var province = values[parameterName].ToString();
            return this._ProvinceList.Contains(province);
        }

        private void Init()
        {
            _ProvinceList = new List<string>();
            _ProvinceList = (from ProvinceName e in Enum.GetValues(typeof(ProvinceName))
                             select e.ToString()).ToList();
        }
    }
}