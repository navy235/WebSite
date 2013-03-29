using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Runtime.Serialization;
using System.Web;
namespace Maitonn.Core
{
    public class BadWordValidator
    {
        private HashSet<string> hash = new HashSet<string>();
        private byte[] fastCheck = new byte[char.MaxValue];
        private BitArray charCheck = new BitArray(char.MaxValue);
        private int maxWordLength = 0;
        private int minWordLength = int.MaxValue;
        private bool _isHave = false;
        private string _replaceString = "*";
        private char _splitString = '|';
        private string _newWord;
        private string _badWordFilePath;


        /// <summary>
        /// 是否含有脏字
        /// </summary>
        public bool IsHave
        {
            get { return _isHave; }
        }

        /// <summary>
        /// 替换后字符串
        /// </summary>
        public string ReplaceString
        {
            set { _replaceString = value; }
        }
        /// <summary>
        /// 脏字字典切割符
        /// </summary>
        public char SplitString
        {
            set { _splitString = value; }
        }

        /// <summary>
        /// 更新后的字符串
        /// </summary>
        public string NewWord
        {
            get { return _newWord; }
        }

        /// <summary>
        /// 脏字字典文档路径
        /// </summary>
        public string BadWordFilePath
        {
            get { return _badWordFilePath; }
            set { _badWordFilePath = value; }
        }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="filePath">脏字符集的文件路径</param>
        public BadWordValidator(string filePath)
        {
            _badWordFilePath = filePath;
            string srList = string.Empty;
            if (File.Exists(_badWordFilePath))
            {
                StreamReader sr = new StreamReader(_badWordFilePath, Encoding.UTF8);
                srList = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            string[] badwords = srList.Split('|');
            foreach (string word in badwords)
            {
                maxWordLength = Math.Max(maxWordLength, word.Length);
                minWordLength = Math.Min(minWordLength, word.Length);
                for (int i = 0; i < 7 && i < word.Length; i++)
                {
                    fastCheck[word[i]] |= (byte)(1 << i);
                }

                for (int i = 7; i < word.Length; i++)
                {
                    fastCheck[word[i]] |= 0x80;
                }

                if (word.Length == 1)
                {
                    charCheck[word[0]] = true;
                }
                else
                {
                    hash.Add(word);
                }
            }
        }
        /// <summary>
        /// 判断是否含有该字符
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public bool HasBadWord(string text)
        {
            int index = 0;

            while (index < text.Length)
            {


                if ((fastCheck[text[index]] & 1) == 0)
                {
                    while (index < text.Length - 1 && (fastCheck[text[++index]] & 1) == 0) ;
                }

                //单字节检测
                if (minWordLength == 1 && charCheck[text[index]])
                {
                    return true;
                }


                //多字节检测
                for (int j = 1; j <= Math.Min(maxWordLength, text.Length - index - 1); j++)
                {
                    //快速排除
                    if ((fastCheck[text[index + j]] & (1 << Math.Min(j, 7))) == 0)
                    {
                        break;
                    }

                    if (j + 1 >= minWordLength)
                    {
                        string sub = text.Substring(index, j + 1);

                        if (hash.Contains(sub))
                        {
                            return true;
                        }
                    }
                }
                index++;
            }
            return false;
        }
        /// <summary>
        /// 剔除字符串中的脏字符
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public string ReplaceBadWord(string text)
        {
            int index = 0;

            for (index = 0; index < text.Length; index++)
            {
                if ((fastCheck[text[index]] & 1) == 0)
                {
                    while (index < text.Length - 1 && (fastCheck[text[++index]] & 1) == 0) ;
                }

                //单字节检测
                if (minWordLength == 1 && charCheck[text[index]])
                {
                    //return true;
                    _isHave = true;
                    text = text.Replace(text[index], _replaceString[0]);
                    continue;
                }
                //多字节检测
                for (int j = 1; j <= Math.Min(maxWordLength, text.Length - index - 1); j++)
                {

                    //快速排除
                    if ((fastCheck[text[index + j]] & (1 << Math.Min(j, 7))) == 0)
                    {
                        break;
                    }

                    if (j + 1 >= minWordLength)
                    {
                        string sub = text.Substring(index, j + 1);

                        if (hash.Contains(sub))
                        {

                            //替换字符操作
                            _isHave = true;
                            char cc = _replaceString[0];
                            string rp = _replaceString.PadRight((j + 1), cc);
                            text = text.Replace(sub, rp);
                            //记录新位置
                            index += j;
                            break;
                        }
                    }
                }
            }
            _newWord = text;
            return text;
        }
    }

    public class BadWordsHelper
    {
        public static readonly BadWordValidator bwv = new BadWordValidator(HttpContext.Current.Server.MapPath("~/Content/Badwords/badwords.txt"));
        public BadWordsHelper()
        {

        }

        public static string ReplaceBadWord(string oldwords)
        {
            return bwv.ReplaceBadWord(oldwords);
        }

        public static bool HasBadWord(string oldwords)
        {
            return bwv.HasBadWord(oldwords);
        }
    }
}



