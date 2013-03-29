using System.Linq;

namespace Maitonn.Web
{
    public interface IEntityRepository<T>
        where T : class, new()
    {
        void CommitChanges();
        void DeleteOnCommit(T entity);
        T GetEntity(int key);
        IQueryable<T> GetAll();
        int InsertOnCommit(T entity);
    }
}