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
    public class ServerItemController : Controller
    {
        //
        // GET: /ServerItem/

        private IServerItemService ServerItemService;

        public ServerItemController(
            IServerItemService _ServerItemService
         )
        {
            ServerItemService = _ServerItemService;
        }


        #region KendoGrid Action
        public ActionResult Index()
        {
            ViewBag.ServerType = Utilities.CreateSelectList(UIHelper.ServerTypeList, x => x.Value, x => x.Text, false);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {
            var ServerItems = ServerItemService.GetKendoALL();
            return Json(ServerItems.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ServerItem> ServerItems)
        {
            var results = new List<ServerItem>();

            if (ServerItems != null && ModelState.IsValid)
            {
                foreach (var ServerItem in ServerItems)
                {
                    ServerItemService.Create(ServerItem);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ServerItem> ServerItems)
        {
            if (ServerItems != null && ModelState.IsValid)
            {
                foreach (var ServerItem in ServerItems)
                {
                    ServerItemService.Update(ServerItem);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<ServerItem> ServerItems)
        {
            if (ServerItems.Any())
            {
                foreach (var ServerItem in ServerItems)
                {
                    ServerItemService.Delete(ServerItem);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }


        #endregion



        #region Create Edit
        public ActionResult Create()
        {
            var model = new ServerItemViewModel();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ServerItemViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    ServerItem item = new ServerItem()
                    {
                        AddTime = DateTime.Now,
                        Description = model.Description,
                        EndTime = model.EndTime,
                        GiftMoney = model.GiftMoney,
                        GiftMonth = model.GiftMonth,
                        ImgUrl = model.ImgUrl,
                        HelpUrl = model.HelpUrl,
                        IsPayByVMoney = model.IsPayByVMoney,
                        IsByCategory = model.IsByCategory,
                        IsByChildCategory = model.IsByChildCategory,
                        IsQuanGuo = model.IsQuanGuo,
                        LastTime = DateTime.Now,
                        MemberID = CookieHelper.MemberID,
                        Money = model.Money,
                        Month = model.Month,
                        Name = model.Name,
                        Price = model.Price,
                        ServerType = model.ServerType,
                        VipDiscount = model.VipDiscount,
                        VipDiscount2 = model.VipDiscount2
                    };
                    ServerItemService.Create(item);

                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    return View(model);
                }

            }
            else
            {
                return View(model);
            }

        }

        public ActionResult Edit(int id)
        {
            var item = ServerItemService.Find(id);
            var model = new ServerItemViewModel()
            {
                VipDiscount2 = item.VipDiscount2,
                VipDiscount = item.VipDiscount,
                ServerType = item.ServerType,
                Price = item.Price,
                Name = item.Name,
                Month = item.Month,
                IsQuanGuo = item.IsQuanGuo,
                IsByCategory = item.IsByCategory,
                IsByChildCategory = item.IsByChildCategory,
                Money = item.Money,
                IsPayByVMoney = item.IsPayByVMoney,
                HelpUrl = item.HelpUrl,
                ImgUrl = item.ImgUrl,
                GiftMonth = item.GiftMonth,
                Description = item.Description,
                EndTime = item.EndTime,
                GiftMoney = item.GiftMoney,
                ID = item.ID
            };
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ServerItemViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    ServerItem item = new ServerItem()
                    {
                        ID = model.ID,
                        Description = model.Description,
                        EndTime = model.EndTime,
                        GiftMoney = model.GiftMoney,
                        GiftMonth = model.GiftMonth,
                        ImgUrl = model.ImgUrl,
                        HelpUrl = model.HelpUrl,
                        IsPayByVMoney = model.IsPayByVMoney,
                        IsByCategory = model.IsByCategory,
                        IsByChildCategory = model.IsByChildCategory,
                        IsQuanGuo = model.IsQuanGuo,
                        MemberID = CookieHelper.MemberID,
                        Money = model.Money,
                        Month = model.Month,
                        Name = model.Name,
                        Price = model.Price,
                        ServerType = model.ServerType,
                        VipDiscount = model.VipDiscount,
                        VipDiscount2 = model.VipDiscount2
                    };

                    ServerItemService.Update(item);

                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    return View(model);
                }

            }
            else
            {
                return View(model);
            }
        }



        #endregion
    }
}
