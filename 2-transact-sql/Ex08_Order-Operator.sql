USE AdventureWorks2019 
SELECT SalesPersonID, YEAR(OrderDate) AS OrderYear 
FROM Sales.SalesOrderHeader 
WHERE CustomerID = 30084 
GROUP BY SalesPersonID, YEAR(OrderDate)  
HAVING COUNT(*) > 1 
ORDER BY SalesPersonID, OrderYear; 
/*
	FROM 
	WHERE
	GROUP BY
	HAVING
	SELECT
	ORDER BY
*/