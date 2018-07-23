
using Newtonsoft.Json;
using Room.Booking.Entities;
using Room.Booking.WebApp.Models;
using Room.Booking.WebApp.ServiceCaller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Room.Booking.WebApp.Controllers
{
    public class HomeController : Controller
    {
        IServiceClient _client;
        /// <summary>
        /// Constructor containing dependency injunction 
        /// </summary>
        /// <param name="client"></param>
        public HomeController(IServiceClient client)
        {
            _client = client;
        }
        public ActionResult Index()
        {
            string requestURL = "api/rooms";// Get all the rooms
            var response = _client.CallApi(requestURL);
            var suppliersRoomVm = new HotelRoomsViewModel();

            if (response.IsSuccessStatusCode)
            {
                var suppliersRooms = JsonConvert.DeserializeObject<List<SuppliersRooms>>(response.Content.ReadAsStringAsync().Result);
                suppliersRoomVm.RoomsByRoomType = (from room in suppliersRooms
                                                   group room by room.RoomType into supplierRoomGroup
                                                   select new HotelRoomsModel { RoomTypes = supplierRoomGroup.Key, SuppliersRooms = supplierRoomGroup.ToList() }).ToList();

            }
            return View("Index", suppliersRoomVm);
        }

        public ActionResult Review()
        {
            string requestURL = "api/SuppliersReview";// Get all the rooms
            var response = _client.CallApi(requestURL);
            var supplierReviewsVm = new SupplierReviewsViewModel();

            if (response.IsSuccessStatusCode)
            {
                var lstsustomerReviews = JsonConvert.DeserializeObject<List<CustomerReview>>(response.Content.ReadAsStringAsync().Result);
                supplierReviewsVm.SupplierReviews = (from room in lstsustomerReviews
                                                     group room by room.UniqueLabels into supplierRoomGroup
                                                     select new SupplierViewModel { Label = supplierRoomGroup.Key, CustomerReviews = supplierRoomGroup.ToList() }).ToList();

            }
            return View("Review", supplierReviewsVm);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
    }
}