using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using Maitonn.Core;
namespace Maitonn.Web
{

    [SkipGzipCompressJsAndReplaceWhiteSpace]
    public class AjaxServiceController : Controller
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
        public AjaxServiceController(
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

        #region login
        [AjaxOnly]
        public ActionResult isLogin()
        {
            return Json(
                new
                {
                    Login = CookieHelper.IsLogin,
                    NickName = CookieHelper.NickName
                }, JsonRequestBehavior.AllowGet
              );
        }
        #endregion



        #region  Control

        public ActionResult ServerType()
        {
            return Json(UIHelper.ServerTypeList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ServerTypeName(int key)
        {
            return Content(UIHelper.ServerTypeList.Single(x => x.Value == key.ToString()).Text);
        }

        public ActionResult TopType()
        {
            return Json(UIHelper.TopTypeList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult TopTypeName(int key)
        {
            return Content(UIHelper.TopTypeList.Single(x => x.Value == key.ToString()).Text);
        }

        public ActionResult SliderImgStatus()
        {
            return Json(UIHelper.SliderImgStatusList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult SliderImgStatusName(int key)
        {
            return Content(UIHelper.SliderImgStatusList.Single(x => x.Value == key.ToString()).Text);
        }

        public ActionResult ProvinceCode()
        {
            var renderRadioList = areaService.GetALL().Where(x => x.PID.Equals(null));
            return Json(Utilities.GetSelectListData(renderRadioList, x => x.ID, x => x.CateName, false),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult ProvinceCodeName(int key)
        {
            return Content(areaService.Find(key).CateName);
        }


        public ActionResult CityCode(string key, int pid = 0)
        {
            var renderRadioList = areaService.GetALL();
            if (pid == 0)
            {
                renderRadioList = renderRadioList.Where(x => x.PID.Equals(null));
            }
            else
            {
                renderRadioList = renderRadioList.Where(x => x.PID == pid);
            }
            return Json(Utilities.GetSelectListData(renderRadioList, x => x.ID, x => x.CateName, false),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult CityCodeName(int key)
        {
            return Content(areaService.Find(key).CateName);
        }

        public ActionResult Get_CityCode(int value)
        {
            var selectValues = new List<int>();
            var item = areaService.Find(value);
            selectValues.Add(item.ID);
            if (item.PID.HasValue)
            {
                selectValues.Add(item.PID.Value);
            }
            selectValues.Reverse();
            return Json(selectValues, JsonRequestBehavior.AllowGet);

        }


        public ActionResult ArticleCode()
        {
            var renderRadioList = Utilities.GetSelectListData(articleCateService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
             x => x.ID,
             x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ArticleCodeName(int key)
        {
            return Content(articleCateService.Find(key).CateName);
        }

        public ActionResult Get_ArticleCode(int value)
        {
            var selectValues = new List<int>();
            var item = articleCateService.Find(value);
            selectValues.Add(item.ID);
            if (item.PID.HasValue)
            {
                selectValues.Add(item.PID.Value);
            }
            selectValues.Reverse();
            return Json(selectValues, JsonRequestBehavior.AllowGet);

        }

        public ActionResult FormatCode()
        {

            var renderRadioList = Utilities.GetSelectListData(formatCateService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
                x => x.ID,
                x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult FormatCodeName(int key)
        {
            return Content(formatCateService.Find(key).CateName);
        }

        public ActionResult ScaleCode()
        {

            var renderRadioList = Utilities.GetSelectListData(companyScaleService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
             x => x.ID,
             x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ScaleCodeName(int key)
        {
            return Content(companyScaleService.Find(key).CateName);
        }

        public ActionResult FundCode()
        {
            var renderRadioList = Utilities.GetSelectListData(companyFundService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
             x => x.ID,
             x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult FundCodeName(int key)
        {
            return Content(companyFundService.Find(key).CateName);
        }

        public ActionResult BussinessCode()
        {
            var renderRadioList = Utilities.GetSelectListData(companyBussinessService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
             x => x.ID,
             x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult BussinessCodeName(int key)
        {
            return Content(companyBussinessService.Find(key).CateName);
        }



        public ActionResult ParentMediaCode()
        {
            var renderRadioList = outDoorMediaCateService.GetALL().Where(x => x.PID.Equals(null));
            return Json(Utilities.GetSelectListData(renderRadioList, x => x.ID, x => x.CateName, false),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult ParentMediaCode(int key)
        {
            return Content(outDoorMediaCateService.Find(key).CateName);
        }

        public ActionResult MeidaCode(string key, int pid = 0)
        {
            var renderRadioList = outDoorMediaCateService.GetALL();
            if (pid == 0)
            {
                renderRadioList = renderRadioList.Where(x => x.PID.Equals(null));
            }
            else
            {
                renderRadioList = renderRadioList.Where(x => x.PID == pid);
            }
            return Json(Utilities.GetSelectListData(renderRadioList, x => x.ID, x => x.CateName, false),
              JsonRequestBehavior.AllowGet);
        }

        public ActionResult MeidaCodeName(int key)
        {
            return Content(outDoorMediaCateService.Find(key).CateName);
        }

        public ActionResult Get_MeidaCode(int value)
        {
            var selectValues = new List<int>();
            var item = outDoorMediaCateService.Find(value);
            selectValues.Add(item.ID);
            if (item.PID.HasValue)
            {
                selectValues.Add(item.PID.Value);
            }
            selectValues.Reverse();
            return Json(selectValues, JsonRequestBehavior.AllowGet);
        }


        public ActionResult PeriodCode()
        {
            var renderRadioList = Utilities.GetSelectListData(periodCateService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
               x => x.ID,
               x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PeriodCodeName(int key)
        {
            return Content(periodCateService.Find(key).CateName);
        }

        public ActionResult OwnerCode()
        {
            var renderRadioList = Utilities.GetSelectListData(ownerCateService.GetALL().Where(x => x.PID.Equals(null)).ToList(),
              x => x.ID,
              x => x.CateName, false);
            return Json(renderRadioList, JsonRequestBehavior.AllowGet);

        }

        public ActionResult OwnerCodeName(int key)
        {
            return Content(ownerCateService.Find(key).CateName);
        }

        public ActionResult AreaAttName(string key)
        {
            var keyArray = key.Split(',').Select(x => Convert.ToInt32(x));
            return Json(areaAttService.GetList(keyArray).Select(x => x.AttName).ToList(), JsonRequestBehavior.AllowGet);

        }

        #endregion

        #region Form
        [HttpPost]
        public ActionResult AddMessage(int id, string name, string content)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                AddCompanyMessageViewModel model = new AddCompanyMessageViewModel()
                {
                    Name = name,
                    Content = content
                };
                var AddmemberID = Convert.ToInt32(CookieHelper.UID);
                result = companyService.AddCompanyMessage(id, AddmemberID, model);
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            result.Message = "留言" + (result.Success ? "成功！" : "失败！");
            return Json(result);
        }

        public ActionResult GetAuctionCalendar(int id)
        {
            List<AuctionCalendarViewModel> data = new List<AuctionCalendarViewModel>();
            var query = auctionCalendarService.GetALL(id).ToList();
            foreach (var item in query)
            {
                data.AddRange(GetAuctionCalendarViewModel(item));
            }
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Validate

        [SkipGzipCompressJsAndReplaceWhiteSpace]
        public void GetValidateCode()
        {
            ValidateCode VCode = new ValidateCode("VCode", 100, 40);
        }


        /// <summary>
        /// 确认是否存在该Email用户，注册用户时远程验证，存在返回false，不存在返回true
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public JsonResult EmailExists(string email)
        {
            if (memberService.ExistsEmail(email))
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 确认是否存在该Email用户，注册找回密码时验证，存在返回true，不存在返回false
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public JsonResult HasEmailUser(string email)
        {
            if (memberService.ExistsEmail(email))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult NickNameExists(string nickName)
        {
            if (!memberService.ExistsNickName(nickName) && !BadWordsHelper.HasBadWord(nickName))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult ValidateVCode(string vcode)
        {
            bool status = false;
            if (Session["VCode"] != null)
            {
                status = Session["VCode"].ToString().Equals(vcode, StringComparison.OrdinalIgnoreCase);
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EmailExistsNotMe(string email)
        {
            int uid = Convert.ToInt32(CookieHelper.UID);
            if (!memberService.ExistsEmailNotMe(uid, email))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult NickNameExistsNotMe(string nickName)
        {
            int uid = Convert.ToInt32(CookieHelper.UID);
            if (!memberService.ExistsNickNameNotMe(uid, nickName))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult ValidateDescription(string Description)
        {
            if (!BadWordsHelper.HasBadWord(Description))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult ValidatePassword(string OldPassword)
        {
            int uid = Convert.ToInt32(CookieHelper.UID);
            if (memberService.ValidatePassword(uid, OldPassword))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult ValidateAuction(int id, string startTime, string endTime)
        {
            DateTime _startTime = Convert.ToDateTime(startTime);
            DateTime _endtime = Convert.ToDateTime(endTime);
            var result = auctionCalendarService.ValidateAuction(id, _startTime, _endtime);
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Business
        [BaseAuthorize]
        public ActionResult CheckFavorite(int id)
        {
            ServiceResult result = new ServiceResult();
            var MemberID = CookieHelper.MemberID;
            try
            {
                if (member_FavoriteService.GetALL().Any(x => x.MemberID == MemberID && x.MediaID == id))
                {
                    result.AddServiceError("已经收藏了该媒体");
                    result.Message = "已经收藏了该媒体";
                }
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [BaseAuthorize]
        public ActionResult AddFavorite(int id)
        {
            ServiceResult result = new ServiceResult();
            var MemberID = CookieHelper.MemberID;
            if (!member_FavoriteService.GetALL().Any(x => x.MemberID == MemberID && x.MediaID == id))
            {
                try
                {
                    Member_Favorite m_f = new Member_Favorite()
                    {
                        MediaID = id,
                        MemberID = MemberID,
                        AddTime = DateTime.Now
                    };
                    member_FavoriteService.Create(m_f);
                }
                catch (Exception ex)
                {
                    result.Message = "添加收藏出错！";
                    result.AddServiceError(Utilities.GetInnerMostException(ex));
                }
            }
            else
            {
                result.Message = "已经收藏了该媒体";
                result.AddServiceError("已经收藏了该媒体");
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [BaseAuthorize]
        public ActionResult GetScheme()
        {
            var MemberID = CookieHelper.MemberID;
            var renderRadioList = member_SchemeService.GetALL().Where(x => x.MemberID == MemberID);
            return Json(Utilities.GetSelectListData(renderRadioList, x => x.ID, x => x.Name, false),
                JsonRequestBehavior.AllowGet);
        }



        [BaseAuthorize]
        [HttpPost]
        public ActionResult AddScheme(AddSchemeViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                Scheme_Media sm = new Scheme_Media();
                sm.MediaID = model.id;
                sm.StartTime = Convert.ToDateTime(model.startTime);
                sm.EndTime = Convert.ToDateTime(model.endTime);
                sm.Price = Convert.ToDecimal(model.price);
                sm.PeriodCode = model.periodCode;
                sm.PeriodCount = model.periodCount;
                if (string.IsNullOrEmpty(model.schemeName) && model.schemeId != 0)
                {
                    sm.SchemeID = model.schemeId;
                    if (scheme_MediaService.GetALL().Where(x => x.MediaID == model.id && x.SchemeID == model.schemeId).Any())
                    {
                        result.AddServiceError("该方案已经包含了此媒体");
                        result.Message = "该方案已经包含了此媒体！";
                    }
                }
                else
                {
                    Member_Scheme ms = new Member_Scheme()
                    {
                        AddTime = DateTime.Now,
                        Name = model.schemeName,
                        Description = model.schemeDescription,
                        LastTime = DateTime.Now,
                        MemberID = CookieHelper.MemberID
                    };
                    member_SchemeService.Create(ms);
                    sm.SchemeID = ms.ID;
                }
                if (result.Success)
                {
                    scheme_MediaService.Create(sm);
                    result.Message = "加入方案成功！";
                }
            }
            catch (Exception ex)
            {
                result.Message = "加入方案失败！";
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [BaseAuthorize]
        [HttpPost]
        public ActionResult EditSchemeMedia(AjaxEditSchemeViewModel model)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                var startTime = Convert.ToDateTime(model.startTime);

                var schemeMedia = new Scheme_Media()
                {
                    ID = model.id,
                    PeriodCode = model.periodCode,
                    PeriodCount = model.periodCount,
                    StartTime = startTime,
                    Price = Convert.ToDecimal(model.price),
                    EndTime = startTime.AddDays(model.periodCode * model.periodCount)
                };

                scheme_MediaService.Update(schemeMedia);
            }
            catch (Exception ex)
            {
                result.Message = "加入方案失败！";
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }



        public ActionResult GetMediaPeriodCode(int id)
        {
            var outdoor = outDoorService.Find(id);

            var minPeriodCode = outdoor.PeriodCode;

            var renderRadioList = periodCateService.GetALL().Where(x => x.ID >= minPeriodCode);

            return Json(Utilities.GetSelectListData(renderRadioList,
                x => x.OrderIndex,
                x => x.CateName, false), JsonRequestBehavior.AllowGet);
        }


        #endregion

        #region File

        public ActionResult UpLoadSave(IEnumerable<HttpPostedFileBase> attachments, string status = "upload")
        {
            string res = FileHelper.UpLoadSave(attachments, status);
            return Content(res);
        }

        public ActionResult EditSave(IEnumerable<HttpPostedFileBase> editattachments, int uploadmaxsize = 10240000)
        {
            return UpLoadSave(editattachments);
        }

        public ActionResult UploadListSave(IEnumerable<HttpPostedFileBase> listattachments, int uploadmaxsize = 10240000)
        {
            return UpLoadSave(listattachments);

        }

        public ActionResult UploadListSave2(IEnumerable<HttpPostedFileBase> listattachments2, int uploadmaxsize = 10240000)
        {
            return UpLoadSave(listattachments2);

        }

        public ActionResult UploadListSave3(IEnumerable<HttpPostedFileBase> listattachments3, int uploadmaxsize = 10240000)
        {
            return UpLoadSave(listattachments3);

        }

        public ActionResult UpLoadRemove(string[] fileNames)
        {
            var res = string.Format("{{\"err\":\"\",\"status\":\"remove\"}}");
            return Content(res);
        }

        public ActionResult CropImg(string imgurl, int width, int height, int x, int y, int targetwidth)
        {
            string res = string.Empty;
            string imgPath = Server.MapPath("~" + imgurl);
            if (FileHelper.Crop(imgPath, width, height, x, y, targetwidth))
            {
                res = string.Format("{{\"err\":\"\",\"imgurl\":\"{0}\"}}", FileHelper.GetImgCutpath(imgurl));
            }
            else
            {
                res = string.Format("{{\"err\":\"{0}\"}}", "保存失败！");
            }
            return Content(res);
        }
        #endregion


        public List<AuctionCalendarViewModel> GetAuctionCalendarViewModel(AuctionCalendar model)
        {
            List<AuctionCalendarViewModel> data = new List<AuctionCalendarViewModel>();
            bool hasTwo = false;
            var CurrentYear = DateTime.Now.Year;
            var currentYearFirtDay = new DateTime(CurrentYear, 1, 1);
            var NextYear = DateTime.Now.Year + 1;
            var nextYearFirtDay = new DateTime(NextYear, 1, 1);
            if (model.StartTime < currentYearFirtDay)
            {
                model.StartTime = currentYearFirtDay;
            }
            if (model.StartTime.Year != model.EndTime.Year)
            {
                hasTwo = true;
            }
            if (!hasTwo)
            {
                AuctionCalendarViewModel item = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = (model.EndTime < nextYearFirtDay)
                };
                if (item.Top)
                {
                    item.Left = (model.StartTime - currentYearFirtDay).Days;
                    item.Width = (model.EndTime - model.StartTime).Days;
                }
                else
                {
                    item.Left = (model.StartTime - nextYearFirtDay).Days;
                    item.Width = (model.EndTime - model.StartTime).Days;
                }
                data.Add(item);
            }
            else
            {

                AuctionCalendarViewModel item1 = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = true,
                    HasTwo = true,
                    Left = (model.StartTime - currentYearFirtDay).Days,
                    ShowLeft = true,
                    Width = (new DateTime(CurrentYear, 12, 30) - model.StartTime).Days
                };

                AuctionCalendarViewModel item2 = new AuctionCalendarViewModel()
                {
                    ID = model.ID,
                    EndTime = model.EndTime.ToString("yyyy-MM-dd"),
                    EndDate = model.EndTime.ToString("MM-dd"),
                    MediaID = model.MediaID,
                    StartTime = model.StartTime.ToString("yyyy-MM-dd"),
                    StartDate = model.StartTime.ToString("MM-dd"),
                    Top = false,
                    HasTwo = true,
                    ShowLeft = false,
                    Left = 0,
                    Width = (model.EndTime - new DateTime(NextYear, 1, 1)).Days
                };
                data.Add(item1);
                data.Add(item2);
            }

            return data;

        }


    }
}
