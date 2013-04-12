using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;


namespace Maitonn.Web
{
    public static class HtmlExtensions
    {
        public static MvcHtmlString MaitonnPage(this HtmlHelper html, PagingInfo pagingInfo, string routeName = null)
        {
            if (pagingInfo.TotalPages <= 0)
            {
                return MvcHtmlString.Empty;
            }
            var container = new TagBuilder("div");
            container.AddCssClass("list-page-split");
            #region prev page
            TagBuilder prepage;
            if (pagingInfo.CurrentPage == 1)
            {
                prepage = new TagBuilder("span");
            }
            else
            {
                prepage = new TagBuilder("a");
                prepage.MergeAttribute("href", GenerateUrl(html, pagingInfo.CurrentPage - 1, routeName));
            }
            prepage.AddCssClass("prev");
            prepage.InnerHtml = "<i></i>上一页";
            container.InnerHtml += prepage.ToString();
            #endregion


            #region inner page
            bool leftqujian = false;
            bool rightqujian = false;
            for (int i = 1; i <= pagingInfo.TotalPages; i++)
            {
                if (pagingInfo.CurrentPage - i >= 2 && i > 1)
                {
                    if (!leftqujian)
                    {
                        TagBuilder dotted = new TagBuilder("span");
                        dotted.InnerHtml = "...";
                        dotted.AddCssClass("dotted");
                        container.InnerHtml += dotted.ToString();
                        leftqujian = true;
                    }
                }
                else if (i - pagingInfo.CurrentPage >= 2 && i < pagingInfo.TotalPages)
                {
                    if (!rightqujian)
                    {
                        TagBuilder dotted = new TagBuilder("span");
                        dotted.InnerHtml = "...";
                        dotted.AddCssClass("dotted");
                        container.InnerHtml += dotted.ToString();
                        rightqujian = true;
                    }
                }
                else
                {
                    if (i == pagingInfo.CurrentPage)
                    {
                        TagBuilder currentPagebtn = new TagBuilder("span");
                        currentPagebtn.InnerHtml = i.ToString();
                        container.InnerHtml += currentPagebtn.ToString();
                    }
                    else
                    {
                        TagBuilder tag = new TagBuilder("a"); // Construct an <a> tag
                        tag.MergeAttribute("href", GenerateUrl(html, i, routeName));
                        tag.InnerHtml = i.ToString();
                        container.InnerHtml += tag.ToString();
                    }
                }
            }
            #endregion


            #region next page
            TagBuilder nextpage;
            if (pagingInfo.CurrentPage == pagingInfo.TotalPages)
            {
                nextpage = new TagBuilder("span");
            }
            else
            {
                nextpage = new TagBuilder("a");
                nextpage.MergeAttribute("href", GenerateUrl(html, pagingInfo.CurrentPage + 1, routeName));
            }
            nextpage.AddCssClass("next");
            nextpage.InnerHtml = "<i></i>下一页";
            container.InnerHtml += nextpage.ToString();

            #endregion

            #region page box

            TagBuilder listPageTip = new TagBuilder("span");
            listPageTip.AddCssClass("list-page-tip");
            listPageTip.SetInnerText("到第");
            container.InnerHtml += listPageTip.ToString();

            TagBuilder listPageJump = new TagBuilder("input");
            listPageJump.AddCssClass("list-page-jump");
            listPageJump.MergeAttribute("data-url", GenerateUrl(html, 1, routeName));
            listPageJump.MergeAttribute("data-maxpage", pagingInfo.TotalPages.ToString());

            container.InnerHtml += listPageJump.ToString();


            TagBuilder listPageTip2 = new TagBuilder("span");
            listPageTip2.AddCssClass("list-page-tip");
            listPageTip2.SetInnerText("页");

            container.InnerHtml += listPageTip2.ToString();

            TagBuilder jumpPage = new TagBuilder("a");
            jumpPage.AddCssClass("list-page-btn");
            jumpPage.SetInnerText("确定");
            jumpPage.MergeAttribute("href", "javascript:void(0);");

            container.InnerHtml += jumpPage.ToString();

            TagBuilder pageScripts = new TagBuilder("script");

            StringBuilder scriptBuilder = new StringBuilder();

            scriptBuilder.Append(@"
            $(function(){
               $('.list-page-btn').click(function(){
                   var $pageBox=$(this).siblings('.list-page-jump');
                   var page=$pageBox.val();
                   if(page===''){
                      $pageBox.focus();
                   }else{
                       var maxpage=$pageBox.data('maxpage');
                       var url=$pageBox.data('url');
                       page=page>maxpage?maxpage:page;
                       url=url.replace(/p_(\d+)/,'p_'+page);
                       window.location.href=url;
                   }
                });
                $('.list-page-jump').keyup(function(){
                    var value=$(this).val();
                    if(isNaN(value)||value<=0){
                        $(this).val('');    
                    }
                });
                $('.list-page-jump').keydown(function(e){
                    if (e.keyCode === 13) {
                         $('.list-page-btn').click();
                    }
                });
            })");
            pageScripts.InnerHtml = scriptBuilder.ToString();

            container.InnerHtml += pageScripts.ToString();

            #endregion
            return MvcHtmlString.Create(container.ToString());
        }

        /// <summary>
        /// generate paging url
        /// </summary>
        /// <param name="pageIndex">page index to generate navigate url</param>
        /// <returns>navigated url for pager item</returns>
        private static string GenerateUrl(HtmlHelper html, int page, string routeName)
        {
            //return null if  page index larger than total page count or page index is current page index

            var routeValues = new RouteValueDictionary();

            routeValues["page"] = page;

            var rq = html.ViewContext.HttpContext.Request.QueryString;

            foreach (string key in rq.Keys)
            {
                if (key != "page")
                    routeValues[key] = rq[key];
            }

            // Add action
            routeValues["action"] = (string)html.ViewContext.RouteData.Values["action"];
            // Add controller
            routeValues["controller"] = (string)html.ViewContext.RouteData.Values["controller"];
            // Return link
            var urlHelper = new UrlHelper(html.ViewContext.RequestContext);
            if (!String.IsNullOrEmpty(routeName))
                return urlHelper.RouteUrl(routeName, routeValues);

            return urlHelper.RouteUrl(routeValues);

        }

    }


    public class PagingInfo
    {
        public int TotalItems { get; set; }
        public int ItemsPerPage { get; set; }
        public int CurrentPage { get; set; }
        public int TotalPages
        {
            get { return (int)Math.Ceiling((decimal)TotalItems / ItemsPerPage); }
        }
    }
}