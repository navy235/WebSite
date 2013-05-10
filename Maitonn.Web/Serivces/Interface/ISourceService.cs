using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface ISourceService
    {

        List<HttpLinkGroup> GetLeftMenu(int province);

        List<HttpLinkGroup> GetProvinceList(int province);

        List<HttpLinkItem> GetSlider(int province, int take);

        List<HttpLinkItem> GetSuggestMedia(bool isQuanGuo,int province, int take, int PCategoryCode = 0, int CategoryCode = 0);

        List<HttpLinkItem> GetGoodMedia(int province, int take, int PCategoryCode = 0, int CategoryCode = 0);

        List<HttpLinkItem> GetAuthMedia(int province, int take, int PCategoryCode = 0, int CategoryCode = 0);

        List<HttpLinkItem> GetNewMedia(int province, int take, int PCategoryCode = 0, int CategoryCode = 0);

        List<HttpLinkItem> GetSuggestCompany(bool isQuanGuo, int province, int take, int PCategoryCode = 0, int CategoryCode = 0);

        List<HttpLinkItem> GetGoodCompany(int province, int take);


    }
}