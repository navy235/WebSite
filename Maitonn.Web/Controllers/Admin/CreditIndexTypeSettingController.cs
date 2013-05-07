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
    public class CreditIndexTypeSettingController : Controller
    {
        //
        // GET: /Member_CreditIndex_Type/
        private IMember_CreditIndex_TypeService Member_CreditIndex_TypeService;
        public CreditIndexTypeSettingController(
             IMember_CreditIndex_TypeService _Member_CreditIndex_TypeService
          )
        {
            Member_CreditIndex_TypeService = _Member_CreditIndex_TypeService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var Member_CreditIndex_Types = Member_CreditIndex_TypeService.GetKendoALL();
            return Json(Member_CreditIndex_Types.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_CreditIndex_Type> Member_CreditIndex_Types)
        {
            var results = new List<Member_CreditIndex_Type>();

            if (Member_CreditIndex_Types != null && ModelState.IsValid)
            {
                foreach (var Member_CreditIndex_Type in Member_CreditIndex_Types)
                {
                    Member_CreditIndex_TypeService.Create(Member_CreditIndex_Type);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_CreditIndex_Type> Member_CreditIndex_Types)
        {
            if (Member_CreditIndex_Types != null && ModelState.IsValid)
            {
                foreach (var Member_CreditIndex_Type in Member_CreditIndex_Types)
                {
                    Member_CreditIndex_TypeService.Update(Member_CreditIndex_Type);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Member_CreditIndex_Type> Member_CreditIndex_Types)
        {
            if (Member_CreditIndex_Types.Any())
            {
                foreach (var Member_CreditIndex_Type in Member_CreditIndex_Types)
                {
                    Member_CreditIndex_TypeService.Delete(Member_CreditIndex_Type);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion

    }
}


