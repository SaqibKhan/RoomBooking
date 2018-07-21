using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.WebAPI.Test
{
    [TestFixture]
    public class RoomsController_Tests
    {

        //private ICheckqueTranslator _checkqueTranslator;
        //private ILogger _logger;
        //private ChequeWriterController _controller;
        //private ChecqueResult _checqueResult = new ChecqueResult() { Name = "Saqib", AmountInWords = "THREE THOUSAND TWENTY FIVE DOLLARS AND THIRTY SIX CENTS" };

        [SetUp]
        public void SetUp()
        {
            //_checkqueTranslator = Substitute.For<ICheckqueTranslator>(); //  Mock the checkqueTranslator 
            //_logger = Substitute.For<ILogger>(); // we need logger because WebAPI need this logger to log the activity
            //_controller = new ChequeWriterController(_checkqueTranslator, _logger)  // WebAPI controller
            //{
            //    Request = new HttpRequestMessage()
            //    {
            //        Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
            //    }
            //};
        }

        [TestCase]
        public void Call_NumbersToWords_WithIntergerParamter_ShouldResutrnCorrentStringValue()
        {

            //ACT


            // Assert  
            //      Assert.AreEqual("FIFTY THOUSAND TWO HUNDRED SIXTY THREE", result);
            //Arrange

            //var writer = _checkqueTranslator.TranslateChequeToWords("Saqib", 3025.36m).Returns(_checqueResult);

            //ACT
            //_controller.Translate("Saqib", 3025.36m);

            // Assert 
            //_checkqueTranslator.Received(1); // should be call and only one per request

        }
    }
}
