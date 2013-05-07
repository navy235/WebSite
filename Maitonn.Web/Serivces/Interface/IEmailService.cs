using System;


namespace Maitonn.Web
{
    public interface IEmailService
    {
        bool SendMail(EmailModel model);

        EmailModel GetResetPasswordMail(int MemberID, string Email, string NickName, string userKey);

        EmailModel GetActiveEmailMail(int MemberID, string Email, string NickName, string emailKey);

        EmailModel GetBizActiveEmailMail(int MemberID, string Email, string NickName, string emailKey);

    }
}