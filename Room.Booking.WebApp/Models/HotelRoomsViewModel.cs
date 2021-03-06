﻿using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Room.Booking.WebApp.Models
{
    [DataContract]
    public class HotelRoomsModel
    {
        [DataMember]
        public List<SuppliersRooms> SuppliersRooms { get; set; }

        [DataMember]
        public string RoomTypes { get; set; }

    }
    public class HotelRoomsViewModel 
    {
        [DataMember]
        public List<HotelRoomsModel> RoomsByRoomType { get; set; }
 
    }
}