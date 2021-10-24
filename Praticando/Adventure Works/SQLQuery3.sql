/*ORDER BY*/
SELECT FirstName, LastName /*TOP 10**/
FROM person.Person
ORDER BY FirstName asc, LastName desc /*desc*/

SELECT MiddleName, FirstName, LastName
FROM person.person
ORDER BY MiddleName desc

/*DESAFIO */

SELECT TOP 10  ListPrice, ProductId
FROM Production.Product
ORDER BY ListPrice DESC

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc
