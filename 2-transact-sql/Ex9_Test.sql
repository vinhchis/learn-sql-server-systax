-- 1. Use the Query Editor to execute a query. Ensure that a connection to a new server instance is established.
/* 1.a - Display all the territory names from the table Sales.SalesTerritory.*/
SELECT Name
FROM Sales.SalesTerritory
GO

/* 1.b - Display all the product descriptions from the table Production.ProductDescription.*/
SELECT Description
FROM Production.ProductDescription
GO

/* 1.c - Display the data in columns ProductID, Name, and ProductNumber from Production.Product table.*/
SELECT ProductID, Name, ProductNumber
FROM Production.Product
GO

/* 1.d - Display the bonus, commission percentage, and sales made in the previous year from the table
Sales.SalesPerson for the only those territories that have TerritoryID between 1 and 3. */
SELECT Bonus, CommissionPct, SalesLastYear
FROM Sales.SalesPerson
WHERE TerritoryID BETWEEN 1 AND 3
GO

-- 2. Create Transact-SQL code that will subtract six days from a given date. 
SET NOCOUNT ON; /* ngăn thông báo số bản ghi bị ảnh hưởng*/
DECLARE @startdate DATETIME, @adddays INT, @subdays INT;
SET @startdate = 'January 10, 1900 12:00 AM';
SET @adddays = 5;
SET @subdays = 6;
SET NOCOUNT OFF; /* thông báo số bản ghi bị ảnh hưởng*/
SELECT @startdate + 1.25 AS 'Start Date',
   @startdate + @adddays AS 'Add Date',
   @startdate - @subdays 'Sub Date';  	
GO

-- 3.
/* 3.a - Display all the records from Person.Address table having city as Montreal.*/
SELECT * 
FROM Person.Address
WHERE City = 'Montreal'
GO

/* 3.b -  Display all the records from HumanResources.Department table that have a value in
DepartmentID that is greater than or equal to the value 13.*/
SELECT *
FROM HumanResources.Department
WHERE DepartmentID >= 13
GO

/* 3.c - c) Display all the records from Production.ProductCategory table that do not have value
in ProductCategoryID that is equal to the value 3 or the value 2.*/
SELECT *
FROM Production.ProductCategory
WHERE ProductCategoryID NOT IN (3,2);
GO

/* 4. Display all the records from Person.Person for all persons whose last name begins with B.*/
SELECT *
FROM Person.Person
WHERE LastName LIKE 'B%'
GO