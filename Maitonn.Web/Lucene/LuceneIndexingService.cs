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
using Ninject;
using Directory = System.IO.Directory;
using Maitonn.Core;

namespace Maitonn.Web
{

    public interface IIndexingService
    {
        void UpdateIndex();
    }

    public class LuceneIndexingService : IIndexingService
    {
        private static readonly object IndexWriterLock = new object();

        private static readonly TimeSpan IndexRecreateInterval = TimeSpan.FromDays(3);
        private static readonly char[] IdSeparators = new[] { '.', '-' };
        private static IndexWriter _indexWriter;
        private readonly EntitiesContext _entitiesContext;

        public LuceneIndexingService()
            : this(new EntitiesContext())
        {
        }

        [Inject]
        public LuceneIndexingService(IUnitOfWork entitiesContext)
        {
            _entitiesContext = (EntitiesContext)entitiesContext;
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

                // Reset the lastWriteTime to null. This will allow us to get a fresh copy of all the latest \ latest successful OutDoors
                lastWriteTime = null;

                // Set the index create time to now. This would tell us when we last rebuilt the index.
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

        protected internal virtual List<OutDoorIndexEntity> GetOutDoors(UnitOfWork context, DateTime? lastIndexTime)
        {
            List<OutDoorIndexEntity> result = new List<OutDoorIndexEntity>();
            IEnumerable<OutDoor> OutDoors = context.Set<OutDoor>()
                .Include(x => x.Area)
                .Include(x => x.AreaAtt)
                .Include(x => x.PeriodCate)
                .Include(x => x.FormatCate).OrderBy(x => x.AddTime);

            if (lastIndexTime == null)
            {

            }
            else
            {
                OutDoors = OutDoors.Where(x => x.AddTime > lastIndexTime);

            }
            foreach (var x in OutDoors.ToList())
            {

                OutDoorIndexEntity item = new OutDoorIndexEntity()
                {
                    MediaID = x.MediaID,
                    CityName = x.Area.CateName,
                    PCityName = x.Area.CateName,
                    AreaAtt = String.Join(",", x.AreaAtt.Select(y => y.AttName)),
                    Description = x.Description,
                    FormatName = x.FormatCate.CateName,
                    Hit = x.Hit,
                    MediaCateName = x.OutDoorMediaCate.CateName,
                    PMediaCateName = x.OutDoorMediaCate.CateName,
                    OwnerCateName = x.OutDoorMediaCate.CateName,
                    PeriodName = x.PeriodCate.CateName,
                    Price = Convert.ToInt32(x.Price),
                    Published = x.AddTime,
                    Title = x.Name
                };
                result.Add(item);

            }
            return result;
        }

        private static void AddOutDoors(List<OutDoorIndexEntity> OutDoors, bool creatingIndex)
        {
            if (!creatingIndex)
            {
                // If this is not the first time we're creating the index, clear any OutDoor registrations for OutDoors we are going to updating.
                var OutDoorsToDelete = from MediaID in OutDoors.Select(p => p.MediaID).Distinct()
                                       select new Term("MediaID", MediaID.ToString(CultureInfo.InvariantCulture));
                _indexWriter.DeleteDocuments(OutDoorsToDelete.ToArray());
            }

            // As per http://stackoverflow.com/a/3894582. The IndexWriter is CPU bound, so we can try and write multiple OutDoors in parallel.
            // The IndexWriter is thread safe and is primarily CPU-bound. 
            foreach (var d in OutDoors)
            {
                AddOutDoor(d);
            }
            //Parallel.ForEach(OutDoors, AddOutDoor);

            _indexWriter.Commit();
        }

        private static void AddOutDoor(OutDoorIndexEntity OutDoor)
        {
            var document = new Document();

            var field = new Field("Title", OutDoor.Title, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 2.5f;
            document.Add(field);

            field = new Field("Description", OutDoor.Description, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 2.1f;
            document.Add(field);

            field = new Field("AreaAtt", OutDoor.AreaAtt, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("CityName", OutDoor.CityName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("PCityName", OutDoor.PCityName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("MediaCateName", OutDoor.MediaCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("PMediaCateName", OutDoor.PMediaCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("FormatName", OutDoor.FormatName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("PeriodName", OutDoor.PeriodName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            field = new Field("OwnerCateName", OutDoor.OwnerCateName, Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);


            field = new Field("Price", OutDoor.Price.ToString(), Field.Store.NO, Field.Index.ANALYZED);
            field.Boost = 0.8f;
            document.Add(field);

            document.Add(new Field("MediaID", OutDoor.MediaID.ToString(CultureInfo.InvariantCulture), Field.Store.YES, Field.Index.NO));

            document.Add(new Field("Published", OutDoor.Published.Ticks.ToString(), Field.Store.NO, Field.Index.NOT_ANALYZED));
            document.Add(
                new Field("Hit", OutDoor.Hit.ToString(CultureInfo.InvariantCulture), Field.Store.NO, Field.Index.NOT_ANALYZED));

            string displayName = OutDoor.Title;

            document.Add(new Field("DisplayName", displayName.ToLower(CultureInfo.CurrentCulture), Field.Store.NO, Field.Index.NOT_ANALYZED));

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
            //var analyzer = new StandardAnalyzer(LuceneCommon.LuceneVersion);
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