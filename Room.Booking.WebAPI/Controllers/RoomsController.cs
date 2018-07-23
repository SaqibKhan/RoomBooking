using Room.Booking.Business;
using Room.Booking.Common.Logger;
using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Room.Booking.WebAPI.Controllers
{
    public class RoomsController : ServiceBase
    {
        private IRoomFinder _roomFinder;
        private ICustomerReview _customerReview;
        public RoomsController(IRoomFinder roomFinder, ICustomerReview customerReview,ILogger logger) : base(logger)
        {
            _roomFinder = roomFinder;
            _customerReview = customerReview;
        }

        [HttpGet]
        [Route("api/rooms")]
        public HttpResponseMessage GetRooms() => ServiceAction(() =>
        {
            return _roomFinder.GetRooms();
        }, $"Getting Supplier Rooms");

        [HttpGet]
        [Route("api/GetRoomTypes")]
        public HttpResponseMessage GetRoomTypes() => ServiceAction(() =>
        {
            List<HotelRoom> RoomTypes = new List<HotelRoom>
            {
                new HotelRoom { RoomTypeId = 1, RoomType = "Deluxe Room", Description = "Deluxe Room" },
                new HotelRoom { RoomTypeId = 2, RoomType = "Superior", Description = "Superior Room" },
                new HotelRoom { RoomTypeId = 3, RoomType = "Deluxe Room 1BED", Description = "Deluxe Room 1BED" },
                new HotelRoom { RoomTypeId = 4, RoomType = "DBL DLX Room", Description = "DBL DLX Room" }
            };
            return RoomTypes;
        }, $"Getting Room Types");


        [HttpGet]
        [Route("api/SuppliersReview")]
        public HttpResponseMessage GetSupplierReview() => ServiceAction(() =>
        {
            return _customerReview.GetSuppliersReview();
        }, $"Getting Supplier Rooms");
    }
}
