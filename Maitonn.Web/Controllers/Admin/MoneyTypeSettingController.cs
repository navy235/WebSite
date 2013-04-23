using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [Permission]
    public class MoneyTypeSettingController : Controller
    {
        //
        // GET: /Member_Money_Type/
        private IMember_Money_TypeService Member_Money_TypeService;
        public MoneyTypeSettingController(
             IMember_Money_TypeService _Member_Money_TypeService
          )
        {
            Member_Money_TypeService = _Member_Money_TypeService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var Member_Money_Types = Member_Money_TypeService.GetKendoALL();
            return Json(Member_Money_Types.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_Money_Type> Member_Money_Types)
        {
            var results = new List<Member_Money_Type>();

            if (Member_Money_Types != null && ModelState.IsValid)
            {
                foreach (var Member_Money_Type in Member_Money_Types)
                {
                    Member_Money_TypeService.Create(Member_Money_Type);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_Money_Type> Member_Money_Types)
        {
            if (Member_Money_Types != null && ModelState.IsValid)
            {
                foreach (var Member_Money_Type in Member_Money_Types)
                {
                    Member_Money_TypeService.Update(Member_Money_Type);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_Money_Type> Member_Money_Types)
        {
            if (Member_Money_Types.Any())
            {
                foreach (var Member_Money_Type in Member_Money_Types)
                {
                    Member_Money_TypeService.Delete(Member_Money_Type);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}


