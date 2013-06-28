using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class MapController : Controller
    {


        private IOutDoorMediaCateService categoryService;


        public MapController(
         IOutDoorMediaCateService categoryService
            )
        {
            this.categoryService = categoryService;
        }


        public ActionResult Index()
        {

            var categoryList = Utilities.GetSelectListData(categoryService.GetALL().Where(x => x.PID.Equals(null)), x => x.ID, x => x.CateName, false);

            categoryList.Insert(0, new SelectListItem()
            {
                Selected = true,
                Text = "媒体分类",
                Value = "0"
            });

            var priceList = UIHelper.PriceList;

            priceList.Single(x => x.Value == "0").Selected = true;

            ViewBag.categoryList = categoryList;

            ViewBag.priceList = priceList;


            return View();
        }



    }
}
