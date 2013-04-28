using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Maitonn.Core
{

    public class EnumHelper
    {

        public static int GetProvinceValue(string Province)
        {
            return (int)((ProvinceName)Enum.Parse(typeof(ProvinceName), Province, true));
        }

        public static List<SelectListItem> GetProvinceList(string Province)
        {
            var _ProvinceList = new List<SelectListItem>();
            _ProvinceList = (from ProvinceName e in Enum.GetValues(typeof(ProvinceName))
                             select new SelectListItem()
                             {
                                 Text = UIHelper.ProvinceList.Single(x => x.Value == e.ToString()).Text,
                                 Value = e.ToString(),
                                 Selected = e.ToString() == Province
                             }).ToList();
            return _ProvinceList;
        }

        public static IntRangeValue GetPriceValue(int price)
        {
            PriceListType CurrentType = (PriceListType)price;
            switch (CurrentType)
            {
                case PriceListType.Default:
                    return new IntRangeValue() { Min = 0, Max = (int)PriceListType.PriceMax };

                case PriceListType.Price10Lower:
                    return new IntRangeValue() { Min = 0, Max = (int)PriceListType.Price10Lower };

                case PriceListType.Price50Lower:
                    return new IntRangeValue() { Min = (int)PriceListType.Price10Lower, Max = (int)PriceListType.Price50Lower };

                case PriceListType.Price100Lower:
                    return new IntRangeValue() { Min = (int)PriceListType.Price50Lower, Max = (int)PriceListType.Price100Lower };

                case PriceListType.Price200Lower:
                    return new IntRangeValue() { Min = (int)PriceListType.Price100Lower, Max = (int)PriceListType.Price200Lower };

                case PriceListType.PriceMax:
                    return new IntRangeValue() { Min = (int)PriceListType.Price200Lower, Max = (int)PriceListType.PriceMax };
                default:
                    return new IntRangeValue() { Min = 0, Max = (int)PriceListType.PriceMax };
            }
        }

    }

    public class IntRangeValue
    {
        public int Min { get; set; }
        public int Max { get; set; }
    }

    public enum ProvinceName
    {
        quanguo = 35,
        beijing = 1,
        shanghai = 2,
        tianjing = 3,
        chongqing = 4,
        hebei = 5,
        shanxi = 6,
        neimenggu = 7,
        liaoling = 8,
        jielin = 9,
        heilongjiang = 10,
        jiangsu = 11,
        zhejiang = 12,
        anhui = 13,
        fujian = 14,
        jiangxi = 15,
        shandong = 16,
        henan = 17,
        hubei = 18,
        hunan = 19,
        guangdong = 20,
        guangxi = 21,
        hainan = 22,
        sichuan = 23,
        guizhou = 24,
        yunnan = 25,
        xizang = 26,
        shanxisheng = 27,
        gansu = 28,
        qinghai = 29,
        ningxia = 30,
        xinjiang = 31,
        xianggang = 32,
        aomen = 33,
        taiwan = 34

    }

    public enum MemberStatus
    {
        Registered = 1,
        EmailActived = 2,
        CompanyFailed = 3,
        CompanyApply = 4,
        CompanyAuth = 5
    }

    public enum MemberActionType
    {
        Login = 3,
        LogOut = 4,
        GetPassword = 5,
        EmailActvie = 6,
        CompanyApply = 7,
        CompanyReApply = 8
    }

    public enum CompanyStatus
    {
        CompanyFailed = 0,
        CompanyApply = 1,
        CompanyAuth = 2
    }

    public enum OutDoorStatus
    {
        Deleted = -1,
        VerifyFailed = 0,
        PreVerify = 1,
        Verified = 2,
        NoShow = 3,
        ShowOnline = 4,
        Top = 9
    }

    public enum OpenLoginType
    {
        QQ = 1,
        Sina = 2,
        Taobao = 3,
        Douban = 4,
        Renren = 5
    }

    public enum AlertType
    {
        success = 1,
        error = 2,
        danger = 3,
        info = 4,
        block = 5
    }

    public enum SliderTabBoxType
    {
        Specialprice = 1,
        TodaySuggest = 2,
        WeekHot = 3,
        NewProduct = 4
    }


    public enum ImgUrlType
    {
        Orginal = 1,
        Small = 2,
        Img120 = 3,
        Img430 = 4,
        Img800 = 5
    }

    public enum CompanyNoticeStatus
    {
        Delete = 0,
        NotShow = 1,
        ShowOnLine = 2
    }

    public enum CompanyMessageStatus
    {
        Delete = 0,
        NotShow = 1,
        ShowOnLine = 2
    }

    public enum PriceListType
    {
        Default = 0,
        Price10Lower = 10,
        Price50Lower = 50,
        Price100Lower = 100,
        Price200Lower = 200,
        PriceMax = 9000,
    }


    public enum Sys_MessageStatus
    {
        Delete = 0,
        Show = 1
    }

    public enum Member_MessageStatus
    {
        Delete = 0,
        Show = 1
    }

    public enum Pay_State
    {
        Applying,
        ApplyOk,
        ApplyFail
    }

    public enum Pay_Type
    {
        VIP,
        VIP2,
        CZ,
        ZD
    }

    public enum Pay_Mode
    {
        ZFB,
        WY
    }


    public enum ServerType
    {
        TopServer = 1,
        NomarlVIPServer = 2,
        SuperVIPServer = 3,

    }

    public enum TopType
    {
        NoTop = 0,
        SliderImg = 1,
        Media = 2,
        Company = 3
    }

    public enum DateDiffType
    {
        Year = 1,
        Month = 2,
        Day = 3,
        Min = 4,
        Second = 5
    }


    public enum SliderImgStatus
    {
        User = 1,
        System = 2
    }


}
