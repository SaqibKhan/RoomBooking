CREATE TABLE [dbo].[SupplierReviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [nvarchar](300) NULL,
	[Rating] [int] NULL,
	[Title] [nchar](50) NULL,
	[CustomerRemarks] [nvarchar](3000) NULL,
 CONSTRAINT [PK_SupplierReviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
