----		Predicates and Operators ----
--Predicates
-- 1. IN - Determines whether a specified value matches any value in a subquery or a list. 
SELECT PersonType, Title, FirstName,LastName FROM 
AdventureWorks2019.Person.Person WHERE PersonType IN ('EM', 
'SC') 

-- 2. Between - Determines whether a specified value matches any value in a subquery or a list. 
SELECT BusinessEntityID, NationalIDNumber, LoginID, JobTitle, 
HireDate FROM AdventureWorks2019.HumanResources.Employee 
WHERE HireDate BETWEEN '01-01-2010' AND '01-01-2013'

-- 3. Like - Used to match characters against a specified pattern. 
SELECT  DepartmentID, Name, GroupName, ModifiedDate 
FROM AdventureWorks2019.HumanResources.Department    
WHERE Name LIKE 'P%'

-- 4. Contains - Searches for precise or less precise matches to single words and phrases, 
--					words within a certain distance of one another, or weighted matches. 
SELECT * FROM AdventureWorks2019.Person.Address 
WHERE CONTAINS (AddressLine1, 'Street') 

-- *  Note that this statement will work only on a table with full text index. 

-- Operator
DECLARE @Number int; 
SET @Number = 2 + 2 * (4 + (5 - 3)) 
SELECT @Number