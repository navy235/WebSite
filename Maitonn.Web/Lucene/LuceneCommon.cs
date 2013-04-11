using System.IO;
using System.Web;
using Lucene.Net.Util;

namespace Maitonn.Web
{
    internal static class LuceneCommon
    {
        internal static readonly string IndexDirectory = Path.Combine(HttpRuntime.AppDomainAppPath, "App_Data", "Lucene");
        internal static readonly string IndexTestDirectory = Path.Combine(HttpRuntime.AppDomainAppPath, "App_Data", "LuceneTest");
        internal static readonly string IndexMetadataPath = Path.Combine(IndexDirectory, "index.metadata");
        internal static readonly Version LuceneVersion = Version.LUCENE_30;
    }
}