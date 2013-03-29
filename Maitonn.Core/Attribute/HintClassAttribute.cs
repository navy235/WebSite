using System;
using System.Web.Mvc;

namespace Maitonn.Core
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = true)]
    public sealed class HintClassAttribute : System.Attribute, IMetadataAware
    {
        private readonly object _typeId = new Object();

        public HintClassAttribute(string hint)
        {
            Hint = hint;
        }

        public string Hint { get; private set; }

        public override object TypeId
        {
            get { return _typeId; }
        }

        public void OnMetadataCreated(ModelMetadata metadata)
        {
            if (metadata == null)
            {
                throw new ArgumentNullException("metadata");
            }
            metadata.AdditionalValues["HintClass"] = Hint;
        }
    }
}