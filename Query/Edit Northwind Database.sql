UPDATE Orders
SET OrderDate = DATEADD(YEAR, 25, OrderDate),
	RequiredDate = DATEADD(YEAR, 25, RequiredDate),
	ShippedDate = DATEADD(YEAR, 25, ShippedDate);

UPDATE [Order Details]
SET UnitPrice = ROUND(UnitPrice + (UnitPrice * 0.701), 2); 

UPDATE Products
SET UnitPrice = ROUND(UnitPrice + (UnitPrice * 0.701), 2);
