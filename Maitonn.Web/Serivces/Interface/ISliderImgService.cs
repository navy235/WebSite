using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface ISliderImgService
    {

        List<TopLimitModel> GetTopSourceLimit(int day);

        ServiceResult PayTopSliderImg(List<SliderImg> model, int price);

        IQueryable<SliderImg> GetALL();

        IQueryable<SliderImg> GetKendoALL();

        void Create(SliderImg model);

        void Update(SliderImg model);

        void Delete(SliderImg model);

        SliderImg Find(int ID);
    }
}