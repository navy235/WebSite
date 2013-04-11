using System;
using System.Linq;
using System.Linq.Expressions;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using Maitonn.Core;

using Kendo.Mvc.Extensions;
namespace Maitonn.Web
{
    public class OutDoorService : IOutDoorService
    {
        private readonly IUnitOfWork DB_Service;

        private readonly IAreaAttService AreaAttService;
        private readonly IOwnerCateService OwnerCateService;
        public OutDoorService(IUnitOfWork DB_Service
            , IAreaAttService AreaAttService
            , IOwnerCateService OwnerCateService)
        {
            this.DB_Service = DB_Service;
            this.AreaAttService = AreaAttService;
            this.OwnerCateService = OwnerCateService;
        }

        public OutDoor Create(OutDoorViewModel model)
        {

            int MemberID = Convert.ToInt32(CookieHelper.UID);
            OutDoor od = new OutDoor();
            od.AddIP = HttpHelper.IP;
            od.AddTime = DateTime.Now;
            od.CityCode = model.CityCode;
            od.Description = model.Description;
            od.FormatCode = model.FormatCode;
            od.HasLight = model.HasLight;
            od.LastIP = HttpHelper.IP;
            od.LastTime = DateTime.Now;
            od.Lat = Convert.ToDecimal(model.Position.Split('|')[0]);
            od.Lng = Convert.ToDecimal(model.Position.Split('|')[1]);
            od.Location = model.Location;
            od.MemberID = MemberID;
            od.MeidaCode = model.MeidaCode;
            od.Name = model.Name;
            od.PeriodCode = model.PeriodCode;
            od.Price = model.Price;
            od.PriceExten = model.PriceExten;
            od.SeoDes = model.Description.Length > 250 ? model.Description.Substring(0, 249) : model.Description;

            od.SeoTitle = model.Name;

            od.Seokeywords = model.Name;

            od.TrafficAuto = model.TrafficAuto;
            od.TrafficPerson = model.TrafficPerson;
            od.Unapprovedlog = string.Empty;


            //Area参数设置
            if (!string.IsNullOrEmpty(model.Area) && model.Area.Split('|').Length == 3)
            {
                var areaArray = model.Area.Split('|');
                od.Wdith = Convert.ToDecimal(areaArray[0]);
                od.Height = Convert.ToDecimal(areaArray[1]);
                od.TotalFaces = Convert.ToInt32(areaArray[2]);
            }
            //Light Time 设置
            if (model.HasLight)
            {
                if (!string.IsNullOrEmpty(model.LightTime) && model.LightTime.Split('|').Length == 2)
                {
                    var LightTime = model.LightTime.Split('|');
                    od.LightStrat = LightTime[0];
                    od.LightEnd = LightTime[1];
                }
            }

            MediaImg media = new MediaImg()
            {
                FocusImgUrl = UIHelper.GetImgUrl(model.MediaImg.Split(',')[0], ImgUrlType.Img120),
                ImgUrls = model.MediaImg,
                MemberID = MemberID
            };
            od.MediaImg = media;

            var AreaAttArray = model.AreaAtt.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            var AreaAttList = AreaAttService.GetList(AreaAttArray);

            od.AreaAtt.AddRange(AreaAttList);

            CredentialsImg credent = new CredentialsImg()
            {
                FocusImgUrl = UIHelper.GetImgUrl(model.CredentialsImg.Split(',')[0], ImgUrlType.Img120),
                ImgUrls = model.CredentialsImg,
                MemberID = MemberID
            };

            od.OwnerCode = model.OwnerCode;
            od.CredentialsImg = credent;
            od.Deadline = model.Deadline;


            //set OutDoor Status 待审核状态
            od.Status = (int)OutDoorStatus.PreVerify;

            DB_Service.Add<OutDoor>(od);
            DB_Service.Commit();


            return od;
        }

        public OutDoor Update(OutDoorViewModel model)
        {

            int MemberID = Convert.ToInt32(CookieHelper.UID);
            OutDoor od = IncludeFind(model.MediaID);
            DB_Service.Attach<OutDoor>(od);
            od.CityCode = model.CityCode;
            od.PeriodCode = model.PeriodCode;
            od.MeidaCode = model.MeidaCode;
            od.FormatCode = model.FormatCode;

            od.Description = model.Description;
            od.HasLight = model.HasLight;
            od.LastIP = HttpHelper.IP;
            od.LastTime = DateTime.Now;
            od.Lat = Convert.ToDecimal(model.Position.Split('|')[0]);
            od.Lng = Convert.ToDecimal(model.Position.Split('|')[1]);
            od.Location = model.Location;
            od.MemberID = MemberID;
            od.Name = model.Name;
            od.Price = model.Price;
            od.PriceExten = model.PriceExten;
            od.SeoDes = model.Description.Length > 250 ? model.Description.Substring(0, 249) : model.Description;

            od.SeoTitle = model.Name;

            od.Seokeywords = model.Name;

            od.TrafficAuto = model.TrafficAuto;
            od.TrafficPerson = model.TrafficPerson;
            od.Unapprovedlog = string.Empty;


            //Area参数设置
            if (!string.IsNullOrEmpty(model.Area) && model.Area.Split('|').Length == 3)
            {
                var areaArray = model.Area.Split('|');
                od.Wdith = Convert.ToDecimal(areaArray[0]);
                od.Height = Convert.ToDecimal(areaArray[1]);
                od.TotalFaces = Convert.ToInt32(areaArray[2]);
            }
            //Light Time 设置
            if (model.HasLight)
            {
                if (!string.IsNullOrEmpty(model.LightTime) && model.LightTime.Split('|').Length == 2)
                {
                    var LightTime = model.LightTime.Split('|');
                    od.LightStrat = LightTime[0];
                    od.LightEnd = LightTime[1];
                }
            }
            od.MediaImg.ImgUrls = model.MediaImg;
            od.MediaImg.FocusImgUrl = UIHelper.GetImgUrl(model.MediaImg.Split(',')[0], ImgUrlType.Img120);

            od.CredentialsImg.ImgUrls = model.CredentialsImg;
            od.CredentialsImg.FocusImgUrl = UIHelper.GetImgUrl(model.CredentialsImg.Split(',')[0], ImgUrlType.Img120);
            var AreaAttArray = model.AreaAtt.Split(',').Select(x => Convert.ToInt32(x)).ToList();
            if (AreaAttArray.Count == 0)
            {
                od.AreaAtt = new List<AreaAtt>();
            }
            else
            {
                var AreaAttList = AreaAttService.GetList(AreaAttArray);
                var currentAreaAttArray = od.AreaAtt.Select(x => x.ID).ToList();

                foreach (AreaAtt rl in AreaAttService.GetList())
                {
                    if (AreaAttArray.Contains(rl.ID))
                    {
                        if (!currentAreaAttArray.Contains(rl.ID))
                        {
                            od.AreaAtt.Add(rl);
                        }
                    }
                    else
                    {
                        if (currentAreaAttArray.Contains(rl.ID))
                        {
                            od.AreaAtt.Remove(rl);
                        }
                    }
                }
            }

            //set OutDoor Status 待审核状态
            od.Status = (int)OutDoorStatus.PreVerify;

            DB_Service.Commit();

            return od;
        }

        public OutDoor IncludeFind(int MediaID)
        {
            return DB_Service.Set<OutDoor>()
                .Include(x => x.MediaImg)
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Include(x => x.OutDoorMediaCate)
                .Include(x => x.OutDoorMediaCate.PCategory)
                .Include(x => x.OwnerCate)
                .Include(x => x.CredentialsImg)
                .Include(x => x.AreaAtt)
                .SingleOrDefault(x => x.MediaID == MediaID);
        }

        public OutDoor IncludeAuctionFind(int MediaID)
        {
            return DB_Service.Set<OutDoor>()
                .Include(x => x.MediaImg)
                .Include(x => x.MapImg)
                .Include(x => x.AreaAtt)
                .Include(x => x.AuctionCalendar)
                .SingleOrDefault(x => x.MediaID == MediaID);
        }

        public bool HasOutDoorByMember(int MediaID)
        {
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            return DB_Service.Set<OutDoor>().Any(x => x.MemberID == MemberID && x.MediaID == MediaID);
        }


        public OutDoorViewModel GetOutDoorViewModel(int MediaID)
        {
            OutDoorViewModel odv = new OutDoorViewModel();
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            OutDoor od = new OutDoor();
            od = IncludeFind(MediaID);
            odv.MediaID = od.MediaID;
            odv.AreaAtt = String.Join(",", od.AreaAtt.Select(x => x.ID));
            odv.CityCode = od.CityCode;
            odv.CredentialsImg = od.CredentialsImg.ImgUrls;
            odv.Deadline = od.Deadline;
            odv.Description = od.Description;
            //odv.EndTime = DateTime.Now;
            //odv.StartTime = DateTime.Now;
            odv.TrafficAuto = od.TrafficAuto;
            odv.TrafficPerson = od.TrafficPerson;
            odv.FormatCode = od.FormatCode;
            odv.Location = od.Location;
            odv.MediaImg = od.MediaImg.ImgUrls;
            odv.MeidaCode = od.MeidaCode;
            odv.Name = od.Name;
            odv.OwnerCode = od.OwnerCode;
            odv.PeriodCode = od.PeriodCode;
            odv.Position = od.Lat + "|" + od.Lng;
            odv.Price = od.Price;
            odv.PriceExten = od.PriceExten;
            odv.Area = od.Wdith + "|" + od.Height + "|" + od.TotalFaces;
            odv.HasLight = od.HasLight;
            if (od.HasLight)
            {
                odv.LightTime = od.LightStrat + "|" + od.LightEnd;
            }
            return odv;
        }


        public OutDoorDetailsViewModel GetOutDoorDetailsViewModel(int MediaID)
        {
            OutDoorDetailsViewModel odv = new OutDoorDetailsViewModel();
            int MemberID = Convert.ToInt32(CookieHelper.UID);
            OutDoor od = new OutDoor();
            od = IncludeFind(MediaID);
            odv.MediaID = od.MediaID;
            odv.AreaAtt = String.Join(",", od.AreaAtt.Select(x => x.ID));
            odv.CityCode = od.CityCode;
            odv.CredentialsImg = od.CredentialsImg.ImgUrls;
            odv.Deadline = od.Deadline;
            odv.Description = od.Description;
            //odv.EndTime = DateTime.Now;
            //odv.StartTime = DateTime.Now;
            odv.TrafficAuto = od.TrafficAuto;
            odv.TrafficPerson = od.TrafficPerson;
            odv.FormatCode = od.FormatCode;
            odv.Location = od.Location;
            odv.MediaImg = od.MediaImg.ImgUrls;
            odv.MeidaCode = od.MeidaCode;
            odv.Name = od.Name;
            odv.OwnerCode = od.OwnerCode;
            odv.PeriodCode = od.PeriodCode;
            odv.Position = od.Lat + "|" + od.Lng;
            odv.Price = od.Price;
            odv.PriceExten = od.PriceExten;
            odv.Area = od.Wdith + "|" + od.Height + "|" + od.TotalFaces;
            odv.HasLight = od.HasLight;
            if (od.HasLight)
            {
                odv.LightTime = od.LightStrat + "|" + od.LightEnd;
            }
            odv.AuctionCalendar = od.MediaID;
            return odv;
        }

        public IQueryable<OutDoor> GetOutDoorByMember(int MemberID)
        {
            return DB_Service.Set<OutDoor>()
              .Include(x => x.MediaImg)
              .Include(x => x.Area)
              .Include(x => x.Area.PCategory)
              .Include(x => x.OutDoorMediaCate)
              .Include(x => x.OutDoorMediaCate.PCategory)
              .Include(x => x.OwnerCate)
              .Include(x => x.CredentialsImg)
              .Include(x => x.AreaAtt).Where(x => x.MemberID == MemberID);
        }

        public IQueryable<OutDoorListItem> GetMemberOutDoor(int MemberID, OutDoorStatus OutDoorStatus, bool includeUpLevel = false)
        {
            int OutDoorStatusValue = (int)OutDoorStatus;
            var query = DB_Service.Set<OutDoor>()
                .Include(x => x.MediaImg)
                .Where(x => x.MemberID == MemberID);
            if (includeUpLevel)
            {
                query = query.Where(x => x.Status >= OutDoorStatusValue);
            }
            else
            {
                query = query.Where(x => x.Status == OutDoorStatusValue);
            }
            return query.Select(x => new OutDoorListItem()
                {
                    MediaID = x.MediaID,
                    AddTime = x.AddTime,
                    FocusImg = x.MediaImg.FocusImgUrl,
                    Status = x.Status,
                    Unapprovedlog = x.Unapprovedlog,
                    Name = x.Name
                });
        }

        public bool ChangeStatus(string Ids, OutDoorStatus OutDoorStatus)
        {
            var result = true;
            try
            {
                var IdsArray = Ids.Split(',').Select(x => Convert.ToInt32(x));
                var OutDoorStatusValue = (int)OutDoorStatus;
                DB_Service.Set<OutDoor>().Where(x => IdsArray.Contains(x.MediaID)).ToList().ForEach(x => x.Status = OutDoorStatusValue);
                DB_Service.Commit();
            }
            catch (DbEntityValidationException ex)
            {
                result = false;
            }
            return result;
        }


        public IQueryable<OutDoorListItem> GetVerifyList(OutDoorStatus OutDoorStatus, bool includeUpLevel = false)
        {
            int OutDoorStatusValue = (int)OutDoorStatus;
            var query = DB_Service.Set<OutDoor>()
                .Include(x => x.MediaImg)
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory);
            if (includeUpLevel)
            {
                query = query.Where(x => x.Status >= OutDoorStatusValue);
            }
            else
            {
                query = query.Where(x => x.Status == OutDoorStatusValue);
            }
            return query.Select(x => new OutDoorListItem()
            {
                MediaID = x.MediaID,
                AddTime = x.AddTime,
                Status = x.Status,
                FocusImg = x.MediaImg.FocusImgUrl,
                Price = x.Price,
                Unapprovedlog = x.Unapprovedlog,
                MediaCode = x.MeidaCode,
                Name = x.Name,
                Province = x.Area.PCategory.CateName,
                City = x.Area.CateName
            });
        }


        public OutDoorSetAuctionCalendarViewModel GetOutDoorSetAuctionCalendarViewModel(int MediaID)
        {
            return DB_Service.Set<OutDoor>().Where(x => x.MediaID == MediaID).Select(x => new OutDoorSetAuctionCalendarViewModel()
            {
                AuctionCalendar = x.MediaID,
                MediaID = x.MediaID,
                Name = x.Name

            }).First();
        }



        public IQueryable<OutDoor> GetList(OutDoorStatus OutDoorStatus, bool includeUpLevel = false)
        {
            int OutDoorStatusValue = (int)OutDoorStatus;
            var query = DB_Service.Set<OutDoor>()
               .Include(x => x.MediaImg)
               .Include(x => x.Area)
               .Include(x => x.Area.PCategory)
               .Include(x => x.OutDoorMediaCate)
               .Include(x => x.OutDoorMediaCate.PCategory)
               .Include(x => x.OwnerCate)
               .Include(x => x.CredentialsImg)
               .Include(x => x.AreaAtt);
            if (includeUpLevel)
            {
                query = query.Where(x => x.Status >= OutDoorStatusValue);
            }
            else
            {
                query = query.Where(x => x.Status == OutDoorStatusValue);
            }
            return query;

        }
    }
}