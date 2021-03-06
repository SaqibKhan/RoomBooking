USE -- Select you Database Name
GO
/****** Object:  FullTextCatalog [TripAdvisor_Catalog]    Script Date: 7/24/2018 3:22:32 AM ******/
CREATE FULLTEXT CATALOG [TripAdvisor_Catalog]WITH ACCENT_SENSITIVITY = ON
AS DEFAULT

GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [int] NOT NULL,
	[RoomType] [nvarchar](100) NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](300) NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierReviews]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierReviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [nvarchar](300) NULL,
	[Rating] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[CustomerRemarks] [nvarchar](3000) NULL,
 CONSTRAINT [PK_SupplierReviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuppliersRooms]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersRooms](
	[SuppliersRoomsId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [int] NULL,
	[RoomTypeId] [nchar](10) NULL,
	[Price] [money] NULL,
	[Remarks] [nvarchar](500) NULL,
 CONSTRAINT [PK_SuppliersRooms] PRIMARY KEY CLUSTERED 
(
	[SuppliersRoomsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomType], [Description]) VALUES (1, N'Deluxe Room', N'Delux Room ')
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomType], [Description]) VALUES (2, N'Superior', N'Superio Room')
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomType], [Description]) VALUES (3, N'Deluxe Room 1BED', N'Deluxe Room 1BED')
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomType], [Description]) VALUES (4, N'DBL DLX Room', N'DBL DLX Room')
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [Address]) VALUES (1, N'Supplier A', N'SupplierA Address ')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [Address]) VALUES (2, N'Supplier B', N'SupplierB Address ')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [Address]) VALUES (3, N'Supplier C', N'Supplier C Address ')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [Address]) VALUES (4, N'Supplier D', N'Supplier D Address ')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[SupplierReviews] ON 

INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (1, N'1', 3, N'Couple friendly', N'Couple friendly’')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (2, N'2', 4, N'Popular with Family travelers', N'Popular with Family travelers')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (3, N'3', 5, N'Romantic', N'Romantic')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (4, N'4', 3, N'Fabulous Experience', N'We were lucky enough to stay here for 7 days in early May. We were in a beautiful, large room overlooking the ocean and the infinity pool, the view was amazing! This is such a relaxed and friendly place to stay and while your on the doorstep of nearly everything there is really no need to leave the resort. We did yoga every morning, went to enjoy the beautiful breakfast - which is not a buffet as you can order what you want from an extensive menu, and then sit by one of the beautiful pools relaxing for a few hours. We were able to enjoy sunset drinks on the lounges at the bar at Alila or walk a short distance along the beach to Potato head or Ku de ta. There were great shops and restaurants all around us. The bed was especially comfortable and the air-conditioning was always quiet and at a good temperature. The staff are what really stands out at Alila. The resort is large enough to feel uncrowded but small enough to get to know many of the lovely staff during the stay. We were lucky enough to meet Pierre and Helmut who were very friendly and Rina who was an amazing help to us after an unavoidable incident. The spa is a relaxing and beautiful space. We hope to return again for a longer time and enjoy this wonderful place. Thank you for making our holiday one to remember')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (5, N'3', 4, N'Pure bliss', N'We stayed in the Deluxe studios on the third floor. We were lucky enough to have an ocean view and it was such a treat waking in the morning to the sound of the ocean. There is a little bridge that connects the deluxe studio building to the main building but it literally only takes two minutes to walk across and is honestly no hassle... some of the other reviews on here make it seem much further than it is. There is a third building, with standard studios and they are further again. I can’t say much of the those studios as I didn’t see them but I’d imagine you would feel a little too separate from the hotel if you opted for them and couldn’t see that they would provide much of a view. In my opinion if the main building rooms are out of your budget then the deluxe studios are perfect, and beautifully decorated with everything you need with that luxury feeling. 
')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (6, N'2', 5, N'Memorable', N'Excellent pool and leisure facilities with a restuarant and menus that catered to healthy clean options. The staff were magnificent, complemented by an attentive reachable management team. The location was perfect and numerous levels of detail not normally found in other hotels/resorts. Great evening (not tacky) entertainment at pool area.
Kids had a great area to play.')
INSERT [dbo].[SupplierReviews] ([ReviewId], [SupplierId], [Rating], [Title], [CustomerRemarks]) VALUES (7, N'3', 3, N'Short business trip', N'Nice pool and bar
Friendly staff
Strict environment just for hotel guest which is good!
This place is a romantic spot for couple and fun for family
Have not tried the food 
They have variety western food
Non alcohol and alcohol 
They provide sunscreen to all guest!')
SET IDENTITY_INSERT [dbo].[SupplierReviews] OFF
SET IDENTITY_INSERT [dbo].[SuppliersRooms] ON 

INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (1, 1, N'1         ', 300.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (2, 1, N'2         ', 200.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (3, 1, N'3         ', 150.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (4, 1, N'4         ', 100.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (5, 2, N'1         ', 350.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (6, 2, N'2         ', 230.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (7, 2, N'3         ', 210.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (8, 2, N'4         ', 100.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (9, 3, N'1         ', 450.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (10, 3, N'2         ', 380.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (11, 3, N'3         ', 300.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (12, 3, N'4         ', 270.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (13, 4, N'1         ', 100.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (14, 4, N'2         ', 100.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (15, 4, N'3         ', 80.0000, NULL)
INSERT [dbo].[SuppliersRooms] ([SuppliersRoomsId], [SupplierId], [RoomTypeId], [Price], [Remarks]) VALUES (16, 4, N'4         ', 50.0000, NULL)
SET IDENTITY_INSERT [dbo].[SuppliersRooms] OFF
/****** Object:  FullTextIndex     Script Date: 7/24/2018 3:22:32 AM ******/
CREATE FULLTEXT INDEX ON [dbo].[SupplierReviews](
[CustomerRemarks] LANGUAGE 'English', 
[Title] LANGUAGE 'English')
KEY INDEX [PK_SupplierReviews]ON ([TripAdvisor_Catalog], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)


GO
/****** Object:  StoredProcedure [dbo].[GetAllRooms]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllRooms]
AS
BEGIN
SELECT SR.SupplierID, S.SupplierName, RT.RoomType,RT.RoomTypeId, SR.Price, SR.Remarks
FROM   [dbo].[SuppliersRooms] SR 
LEFT OUTER JOIN  Supplier S ON SR.SupplierId = S.SupplierId 
LEFT OUTER JOIN  RoomType RT ON RT.RoomTypeId=SR.RoomTypeId
END 

GO
/****** Object:  StoredProcedure [dbo].[GetCustomerReviews]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Muhammad Saqib>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomerReviews]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
  
  SELECT ReviewId ,[SupplierId]
      ,[Rating]  ,[Title]
	  ,'Romantic' as UniqueLabels 
      ,[CustomerRemarks]
  FROM [dbo].[SupplierReviews]
  WHERE FREETEXT (*, 'Romantic')
  UNION  
  SELECT ReviewId 
      ,[SupplierId]
      ,[Rating]
      ,[Title]
	  ,'Couple friendly' as UniqueLabels 
      ,[CustomerRemarks]
    FROM [dbo].SupplierReviews
    WHERE FREETEXT (*, 'Couple friendly,Pure bliss,Memorable')
  
  UNION
  
  SELECT ReviewId 
      ,[SupplierId]
      ,[Rating]
      ,[Title]
	  ,'Popular with Family travelers' as UniqueLabels 
      ,[CustomerRemarks]
    FROM [dbo].[SupplierReviews]
	WHERE FREETEXT (*,'Popular with Family travelers')

END

GO
/****** Object:  StoredProcedure [dbo].[GetRoomsByType]    Script Date: 7/24/2018 3:22:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRoomsByType]
 @RoomTypeId int   
AS
BEGIN
SELECT SR.SupplierID, S.SupplierName, RT.RoomType, SR.Price, SR.Remarks
FROM   [dbo].[SuppliersRooms] SR 
LEFT OUTER JOIN  Supplier S ON SR.SupplierId = S.SupplierId 
LEFT OUTER JOIN  RoomType RT ON RT.RoomTypeId=SR.RoomTypeId
where SR.RoomTypeId= @RoomTypeId
END 

GO
