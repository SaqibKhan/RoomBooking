using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.Entities
{
    public class SuppliersRooms
    {
        public int SupplierID { get; set; }
        public string SupplierName { get; set; }
        public string RoomType { get; set; }
        public int Price { get; set; }
        public string Remarks { get; set; }
    }
}
