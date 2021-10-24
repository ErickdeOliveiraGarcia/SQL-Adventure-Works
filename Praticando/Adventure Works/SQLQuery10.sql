SELECT*
FROM Sales.SalesOrderDetail


SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT COUNT(ProductID) 
FROM Sales.SalesOrderDetail
WHERE ProductID = '707'

SELECT MiddleName, COUNT(FirstName) AS "Quantidade"
FROM person.Person
GROUP BY MiddleName

SELECT ProductID, AVG(OrderQty) AS "Média de vendas"
FROM sales.SalesOrderDetail
GROUP BY ProductID

SELECT TOP 10 ProductID,SUM(LineTotal) AS "10++"
FROM sales.salesorderdetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) desc

SELECT ProductID, AVG(OrderQty) "media"
FROM sales.salesorderdetail
GROUP BY ProductID

SELECT ProductID, COUNT(ProductID)"Contagem", AVG(OrderQty)"Média" 
FROM Production.WorkOrder
GROUP BY ProductID

SELECT ProductID, COUNT(ProductID)
FROM Production.WorkOrder
GROUP BY ProductID
