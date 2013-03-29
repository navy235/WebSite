using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class ValueGreaterThanAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "{0}必须大于{1}";
        public string _basePropertyName;
        public string _baseDisplayName;
        public ValueGreaterThanAttribute(string basePropertyName, string baseDisplayName)
            : base(_defaultErrorMessage)
        {
            _basePropertyName = basePropertyName;
            _baseDisplayName = baseDisplayName;
        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return string.Format(_defaultErrorMessage, name, _baseDisplayName);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            //Get PropertyInfo Object  
            var basePropertyInfo = validationContext.ObjectType.GetProperty(_basePropertyName);

            //Get Value of the property  
            var startDate = (double)basePropertyInfo.GetValue(validationContext.ObjectInstance, null);

            var thisDate = (double)value;

            //Actual comparision  
            if (thisDate <= startDate)
            {
                var message = FormatErrorMessage(validationContext.DisplayName);
                return new ValidationResult(message);
            }

            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationValueGreaterThan(FormatErrorMessage(metadata.DisplayName), _basePropertyName) };
        }
    }
    public class ModelClientValidationValueGreaterThan : ModelClientValidationRule
    {
        public ModelClientValidationValueGreaterThan(string errorMessage, string basePropertyName)
        {
            ErrorMessage = errorMessage;
            ValidationType = "valuegreaterthan";
            ValidationParameters.Add("compareto", basePropertyName);
        }
    }
}
