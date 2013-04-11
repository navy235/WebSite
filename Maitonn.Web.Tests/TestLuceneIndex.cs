using System;
using System.Collections.Generic;
using System.IO;
using System.Xml.Linq;
using System.Linq;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.Store;
using Lucinq.Building;
using NUnit.Framework;
using Directory = System.IO.Directory;
using Version = Lucene.Net.Util.Version;
using Lucene.Net.China;
using Maitonn.Web;
using Maitonn.Core;
using System.Data.Entity;

namespace Maitonn.Web.Tests
{
    [TestFixture]
    public class TestLuceneIndex
    {

        [Test]
        public void BuildIndex()
        {
            var indexFolder = FSDirectory.Open(new DirectoryInfo(GeneralConstants.Paths.BBCIndex));

            Analyzer analyzer = new ChineseAnalyzer();
            using (IndexWriter indexWriter = new IndexWriter(indexFolder, analyzer, IndexWriter.MaxFieldLength.UNLIMITED))
            {

                var outdoors = GetOutDoors(null);
                // int count = 0;
                outdoors.ForEach(item => indexWriter.AddDocument(
                        x => x.AddAnalysedField(BBCFields.Title, item.Title, false),
                        x => x.AddAnalysedField(BBCFields.Description, item.Description, false),
                        x => x.AddAnalysedField(BBCFields.AreaAtt, item.AreaAtt, false),
                        x => x.AddAnalysedField(BBCFields.CityName, item.CityName, false),
                        x => x.AddAnalysedField(BBCFields.ProvinceName, item.ProvinceName, false),
                        x => x.AddAnalysedField(BBCFields.MediaCateName, item.MediaCateName, false),
                        x => x.AddAnalysedField(BBCFields.PMediaCateName, item.PMediaCateName, false),
                        x => x.AddAnalysedField(BBCFields.FormatName, item.FormatName, false),
                        x => x.AddAnalysedField(BBCFields.OwnerCateName, item.OwnerCateName, false),
                        x => x.AddNonAnalysedField(BBCFields.Price, item.Price.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.Province, item.Province.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.City, item.City.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.MediaCode, item.MediaCode.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.PMediaCode, item.PMediaCode.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.FormatCode, item.FormatCode.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.PeriodCode, item.PeriodCode.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.OwnerCode, item.OwnerCode.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.Status, item.Status.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.MediaID, item.MediaID.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.Published, item.Published.ToString(), true),
                        x => x.AddNonAnalysedField(BBCFields.Hit, item.Hit.ToString(), true)
                    ));

                //foreach (var outdoor in outdoors)
                //{
                //    /*if (count > 4)
                //    {
                //        break;
                //    }
                //    count ++;*/
                //    var newsArticles = ReadFeed(rssFile);
                //    newsArticles.ForEach(
                //        newsArticle =>
                //            indexWriter.AddDocument
                //            (
                //                x => x.AddAnalysedField(BBCFields.Title, newsArticle.Title, true),
                //                x => x.AddAnalysedField(BBCFields.Description, newsArticle.Description, true),
                //                x => x.AddAnalysedField(BBCFields.Copyright, newsArticle.Copyright),
                //                x => x.AddStoredField(BBCFields.Link, newsArticle.Link),
                //                x => x.AddNonAnalysedField(BBCFields.PublishDate, newsArticle.PublishDateTime.ToString("yyyyMMdd-hhMMss-mmm"), true),
                //                x => x.AddNonAnalysedField(BBCFields.Sortable, newsArticle.Title)) // must be non-analysed to sort against it
                //            );
                //}

                indexWriter.Optimize();
                indexWriter.Close();
            }
        }


        protected virtual List<OutDoorIndexEntity> GetOutDoors(DateTime? lastIndexTime)
        {
            List<OutDoorIndexEntity> result = new List<OutDoorIndexEntity>();

            var context = new EntitiesContext();
            var OutDoors = context.Set<OutDoor>()
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Include(x => x.OutDoorMediaCate)
                .Include(x => x.OutDoorMediaCate.PCategory)
                .Include(x => x.AreaAtt)
                .Include(x => x.PeriodCate)
                .Include(x => x.FormatCate)
                .Include(x => x.MediaImg);

            if (lastIndexTime != null)
            {
                OutDoors = OutDoors.Where(x => x.LastTime > lastIndexTime);
            }
            OutDoors = OutDoors.OrderByDescending(x => x.LastTime);
            foreach (var x in OutDoors.ToList())
            {
                OutDoorIndexEntity item = new OutDoorIndexEntity()
                {
                    City = x.Area.ID,
                    FormatCode = x.FormatCode,
                    ImgUrl = x.MediaImg.FocusImgUrl,
                    MediaCode = x.MeidaCode,
                    OwnerCode = x.OwnerCode,
                    PeriodCode = x.PeriodCode,
                    PMediaCode = x.OutDoorMediaCate.PCategory.ID,
                    Province = x.Area.PCategory.ID,
                    Status = x.Status,
                    MediaID = x.MediaID,
                    ProvinceName = x.Area.PCategory.CateName,
                    CityName = x.Area.CateName,
                    AreaAtt = String.Join(",", x.AreaAtt.Select(y => y.AttName)),
                    Description = x.Description,
                    FormatName = x.FormatCate.CateName,
                    Hit = x.Hit,
                    MediaCateName = x.OutDoorMediaCate.CateName,
                    PMediaCateName = x.OutDoorMediaCate.PCategory.CateName,
                    OwnerCateName = x.OwnerCate.CateName,
                    PeriodName = x.PeriodCate.CateName,
                    Price = Convert.ToInt32(x.Price),
                    Published = x.LastTime,
                    Title = x.Name
                };
                result.Add(item);

            }
            return result;
        }

    }

    public class NewsArticle
    {
        public int MediaID { get; set; }

        public int Province { get; set; }

        public int City { get; set; }

        public int MediaCode { get; set; }

        public int PMediaCode { get; set; }

        public int FormatCode { get; set; }

        public int PeriodCode { get; set; }

        public int OwnerCode { get; set; }

        public int Status { get; set; }

        public string ProvinceName { get; set; }

        public string CityName { get; set; }

        public string MediaCateName { get; set; }

        public string PMediaCateName { get; set; }

        public string FormatName { get; set; }

        public string PeriodName { get; set; }

        public string OwnerCateName { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public string AreaAtt { get; set; }

        public string ImgUrl { get; set; }

        public int Hit { get; set; }

        public int Price { get; set; }

        public DateTime Published { get; set; }
    }

}
