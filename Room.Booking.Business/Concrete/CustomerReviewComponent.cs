using Room.Booking.DAL;
using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.Business
{
   public class CustomerReviewComponent : ICustomerReview
    {
        IRemarks _remarks;
        public CustomerReviewComponent(IRemarks remarks)
        {
            _remarks = remarks;
        }       
        public List<CustomerReview> GetSuppliersReview() => _remarks.GetCustomerRemarks();
    }
}
