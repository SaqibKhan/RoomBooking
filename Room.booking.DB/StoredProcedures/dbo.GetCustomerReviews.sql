CREATE PROCEDURE dbo.GetCustomerReviews
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
	  ,'Couple friendly,Pure bliss,Memorable' as UniqueLabels 
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