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
    [BaseAuthorize]
    public class GztvipController : Controller
    {
        //
        // GET: /Gztvip/
        private IMemberService memberService;
        private IMember_ActionService member_ActionService;
        private IMember_MessageService member_MessageService;
        private ISys_MessageService sys_MessageService;
        private IMember_VIPService member_VIPService;
        private IMember_MoneyService member_MoneyService;
        private IPayListService payListService;
        private IServerItemService serverItemService;
        private ISliderImgService sliderImgService;
        private ITopMediaService topMediaService;
        private ITopCompanyService topCompanyService;
        private IOutDoorMediaCateService outDoorMediaCateService;
        private IOutDoorService outDoorService;
        private ICompanyService companyService;
        public GztvipController(
            IMemberService _memberService
            , IMember_ActionService _member_ActionService
            , IMember_MessageService _member_MessageService
            , ISys_MessageService _sys_MessageService
            , IMember_VIPService _member_VIPService
            , IMember_MoneyService _member_MoneyService
            , IPayListService _payListService
            , IServerItemService _serverItemService
            , ISliderImgService _sliderImgService
            , ITopMediaService _topMediaService
            , ITopCompanyService _topCompanyService
            , IOutDoorMediaCateService _outDoorMediaCateService
            , IOutDoorService _outDoorService
            , ICompanyService _companyService
            )
        {
            memberService = _memberService;
            member_ActionService = _member_ActionService;
            member_MessageService = _member_MessageService;
            sys_MessageService = _sys_MessageService;
            member_VIPService = _member_VIPService;
            member_MoneyService = _member_MoneyService;
            payListService = _payListService;
            serverItemService = _serverItemService;
            sliderImgService = _sliderImgService;
            topMediaService = _topMediaService;
            topCompanyService = _topCompanyService;
            outDoorMediaCateService = _outDoorMediaCateService;
            outDoorService = _outDoorService;
            companyService = _companyService;
        }

        public ActionResult Index()
        {
            ViewBag.MenuItem = "gztvip-index";
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            var serverType = (int)ServerType.NomarlVIPServer;
            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);
            ViewBag.Money = money;
            if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
            {
                serverType = vip.VipLevel;

            }
            var servers = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType >= serverType).OrderBy(x => x.AddTime).ToList();
            ViewBag.Servers = servers;
            return View(vip);
        }

        public ActionResult Open(int id)
        {
            ViewBag.MenuItem = "gztvip-index";
            var serverType = (int)ServerType.NomarlVIPServer;
            var server = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType >= serverType && x.ID == id).FirstOrDefault();
            if (server == null)
            {
                return HttpNotFound();
            }

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);
            ViewBag.Money = money;

            if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
            {


                if (server.ServerType < vip.VipLevel)
                {
                    return Content("<script>alert('您当前的版本的广知通权益比所选择的要高请选择更高的权益版本的广知通升级!');window.top.location='" + Url.Action("Index") + "';</script>");
                }
                else if (server.ServerType == vip.VipLevel)
                {
                    ViewBag.Renew = true;
                    server.Money = server.Month * 10;
                }
                else
                {
                    ViewBag.Upgrade = true;
                    var day = UIHelper.DateDiff(DateDiffType.Day, DateTime.Now, vip.EndTime);
                    server.Money = day * 2;
                }
            }
            else
            {
                if (vip != null)
                {
                    ViewBag.Renew = true;
                    server.Money = server.Month * 10;
                }
                else
                {
                    ViewBag.FirstTime = true;
                    server.Money = server.Month * 5;
                }
            }
            ViewBag.Server = server;


            return View(vip);
        }

        [HttpPost]

        public ActionResult Open(int ID, int Price)
        {
            ViewBag.MenuItem = "gztvip-index";
            ServiceResult result = new ServiceResult();

            var server = serverItemService.Find(ID);
            try
            {
                if (server == null)
                {
                    return Content("<script>alert('您提交的表单有误!');window.top.location='" + Url.Action("Index") + "';</script>");
                }

                PayList orderItem = new PayList();
                orderItem.Pay_No = Guid.NewGuid();
                orderItem.MemberID = CookieHelper.MemberID;
                orderItem.Money = server.Price;
                orderItem.ServerID = ID;
                orderItem.Mode = "VIPTest";
                orderItem.ProductType = UIHelper.ServerTypeList.Single(x => x.Value == server.ServerType.ToString()).Text;
                orderItem.Status = Pay_State.Applying.ToString();
                orderItem.AddTime = DateTime.Now;
                orderItem.AddIP = HttpHelper.IP;
                payListService.CreateOrder(orderItem);

                result = member_VIPService.PayVIP(CookieHelper.MemberID, server, orderItem);

            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);
            ViewBag.Money = money;

            result.Message = "VIP开通" + (result.Success ? "成功！" : "失败！");

            TempData["Service_Result"] = result;

            ViewBag.Server = server;
            if (result.Success)
            {
                return RedirectToAction("openok");
            }
            return View(vip);

        }


        public ActionResult OpenOK()
        {
            return View();
        }



        public ActionResult PayCz()
        {
            ViewBag.MenuItem = "gztvip-paycz";
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;
            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);
            ViewBag.Money = money;

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult PayCz(int ApplyMoney, string txtMoney)
        {
            ViewBag.MenuItem = "gztvip-paycz";
            ServiceResult result = new ServiceResult();
            if (string.IsNullOrEmpty(txtMoney))
            {
                txtMoney = "0";
            }
            var intMoney = Convert.ToInt32(txtMoney);
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);
            ViewBag.VIP = vip;
            try
            {
                PayList orderItem = new PayList();
                switch (ApplyMoney)
                {
                    case 200:
                    case 500:
                    case 1000:
                        if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
                        {
                            if (vip.VipLevel == (int)ServerType.NomarlVIPServer)
                            {
                                orderItem.VMoney = ApplyMoney / 10;
                            }
                            else if (vip.VipLevel == (int)ServerType.SuperVIPServer)
                            {
                                orderItem.VMoney = ApplyMoney / 5;
                            }
                        }
                        else
                        {
                            orderItem.VMoney = 0;
                        }
                        orderItem.Money = ApplyMoney;
                        break;
                    case 600:
                        orderItem.Money = intMoney;
                        if (vip != null && vip.EndTime.CompareTo(DateTime.Now) > 0)
                        {
                            if (vip.VipLevel == (int)ServerType.NomarlVIPServer)
                            {
                                orderItem.VMoney = intMoney / 10;
                            }
                            else if (vip.VipLevel == (int)ServerType.SuperVIPServer)
                            {
                                orderItem.VMoney = intMoney / 5;
                            }
                        }
                        else
                        {
                            orderItem.VMoney = 0;
                        }
                        break;
                    default:
                        return Content("<script>alert('您提交的表单有误!');window.top.location='" + Url.Action("paycz") + "';</script>");

                }
                orderItem.Pay_No = Guid.NewGuid();
                orderItem.MemberID = CookieHelper.MemberID;
                orderItem.Mode = "GZBCZ";
                orderItem.ProductType = "GZBCZ";
                orderItem.Status = Pay_State.Applying.ToString();
                orderItem.AddTime = DateTime.Now;
                orderItem.AddIP = HttpHelper.IP;
                payListService.CreateOrder(orderItem);
                result = member_VIPService.PayMoney(CookieHelper.MemberID, orderItem);
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            ViewBag.Money = money;

            result.Message = "充值" + (result.Success ? "成功！" : "失败！");

            TempData["Service_Result"] = result;

            if (result.Success)
            {
                return RedirectToAction("OpenOK");
            }

            return View(vip);
        }


        /// <summary>
        /// 置顶服务列表页
        /// </summary>
        /// <returns></returns>
        public ActionResult PayTop()
        {
            ViewBag.MenuItem = "gztvip-paytop";
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;
            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            ViewBag.Money = money;
            var serverType = (int)ServerType.TopServer;

            var servers = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType == serverType).OrderBy(x => x.AddTime).ToList();

            ViewBag.Servers = servers;

            return View();
        }


        public ActionResult TopSet(int id)
        {

            ViewBag.MenuItem = "gztvip-paytop";

            var serverType = (int)ServerType.TopServer;

            var server = serverItemService.GetALL().Where(x => x.EndTime > DateTime.Now && x.ServerType == serverType && x.ID == id).FirstOrDefault();

            if (server == null)
            {
                return HttpNotFound();
            }

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            ViewBag.Server = server;

            ViewBag.VIP = vip;

            ViewBag.Money = money;

            PayTopViewModel payTop = new PayTopViewModel()
            {
                TopID = server.ID,
                Price = server.Price,
                TopName = server.Name
            };

            if (vip == null)
            {
                payTop.Discount = 10;
            }
            else if (vip.VipLevel == (int)ServerType.NomarlVIPServer)
            {
                payTop.Discount = server.VipDiscount;
            }
            else if (vip.VipLevel == (int)ServerType.SuperVIPServer)
            {
                payTop.Discount = server.VipDiscount2;
            }

            #region  GetTopMediaSource

            List<TopLimitModel> topLimit = sliderImgService.GetTopSourceLimit(30);

            List<CustomSelectListItem> select = new List<CustomSelectListItem>();

            var startTime = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day).AddDays(1);

            for (var i = 0; i < 30; i++)
            {

                var day = startTime.AddDays(i);

                var dayString = day.ToString("yyyy-MM-dd");

                if (topLimit.Any(x => x.Time.Equals(dayString)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(dayString));

                    var limitStr = Convert.ToDateTime(limit.Time).ToString("MM-dd");

                    if (limit.Count >= 8)
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Disabled = true,
                            Text = limitStr + " (已售)",
                            Value = limit.Time
                        });
                    }
                    else
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Text = limitStr,
                            Value = limit.Time
                        });
                    }
                }
                else
                {
                    select.Add(new CustomSelectListItem()
                    {
                        Text = day.ToString("MM-dd"),
                        Value = dayString
                    });
                }
            }

            ViewBag.Data_TopTime = select;


            #endregion




            return View(payTop);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult TopSet(PayTopViewModel model)
        {
            ViewBag.MenuItem = "gztvip-paytop";

            ServiceResult result = new ServiceResult();

            var server = serverItemService.Find(model.TopID);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            var dayCount = model.TopTime.Split(',').Length;

            var totalPrice = Convert.ToInt32((server.Price * dayCount * model.Discount / 10));

            if (money < totalPrice)
            {
                result.AddServiceError("您当前剩余广知币不足已支付。当前" + money + "个，支付需要" + totalPrice + "个");
            }

            ViewBag.Money = money;

            List<TopLimitModel> topLimit = sliderImgService.GetTopSourceLimit(30);

            for (var i = 0; i < model.TopTime.Split(',').Length; i++)
            {
                var topitem = model.TopTime.Split(',')[i];

                if (topLimit.Any(x => x.Time.Equals(topLimit)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(topLimit));

                    if (limit.Count >= 8)
                    {
                        result.AddServiceError(topitem + "的置顶已达到最大数，请选择其他日期。");
                    }
                }
            }

            if (result.Success)
            {

                List<SliderImg> payModel = new List<SliderImg>();
                for (var i = 0; i < model.TopTime.Split(',').Length; i++)
                {
                    var topTime = Convert.ToDateTime(model.TopTime.Split(',')[i]);

                    SliderImg payItem = new SliderImg()
                    {
                        MemberID = CookieHelper.MemberID,
                        AddTime = DateTime.Now,
                        TopTime = topTime,
                        ImgUrl = model.ImgUrl,
                        LinkUrl = model.LinkUrl,
                        ProvinceCode = (int)ProvinceName.quanguo,
                        Status = (int)SliderImgStatus.User,
                        Title = model.Name
                    };

                    payModel.Add(payItem);
                }

                var excuteresult = sliderImgService.PayTopSliderImg(payModel, totalPrice);

                if (!excuteresult.Success)
                {
                    result.AddServiceError("置顶失败！");
                }

            }
            else
            {
                #region  GetTopMediaSource

                List<CustomSelectListItem> select = new List<CustomSelectListItem>();

                var startTime = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day).AddDays(1);

                for (var i = 0; i < 30; i++)
                {

                    var day = startTime.AddDays(i);

                    var dayString = day.ToString("yyyy-MM-dd");

                    if (topLimit.Any(x => x.Time.Equals(dayString)))
                    {
                        var limit = topLimit.Single(x => x.Time.Equals(dayString));

                        var limitStr = Convert.ToDateTime(limit.Time).ToString("MM-dd");

                        if (limit.Count >= 8)
                        {
                            select.Add(new CustomSelectListItem()
                            {
                                Disabled = true,
                                Text = limitStr + " (已售)",
                                Value = limit.Time
                            });
                        }
                        else
                        {
                            select.Add(new CustomSelectListItem()
                            {
                                Text = limitStr,
                                Value = limit.Time
                            });
                        }
                    }
                    else
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Text = day.ToString("MM-dd"),
                            Value = dayString
                        });
                    }
                }

                ViewBag.Data_TopTime = select;


                #endregion

                ViewBag.CheckErr = result;
            }

            result.Message = "置顶" + (result.Success ? "成功！" : "失败！");

            TempData["Service_Result"] = result;

            if (result.Success)
            {
                return RedirectToAction("OpenOK");
            }

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;

            return View(model);
        }


        public ActionResult TopMedia(int id)
        {
            ViewBag.MenuItem = "gztvip-paytop";

            var server = serverItemService.Find(id);

            if (server == null)
            {
                return HttpNotFound();
            }

            ViewBag.Server = server;

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            ViewBag.Money = money;

            PayTopMeidaViewModel topMedia = new PayTopMeidaViewModel()
            {
                TopID = server.ID,
                Price = server.Price,
                TopName = server.Name
            };

            if (vip == null)
            {
                topMedia.Discount = 10;
            }
            else if (vip.VipLevel == (int)ServerType.NomarlVIPServer)
            {
                topMedia.Discount = server.VipDiscount;
            }
            else if (vip.VipLevel == (int)ServerType.SuperVIPServer)
            {
                topMedia.Discount = server.VipDiscount2;
            }

            #region  GetTopMediaSource

            List<TopLimitModel> topLimit = topMediaService.GetTopSourceLimit(30);

            List<CustomSelectListItem> select = new List<CustomSelectListItem>();

            var startTime = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day).AddDays(1);

            for (var i = 0; i < 30; i++)
            {

                var day = startTime.AddDays(i);

                var dayString = day.ToString("yyyy-MM-dd");

                if (topLimit.Any(x => x.Time.Equals(dayString)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(dayString));

                    var limitStr = Convert.ToDateTime(limit.Time).ToString("MM-dd");

                    if (limit.Count >= 8)
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Disabled = true,
                            Text = limitStr + " (已售)",
                            Value = limit.Time
                        });
                    }
                    else
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Text = limitStr,
                            Value = limit.Time
                        });
                    }
                }
                else
                {
                    select.Add(new CustomSelectListItem()
                    {
                        Text = day.ToString("MM-dd"),
                        Value = dayString
                    });
                }
            }

            ViewBag.Data_TopTime = select;

            #endregion



            return View(topMedia);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult TopMedia(PayTopMeidaViewModel model)
        {
            ViewBag.MenuItem = "gztvip-paytop";

            ServiceResult result = new ServiceResult();

            var server = serverItemService.Find(model.TopID);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            var dayCount = model.TopTime.Split(',').Length;

            var totalPrice = Convert.ToInt32((server.Price * dayCount * model.Discount / 10));

            if (money < totalPrice)
            {
                result.AddServiceError("您当前剩余广知币不足已支付。当前" + money + "个，支付需要" + totalPrice + "个");
            }
            ViewBag.Money = money;

            List<TopLimitModel> topLimit = topMediaService.GetTopSourceLimit(30);

            for (var i = 0; i < model.TopTime.Split(',').Length; i++)
            {
                var topitem = model.TopTime.Split(',')[i];

                if (topLimit.Any(x => x.Time.Equals(topLimit)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(topLimit));

                    if (limit.Count >= 8)
                    {
                        result.AddServiceError(topitem + "的置顶已达到最大数，请选择其他日期。");
                    }
                }
            }

            if (result.Success)
            {

                List<TopMedia> payModel = new List<TopMedia>();

                var media = outDoorService.IncludeCategoryFind(model.MediaID.Value);

                for (var i = 0; i < model.TopTime.Split(',').Length; i++)
                {
                    var topTime = Convert.ToDateTime(model.TopTime.Split(',')[i]);


                    TopMedia payItem = new TopMedia()
                    {
                        MediaID = model.MediaID.Value,
                        TopTime = topTime,
                        MemberID = CookieHelper.MemberID
                    };

                    payItem.IsQuanGuo = server.IsQuanGuo;

                    payItem.IsByCategory = server.IsByCategory;

                    payItem.IsByChildCategory = server.IsByChildCategory;


                    payItem.ProvinceCode = media.Area.PCategory.ID;

                    payItem.CategoryCode = media.MeidaCode;

                    payItem.PCategoryCode = media.OutDoorMediaCate.PCategory.ID;


                    payModel.Add(payItem);
                }

                var excuteresult = topMediaService.PayTopMedia(payModel, totalPrice);

                if (!excuteresult.Success)
                {
                    result.AddServiceError("置顶失败！");
                }

            }
            else
            {
                ViewBag.CheckErr = result;
            }
            result.Message = "置顶" + (result.Success ? "成功！" : "失败！");

            TempData["Service_Result"] = result;

            if (result.Success)
            {
                return RedirectToAction("OpenOK");
            }
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;

            ViewBag.Server = server;

            return View(model);
        }

        public ActionResult TopCompany(int id)
        {

            ViewBag.MenuItem = "gztvip-paytop";

            var server = serverItemService.Find(id);

            if (server == null)
            {
                return HttpNotFound();
            }
            ViewBag.Server = server;

            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            ViewBag.Money = money;

            PayTopComapnyViewModel topComapny = new PayTopComapnyViewModel()
            {
                TopID = server.ID,
                Price = server.Price,
                TopName = server.Name
            };

            if (vip == null)
            {
                topComapny.Discount = 10;
            }
            else if (vip.VipLevel == (int)ServerType.NomarlVIPServer)
            {
                topComapny.Discount = server.VipDiscount;
            }
            else if (vip.VipLevel == (int)ServerType.SuperVIPServer)
            {
                topComapny.Discount = server.VipDiscount2;
            }

            #region  GetTopMediaSource


            List<TopLimitModel> topLimit = topCompanyService.GetTopSourceLimit(30);

            List<CustomSelectListItem> select = new List<CustomSelectListItem>();

            var startTime = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day).AddDays(1);

            for (var i = 0; i < 30; i++)
            {

                var day = startTime.AddDays(i);

                var dayString = day.ToString("yyyy-MM-dd");

                if (topLimit.Any(x => x.Time.Equals(dayString)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(dayString));

                    var limitStr = Convert.ToDateTime(limit.Time).ToString("MM-dd");

                    if (limit.Count >= 8)
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Disabled = true,
                            Text = limitStr + " (已售)",
                            Value = limit.Time
                        });
                    }
                    else
                    {
                        select.Add(new CustomSelectListItem()
                        {
                            Text = limitStr,
                            Value = limit.Time
                        });
                    }
                }
                else
                {
                    select.Add(new CustomSelectListItem()
                    {
                        Text = day.ToString("MM-dd"),
                        Value = dayString
                    });
                }
            }

            ViewBag.Data_TopTime = select;

            #endregion


            return View(topComapny);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult TopCompany(PayTopComapnyViewModel model)
        {
            ViewBag.MenuItem = "gztvip-paytop";

            ServiceResult result = new ServiceResult();

            var server = serverItemService.Find(model.TopID);

            var money = member_MoneyService.GetMemberMoney(CookieHelper.MemberID);

            var dayCount = model.TopTime.Split(',').Length;

            var totalPrice = Convert.ToInt32((server.Price * dayCount * model.Discount / 10));

            if (money < totalPrice)
            {
                result.AddServiceError("您当前剩余广知币不足已支付。当前" + money + "个，支付需要" + totalPrice + "个");
            }
            ViewBag.Money = money;

            List<TopLimitModel> topLimit = topCompanyService.GetTopSourceLimit(30);

            for (var i = 0; i < model.TopTime.Split(',').Length; i++)
            {
                var topitem = model.TopTime.Split(',')[i];

                if (topLimit.Any(x => x.Time.Equals(topLimit)))
                {
                    var limit = topLimit.Single(x => x.Time.Equals(topLimit));

                    if (limit.Count >= 8)
                    {
                        result.AddServiceError(topitem + "的置顶已达到最大数，请选择其他日期。");
                    }
                }
            }

            if (result.Success)
            {

                List<TopCompany> payModel = new List<TopCompany>();

                var company = companyService.IncludeCategoryFind(CookieHelper.MemberID);

                for (var i = 0; i < model.TopTime.Split(',').Length; i++)
                {
                    var topTime = Convert.ToDateTime(model.TopTime.Split(',')[i]);

                    TopCompany payItem = new TopCompany()
                    {
                        TopTime = topTime,
                        MemberID = CookieHelper.MemberID
                    };

                    payItem.IsQuanGuo = server.IsQuanGuo;

                    payItem.ProvinceCode = company.Area.PCategory.ID;

                    payModel.Add(payItem);
                }

                var excuteresult = topCompanyService.PayTopCompany(payModel, totalPrice);

                if (!excuteresult.Success)
                {
                    result.AddServiceError("置顶失败！");
                }

            }
            else
            {
                ViewBag.CheckErr = result;
            }
            result.Message = "置顶" + (result.Success ? "成功！" : "失败！");

            TempData["Service_Result"] = result;

            if (result.Success)
            {
                return RedirectToAction("OpenOK");
            }
            var vip = member_VIPService.GetMemberVIP(CookieHelper.MemberID, true);

            ViewBag.VIP = vip;

            ViewBag.Server = server;

            return View(model);
        }

        public ActionResult CreateOrder()
        {
            PayList orderItem = new PayList();
            orderItem.Pay_No = Guid.NewGuid();
            orderItem.MemberID = CookieHelper.MemberID;
            orderItem.Money = 800;
            orderItem.VMoney = 200;
            orderItem.Mode = "VIPTest";
            orderItem.ProductType = "VIP1";
            orderItem.Status = Pay_State.Applying.ToString();
            orderItem.AddTime = DateTime.Now;
            orderItem.AddIP = HttpHelper.IP;
            payListService.CreateOrder(orderItem);
            ViewBag.PayNo = orderItem.Pay_No;
            return View();
        }


        public ActionResult UpdateOrder()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UpdateOrder(string Pay_No)
        {
            PayStatusViewModel PayStatus = new PayStatusViewModel();
            PayStatus.Pay_No = Pay_No;
            PayStatus.Buy_Email = CookieHelper.Email;
            PayStatus.Buy_ID = CookieHelper.UID;
            PayStatus.Trade_No = "29038423784523849573247856";
            PayStatus.Status = Pay_State.ApplyOk.ToString();
            payListService.UpdateOrder(PayStatus);
            return View();
        }

    }
}
