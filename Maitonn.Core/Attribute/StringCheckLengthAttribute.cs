using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class StringCheckLengthAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "{0}长度为{1}-{2}之间,中文占2个字符";
        public int _minlength;
        public int _maxlength;
        public StringCheckLengthAttribute(int minlength, int maxlength)
            : base(_defaultErrorMessage)
        {
            _minlength = minlength;
            _maxlength = maxlength;
        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return string.Format(_defaultErrorMessage, name, _minlength, _maxlength);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            var thisValue = (string)value;

            var length = GetStringLength(thisValue);
            //Actual comparision  
            if (length > _maxlength || length < _minlength)
            {
                var message = FormatErrorMessage(validationContext.DisplayName);
                return new ValidationResult(message);
            }

            //Default return - This means there were no validation error  
            return null;
        }

        private int GetStringLength(string strText)
        {
            int len = 0;

            for (int i = 0; i < strText.Length; i++)
            {
                byte[] byte_len = System.Text.Encoding.Default.GetBytes(strText.Substring(i, 1));
                if (byte_len.Length > 1)
                    len += 2;
                else
                    len += 1;
            }

            return len;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationStringCheckLength(FormatErrorMessage(metadata.DisplayName), _minlength, _maxlength) };
        }
    }
    public class ModelClientValidationStringCheckLength : ModelClientValidationRule
    {
        public ModelClientValidationStringCheckLength(string errorMessage, int minlength, int maxlength)
        {
            ErrorMessage = errorMessage;
            ValidationType = "stringchecklength";
            ValidationParameters.Add("minlength", minlength);
            ValidationParameters.Add("maxlength", maxlength);
        }
    }
}
