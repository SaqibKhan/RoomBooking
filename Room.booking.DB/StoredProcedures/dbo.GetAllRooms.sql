﻿CREATE PROCEDURE [dbo].[GetAllRooms]
AS
BEGIN
SELECT SR.SupplierID, S.SupplierName, RT.RoomType,RT.RoomTypeId,SR.Price, SR.Remarks
FROM   [dbo].[SuppliersRooms] SR 
LEFT OUTER JOIN  Supplier S ON SR.SupplierId = S.SupplierId 
LEFT OUTER JOIN  RoomType RT ON RT.RoomTypeId=SR.RoomTypeId
END 
GO


