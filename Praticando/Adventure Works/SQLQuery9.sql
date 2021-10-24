SELECT TOP 10 sum (linetotal) AS "Soma"
FROM sales.SalesOrderDetail

SELECT TOP 10 MIN (linetotal) AS "MINIMO"
FROM sales.SalesOrderDetail

SELECT TOP 10 MAX (linetotal) AS "MAXIMO"
FROM sales.SalesOrderDetail

SELECT TOP 10 AVG (linetotal) AS "MÉDIA"
FROM sales.SalesOrderDetail