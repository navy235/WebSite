using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using System.Linq;
using System.Collections.Generic;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true, Inherited = false)]
    public class CheckAreaAttribute : ValidationAttribute, IClientValidatable
    {
        public const string _defaultErrorMessage = "请正确设置宽度、高度、面数";

        public CheckAreaAttribute()
            : base(_defaultErrorMessage)
        {

        }
        //http://www.darkthread.net/miniajaxlab/multselfldvald/MultSelFieldValidation.htm
        //Override default FormatErrorMessage Method  
        public override string FormatErrorMessage(string name)
        {
            return string.Format(_defaultErrorMessage);
        }

        //Override IsValid  
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            var thisValue = (string)value;
            if (thisValue.IndexOf('|') > 0)
            {
                var values = thisValue.Split('|');
                var IsRegular = Convert.ToBoolean(values[0]);
                if (IsRegular)
                {
                    if (values.Length < 4)
                    {
                        var message = FormatErrorMessage(validationContext.DisplayName);
                        return new ValidationResult(message);
                    }
                    else
                    {

                        var isCheck = true;
                        for (var i = 1; i < values.Length; i++)
                        {
                            if (Convert.ToSingle(values[i]) <= 0 || string.IsNullOrEmpty(values[i]))
                            {
                                isCheck = false;
                            }
                        }
                        if (!isCheck)
                        {
                            var message = FormatErrorMessage(validationContext.DisplayName);
                            return new ValidationResult(message);
                        }
                    }
                }
                else
                {
                    if (values.Length < 2 || values.Length % 2 == 0)
                    {
                       
                    }
                    else
                    {
                        var isCheck = true;
                        for (var i = 1; i < values.Length; i++)
                        {
                            if (Convert.ToSingle(values[i]) <= 0 || string.IsNullOrEmpty(values[i]))
                            {
                                isCheck = false;
                            }
                        }
                        if (!isCheck)
                        {
                            var message = FormatErrorMessage(validationContext.DisplayName);
                            return new ValidationResult(message);
                        }
                    }
                }
            }
            //Default return - This means there were no validation error  
            return null;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] { new ModelClientValidationCheckArea(FormatErrorMessage(metadata.DisplayName)) };
        }
    }
    public class ModelClientValidationCheckArea : ModelClientValidationRule
    {
        public ModelClientValidationCheckArea(string errorMessage)
        {
            ErrorMessage = errorMessage;
            ValidationType = "checkarea";

        }
    }
}
