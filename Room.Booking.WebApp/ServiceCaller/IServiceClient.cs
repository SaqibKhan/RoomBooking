using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.WebApp.ServiceCaller
{
    public interface IServiceClient
    {
        HttpResponseMessage CallApi(string Url);
    }
}
