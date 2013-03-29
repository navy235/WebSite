using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Maitonn.Core
{

    public class EnumHelper
    {

        public static int GetProvinceValue(string Province)
        {
            return (int)((ProvinceName)Enum.Parse(typeof(ProvinceName), Province, true));
        }
    }

    public enum ProvinceName
    {
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
        taiwan = 34,
        quanguo = 35
    }

    public enum MemberStatus
    {
        Registered = 1,
        EmailActived = 2,
        CompanyApply = 3,
        CompanyAuth = 4
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
}
