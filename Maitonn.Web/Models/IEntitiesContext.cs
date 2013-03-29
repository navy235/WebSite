using System.Data.Entity;

namespace Maitonn.Web
{
    public interface IEntitiesContext
    {
        int SaveChanges();
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716:IdentifiersShouldNotMatchKeywords", MessageId = "Set", Justification = "This is to match the EF terminology.")]
        DbSet<T> Set<T>() where T : class;
    }
}