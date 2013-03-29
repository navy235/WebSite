using System;
using System.IO;
using Lucene.Net.Store;

namespace Maitonn.Web
{
    internal sealed class LuceneFileSystem : SimpleFSDirectory, IDisposable
    {
        public LuceneFileSystem(string path)
            : base(new DirectoryInfo(path))
        {
        }

        public void Dispose()
        {
            Close();
        }
    }
}