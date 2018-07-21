using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.Common.Factory
{
    public enum DataProviderType
    {
        SqlServer,Oracle
    }

    public static class DbConnectionFactory
    {
        public static IDbConnection GetDbConnection(DataProviderType provider)
        {
            IDbConnection connection = null;
           
            switch (provider)
            {
                case DataProviderType.SqlServer:
                    connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RoomBookingConStr"].ConnectionString);
                    break;
                case DataProviderType.Oracle:
                    break;                
            }
            return connection;
        }        
    }
}
