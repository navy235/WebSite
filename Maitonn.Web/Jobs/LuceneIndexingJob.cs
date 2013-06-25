using System;
using System.Threading.Tasks;
using System.Data.Entity;
using WebBackgrounder;

namespace Maitonn.Web
{
    public class LuceneIndexingJob : Job
    {
        private readonly LuceneIndexingService _indexingService;

        private readonly Func<DbContext> _contextThunk;

        public LuceneIndexingJob(TimeSpan frequence, Func<DbContext> contextThunk, TimeSpan timeout)
            : base("Lucene", frequence, timeout)
        {

            _contextThunk = contextThunk;
            _indexingService = new LuceneIndexingService(_contextThunk);
            _indexingService.UpdateIndex();
        }

        public override Task Execute()
        {
            return new Task(_indexingService.UpdateIndex);
        }
    }
}