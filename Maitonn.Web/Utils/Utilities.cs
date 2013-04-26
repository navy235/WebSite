using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Maitonn.Web
{
    public class Utilities
    {
        public static IList<SelectListItem> GetSelectListData<T>(IEnumerable<T> entities, Func<T, object> funcToGetValue, Func<T, object> funcToGetText, bool addDefaultSelectItem = true)
        {
            var eList = entities
                   .Select(x => new SelectListItem
                   {
                       Value = funcToGetValue(x).ToString(),
                       Text = funcToGetText(x).ToString()
                   }).ToList();

            if (addDefaultSelectItem)
                eList.Insert(0, new SelectListItem { Selected = true, Text = "请选择", Value = null });

            return eList;
        }

        public static SelectList CreateSelectList<T>(IEnumerable<T> entities, Func<T, object> funcToGetValue, Func<T, object> funcToGetText, bool addDefaultSelectItem = true)
        {
            return new SelectList(GetSelectListData(entities, funcToGetValue, funcToGetText, true), "Value", "Text");

        }

        public static string GetInnerMostException(Exception ex)
        {
            return ex.GetBaseException().Message;
        }


       
    }
}