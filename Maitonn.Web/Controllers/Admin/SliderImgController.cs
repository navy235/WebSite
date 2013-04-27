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
    public class SliderImgController : Controller
    {
        //
        // GET: /SliderImg/

        private ISliderImgService SliderImgService;
        private IAreaService AreaService;

        public SliderImgController(
            ISliderImgService _SliderImgService,
            IAreaService _AreaService
         )
        {
            SliderImgService = _SliderImgService;
            AreaService = _AreaService;
        }


        #region KendoGrid Action
        public ActionResult Index()
        {
            ViewBag.SliderImgStatus = Utilities.CreateSelectList(UIHelper.SliderImgStatusList, x => x.Value, x => x.Text, false);
            ViewBag.ProvinceCode = Utilities.CreateSelectList(AreaService.GetALL().Where(x => x.PID.Equals(null)).ToList(), x => x.ID, x => x.CateName, false);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {
            var SliderImgs = SliderImgService.GetKendoALL();
            return Json(SliderImgs.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<SliderImg> SliderImgs)
        {
            var results = new List<SliderImg>();

            if (SliderImgs != null && ModelState.IsValid)
            {
                foreach (var SliderImg in SliderImgs)
                {
                    SliderImgService.Create(SliderImg);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<SliderImg> SliderImgs)
        {
            if (SliderImgs != null && ModelState.IsValid)
            {
                foreach (var SliderImg in SliderImgs)
                {
                    SliderImgService.Update(SliderImg);
                }
            }

            return Json(ModelState.ToDataSourceResult());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<SliderImg> SliderImgs)
        {
            if (SliderImgs.Any())
            {
                foreach (var SliderImg in SliderImgs)
                {
                    SliderImgService.Delete(SliderImg);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }


        #endregion



        #region Create Edit
        public ActionResult Create()
        {
            var model = new SliderImgViewModel();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SliderImgViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    SliderImg item = new SliderImg()
                    {
                        AddTime = DateTime.Now,
                        StartTime=model.StartTime,
                        EndTime = model.StartTime.AddDays(model.Day),
                        ImgUrl = model.ImgUrl,
                        LinkUrl = model.LinkUrl,
                        MemberID = CookieHelper.MemberID,
                        Status = model.SliderImgStatus,
                        ProvinceCode = model.ProvinceCode,
                        OrderIndex = model.OrderIndex,
                        Title = model.Name
                    };
                    SliderImgService.Create(item);

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
            var item = SliderImgService.Find(id);
            var model = new SliderImgViewModel()
            {
                StartTime = item.StartTime,
                Day=Convert.ToInt32((item.EndTime-item.StartTime).TotalDays),
                ImgUrl = item.ImgUrl,
                LinkUrl = item.LinkUrl,
                OrderIndex = item.OrderIndex,
                ProvinceCode = item.ProvinceCode,
                Name = item.Title,
                SliderImgStatus = item.Status,
                ID = item.ID
            };
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SliderImgViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    SliderImg item = new SliderImg()
                    {
                        ID = model.ID,
                        StartTime = model.StartTime,
                        EndTime = model.StartTime.AddDays(model.Day),
                        ImgUrl = model.ImgUrl,
                        LinkUrl = model.LinkUrl,
                        MemberID = CookieHelper.MemberID,
                        Status = model.SliderImgStatus,
                        ProvinceCode = model.ProvinceCode,
                        OrderIndex = model.OrderIndex,
                        Title = model.Name
                    };

                    SliderImgService.Update(item);

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
