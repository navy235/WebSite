using System;
using System.Web;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class EmailService : IEmailService
    {
        public bool SendMail(EmailModel model)
        {
            return MailHelper.SendMail(model.Email, model.Title, model.Content);
        }


        public EmailModel GetResetPasswordMail(int MemberID, string Email, string NickName, string userKey)
        {
            EmailModel em = new EmailModel();
            em.Email = Email;
            em.Title = NickName + " 您好！找回www.dotaeye.com的密码!";
            em.Content = System.IO.File.ReadAllText(HttpContext.Current.Server.MapPath("~/Content/emailTemplate/getpwd.htm"), System.Text.Encoding.Default);
            em.Content = em.Content.Replace("{ukey}", userKey)
                .Replace("{nid}", NickName)
                .Replace("{uid}", MemberID.ToString())
                .Replace("{time}", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"))
                .Replace("{email}", Email);
            ReplaceSysinfo(em.Content);
            return em;
        }


        public EmailModel GetActiveEmailMail(int MemberID, string Email, string NickName, string emailKey)
        {
            EmailModel em = new EmailModel();
            em.Email = Email;
            em.Title = NickName + " 您好！绑定www.dotaeye.com登录邮箱!";
            em.Content = System.IO.File.ReadAllText(HttpContext.Current.Server.MapPath("~/Content/emailTemplate/activeemail.htm"), System.Text.Encoding.Default);
            em.Content = em.Content.Replace("{emailkey}", emailKey)
                .Replace("{nid}", NickName)
                .Replace("{uid}", MemberID.ToString())
                .Replace("{time}", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"))
                .Replace("{email}", Email);
            ReplaceSysinfo(em.Content);
            return em;
        }


        public EmailModel GetBizActiveEmailMail(int MemberID, string Email, string NickName, string emailKey)
        {
            EmailModel em = new EmailModel();
            em.Email = Email;
            em.Title = NickName + " 您好！绑定www.dotaeye.com登录邮箱!";
            em.Content = System.IO.File.ReadAllText(HttpContext.Current.Server.MapPath("~/Content/emailTemplate/bizactiveemail.htm"), System.Text.Encoding.Default);
            em.Content = em.Content.Replace("{emailkey}", emailKey)
                .Replace("{nid}", NickName)
                .Replace("{uid}", MemberID.ToString())
                .Replace("{time}", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"))
                .Replace("{email}", Email);
            ReplaceSysinfo(em.Content);
            return em;
        }

        private void ReplaceSysinfo(string content)
        {
            var domainStr = "{domain}";
            var domainUrl = ConfigSetting.DomainUrl;
            content = content.Replace(domainStr, domainUrl);
        }
    }
}