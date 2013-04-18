using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface IArticleService
    {
        IQueryable<Article> GetALL();

        IQueryable<Article> GetALL(int ArticleCode);

        IQueryable<Article> GetKendoALL();

        void Create(Article model);

        void Update(ArticleViewModel model);

        void Delete(Article model);

        Article Find(int ArticleID);

        Article IncludeFind(int ArticleID);

       
    }
}