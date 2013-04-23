using System;
using System.Linq;
using System.Data.Entity;
using System.Collections.Generic;
namespace Maitonn.Core
{
    public interface IUnitOfWork : IDisposable
    {
        TEntity Add<TEntity>(TEntity entity) where TEntity : class;
        TEntity Attach<TEntity>(TEntity entity) where TEntity : class;
        IEnumerable<TElement> SqlQuery<TElement>(string sql, params object[] parameters);
        void SetProxyCreationEnabledFlase();
        void Commit();
        TEntity Remove<TEntity>(TEntity entity) where TEntity : class;
        IQueryable<TEntity> Set<TEntity>() where TEntity : class;
    }
}
