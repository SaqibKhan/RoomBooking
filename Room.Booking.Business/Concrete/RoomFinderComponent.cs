using Room.Booking.DAL;
using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.Business
{
   public class RoomFinderComponent:IRoomFinder
    {
        IRoomBooking _IRoomBooking;
        public RoomFinderComponent(IRoomBooking roomBooking)
        {
            _IRoomBooking = roomBooking;
        }
        public List<SuppliersRooms> GetRooms()=>_IRoomBooking.GetSuppliersRooms();
        
        public List<SuppliersRooms> GetRoomsByRoomType(int typeId) => _IRoomBooking.GetRoomsByRoomType(typeId);

    }
}
