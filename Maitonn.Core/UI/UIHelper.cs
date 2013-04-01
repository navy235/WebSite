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

        public static List<SelectListItem> OutDoorStatusList { get; set; }

        public static List<SelectListItem> ProvinceList { get; set; }

        static UIHelper()
        {
            singleStone = new UIHelper();
            InitSexList();
            InitCompanyStatusList();
            InitOutDoorStatusList();
            InitProvinceList();

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

        private static void InitOutDoorStatusList()
        {
            OutDoorStatusList = new List<SelectListItem>();
            OutDoorStatusList.Add(new SelectListItem() { Text = "已删除", Value = ((int)OutDoorStatus.Deleted).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "审核失败", Value = ((int)OutDoorStatus.VerifyFailed).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "待审核", Value = ((int)OutDoorStatus.PreVerify).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "审核通过", Value = ((int)OutDoorStatus.Verified).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "未显示", Value = ((int)OutDoorStatus.NoShow).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "显示中", Value = ((int)OutDoorStatus.ShowOnline).ToString() });
            OutDoorStatusList.Add(new SelectListItem() { Text = "置顶中", Value = ((int)OutDoorStatus.Top).ToString() });
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

    }
}
