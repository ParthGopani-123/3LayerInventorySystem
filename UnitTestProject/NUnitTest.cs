using System;
using Models;
using DataAccess;
using _3LayerInventorySystem;
using BusinessLogic;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace UnitTestProject
{
    [TestFixture]
    public class NUnitTest
    {
        DBAccess db = new DBAccess();

        ModelSalesman testSalesman = new ModelSalesman
        {
            SalesmanId = 6001,
            Name = "Parth",
            City = "Waterloo",
            Commision = 0.20f
        };

        //[Test]
        //[SetUp]
        //public void TestInsertingSalesman()
        //{

        //    int expectedResult = 1;
                      
        //    int actualResult = db.InsertSalesman(testSalesman);
        //    Console.WriteLine(actualResult);
        //    Assert.AreEqual(expectedResult, actualResult);

        //}

        [Test]
        public void TestBusinessLayer()
        {
            int exceptedReult = 1;

            BusinessLayer bl = new BusinessLayer();
            int actualResult = bl.EnterNewSalesman(testSalesman);
            Assert.AreEqual(exceptedReult, actualResult);

        }

    }
}
