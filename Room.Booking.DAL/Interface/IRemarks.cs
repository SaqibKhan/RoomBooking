using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.DAL
{
    public interface IRemarks
    {
        List<CustomerReview> GetCustomerRemarks();
     
    }
}
