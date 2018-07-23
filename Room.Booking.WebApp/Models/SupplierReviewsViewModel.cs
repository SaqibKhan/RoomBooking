using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Room.Booking.WebApp.Models
{
    [DataContract]
    public class SupplierViewModel
    {
        [DataMember]
        public List<CustomerReview> CustomerReviews { get; set; }

        [DataMember]
        public string Label { get; set; }

    }
    public class SupplierReviewsViewModel
    {
        [DataMember]
        public List<SupplierViewModel> SupplierReviews { get; set; }
 
    }
}