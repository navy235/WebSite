using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class RequireWithAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "{0}和{1}必填其中一项";
        public string _basePropertyName;
        public string _baseDisplayName;
        public RequireWithAttribute(string basePropertyName, string baseDisplayName)
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
            var baseValue = (string)basePropertyInfo.GetValue(validationContext.ObjectInstance, null);

            var thisValue = (string)value;

            //Actual comparision  
            if (string.IsNullOrEmpty(baseValue) && string.IsNullOrEmpty(thisValue))
            {
                var message = FormatErrorMessage(validationContext.DisplayName);
                return new ValidationResult(message);
            }

            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationRequireWith(FormatErrorMessage(metadata.DisplayName), _basePropertyName) };
        }
    }
    public class ModelClientValidationRequireWith : ModelClientValidationRule
    {
        public ModelClientValidationRequireWith(string errorMessage, string basePropertyName)
        {
            ErrorMessage = errorMessage;
            ValidationType = "requirewith";
            ValidationParameters.Add("requireto", basePropertyName);
        }
    }
}
