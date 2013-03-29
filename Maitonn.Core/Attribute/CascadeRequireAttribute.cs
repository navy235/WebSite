using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class CascadeRequireAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "当有{0}时{1}必须填写";
        public string _basePropertyName;
        public string _baseDisplayName;
        public CascadeRequireAttribute(string basePropertyName, string baseDisplayName)
            : base(_defaultErrorMessage)
        {
            _basePropertyName = basePropertyName;
            _baseDisplayName = baseDisplayName;
        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm


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

            var thisValue = (bool)value;

            //Actual comparision  
            if (thisValue && string.IsNullOrEmpty(baseValue))
            {
                var message = FormatErrorMessage(validationContext.DisplayName);
                return new ValidationResult(message);
            }

            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationCascadeRequire(FormatErrorMessage(metadata.DisplayName), _basePropertyName) };
        }
    }
    public class ModelClientValidationCascadeRequire : ModelClientValidationRule
    {
        public ModelClientValidationCascadeRequire(string errorMessage, string basePropertyName)
        {
            ErrorMessage = errorMessage;
            ValidationType = "cascaderequire";
            ValidationParameters.Add("cascadeto", basePropertyName);
            ValidationParameters.Add("cascadeclass", "cascade");

        }
    }
}
