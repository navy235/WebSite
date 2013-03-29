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


        static UIHelper()
        {
            singleStone = new UIHelper();
            InitSexList();
            InitCompanyStatusList();
            InitOutDoorStatusList();

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
