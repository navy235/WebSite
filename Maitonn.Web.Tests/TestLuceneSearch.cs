using System;
using System.Collections.Generic;
using System.Linq;
using Lucene.Net.Documents;
using Lucene.Net.Search;
using Lucinq.Extensions;
using Lucinq.Interfaces;
using Lucinq.Querying;
using NUnit.Framework;



namespace Maitonn.Web.Tests
{
    [TestFixture]
    public class TestLuceneSearch
    {


        private LuceneSearch search;


        [TestFixtureSetUp]
        public void Setup()
        {
            search = new LuceneSearch("");
        }

        [TestFixtureTearDown]
        public void TearDown()
        {
            search.Dispose();
        }



    }
}
