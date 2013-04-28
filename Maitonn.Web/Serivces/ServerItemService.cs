using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class ServerItemService : IServerItemService
    {
        private readonly IUnitOfWork DB_Service;

        public ServerItemService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public IQueryable<ServerItem> GetALL()
        {
            return DB_Service.Set<ServerItem>();
        }

        public IQueryable<ServerItem> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<ServerItem>();
        }


        public void Create(ServerItem model)
        {
            DB_Service.Add<ServerItem>(model);
            DB_Service.Commit();
        }


        public void Update(ServerItem model)
        {
            var target = Find(model.ID);
            DB_Service.Attach<ServerItem>(target);
            target.Name = model.Name;
            target.Description = model.Description;
            target.HelpUrl = model.HelpUrl;
            target.ImgUrl = model.ImgUrl;
            target.Price = model.Price;
            target.ServerType = model.ServerType;
            target.TopType = model.TopType;
            target.VipDiscount = model.VipDiscount;
            target.VipDiscount2 = model.VipDiscount2;
            target.IsPayByVMoney = model.IsPayByVMoney;
            target.IsByCategory = model.IsByCategory;
            target.IsQuanGuo = model.IsQuanGuo;
            target.IsByChildCategory = model.IsByChildCategory;
            target.Money = model.Money;
            target.Month = model.Month;
            target.GiftMoney = model.GiftMoney;
            target.GiftMonth = model.GiftMonth;
            target.EndTime = model.EndTime;
            target.MemberID = model.MemberID;
            target.LastTime = DateTime.Now;
            DB_Service.Commit();
        }


        public ServerItem Find(int ID)
        {
            return DB_Service.Set<ServerItem>().Single(x => x.ID == ID);
        }

        public void Delete(ServerItem model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<ServerItem>(target);
            DB_Service.Commit();
        }
    }
}