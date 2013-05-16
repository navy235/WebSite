using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [BaseAuthorize]
    public class FavoriteController : Controller
    {
        //
        // GET: /Favorite/

        private IAreaService areaService;
        private IMemberService memberService;
        private IEmailService emailService;
        private IMember_ActionService member_ActionService;
        private IAreaAttService areaAttService;
        private IOutDoorService outDoorService;
        private ICompanyService companyService;
        private IMember_MoneyService member_MoneySerivce;
        private IMember_CreditIndexService member_CreditIndexService;
        private IMember_FavoriteService member_FavoriteService;
        public FavoriteController(IAreaService _areaService
            , IMemberService _memberService
            , IEmailService _emailService
            , IMember_ActionService _member_ActionService
            , IAreaAttService _areaAttService
            , IOutDoorService _outDoorService
            , ICompanyService _companyService
            , IMember_MoneyService _member_MoneySerivce
            , IMember_CreditIndexService _member_CreditIndexService
            , IMember_FavoriteService _member_FavoriteService)
        {
            areaService = _areaService;
            memberService = _memberService;
            emailService = _emailService;
            member_ActionService = _member_ActionService;
            areaAttService = _areaAttService;
            outDoorService = _outDoorService;
            companyService = _companyService;
            member_MoneySerivce = _member_MoneySerivce;
            member_CreditIndexService = _member_CreditIndexService;
            member_FavoriteService = _member_FavoriteService;
        }

        public ActionResult Index()
        {
            ViewBag.MenuItem = "favorite-media";
            return View();
        }

        public ActionResult Favorite_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;

            var model = (from f in member_FavoriteService.GetALL()
                         join o in outDoorService.GetList(OutDoorStatus.ShowOnline, true) on f.MediaID equals o.MediaID
                         join c in companyService.GetAll() on o.MemberID equals c.MemberID
                         where f.MemberID == memberID
                         orderby f.AddTime descending
                         select new FavoriteViewModel
                         {
                             ID = f.ID,
                             TargetID = o.MemberID,
                             MediaID = o.MediaID,
                             Name = o.Name,
                             CompanyName = c.Name,
                             ImgUrl = o.MediaImg.FocusImgUrl,
                             AddTime = f.AddTime,
                             ProvinceName = o.Area.PCategory.CateName,
                             CityName = o.Area.CateName,
                             MediaCategoryName = o.OutDoorMediaCate.CateName,
                             PMediaCategoryName = o.OutDoorMediaCate.PCategory.CateName

                         });
            return Json(model.ToDataSourceResult(request));
        }

        [HttpPost]
        public ActionResult FavoriteDelete(string ids)
        {
            var result = member_FavoriteService.DeleteAll(ids);

            result.Message = "删除收藏" + (result.Success ? "成功！" : "失败！");

            return Json(result);
        }


    }
}
