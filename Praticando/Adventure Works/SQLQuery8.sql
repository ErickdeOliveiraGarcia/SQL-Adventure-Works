SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice>=1500

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

SELECT COUNT(DISTINCT(City))
FROM Person.Address

SELECT DISTINCT City
FROM Person.Address

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE Color = 'red' AND ListPrice BETWEEN 500 and 1000 

SELECT COUNT(name)
FROM Production.Product
WHERE  Name LIKE  '%road%'
