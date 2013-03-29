
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web.UI;
using System.Drawing.Drawing2D;
using System.IO;
using System.Web;
namespace Maitonn.Core
{
    /// <summary>
    /// 生成验证码的类
    /// </summary>
    public class ValidateCode
    {
        /// <summary>
        /// 构造出一个四位的验证码
        /// </summary>
        /// <param name="sessionName"></param>
        /// <param name="width">建议52</param>
        /// <param name="height">建议26</param>
        public ValidateCode(string sessionName, int width, int height)
        {
            this._width = width;
            this._height = height;
            this._random = new Random();
            this._code = GetRandomCode();

            HttpContext.Current.Response.AddHeader("P3P", "CP=CAO PSA OUR");
            HttpContext.Current.Session[sessionName] = this._code;

            this.SetPageNoCache();
            this.OnPaint();
        }


        //Private Members
        #region Private Members
        static string[] FontItems = new string[] {  "Arial", 
                                                "Helvetica", 
                                                "Geneva", 
                                                "sans-serif", 
                                                "Verdana"
                                              };

        static Brush[] BrushItems = new Brush[] {     Brushes.OliveDrab,
                                                  Brushes.ForestGreen,
                                                  Brushes.DarkCyan,
                                                  Brushes.LightSlateGray,
                                                  Brushes.RoyalBlue,
                                                  Brushes.SlateBlue,
                                                  Brushes.DarkViolet,
                                                  Brushes.MediumVioletRed,
                                                  Brushes.IndianRed,
                                                  Brushes.Firebrick,
                                                  Brushes.Chocolate,
                                                  Brushes.Peru,
                                                  Brushes.Goldenrod
                                             };

        static string[] BrushName = new string[] {    "OliveDrab",
                                                  "ForestGreen",
                                                  "DarkCyan",
                                                  "LightSlateGray",
                                                  "RoyalBlue",
                                                  "SlateBlue",
                                                  "DarkViolet",
                                                  "MediumVioletRed",
                                                  "IndianRed",
                                                  "Firebrick",
                                                  "Chocolate",
                                                  "Peru",
                                                  "Goldenrod"
                                             };

        private static Color BackColor = Color.White;
        private static Pen BorderColor = Pens.DarkGray;
        private int _width;
        private int _height;

        private Random _random;
        private string _code;
        private int _brushNameIndex;
        private string _sessionName = "VCode";

        #endregion // end of Private Members


        #region Helper Methods
        /**/
        /// <summary>
        /// 设置页面不被缓存
        /// </summary>
        private void SetPageNoCache()
        {
            HttpContext.Current.Response.Buffer = true;
            HttpContext.Current.Response.ExpiresAbsolute = System.DateTime.Now.AddSeconds(-1);
            HttpContext.Current.Response.Expires = 0;
            HttpContext.Current.Response.CacheControl = "no-cache";
            HttpContext.Current.Response.AppendHeader("Pragma", "No-Cache");
        }

        /**/
        /// <summary>
        /// 取得一个 4 位的随机码
        /// </summary>
        /// <returns></returns>
        private string GetRandomCode()
        {
            return Guid.NewGuid().ToString().Substring(0, 4);
        }

        /**/
        /// <summary>
        /// 随机取一个字体
        /// </summary>
        /// <returns></returns>
        private Font GetFont()
        {
            int fontIndex = _random.Next(0, FontItems.Length);
            FontStyle fontStyle = GetFontStyle(_random.Next(0, 2));
            return new Font(FontItems[fontIndex], 22, fontStyle);
        }

        /**/
        /// <summary>
        /// 取一个字体的样式
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        private FontStyle GetFontStyle(int index)
        {
            switch (index)
            {
                case 0:
                    return FontStyle.Bold;
                case 1:
                    return FontStyle.Italic;
                default:
                    return FontStyle.Regular;
            }
        }

        /**/
        /// <summary>
        /// 随机取一个笔刷
        /// </summary>
        /// <returns></returns>
        private Brush GetBrush()
        {
            int brushIndex = _random.Next(0, BrushItems.Length);
            _brushNameIndex = brushIndex;
            return BrushItems[brushIndex];
        }
        #endregion // end of Helper Methods


        //Paint Methods
        #region Paint Methods
        /**/
        /// <summary>
        /// 绘画事件
        /// </summary>
        private void OnPaint()
        {
            Bitmap objBitmap = null;
            Graphics g = null;

            try
            {
                objBitmap = new Bitmap(_width, _height);
                g = Graphics.FromImage(objBitmap);

                Paint_Background(g);
                Paint_Text(g);
                Paint_TextStain(objBitmap);
                Paint_Border(g);

                objBitmap.Save(HttpContext.Current.Response.OutputStream, ImageFormat.Gif);
                HttpContext.Current.Response.ContentType = "image/gif";
            }
            catch { }
            finally
            {
                if (null != objBitmap)
                    objBitmap.Dispose();
                if (null != g)
                    g.Dispose();
            }
        }

        /**/
        /// <summary>
        /// 绘画背景颜色
        /// </summary>
        /// <param name="g"></param>
        private void Paint_Background(Graphics g)
        {
            g.Clear(BackColor);
        }

        /**/
        /// <summary>
        /// 绘画边框
        /// </summary>
        /// <param name="g"></param>
        private void Paint_Border(Graphics g)
        {
            Pen pen = new Pen(Color.FromArgb(206, 206, 206));
            g.DrawRectangle(pen, 0, 0, _width - 1, _height - 1);
        }

        /**/
        /// <summary>
        /// 绘画文字
        /// </summary>
        /// <param name="g"></param>
        private void Paint_Text(Graphics g)
        {
            g.DrawString(_code, GetFont(), GetBrush(), 3, 1);
        }

        /**/
        /// <summary>
        /// 绘画文字噪音点
        /// </summary>
        /// <param name="g"></param>
        private void Paint_TextStain(Bitmap b)
        {
            for (int n = 0; n < 30; n++)
            {
                int x = _random.Next(_width);
                int y = _random.Next(_height);
                b.SetPixel(x, y, Color.FromName(BrushName[_brushNameIndex]));
            }
        }
        #endregion
      
    }
}


