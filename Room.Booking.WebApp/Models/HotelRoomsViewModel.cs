using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Room.Booking.WebApp.Models
{
    [DataContract]
    public class HotelRoomsViewModel
    {
        [DataMember]
        public List<SuppliersRooms> suppliersRooms { get; set; }

        [DataMember]
        public List<HotelRoom> RoomTypes { get; set; }

    }
}