using Room.Booking.Entities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;

namespace Room.Booking.WebApp.ServiceCaller
{
    public class ServiceClient:IServiceClient
    {       
        public HttpResponseMessage CallApi(string Url)
        {
            string baseUrl = "http://localhost:58611/";
            HttpResponseMessage response = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseUrl);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                response = client.GetAsync(Url).Result;
            }
            return response;
        }
       
    }
}