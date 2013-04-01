using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class PermissionAttribute : BaseAuthorizeAttribute
    {
        private IUnitOfWork DB_Service;

        public PermissionAttribute()
            : base()
        {
            DB_Service = new EntitiesContext();

        }

        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            bool hasPermission = false;
            base.AuthorizeCore(httpContext);
            if (CookieHelper.IsLogin)
            {
                int groupID = Convert.ToInt32(CookieHelper.GroupID);
                string controller = httpContext.Request.RequestContext.RouteData.Values["controller"].ToString();
                string action = httpContext.Request.RequestContext.RouteData.Values["action"].ToString();
                ////var query = from permissions in db.Permissions
                ////            join role_permissions in db.Role_Permissions on permissions.ID equals role_permissions.PermissionID
                ////            join group_roles in db.Group_Roles on role_permissions.RoleID equals group_roles.RoleID
                ////            where group_roles.GroupID == groupID
                ////            where permissions.Controller == controller && (permissions.Action == action || permissions.Action == "controller")
                ////            select new
                ////            {
                ////                permissions.Controller,
                ////                permissions.Action
                ////            };

                var query = DB_Service.Set<Group>()
                    .Include(x => x.Roles)
                    .Where(g =>
                        (g.Roles.Any(r =>
                            r.Permissions.Count(p =>
                                p.Controller.Equals(controller, StringComparison.OrdinalIgnoreCase)
                                &&
                                (p.Action.Equals(action, StringComparison.OrdinalIgnoreCase) || p.Action.Equals("controller", StringComparison.OrdinalIgnoreCase))) > 0))
                        && g.GroupID == groupID);
                if (query.Count() > 0)
                {
                    hasPermission = true;
                }
              
            }
            return hasPermission;
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext context)
        {
            if (context.HttpContext.Request.IsAjaxRequest())
            {
                var urlHelper = new UrlHelper(context.RequestContext);
                context.HttpContext.Response.StatusCode = 403;
                context.Result = new JsonResult
                {
                    Data = new
                    {
                        Error = "NoPermission",
                        LogOnUrl = urlHelper.Action("index", "login")
                    },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }
            else
            {
                context.Result = new RedirectToRouteResult(
                                       new RouteValueDictionary 
                                   {
                                       { "action", "index" },

                                       { "controller", "error" },

                                       { "id", (int)ErrorType.NoPermission},

                                       {"returnurl",context.RequestContext.HttpContext.Request.Url}
                                   });
            }

        }
    }
}
