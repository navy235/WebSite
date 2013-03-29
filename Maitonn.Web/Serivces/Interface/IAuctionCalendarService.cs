using System;
using System.Linq;
using System.Collections.Generic;

namespace Maitonn.Web
{
    public interface IAuctionCalendarService
    {
        AuctionCalendar Create(AuctionCalendar model);

        IQueryable<AuctionCalendar> GetALL(int MediaID);

        void Delete(int ID);

        bool ValidateAuction(int MediaID, DateTime startTime, DateTime endTime);
    }
}