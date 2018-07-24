using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.Entities
{
   public class CustomerReview
    {
        public int ReviewId { get; set; }
        public int SupplierId { get; set; }
        public int Rating { get; set; }
        public string Title { get; set; }
        public string UniqueLabels { get; set; }
        public string CustomerRemarks { get; set; }
    }
}
