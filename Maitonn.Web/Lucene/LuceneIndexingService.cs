using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Configuration;
using System.Threading.Tasks;
using WebBackgrounder;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.Store;
using Lucene.Net.China;
using Lucene.Net.Search;
using Lucene.Net.QueryParsers;
using Ninject;
using Directory = System.IO.Directory;
using Maitonn.Core;

namespace Maitonn.Web
{

    public interface IIndexingService
    {

        /// <summary>
        /// 更新索引
        /// </summary>
        /// <param name="keys"></param>
        void UpdateIndex();

        /// <summary>
        /// 更新指定ID媒体索引
        /// </summary>
        /// <param name="keys"></param>
        void UpdateIndex(List<int> keys);
    }

    public class LuceneIndexingService : IIndexingService
    {
        private static readonly object IndexWriterLock = new object();

        private static readonly TimeSpan IndexRecreateInterval = TimeSpan.FromDays(3);

        private static readonly char[] IdSeparators = new[] { '.', '-' };

        private static IndexWriter _indexWriter;

        private readonly EntitiesContext _entitiesContext;

        public LuceneIndexingService()
        {

        }


        public LuceneIndexingService(Func<DbContext> contextFuc)
        {
            _entitiesContext = (EntitiesContext)contextFuc();
        }

        public void UpdateIndex()
        {
            DateTime? lastWriteTime = GetLastWriteTime();
            bool creatingIndex = lastWriteTime == null;

            EnsureIndexWriter(creatingIndex);

            if (IndexRequiresRefresh())
            {
                _indexWriter.DeleteAll();
                _indexWriter.Commit();
                lastWriteTime = null;
                UpdateIndexRefreshTime();
            }
            if (_entitiesContext != null)
            {
                var OutDoors = GetOutDoors(_entitiesContext, lastWriteTime);

                if (OutDoors.Count > 0)
                {
                    AddOutDoors(OutDoors, creatingIndex: lastWriteTime == null);
                }
            }
            UpdateLastWriteTime();
        }

        public void UpdateIndex(List<int> keys)
        {
            EnsureIndexWriter(false);

            var context = new EntitiesContext();

            List<OutDoorIndexEntity> result = new List<OutDoorIndexEntity>();

            var query = context.Set<OutDoor>()
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Include(x => x.OutDoorMediaCate)
                .Include(x => x.OutDoorMediaCate.PCategory)
                .Include(x => x.AreaAtt)
                .Include(x => x.PeriodCate)
                .Include(x => x.FormatCate)
                .Include(x => x.MediaImg)
                .Include(x => x.Member)
                .Include(x => x.Member.Member_CreditIndex)
                .Include(x => x.Member.SelfCompany)
                .Where(x => keys.Contains(x.MediaID));

            foreach (var x in query.ToList())
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
                    AuthStatus = x.AuthStatus,
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
                    Price = x.Price,
                    Published = x.LastTime,
                    Title = x.Name,
                    Height = x.Height,
                    TotalFaces = x.TotalFaces,
                    Width = x.Wdith,
                    CompanyName = x.Member.SelfCompany.Name,
                    MemberCreditIndex = x.Member.Member_CreditIndex.TotalCreditIndex,
                    MemberStatus = x.Member.Status,
                    MemberID = x.MemberID

                };

                result.Add(item);

            }

            AddOutDoors(result, false);
        }

        protected internal virtual List<OutDoorIndexEntity> GetOutDoors(UnitOfWork context, DateTime? lastIndexTime)
        {
            List<OutDoorIndexEntity> result = new List<OutDoorIndexEntity>();

            var query = context.Set<OutDoor>()
                .Include(x => x.Area)
                .Include(x => x.Area.PCategory)
                .Include(x => x.OutDoorMediaCate)
                .Include(x => x.OutDoorMediaCate.PCategory)
                .Include(x => x.AreaAtt)
                .Include(x => x.PeriodCate)
                .Include(x => x.FormatCate)
                .Include(x => x.MediaImg)
                .Include(x => x.Member)
                .Include(x => x.Member.Member_CreditIndex)
                .Include(x => x.Member.SelfCompany);

            if (lastIndexTime.HasValue)
            {
                query = query.Where(x => x.LastTime > lastIndexTime.Value);
            }

            foreach (var x in query.ToList())
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
                    AuthStatus = x.AuthStatus,
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
                    Price = x.Price,
                    Published = x.LastTime,
                    Title = x.Name,
                    Height = x.Height,
                    TotalFaces = x.TotalFaces,
                    Width = x.Wdith,
                    CompanyName = x.Member.SelfCompany.Name,
                    MemberCreditIndex = x.Member.Member_CreditIndex.TotalCreditIndex,
                    MemberStatus = x.Member.Status,
                    MemberID = x.MemberID
                };

                result.Add(item);

            }
            return result;
        }

        /// <summary>
        /// 建立索引
        /// </summary>
        /// <param name="OutDoors"></param>
        /// <param name="creatingIndex"></param>
        private static void AddOutDoors(List<OutDoorIndexEntity> OutDoors, bool creatingIndex)
        {
            //如果不是第一次创建
            if (!creatingIndex)
            {
                var OutDoorsToDelete = from MediaID in OutDoors.Select(p => p.MediaID).Distinct()
                                       select NumericRangeQuery.NewIntRange(OutDoorIndexFields.MediaID, MediaID, MediaID, true, true);
                _indexWriter.DeleteDocuments(OutDoorsToDelete.ToArray());
            }

            OutDoors.ForEach(x => AddOutDoor(x));
            //Parallel.ForEach(OutDoors, AddOutDoor);

            _indexWriter.Commit();
        }

        /// <summary>
        /// 添加索引
        /// </summary>
        /// <param name="OutDoors"></param>
        /// <param name="creatingIndex"></param>
        private static void AddOutDoor(OutDoorIndexEntity OutDoor)
        {
            var document = new Document();

            var field = new Field(OutDoorIndexFields.Title, OutDoor.Title, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 2.5f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.Description, OutDoor.Description, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 2.1f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.CompanyName, OutDoor.CompanyName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 2.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.AreaAtt, OutDoor.AreaAtt, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 1.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.CityName, OutDoor.CityName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 1.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.ProvinceName, OutDoor.ProvinceName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 1.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.MediaCateName, OutDoor.MediaCateName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 1.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.PMediaCateName, OutDoor.PMediaCateName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 1.0f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.FormatName, OutDoor.FormatName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 0.2f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.PeriodName, OutDoor.PeriodName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 0.2f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.OwnerCateName, OutDoor.OwnerCateName, Field.Store.YES, Field.Index.ANALYZED);
            field.Boost = 0.2f;
            document.Add(field);

            field = new Field(OutDoorIndexFields.ImgUrl, OutDoor.ImgUrl, Field.Store.YES, Field.Index.NOT_ANALYZED);
            document.Add(field);


            document.Add(new NumericField(OutDoorIndexFields.Price, Field.Store.YES, true).SetDoubleValue(Convert.ToDouble(OutDoor.Price)));
            document.Add(new NumericField(OutDoorIndexFields.Width, Field.Store.YES, true).SetDoubleValue(Convert.ToDouble(OutDoor.Width)));
            document.Add(new NumericField(OutDoorIndexFields.Height, Field.Store.YES, true).SetDoubleValue(Convert.ToDouble(OutDoor.Height)));
            document.Add(new NumericField(OutDoorIndexFields.TotalFaces, Field.Store.YES, true).SetIntValue(OutDoor.TotalFaces));
            document.Add(new NumericField(OutDoorIndexFields.Province, Field.Store.YES, true).SetIntValue(OutDoor.Province));
            document.Add(new NumericField(OutDoorIndexFields.City, Field.Store.YES, true).SetIntValue(OutDoor.City));
            document.Add(new NumericField(OutDoorIndexFields.MediaCode, Field.Store.YES, true).SetIntValue(OutDoor.MediaCode));
            document.Add(new NumericField(OutDoorIndexFields.PMediaCode, Field.Store.YES, true).SetIntValue(OutDoor.PMediaCode));
            document.Add(new NumericField(OutDoorIndexFields.FormatCode, Field.Store.YES, true).SetIntValue(OutDoor.FormatCode));
            document.Add(new NumericField(OutDoorIndexFields.PeriodCode, Field.Store.YES, true).SetIntValue(OutDoor.PeriodCode));
            document.Add(new NumericField(OutDoorIndexFields.OwnerCode, Field.Store.YES, true).SetIntValue(OutDoor.OwnerCode));
            document.Add(new NumericField(OutDoorIndexFields.Status, Field.Store.YES, true).SetIntValue(OutDoor.Status));
            document.Add(new NumericField(OutDoorIndexFields.AuthStatus, Field.Store.YES, true).SetIntValue(OutDoor.AuthStatus));
            document.Add(new NumericField(OutDoorIndexFields.MediaID, Field.Store.YES, true).SetIntValue(OutDoor.MediaID));
            document.Add(new NumericField(OutDoorIndexFields.Hit, Field.Store.YES, true).SetIntValue(OutDoor.Hit));
            document.Add(new NumericField(OutDoorIndexFields.Published, Field.Store.YES, true).SetLongValue(OutDoor.Published.Ticks));

            document.Add(new NumericField(OutDoorIndexFields.MemberStatus, Field.Store.YES, true).SetIntValue(OutDoor.MemberStatus));

            document.Add(new NumericField(OutDoorIndexFields.MemberCreditIndex, Field.Store.YES, true).SetIntValue(OutDoor.MemberCreditIndex));

            document.Add(new NumericField(OutDoorIndexFields.MemberID, Field.Store.YES, true).SetIntValue(OutDoor.MemberID));

            _indexWriter.AddDocument(document);
        }

        protected static void EnsureIndexWriter(bool creatingIndex)
        {
            if (_indexWriter == null)
            {
                lock (IndexWriterLock)
                {
                    if (_indexWriter == null)
                    {
                        EnsureIndexWriterCore(creatingIndex);
                    }
                }
            }
        }

        private static void EnsureIndexWriterCore(bool creatingIndex)
        {
            if (!Directory.Exists(LuceneCommon.IndexDirectory))
            {
                Directory.CreateDirectory(LuceneCommon.IndexDirectory);
            }

            var analyzer = new ChineseAnalyzer();
            var directoryInfo = new DirectoryInfo(LuceneCommon.IndexDirectory);
            var directory = new SimpleFSDirectory(directoryInfo);
            _indexWriter = new IndexWriter(directory, analyzer, create: creatingIndex, mfl: IndexWriter.MaxFieldLength.UNLIMITED);
        }

        protected internal bool IndexRequiresRefresh()
        {
            if (File.Exists(LuceneCommon.IndexMetadataPath))
            {
                var creationTime = File.GetCreationTimeUtc(LuceneCommon.IndexMetadataPath);
                return (DateTime.UtcNow - creationTime) > IndexRecreateInterval;
            }
            // If we've never created the index, it needs to be refreshed.
            return true;
        }

        protected internal virtual DateTime? GetLastWriteTime()
        {
            if (!File.Exists(LuceneCommon.IndexMetadataPath))
            {
                return null;
            }
            return File.GetLastWriteTimeUtc(LuceneCommon.IndexMetadataPath);
        }

        protected internal virtual void UpdateLastWriteTime()
        {
            if (!File.Exists(LuceneCommon.IndexMetadataPath))
            {
                // Create the index and add a timestamp to it that specifies the time at which it was created.
                File.WriteAllBytes(LuceneCommon.IndexMetadataPath, new byte[0]);
            }
            else
            {
                File.SetLastWriteTimeUtc(LuceneCommon.IndexMetadataPath, DateTime.UtcNow);
            }
        }

        protected void UpdateIndexRefreshTime()
        {
            if (File.Exists(LuceneCommon.IndexMetadataPath))
            {
                File.SetCreationTimeUtc(LuceneCommon.IndexMetadataPath, DateTime.UtcNow);
            }
        }

        internal static IEnumerable<string> TokenizeId(string term)
        {
            // First tokenize the result by id-separators. For e.g. tokenize SignalR.EventStream as SignalR and EventStream
            var tokens = term.Split(IdSeparators, StringSplitOptions.RemoveEmptyEntries);

            // For each token, further attempt to tokenize camelcase values. e.g. .EventStream -> Event, Stream. 
            var result = tokens.Concat(new[] { term })
                .Concat(tokens.SelectMany(CamelCaseTokenize))
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .ToList();
            return result;
        }

        private static IEnumerable<string> CamelCaseTokenize(string term)
        {
            const int minTokenLength = 3;
            if (term.Length < minTokenLength)
            {
                yield break;
            }

            int tokenEnd = term.Length;
            for (int i = term.Length - 1; i > 0; i--)
            {
                // If the remainder is fewer than 2 chars or we have a token that is at least 2 chars long, tokenize it.
                if (i < minTokenLength || (Char.IsUpper(term[i]) && (tokenEnd - i >= minTokenLength)))
                {
                    if (i < minTokenLength)
                    {
                        // If the remainder is smaller than 2 chars, just return the entire string
                        i = 0;
                    }

                    yield return term.Substring(i, tokenEnd - i);
                    tokenEnd = i;
                }
            }

            // Finally return the term in entirety
            yield return term;
        }


    }
}