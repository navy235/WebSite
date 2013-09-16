using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;
using System.Web.Mvc;
namespace Maitonn.Core
{
    [Serializable]
    public class UIHelper
    {
        public static readonly UIHelper singleStone;

        public static List<SelectListItem> SexList { get; set; }

        public static List<SelectListItem> CompanyStatusList { get; set; }

        public static List<SelectListItem> CompanyNoticeStatusList { get; set; }

        public static List<SelectListItem> CompanyMessageStatusList { get; set; }

        public static List<SelectListItem> OutDoorStatusList { get; set; }

        public static List<SelectListItem> TimeList { get; set; }

        public static List<SelectListItem> ProvinceList { get; set; }

        public static List<SelectListItem> PriceList { get; set; }

        public static List<SelectListItem> ServerTypeList { get; set; }

        public static List<SelectListItem> TopTypeList { get; set; }

        public static List<SelectListItem> SliderImgStatusList { get; set; }

        public static List<SelectListItem> MessageTypeList { get; set; }

     

        static UIHelper()
        {
            singleStone = new UIHelper();
            InitSexList();
            InitCompanyStatusList();
            InitCompanyNoticeStatusList();
            InitCompanyMessageStatusList();
            InitOutDoorStatusList();
            InitProvinceList();
            InitTimeList();
            InitPriceList();
            InitServerTypeList();
            InitTopTypeList();
            InitSliderImgStatusList();
            InitMessageTypeList();
  

        }
        private static void InitSexList()
        {
            SexList = new List<SelectListItem>();
            SexList.Add(new SelectListItem() { Text = "男", Value = "0" });
            SexList.Add(new SelectListItem() { Text = "女", Value = "1" });
        }

        private static void InitCompanyStatusList()
        {
            CompanyStatusList = new List<SelectListItem>();
            CompanyStatusList.Add(new SelectListItem() { Text = "待审核", Value = ((int)CompanyStatus.CompanyApply).ToString() });
            CompanyStatusList.Add(new SelectListItem() { Text = "审核通过", Value = ((int)CompanyStatus.CompanyAuth).ToString() });
        }

        private static void InitCompanyNoticeStatusList()
        {
            CompanyNoticeStatusList = new List<SelectListItem>();
            CompanyNoticeStatusList.Add(new SelectListItem() { Text = "已删除", Value = ((int)CompanyNoticeStatus.Delete).ToString() });
            CompanyNoticeStatusList.Add(new SelectListItem() { Text = "未显示", Value = ((int)CompanyNoticeStatus.NotShow).ToString() });
            CompanyNoticeStatusList.Add(new SelectListItem() { Text = "显示中", Value = ((int)CompanyNoticeStatus.ShowOnLine).ToString() });
        }


        private static void InitCompanyMessageStatusList()
        {
            CompanyMessageStatusList = new List<SelectListItem>();
            CompanyMessageStatusList.Add(new SelectListItem() { Text = "已删除", Value = ((int)CompanyMessageStatus.Delete).ToString() });
            CompanyMessageStatusList.Add(new SelectListItem() { Text = "未显示", Value = ((int)CompanyMessageStatus.NotShow).ToString() });
            CompanyMessageStatusList.Add(new SelectListItem() { Text = "显示中", Value = ((int)CompanyMessageStatus.ShowOnLine).ToString() });
        }


        private static void InitOutDoorStatusList()
        {
            OutDoorStatusList = new List<SelectListItem>();
            OutDoorStatusList.Add(new SelectListItem() { Text = "已删除", Value = ((int)OutDoorStatus.Deleted).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "审核失败", Value = ((int)OutDoorStatus.VerifyFailed).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "待审核", Value = ((int)OutDoorStatus.PreVerify).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "审核通过", Value = ((int)OutDoorStatus.Verified).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "未显示", Value = ((int)OutDoorStatus.NoShow).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "显示中", Value = ((int)OutDoorStatus.ShowOnline).ToString() });

        }

        private static void InitProvinceList()
        {
            ProvinceList = new List<SelectListItem>();
            ProvinceList.Add(new SelectListItem() { Text = "全国", Value = "quanguo" });
            ProvinceList.Add(new SelectListItem() { Text = "北京", Value = "beijing" });
            ProvinceList.Add(new SelectListItem() { Text = "上海", Value = "shanghai" });
            ProvinceList.Add(new SelectListItem() { Text = "天津", Value = "tianjing" });
            ProvinceList.Add(new SelectListItem() { Text = "重庆", Value = "chongqing" });
            ProvinceList.Add(new SelectListItem() { Text = "河北", Value = "hebei" });
            ProvinceList.Add(new SelectListItem() { Text = "山西", Value = "shanxi" });
            ProvinceList.Add(new SelectListItem() { Text = "内蒙古", Value = "neimenggu" });
            ProvinceList.Add(new SelectListItem() { Text = "辽宁", Value = "liaoling" });
            ProvinceList.Add(new SelectListItem() { Text = "吉林", Value = "jielin" });
            ProvinceList.Add(new SelectListItem() { Text = "黑龙江", Value = "heilongjiang" });
            ProvinceList.Add(new SelectListItem() { Text = "江苏", Value = "jiangsu" });
            ProvinceList.Add(new SelectListItem() { Text = "浙江", Value = "zhejiang" });
            ProvinceList.Add(new SelectListItem() { Text = "安徽", Value = "anhui" });
            ProvinceList.Add(new SelectListItem() { Text = "福建", Value = "fujian" });
            ProvinceList.Add(new SelectListItem() { Text = "江西", Value = "jiangxi" });
            ProvinceList.Add(new SelectListItem() { Text = "山东", Value = "shandong" });
            ProvinceList.Add(new SelectListItem() { Text = "河南", Value = "henan" });
            ProvinceList.Add(new SelectListItem() { Text = "湖北", Value = "hubei" });
            ProvinceList.Add(new SelectListItem() { Text = "湖南", Value = "hunan" });
            ProvinceList.Add(new SelectListItem() { Text = "广东", Value = "guangdong" });
            ProvinceList.Add(new SelectListItem() { Text = "广西", Value = "guangxi" });
            ProvinceList.Add(new SelectListItem() { Text = "海南", Value = "hainan" });
            ProvinceList.Add(new SelectListItem() { Text = "四川", Value = "sichuan" });
            ProvinceList.Add(new SelectListItem() { Text = "贵州", Value = "guizhou" });
            ProvinceList.Add(new SelectListItem() { Text = "云南", Value = "yunnan" });
            ProvinceList.Add(new SelectListItem() { Text = "西藏", Value = "xizang" });
            ProvinceList.Add(new SelectListItem() { Text = "陕西", Value = "shanxisheng" });
            ProvinceList.Add(new SelectListItem() { Text = "甘肃", Value = "gansu" });
            ProvinceList.Add(new SelectListItem() { Text = "青海", Value = "qinghai" });
            ProvinceList.Add(new SelectListItem() { Text = "宁夏", Value = "ningxia" });
            ProvinceList.Add(new SelectListItem() { Text = "新疆", Value = "xinjiang" });
            ProvinceList.Add(new SelectListItem() { Text = "香港", Value = "xianggang" });
            ProvinceList.Add(new SelectListItem() { Text = "澳门", Value = "aomen" });
            ProvinceList.Add(new SelectListItem() { Text = "台湾", Value = "taiwan" });


        }

        public static void InitTimeList()
        {
            TimeList = new List<SelectListItem>();
            for (int i = 0; i < 48; i++)
            {
                TimeList.Add(new SelectListItem()
                {
                    Text = ((i * 30) / 60).ToString().Length == 1 ? "0" + ((i * 30) / 60) + ((i % 2 == 0) ? ":00" : ":30") : ((i * 30) / 60).ToString() + ((i % 2 == 0) ? ":00" : ":30"),
                    Value = (i * 30).ToString()
                });
            }
        }

        private static void InitPriceList()
        {
            PriceList = new List<SelectListItem>();
            PriceList.Add(new SelectListItem() { Text = "价格区间", Value = ((int)PriceListType.Default).ToString() });
            PriceList.Add(new SelectListItem() { Text = "10万以下", Value = ((int)PriceListType.Price10Lower).ToString() });
            PriceList.Add(new SelectListItem() { Text = "10~50万元", Value = ((int)PriceListType.Price50Lower).ToString() });
            PriceList.Add(new SelectListItem() { Text = "50~100万元", Value = ((int)PriceListType.Price100Lower).ToString() });
            PriceList.Add(new SelectListItem() { Text = "100~200万元", Value = ((int)PriceListType.Price200Lower).ToString() });
            PriceList.Add(new SelectListItem() { Text = "200万元以上", Value = ((int)PriceListType.PriceMax).ToString() });
        }

        private static void InitServerTypeList()
        {
            ServerTypeList = new List<SelectListItem>();
            ServerTypeList.Add(new SelectListItem() { Text = "置顶服务", Value = ((int)ServerType.TopServer).ToString() });
            ServerTypeList.Add(new SelectListItem() { Text = "广知通普通版", Value = ((int)ServerType.NomarlVIPServer).ToString() });
            ServerTypeList.Add(new SelectListItem() { Text = "广知通黄金版", Value = ((int)ServerType.SuperVIPServer).ToString() });
        }

        private static void InitTopTypeList()
        {
            TopTypeList = new List<SelectListItem>();
            TopTypeList.Add(new SelectListItem() { Text = "非顶置类型", Value = ((int)TopType.NoTop).ToString() });
            TopTypeList.Add(new SelectListItem() { Text = "首页轮播图", Value = ((int)TopType.SliderImg).ToString() });
            TopTypeList.Add(new SelectListItem() { Text = "媒体信息", Value = ((int)TopType.Media).ToString() });
            TopTypeList.Add(new SelectListItem() { Text = "企业信息", Value = ((int)TopType.Company).ToString() });
        }

        private static void InitSliderImgStatusList()
        {
            SliderImgStatusList = new List<SelectListItem>();

            SliderImgStatusList.Add(new SelectListItem() { Text = "用户置顶", Value = ((int)SliderImgStatus.User).ToString() });
            SliderImgStatusList.Add(new SelectListItem() { Text = "系统置顶", Value = ((int)SliderImgStatus.System).ToString() });
        }


        private static void InitMessageTypeList()
        {
            MessageTypeList = new List<SelectListItem>();

            MessageTypeList.Add(new SelectListItem() { Text = "系统消息", Value = ((int)MessageType.System).ToString() });
            MessageTypeList.Add(new SelectListItem() { Text = "用户消息", Value = ((int)MessageType.Member).ToString() });
            MessageTypeList.Add(new SelectListItem() { Text = "消息回复", Value = ((int)MessageType.Reply).ToString() });
        }

      

        public static string GetTime(string timeValue)
        {
            return TimeList.Single(x => x.Value.Equals(timeValue, StringComparison.CurrentCultureIgnoreCase)).Text;
        }




        public static List<SelectListItem> getDictionary(string key)
        {
            List<SelectListItem> dy = new List<SelectListItem>();
            var Dictionary = singleStone.GetType().GetProperty(key, BindingFlags.Static | BindingFlags.Public);
            dy = (List<SelectListItem>)Dictionary.GetValue(singleStone, null);
            return dy;
        }

        public static List<SelectListItem> getDictionary(string key, string values)
        {
            List<SelectListItem> dy = new List<SelectListItem>();
            var Dictionary = singleStone.GetType().GetProperty(key, BindingFlags.Static | BindingFlags.Public);
            dy = (List<SelectListItem>)Dictionary.GetValue(singleStone, null);
            string[] valueArray = string.IsNullOrEmpty(values) ? new string[0] : values.Split(',');
            foreach (SelectListItem item in dy)
            {
                bool select = false;
                foreach (string s in valueArray)
                {
                    if (item.Value == s)
                    {
                        select = true;
                    }
                }
                if (select)
                {
                    item.Selected = true;
                }
            }
            return dy;
        }



        public static string GetImgUrl(string imgUrl, ImgUrlType urlType)
        {
            string url = imgUrl;
            imgUrl = imgUrl.Replace("_small", "");
            imgUrl = imgUrl.Replace("_120", "");
            imgUrl = imgUrl.Replace("_430", "");
            imgUrl = imgUrl.Replace("_800", "");
            string imgPreUrl = imgUrl.Substring(0, imgUrl.LastIndexOf('.'));
            string imgExtesion = imgUrl.Substring(imgUrl.LastIndexOf('.'));
            switch (urlType)
            {
                case ImgUrlType.Orginal:
                    break;
                case ImgUrlType.Small:
                    url = imgPreUrl + "_small" + imgExtesion;
                    break;
                case ImgUrlType.Img120:
                    url = imgPreUrl + "_120" + imgExtesion;
                    break;
                case ImgUrlType.Img430:
                    url = imgPreUrl + "_430" + imgExtesion;
                    break;
                case ImgUrlType.Img800:
                    url = imgPreUrl + "_800" + imgExtesion;
                    break;
                default:
                    break;
            }
            return url;
        }


        public static int DateDiff(DateDiffType type, DateTime StartTime, DateTime EndTime)
        {
            if (StartTime.CompareTo(EndTime) > 0)
            {
                return 0;
            }
            switch (type)
            {
                case DateDiffType.Year:
                    return EndTime.Year - StartTime.Year;
                case DateDiffType.Month:
                    return Convert.ToInt32((EndTime - StartTime).TotalDays) / 30;
                case DateDiffType.Day:
                    return Convert.ToInt32((EndTime - StartTime).TotalDays);
                case DateDiffType.Min:
                    return Convert.ToInt32((EndTime - StartTime).TotalMinutes);
                case DateDiffType.Second:
                    return Convert.ToInt32((EndTime - StartTime).TotalSeconds);
                default:
                    return 0;
            }

        }

        public static string GetCityName()
        {
            if (CookieHelper.Province.Equals(ProvinceName.quanguo.ToString()))
            {
                return "北京";
            }
            else
            {
                return UIHelper.ProvinceList.Single(x => x.Value.Equals(CookieHelper.Province, StringComparison.CurrentCultureIgnoreCase)).Text;
            }
        }


    }
}
