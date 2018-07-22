
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
            HotelRoomsViewModel suppliersRoomVm = new HotelRoomsViewModel();
            if (response.IsSuccessStatusCode)
            {
                suppliersRoomVm.suppliersRooms = JsonConvert.DeserializeObject<List<SuppliersRooms>>(response.Content.ReadAsStringAsync().Result);                           
            }
            

            return View("Index", suppliersRoomVm);
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