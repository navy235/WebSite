using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Maitonn.Core;

namespace Maitonn.Web
{
    public class ServiceError
    {
        public string PropertyName { get; set; }
        public string ErrorMessage { get; set; }

        public ServiceError(string property, string errorMessage)
        {
            this.PropertyName = property;
            this.ErrorMessage = errorMessage;
        }

        public ServiceError(string errorMessage)
        {
            this.PropertyName = string.Empty;
            this.ErrorMessage = errorMessage;
        }
    }

    public class ServiceResult
    {
        public ServiceResult() { }

        public ServiceResult(string message)
        {
            this.Message = message;
        }
        public bool Success
        {
            get { return serviceErrors.Count <= 0; }
        }

        [DisplayFormat(NullDisplayText = "")]
        public string Message { get; set; }

        protected List<ServiceError> serviceErrors = new List<ServiceError>();

        public void AddServiceError(string property, string errorMessage)
        {
            serviceErrors.Add(new ServiceError(property, errorMessage));
        }

        public void AddServiceError(string errorMessage)
        {
            serviceErrors.Add(new ServiceError(errorMessage));
        }

        public List<ServiceError> GetServiceErrors()
        {
            return serviceErrors;
        }
    }
}