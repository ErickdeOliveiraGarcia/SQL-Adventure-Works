Update Contato_BD
Set Id_Tipo = 2
Where Id = 5; 

Update Contato_BD  Set Id_Tipo = 2 Where Id = 5; 

Update Contato_BD  Set Id_Tipo = 3 Where Id = 2 Or Id = 4;

SELECT*
FROM Contato_BD

SELECT*
FROM Tipo_Contato

SELECT Id,Id_Contato,Telefone
FROM  Contato_BD
RIGHT JOIN Tipo_Contato  
ON Contato_BD.Id = Tipo_Contato.Id_Contato