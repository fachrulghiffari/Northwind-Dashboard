ALTER TABLE "Categories" 
    ALTER COLUMN "CategoryID" TYPE smallint,
    ALTER COLUMN "CategoryName" TYPE text,
	ALTER COLUMN "Description" TYPE text,
	ALTER COLUMN "Picture" TYPE text,
	
	ALTER COLUMN "CategoryID" SET NOT NULL,
    ALTER COLUMN "CategoryName" SET NOT NULL;

ALTER TABLE "CustomerCustomerDemo"
	ALTER COLUMN "CustomerID" TYPE char(5),
    ALTER COLUMN "CustomerTypeID" TYPE char(10),
	
	ALTER COLUMN "CustomerID" SET NOT NULL,
    ALTER COLUMN "CustomerTypeID" SET NOT NULL;
	
ALTER TABLE "CustomerDemographics"
    ALTER COLUMN "CustomerTypeID" TYPE char(10),
	ALTER COLUMN "CustomerDesc" TYPE text,
	
	ALTER COLUMN "CustomerTypeID" SET NOT NULL;
	
ALTER TABLE "Customers"
    ALTER COLUMN "CustomerID" TYPE char(5),
	ALTER COLUMN "CompanyName" TYPE text,
	ALTER COLUMN "ContactName" TYPE text,
    ALTER COLUMN "ContactTitle" TYPE text,
	ALTER COLUMN "Address" TYPE text,
	ALTER COLUMN "City" TYPE text,
	ALTER COLUMN "Region" TYPE text,
	ALTER COLUMN "PostalCode" TYPE text,
    ALTER COLUMN "Country" TYPE text,
	ALTER COLUMN "Phone" TYPE text,
	ALTER COLUMN "Fax" TYPE text,
	
	ALTER COLUMN "CustomerID" SET NOT NULL,
	ALTER COLUMN "CompanyName" SET NOT NULL;
	
ALTER TABLE "EmployeeTerritories"
    ALTER COLUMN "EmployeeID" TYPE smallint,
	ALTER COLUMN "TerritoryID" TYPE text,
	
	ALTER COLUMN "EmployeeID" SET NOT NULL,
	ALTER COLUMN "TerritoryID" SET NOT NULL;
	
ALTER TABLE "Employees"
    ALTER COLUMN "EmployeeID" TYPE smallint,
	ALTER COLUMN "LastName" TYPE text,
	ALTER COLUMN "FirstName" TYPE text,
    ALTER COLUMN "Title" TYPE text,
	ALTER COLUMN "TitleOfCourtesy" TYPE text,
	ALTER COLUMN "BirthDate" TYPE date,
	ALTER COLUMN "HireDate" TYPE date,
	ALTER COLUMN "Address" TYPE text,
    ALTER COLUMN "City" TYPE text,
	ALTER COLUMN "Region" TYPE text,
	ALTER COLUMN "PostalCode" TYPE text,
	ALTER COLUMN "Country" TYPE text,
    ALTER COLUMN "HomePhone" TYPE text,
	ALTER COLUMN "Extension" TYPE text,
	ALTER COLUMN "Photo" TYPE text,
	ALTER COLUMN "Notes" TYPE text,
	ALTER COLUMN "ReportsTo" TYPE text,
	ALTER COLUMN "PhotoPath" TYPE text,
	
	ALTER COLUMN "EmployeeID" SET NOT NULL,
	ALTER COLUMN "LastName" SET NOT NULL,
	ALTER COLUMN "FirstName" SET NOT NULL;
	
ALTER TABLE "Order Details"
    ALTER COLUMN "OrderID" TYPE int,
	ALTER COLUMN "ProductID" TYPE smallint,
	ALTER COLUMN "UnitPrice" TYPE money
	USING "UnitPrice"::numeric::money,
    ALTER COLUMN "Quantity" TYPE smallint,
	ALTER COLUMN "Discount" TYPE real,
	
    ALTER COLUMN "OrderID" SET NOT NULL,
	ALTER COLUMN "ProductID" SET NOT NULL,
	ALTER COLUMN "UnitPrice" SET NOT NULL,
    ALTER COLUMN "Quantity" SET NOT NULL,
	ALTER COLUMN "Discount" SET NOT NULL;
	
ALTER TABLE "Orders"
    ALTER COLUMN "OrderID" TYPE int,
    ALTER COLUMN "CustomerID" TYPE char(5),
    ALTER COLUMN "EmployeeID" TYPE smallint,
    ALTER COLUMN "OrderDate" TYPE date,
	ALTER COLUMN "RequiredDate" TYPE date,
	ALTER COLUMN "ShippedDate" TYPE date,
    ALTER COLUMN "ShipVia" TYPE smallint,
	ALTER COLUMN "Freight" TYPE money
	USING "Freight"::numeric::money,
	ALTER COLUMN "ShipName" TYPE text,
	ALTER COLUMN "ShipAddress" TYPE text,
    ALTER COLUMN "ShipCity" TYPE text,
	ALTER COLUMN "ShipRegion" TYPE text,
	ALTER COLUMN "ShipPostalCode" TYPE text,
	ALTER COLUMN "ShipCountry" TYPE text,
	
	ALTER COLUMN "OrderID" SET NOT NULL;
	
ALTER TABLE "Products"
    ALTER COLUMN "ProductID" TYPE smallint,
    ALTER COLUMN "ProductName" TYPE text,
    ALTER COLUMN "SupplierID" TYPE smallint,
    ALTER COLUMN "CategoryID" TYPE smallint,
	ALTER COLUMN "QuantityPerUnit" TYPE text,
    ALTER COLUMN "UnitPrice" TYPE money
	USING "UnitPrice"::numeric::money,
	ALTER COLUMN "UnitsInStock" TYPE smallint,
    ALTER COLUMN "UnitsOnOrder" TYPE smallint,
    ALTER COLUMN "ReorderLevel" TYPE smallint,
    ALTER COLUMN "Discontinued" TYPE boolean,
	
    ALTER COLUMN "ProductID" SET NOT NULL,
    ALTER COLUMN "ProductName" SET NOT NULL;
	
ALTER TABLE "Region"
    ALTER COLUMN "RegionID" TYPE smallint,
    ALTER COLUMN "RegionDescription" TYPE char(50),
	
	ALTER COLUMN "RegionID" SET NOT NULL,
    ALTER COLUMN "RegionDescription" SET NOT NULL;
	
ALTER TABLE "Shippers"
    ALTER COLUMN "ShipperID" TYPE smallint,
    ALTER COLUMN "CompanyName" TYPE text,
    ALTER COLUMN "Phone" TYPE text,
	
	ALTER COLUMN "ShipperID" SET NOT NULL,
    ALTER COLUMN "CompanyName" SET NOT NULL;

ALTER TABLE "Suppliers"
    ALTER COLUMN "SupplierID" TYPE smallint,
    ALTER COLUMN "CompanyName" TYPE text,
    ALTER COLUMN "ContactName" TYPE text,
    ALTER COLUMN "ContactTitle" TYPE text,
	ALTER COLUMN "Address" TYPE text,
    ALTER COLUMN "City" TYPE text,
    ALTER COLUMN "Region" TYPE text,
    ALTER COLUMN "PostalCode" TYPE text,
    ALTER COLUMN "Country" TYPE text,
	ALTER COLUMN "Phone" TYPE text,
    ALTER COLUMN "Fax" TYPE text,
	ALTER COLUMN "HomePage" TYPE text,
	
	ALTER COLUMN "SupplierID" SET NOT NULL,
    ALTER COLUMN "CompanyName" SET NOT NULL;
	
ALTER TABLE "Territories"
    ALTER COLUMN "TerritoryID" TYPE text,
    ALTER COLUMN "TerritoryDescription" TYPE char(50),
    ALTER COLUMN "RegionID" TYPE smallint,
	
	ALTER COLUMN "TerritoryID" SET NOT NULL,
    ALTER COLUMN "TerritoryDescription" SET NOT NULL,
    ALTER COLUMN "RegionID" SET NOT NULL;