using System;
using System.Linq;
using System.Collections.Generic;


namespace Maitonn.Web
{
    public interface IDepartmentService
    {
        IQueryable<Department> GetALL();

        IQueryable<Department> GetIncludeALL();
    }
}