﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Maitonn.Web
{
    public interface ISliderImgService
    {
        IQueryable<SliderImg> GetALL();

        IQueryable<SliderImg> GetKendoALL();

        void Create(SliderImg model);

        void Update(SliderImg model);

        void Delete(SliderImg model);

        SliderImg Find(int ID);
    }
}