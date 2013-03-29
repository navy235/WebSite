using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class TimeQuantumAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "请正确设置{0}";

        public TimeQuantumAttribute()
            : base(_defaultErrorMessage)
        {

        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return String.Format(_defaultErrorMessage, name);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            var thisValue = (string)value;
            if (string.IsNullOrEmpty(thisValue))
            {
                return null;
            }
            if (thisValue.IndexOf('|') != -1)
            {
                var startValue = Convert.ToInt32(thisValue.Split('|')[0]);
                var endValue = Convert.ToInt32(thisValue.Split('|')[1]);
                if (startValue >= endValue)
                {
                    var message = FormatErrorMessage(validationContext.DisplayName);
                    return new ValidationResult(message);
                }
            }

            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationTimeQuantum(FormatErrorMessage(metadata.DisplayName)) };
        }
    }
    public class ModelClientValidationTimeQuantum : ModelClientValidationRule
    {
        public ModelClientValidationTimeQuantum(string errorMessage)
        {
            ErrorMessage = errorMessage;
            ValidationType = "timequantum";
        }
    }
}
