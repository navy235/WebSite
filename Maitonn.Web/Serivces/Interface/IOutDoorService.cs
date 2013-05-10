using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;



namespace Maitonn.Web
{
    public interface IOutDoorService
    {
        OutDoor Find(int MediaID);

        OutDoor Create(OutDoorViewModel model);

        OutDoor Update(OutDoorViewModel model);

        OutDoor IncludeFind(int MediaID);

        OutDoor IncludeCategoryFind(int MediaID);

        OutDoor IncludeAuctionFind(int MediaID);

        bool HasOutDoorByMember(int MediaID);

        OutDoorViewModel GetOutDoorViewModel(int MediaID);

        OutDoorDetailsViewModel GetOutDoorDetailsViewModel(int MediaID);

        OutDoorSetAuctionCalendarViewModel GetOutDoorSetAuctionCalendarViewModel(int MediaID);

        IQueryable<OutDoor> GetOutDoorByMember(int MemberID);

        IQueryable<OutDoorListItem> GetMemberOutDoor(int MemberID, OutDoorStatus OutDoorStatus, bool includeUpLevel = false);

        IQueryable<OutDoorListItem> GetVerifyList(OutDoorStatus OutDoorStatus, bool includeUpLevel = false);

        IQueryable<OutDoor> GetList(OutDoorStatus OutDoorStatus, bool includeUpLevel = false);

        bool ChangeStatus(string Ids, OutDoorStatus OutDoorStatus);

    }
}