using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;
using System.Data.Entity;
namespace Maitonn.Web
{
    public class ArticleService : IArticleService
    {
        private readonly IUnitOfWork DB_Service;

        public ArticleService(IUnitOfWork DB_Service)
        {
            this.DB_Service = DB_Service;
        }


        public IQueryable<Article> GetALL()
        {
            return DB_Service.Set<Article>();
        }

        public IQueryable<Article> GetALL(int ArticleCode)
        {
            return DB_Service.Set<Article>().Where(x => x.ArticleCode == ArticleCode);
        }

        public IQueryable<Article> GetKendoALL()
        {
            DB_Service.SetProxyCreationEnabledFlase();
            return DB_Service.Set<Article>();
        }

        public void Create(Article model)
        {

            DB_Service.Add<Article>(model);

            DB_Service.Commit();
        }

        public void Update(ArticleViewModel model)
        {

            Article article = Find(model.ID);
            DB_Service.Attach<Article>(article);
            article.ArticleCode = model.ArticleCode;
            article.Content = model.Content;
            article.Name = model.Name;
            article.LastTime = DateTime.Now;
            DB_Service.Commit();
        }

        public void Delete(Article model)
        {
            var target = Find(model.ID);
            DB_Service.Remove<Article>(target);
            DB_Service.Commit();
        }

        public Article Find(int ArticleID)
        {
            return DB_Service.Set<Article>().Single(x => x.ID == ArticleID);
        }


        public Article IncludeFind(int ArticleID)
        {
            return DB_Service.Set<Article>()
                .Include(x=>x.ArticleCate)
                .Single(x => x.ID == ArticleID);
        }

    }
}