using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class CheckMaxLengthAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "{0}最多选择{1}项";
        public int _checkMaxLength;
        public CheckMaxLengthAttribute(int checkMaxLength)
            : base(_defaultErrorMessage)
        {
            _checkMaxLength = checkMaxLength;
        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return string.Format(_defaultErrorMessage, name, _checkMaxLength);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {


            var thisValue = (string)value;
            if (string.IsNullOrEmpty(thisValue))
            {
                return null;
            }
            if (thisValue.Split(',').Length > _checkMaxLength)
            {
                var message = FormatErrorMessage(validationContext.DisplayName);
                return new ValidationResult(message);
            }

            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationCheckMaxLength(FormatErrorMessage(metadata.DisplayName), _checkMaxLength) };
        }
    }
    public class ModelClientValidationCheckMaxLength : ModelClientValidationRule
    {
        public ModelClientValidationCheckMaxLength(string errorMessage, int checkMaxLength)
        {
            ErrorMessage = errorMessage;
            ValidationType = "checkmaxlength";
            ValidationParameters.Add("maxlength", checkMaxLength);
        }
    }
}
