using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;



namespace Maitonn.Web
{
    public interface IMemberService
    {
        Member Create(RegisterModel model);

        Member Create(DetailsModel model);

        Member Update(EditModel model);

        IQueryable<Member> GetAll();

        IQueryable<Member> GetKendoAll();

        bool Login(string Email, string Md5Password);

        bool OpenUserLogin(OpenLoginStatus OpenUser, OpenLoginType openType);

        bool ExistsEmail(string Email);

        bool ExistsNickName(string NickName);

        bool ExistsEmailNotMe(int MemberID, string Email);

        bool ExistsNickNameNotMe(int MemberID, string NickName);

        bool ValidatePassword(int MemberID, string Password);

        Member Find(int MemberID);

        Member FindMemberWithProfile(int MemberID);

        Member FindMemberByEmail(string Email);

        Member FindMemberByOpenUser(OpenLoginStatus OpenUser, OpenLoginType openType);

        void ResetPassword(Member member, string newpassword);

        bool ChangePassword(int MemberID, string oldpassword, string newpassword);

        void SetLoginCookie(Member member);

        void ActiveEmail(Member member, int Status);

        void SaveMemberBaseInfo(int MemberID, ProfileModel model);

        void SaveMemberAvtar(int MemberID, AvtarModel model);

        void SaveMemberStatus(int MemberID, MemberStatus MemberStatus);

        void SaveMemberContact(int MemberID, ContactModel model);

        bool HasGetPasswordActionInLimitTime(GetPasswordModel model, int limitMin, int memberAction);

        Member FindDescriptionMemberInLimitTime(string description, int limitHours, out bool isFound);

        bool ChangeStatus(IEnumerable<int> MemberIds, MemberStatus MemberStatus);

    }
}