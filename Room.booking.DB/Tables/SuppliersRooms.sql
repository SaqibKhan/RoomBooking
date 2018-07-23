CREATE TABLE [dbo].[SuppliersRooms](
	[SuppliersRoomsId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[RoomID] [nchar](10) NULL,
	[Price] [money] NULL,
	[Remarks] [nvarchar](500) NULL,
 CONSTRAINT [PK_SuppliersRoomsId] PRIMARY KEY CLUSTERED 
(
	[SuppliersRoomsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO