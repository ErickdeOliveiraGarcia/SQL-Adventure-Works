SELECT*
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

SELECT*
FROM Person.Person
WHERE BusinessEntityID = 7 or
BusinessEntityID = 2 or
BusinessEntityID = 13

SELECT*
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13)
