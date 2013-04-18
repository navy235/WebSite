using System;
using System.Linq;
using System.Collections.Generic;
namespace Maitonn.Web
{
    public interface IArticleCateService
    {
        IQueryable<ArticleCate> GetALL();

        IQueryable<ArticleCate> GetKendoALL();

        void Create(ArticleCate model);

        void Update(ArticleCate model);

        void Delete(ArticleCate model);

        ArticleCate Find(int ArticleCateID);

    }
}