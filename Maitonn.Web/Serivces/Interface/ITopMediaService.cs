using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface ITopMediaService
    {
        ServiceResult PayTopMedia(List<TopMedia> model, int price);

        IQueryable<TopMedia> GetALL();

        IQueryable<TopMedia> GetKendoALL();

        void Create(TopMedia model);

        void Update(TopMedia model);

        void Delete(TopMedia model);

        TopMedia Find(int ID);

        List<TopLimitModel> GetTopSourceLimit(int day);
    }

}