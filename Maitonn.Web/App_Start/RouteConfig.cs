using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Maitonn.Web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");




            routes.MapRoute(
               name: "defaultlist",
               url: "list-{city}-{mediacode}-{childmediacode}-{formatcode}-{ownercode}-{periodcode}-{price}-{order}-{descending}-p_{page}",
               defaults: new
               {
                   controller = "List",
                   action = "Index",
                   province = "quanguo",
                   city = 0,
                   mediacode = 0,
                   childmediacode = 0,
                   formatcode = 0,
                   ownercode = 0,
                   periodcode = 0,
                   price = 0,
                   order = 0,
                   descending = 0,
                   page = 1
               },
               constraints: new
               {
                   city = @"\d+",
                   mediacode = @"\d+",
                   childmediacode = @"\d+",
                   formatcode = @"\d+",
                   ownercode = @"\d+",
                   periodcode = @"\d+",
                   price = @"\d+",
                   order = @"\d+",
                   descending = @"\d+",
                   page = @"\d+"
               }
            );

            routes.MapRoute(
               name: "list",
               url: "{province}/list-{city}-{mediacode}-{childmediacode}-{formatcode}-{ownercode}-{periodcode}-{price}-{order}-p_{page}",
               defaults: new
               {
                   controller = "List",
                   action = "Index",
                   province = "quanguo",
                   city = 0,
                   mediacode = 0,
                   childmediacode = 0,
                   formatcode = 0,
                   ownercode = 0,
                   periodcode = 0,
                   price = 0,
                   order = 0,
                   descending = 0,
                   page = 1
               },
               constraints: new
               {
                   province = new ProvinceConstraint(),
                   city = @"\d+",
                   mediacode = @"\d+",
                   childmediacode = @"\d+",
                   formatcode = @"\d+",
                   ownercode = @"\d+",
                   periodcode = @"\d+",
                   price = @"\d+",
                   order = @"\d+",
                   descending = @"\d+",
                   page = @"\d+"
               }
            );

            routes.MapRoute(
            name: "media",
            url: "media-{id}",
            defaults: new
            {
                controller = "show",
                action = "index"
            },
            constraints: new
            {
                id = @"\d+"
            }
         );

            routes.MapRoute(
              name: "defaulthome",
              url: "{province}",
              defaults: new
              {
                  controller = "Home",
                  action = "Index",
                  province = "quanguo",
                  city = 0
              },
              constraints: new
              {
                  province = new ProvinceConstraint()
              }
           );

            routes.MapRoute(
                 name: "changeprovince",
                 url: "change/{province}",
                 defaults: new
                 {
                     controller = "ChangeProvince",
                     action = "Index",
                     province = UrlParameter.Optional
                 },
                 constraints: new
                 {
                     province = new ProvinceConstraint()
                 }
            );


            routes.MapRoute(
             name: "biz",
             url: "biz/{id}/{action}/{category}",
             defaults: new
             {
                 controller = "Shop",
                 action = "Index",
                 id = UrlParameter.Optional,
                 category = UrlParameter.Optional
             },
             constraints: new
             {
                 id = @"\d+"
             }
        );

            routes.MapRoute(
                name: "default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );


        }
    }
}