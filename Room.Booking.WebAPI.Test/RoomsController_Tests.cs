using Newtonsoft.Json;
using NSubstitute;
using NUnit.Framework;
using Room.Booking.Business;
using Room.Booking.Common.Logger;
using Room.Booking.Entities;
using Room.Booking.WebAPI.Controllers;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Hosting;


namespace Room.Booking.WebAPI.Test
{
    [TestFixture]
    public class RoomsController_Tests
    {

        private  ICustomerReview _customerReview;
        private IRoomFinder _roomFinder;
        private ILogger _logger;
     
        private RoomsController _controller;
        private List<CustomerReview> _lstReviews = new List<CustomerReview>();

        public RoomsController_Tests()
        {
            var test = "";
        }
        [SetUp]
        public void SetUp()
        {
            _customerReview = Substitute.For<ICustomerReview>(); //  Mock the ICustomerReview 
            _roomFinder = Substitute.For<IRoomFinder>(); //  Mock the IRoomFinder 
            _logger = Substitute.For<ILogger>(); // we need logger because WebAPI need this logger to log the activity

            // Fill the dummy Review list
            _lstReviews.Add(new CustomerReview { ReviewId = 1, Rating = 4, SupplierId = 1, Title = "Romantic", CustomerRemarks = "Very Romantic place",UniqueLabels="Romantic" });

            _controller = new RoomsController(_roomFinder, _customerReview, _logger)  // WebAPI controller
            {
                Request = new HttpRequestMessage()
                {
                    Properties = { { HttpPropertyKeys.HttpConfigurationKey, new HttpConfiguration() } }
                }
            };
        }

        [TestCase]
        public void Call_GetSuppliersReview_ShouldCall_customerReviewBusinessLogicMethod()
        {
            //Arrange
            var writer = _customerReview.GetSuppliersReview().Returns(_lstReviews);

            //ACT
            _controller.GetSupplierReview();

            // Assert 
            _customerReview.Received(1); // should be call and only one per request
        }
    }
}
