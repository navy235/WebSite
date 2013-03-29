using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class AuctionCalendarService : IAuctionCalendarService
    {
        private readonly IUnitOfWork DB_Service;

        public AuctionCalendarService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }

        public bool ValidateAuction(int MediaID, DateTime startTime, DateTime endTime)
        {
            return !DB_Service
                .Set<AuctionCalendar>()
                .Any(x =>
                    x.MediaID == MediaID &&
                    ((x.EndTime >= startTime && x.StartTime <= startTime)
                    || (x.StartTime < endTime && x.EndTime > endTime)));
        }

        public AuctionCalendar Create(AuctionCalendar model)
        {
            DB_Service.Add<AuctionCalendar>(model);
            DB_Service.Commit();
            return model;
        }


        public IQueryable<AuctionCalendar> GetALL(int MediaID)
        {
            var CurrenYearFirstDay = new DateTime(DateTime.Now.Year, 1, 1);
            return DB_Service
                .Set<AuctionCalendar>()
                .Where(x => x.MediaID == MediaID && x.EndTime > CurrenYearFirstDay);
        }


        public void Delete(int ID)
        {
            var model = DB_Service.Set<AuctionCalendar>().Single(x => x.ID == ID);
            DB_Service.Remove<AuctionCalendar>(model);
            DB_Service.Commit();
        }
    }
}