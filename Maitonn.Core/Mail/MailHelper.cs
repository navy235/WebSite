using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;

namespace Maitonn.Core
{
    public class MailHelper
    {


        /// <summary>
        /// 发送邮件 返回1成功
        /// </summary>
        /// <param name="toEmail">Email地址</param>
        /// <param name="emailTitle">邮件标题</param>
        /// <param name="emailContent">邮件内容</param>
        /// <param name="displayName">接件人昵称</param>
        /// <returns></returns>
        public static bool SendMail(string toEmail, string emailTitle, string emailContent, string displayName)
        {
            bool result = false;

            string smtpHost = "smtp.163.com";
            string account = "wangyufan025@163.com";
            string passwrod = "shj870512";
            if (string.IsNullOrEmpty(displayName))
            {
                displayName = "dotaeye";
            }
            try
            {
                SmtpClient _smtpClient = new SmtpClient();
                _smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;            //指定电子邮件发送方式
                _smtpClient.Host = smtpHost;                                        //指定SMTP服务器
                _smtpClient.Credentials = new NetworkCredential(account, passwrod); //用户名和密码

                MailAddress _sendFrom = new MailAddress(account, displayName);

                MailAddress _sendTo = new MailAddress(toEmail);

                MailMessage _mailMessage = new MailMessage(_sendFrom, _sendTo);

                _mailMessage.Subject = emailTitle;                                  //主题
                _mailMessage.Body = emailContent;                                   //内容
                _mailMessage.BodyEncoding = System.Text.Encoding.UTF8;              //正文编码
                _mailMessage.IsBodyHtml = true;                                     //设置为HTML格式
                //_mailMessage.Priority = MailPriority.High;                        //优先级

                _smtpClient.Send(_mailMessage);
                result = true;
            }
            catch (Exception ex)
            {
                result = false;
            }

            return result;
        }

        /// <summary>
        /// 发送邮件 返回1成功
        /// </summary>
        /// <param name="toEmail">Email地址</param>
        /// <param name="emailTitle">邮件标题</param>
        /// <param name="emailContent">邮件内容</param>
        /// <returns></returns>
        public static bool SendMail(string toEmail, string emailTitle, string emailContent)
        {
            return SendMail(toEmail, emailTitle, emailContent, string.Empty);
        }
    }
}
