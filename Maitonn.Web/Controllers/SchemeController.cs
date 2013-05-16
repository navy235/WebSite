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

namespace Maitonn.Web.Controllers
{
    public class SchemeController : Controller
    {
        private IMemberService memberService;
        private IAreaAttService areaAttService;
        private IAreaService areaService;
        private ICompanyService companyService;
        private IOutDoorMediaCateService outDoorMediaCateService;
        private IFormatCateService formatCateService;
        private ICompanyBussinessService companyBussinessService;
        private ICompanyFundService companyFundService;
        private ICompanyScaleService companyScaleService;
        private IPeriodCateService periodCateService;
        private IOwnerCateService ownerCateService;
        private IAuctionCalendarService auctionCalendarService;
        private IArticleCateService articleCateService;
        private IMember_FavoriteService member_FavoriteService;
        private IMember_SchemeService member_SchemeService;
        private IScheme_MediaService scheme_MediaService;
        private IOutDoorService outDoorService;
        public SchemeController(
            IMemberService _memberService
            , IAreaAttService _areaAttService
            , IAreaService _areaService
            , ICompanyService _companyService
            , IOutDoorMediaCateService _outDoorMediaCateService
            , IFormatCateService _formatCateService
            , ICompanyBussinessService _companyBussinessService
            , ICompanyFundService _companyFundService
            , ICompanyScaleService _companyScaleService
            , IPeriodCateService _periodCateService
            , IOwnerCateService _ownerCateService
            , IAuctionCalendarService _auctionCalendarService
            , IArticleCateService _articleCateService
            , IMember_FavoriteService _member_FavoriteService
            , IMember_SchemeService _member_SchemeService
            , IOutDoorService _outDoorService
            , IScheme_MediaService _scheme_MediaService
            )
        {

            areaAttService = _areaAttService;
            areaService = _areaService;
            companyService = _companyService;
            memberService = _memberService;
            outDoorMediaCateService = _outDoorMediaCateService;
            formatCateService = _formatCateService;
            companyBussinessService = _companyBussinessService;
            companyFundService = _companyFundService;
            companyScaleService = _companyScaleService;
            periodCateService = _periodCateService;
            ownerCateService = _ownerCateService;
            auctionCalendarService = _auctionCalendarService;
            articleCateService = _articleCateService;
            member_FavoriteService = _member_FavoriteService;
            member_SchemeService = _member_SchemeService;
            outDoorService = _outDoorService;
            scheme_MediaService = _scheme_MediaService;
        }


        public ActionResult Index()
        {
            ViewBag.MenuItem = "scheme-media";
            return View();
        }


        public ActionResult Scheme_Read([DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;
            var model = member_SchemeService.GetKendoALL().Where(x => x.MemberID == memberID);
            return Json(model.ToDataSourceResult(request));
        }

        public ActionResult SchemeMedia_Read(int schemeID, [DataSourceRequest] DataSourceRequest request)
        {
            var memberID = CookieHelper.MemberID;

            var model = (from s in scheme_MediaService.GetALL()
                         join o in outDoorService.GetList(OutDoorStatus.ShowOnline, true) on s.MediaID equals o.MediaID
                         where s.SchemeID == schemeID
                         select new SchemeMediaViewModel()
                         {
                             StartTime = s.StartTime,
                             SchemeID = schemeID,
                             Price = s.Price,
                             MediaID = s.MediaID,
                             ID = s.ID,
                             EndTime = s.EndTime,
                             ImgUrl = o.MediaImg.FocusImgUrl,
                             Name = o.Name
                         });

            //scheme_MediaService.GetALL().Where(x => x.SchemeID == schemeID);
            return Json(model.ToDataSourceResult(request));
        }

        [HttpPost]
        public ActionResult Scheme_Delete(string ids)
        {
            var result = member_SchemeService.DeleteAll(ids);

            result.Message = "删除收藏" + (result.Success ? "成功！" : "失败！");

            return Json(result);
        }

        public ActionResult Print(int id)
        {

            var scheme = member_SchemeService.Find(id);

            var list = (from m in scheme_MediaService.GetALL()
                        join o in outDoorService.GetList(OutDoorStatus.ShowOnline, true) on m.MediaID equals o.MediaID
                        join c in companyService.GetAll() on o.MemberID equals c.MemberID
                        where m.SchemeID == id
                        select new SchemeMediaViewModel()
                        {
                            CityName = o.Area.CateName,
                            CompanyName = c.Name,
                            PCategoryName = o.OutDoorMediaCate.PCategory.CateName,
                            CategoryName = o.OutDoorMediaCate.CateName,
                            EndTime = m.EndTime,
                            ID = m.ID,
                            ImgUrl = o.MediaImg.FocusImgUrl,
                            MediaID = o.MediaID,
                            MemberID = o.MemberID,
                            Mobile = c.Mobile,
                            Name = o.Name,
                            Phone = c.Phone,
                            Price = m.Price,
                            ProvinceName = o.Area.PCategory.CateName,
                            SchemeID = id,
                            StartTime = m.StartTime,
                            FormatName = o.FormatCate.CateName,
                            HasLight = o.HasLight,
                            Height = o.Height,
                            LightEnd = o.LightEnd,
                            LightStrat = o.LightStrat,
                            TotalFaces = o.TotalFaces,
                            TrafficAuto = o.TrafficAuto,
                            TrafficPerson = o.TrafficPerson,
                            Wdith = o.Wdith,
                            OwnerName = o.OwnerCate.CateName,
                            PeriodName = o.PeriodCate.CateName,
                            Description = o.Description
                        }
                       ).ToList();
            var model = new SchemeViewModel()
            {
                AddTime = scheme.AddTime,
                Description = scheme.Description,
                ID = id,
                Name = scheme.Name,
                Medias = list
            };

            return View(model);
        }


        public ActionResult Add()
        {
            ViewBag.MenuItem = "scheme-add";
            return View(new SchemeAddViewModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(SchemeAddViewModel model)
        {
            ViewBag.MenuItem = "scheme-add";
            ServiceResult result = new ServiceResult();
            TempData["Service_Result"] = result;
            if (ModelState.IsValid)
            {
                try
                {
                    var memberID = Convert.ToInt32(CookieHelper.UID);

                    Member_Scheme ms = new Member_Scheme()
                    {
                        Name = model.Name,
                        Description = model.Description,
                        MemberID = memberID,
                        AddTime = DateTime.Now,
                        LastTime = DateTime.Now,
                    };
                    member_SchemeService.Create(ms);
                    result.Message = "媒体方案保存成功！";
                    return Redirect(Url.Action("index"));
                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);

        }


        public ActionResult Edit(int id)
        {
            ViewBag.MenuItem = "scheme-index";

            var scheme = member_SchemeService.Find(id);

            var model = new SchemeAddViewModel()
            {
                ID = scheme.ID,
                Name = scheme.Name,
                Description = scheme.Description
            };

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SchemeAddViewModel model)
        {
            ViewBag.MenuItem = "scheme-index";
            ServiceResult result = new ServiceResult();
            TempData["Service_Result"] = result;
            if (ModelState.IsValid)
            {
                try
                {
                    var scheme = new Member_Scheme();
                    scheme.ID = model.ID;
                    scheme.Name = model.Name;
                    scheme.Description = model.Description;
                    member_SchemeService.Update(scheme);
                    result.Message = "媒体方案保存成功！";
                    return Redirect(Url.Action("index"));
                }
                catch (Exception ex)
                {
                    result.Message = Utilities.GetInnerMostException(ex);
                    result.AddServiceError(result.Message);
                }
            }
            else
            {
                result.Message = "表单输入有误！";
                result.AddServiceError("表单输入有误！");
            }
            return View(model);

        }

        public JsonResult SchemeNameExists(string Name)
        {
            var result = !member_SchemeService.GetALL().Any(x =>
                x.MemberID == CookieHelper.MemberID &&
                x.Name.Equals(Name, StringComparison.CurrentCultureIgnoreCase));
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetSchemeForm()
        {
            return View();
        }

        public ActionResult GetEditSchemeForm(int id)
        {
            var model = (from s in scheme_MediaService.GetALL()
                         join o in outDoorService.GetList(OutDoorStatus.ShowOnline, true) on s.MediaID equals o.MediaID
                         select new EditSchemeMediaViewModel()
                         {
                             ID = s.ID,
                             MediaID = s.MediaID,
                             Name = o.Name,
                             PeriodCode = s.PeriodCode,
                             PeriodCount = s.PeriodCount,
                             Price = s.Price,
                             SchemeID = s.SchemeID,
                             StartTime = s.StartTime,
                             Uprice = o.Price
                         }).Single(x => x.ID == id);
            return View(model);
        }

        [HttpPost]
        public ActionResult SchemeMedia_Delete(int id)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var model = scheme_MediaService.Find(id);
                scheme_MediaService.Delete(model);
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            result.Message = "删除收藏" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }
    }
}
