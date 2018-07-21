using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Room.Booking.WebAPI.Controllers
{
    public class RoomsController : ApiController
    {
        public RoomsController()
        {
        }
        [HttpGet]
        [Route("api/rooms")]
        public string GetString()
        {
            return "Test";
        }
    }
}
