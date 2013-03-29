using System;
using System.Linq;
using System.Collections.Generic;
using Maitonn.Core;



namespace Maitonn.Web
{
    public interface IOwnerService
    {
        Owner FindByMediaID(int MediaID);
    }
}