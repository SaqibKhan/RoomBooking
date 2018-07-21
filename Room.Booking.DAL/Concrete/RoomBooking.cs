﻿using Dapper;
using Room.Booking.Common.Factory;
using Room.Booking.DAL;
using Room.Booking.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Room.Booking.DAL
{
    public class RoomBooking: IRoomBooking
    {
        readonly string dataProviderTypeValue;
        readonly DataProviderType dataProviderType;

        public RoomBooking()
        {
            dataProviderTypeValue = ConfigurationManager.AppSettings["DataProviderType"];
            dataProviderType = (DataProviderType)Enum.Parse(typeof(DataProviderType), dataProviderTypeValue);
        }

        public List<SuppliersRooms> GetSuppliersRooms()
        {
            using (IDbConnection db = DbConnectionFactory.GetDbConnection(dataProviderType))
            {
                return db.Query<SuppliersRooms> ("Select * From Author").ToList();
            }
        }
    }
}
