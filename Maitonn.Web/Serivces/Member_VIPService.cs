using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Transactions;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class Member_VIPService : IMember_VIPService
    {
        private readonly IUnitOfWork DB_Service;
        private readonly IPayListService PayListService;
        private readonly IMember_MoneyService Member_MoneyService;
        public Member_VIPService(
             IUnitOfWork DB_Service
            , IPayListService PayListService
            , IMember_MoneyService Member_MoneyService)
        {
            this.DB_Service = DB_Service;
            this.PayListService = PayListService;
            this.Member_MoneyService = Member_MoneyService;
        }

        public ServiceResult PayVIP(int MemberID, ServerItem Server, PayList PayOrder)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    Member_VIP model = new Member_VIP();
                    var vip = GetMemberVIP(MemberID, true);

                    PayStatusViewModel PayStatus = new PayStatusViewModel();
                    PayStatus.Pay_No = PayOrder.Pay_No.ToString();
                    PayStatus.Buy_Email = CookieHelper.Email;
                    PayStatus.Buy_ID = CookieHelper.UID;

                    PayStatus.Trade_No = "29038423784523849573247856";
                    PayStatus.Status = Pay_State.ApplyOk.ToString();
                    PayListService.UpdateOrder(PayStatus);

                    var Upgrade = false;
                    var MoneyType = "0201";
                    if (vip != null)
                    {
                        Server.Money = Server.Month * 10;
                        MoneyType = "0206";

                        if (vip.EndTime.CompareTo(DateTime.Now) > 0 && Server.ServerType > vip.VipLevel)
                        {
                            Upgrade = true;
                            var day = UIHelper.DateDiff(DateDiffType.Day, DateTime.Now, vip.EndTime);
                            var UpgradeMoney = day * 2;
                            Member_MoneyService.AddMoney(MemberID, Server.Money, "0202");
                        }
                    }
                    else
                    {
                        MoneyType = "0205";
                        Server.Money = Server.Month * 5;
                    }

                    Member_MoneyService.AddMoney(MemberID, Server.Money, MoneyType);

                    if (vip == null)
                    {
                        model.AddTime = DateTime.Now;
                        model.VipLevel = Server.ServerType;
                        model.StartTime = DateTime.Now;
                        model.MemberID = MemberID;
                        model.EndTime = DateTime.Now.AddMonths(Server.Month + Server.GiftMonth);
                        model.Description = PayOrder.ProductType;
                        model.PayTime = 1;
                        Create(model);
                    }
                    else
                    {
                        model.ID = vip.ID;
                        model.MemberID = MemberID;
                        model.VipLevel = Server.ServerType;
                        if (vip.EndTime.CompareTo(DateTime.Now) > 0)
                        {
                            if (Upgrade)
                            {
                                model.EndTime = DateTime.Now.AddMonths(Server.Month + Server.GiftMonth);
                            }
                            else
                            {
                                model.EndTime = vip.EndTime.AddMonths(Server.Month + Server.GiftMonth);
                            }
                        }
                        else
                        {
                            model.EndTime = DateTime.Now.AddMonths(Server.Month + Server.GiftMonth);
                        }

                        Update(model);

                    }
                    Member_MoneyService.AddMoney(MemberID, Server.GiftMoney, "0201");

                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;

        }

        public ServiceResult PayMoney(int MemberID, PayList PayOrder)
        {
            ServiceResult result = new ServiceResult();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    PayStatusViewModel PayStatus = new PayStatusViewModel();
                    PayStatus.Pay_No = PayOrder.Pay_No.ToString();
                    PayStatus.Buy_Email = CookieHelper.Email;
                    PayStatus.Buy_ID = CookieHelper.UID;
                    PayStatus.Trade_No = "29038423784523849573247856";
                    PayStatus.Status = Pay_State.ApplyOk.ToString();
                    PayListService.UpdateOrder(PayStatus);

                    Member_MoneyService.AddMoney(MemberID, PayOrder.VMoney.Value, "0204");

                    Member_MoneyService.AddMoney(MemberID, Convert.ToInt32(PayOrder.Money.Value), "0203");

                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public ServiceResult Create(Member_VIP model)
        {

            ServiceResult result = new ServiceResult();
            try
            {
                DB_Service.Add<Member_VIP>(model);
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {

                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }


        public ServiceResult Update(Member_VIP model)
        {

            ServiceResult result = new ServiceResult();

            try
            {
                var target = DB_Service.Set<Member_VIP>().Single(x => x.MemberID == model.MemberID);
                DB_Service.Attach<Member_VIP>(target);
                target.EndTime = model.EndTime;
                target.VipLevel = model.VipLevel;
                target.PayTime = target.PayTime + 1;
                DB_Service.Commit();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {

                result.AddServiceError(Utilities.GetInnerMostException(ex));
            }
            return result;
        }

        public int GetMemberVIPLevel(int MemberID, bool includeExpries)
        {
            var vip = GetMemberVIP(MemberID, includeExpries);

            if (vip == null)
            {
                return 0;
            }
            else
            {
                return vip.VipLevel;
            }
        }

        public Member_VIP GetMemberVIP(int MemberID, bool includeExpries)
        {
            var query = DB_Service.Set<Member_VIP>();
            if (!includeExpries)
            {
                query = query.Where(x => x.MemberID == MemberID && x.EndTime > DateTime.Now);
            }
            else
            {
                query = query.Where(x => x.MemberID == MemberID);
            }
            return query.FirstOrDefault();
        }
    }
}