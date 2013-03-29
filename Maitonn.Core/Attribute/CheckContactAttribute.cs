using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class CheckContactAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "{0}内容太过于简单或者含有联系方式";

        public CheckContactAttribute()
            : base(_defaultErrorMessage)
        {

        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return string.Format(_defaultErrorMessage, name);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            var thisValue = (string)value;
            if (string.IsNullOrEmpty(thisValue))
            {
                return null;
            }
            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationCheckMessage(FormatErrorMessage(metadata.DisplayName)) };
        }
    }
    public class ModelClientValidationCheckMessage : ModelClientValidationRule
    {
        public ModelClientValidationCheckMessage(string errorMessage)
        {
            ErrorMessage = errorMessage;
            ValidationType = "checkcontact";

        }
    }
}
