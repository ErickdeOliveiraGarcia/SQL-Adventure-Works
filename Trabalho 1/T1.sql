/* Lógico_1: */

CREATE DATABASE IMOBILIARIA

CREATE TABLE Imoveis (
    inscricaoImovel CHAR(5) PRIMARY KEY,
    valorVenda CHAR(8) ,
    areaTotal CHAR(8),
    areaContruida CHAR(8),
    cpfProprietario CHAR(11) 
);

CREATE TABLE Proprietario (
    cpfProprietario CHAR(11) PRIMARY KEY,
    nome VARCHAR(30),
    estadoCivil VARCHAR(30)
);

CREATE TABLE Compradores (
    cpfComprador CHAR(11) PRIMARY KEY,
    nome VARCHAR(30),
    profissao VARCHAR(30)
);

CREATE TABLE Corretores (
    creci CHAR(5) PRIMARY KEY,
    nome VARCHAR(30),
    dataAdmissao DATE
);

CREATE TABLE Imobiliaria (
    valorVenda CHAR(8) PRIMARY KEY,
    valorComissao CHAR(8),
    dataVenda DATE,
    inscricaoImovel CHAR(5),
    creci CHAR(5)
);

	------
		INSERT INTO Corretores
	(creci, nome, dataAdmissao)
	VALUES
	(8995, 'Edgar', '2021-05-15'),
	(7895, 'Eduard', '2021-05-14'),
	(9773, 'Derick', '2021-05-13')

		INSERT INTO Proprietario
	(cpfProprietario, nome, estadoCivil)
	VALUES
	(12536879584,'Jose', 'Casado'),
	(12536999584,'João', 'Solteiro'),
	(55889983271,'Pedro','Divorciado'),
	(55899634431,'Ana','Viuva');


	INSERT INTO Compradores
	(cpfComprador, nome, profissao)
	VALUES
	(905563257,'Jotaro','Encanador'),
	(708563257,'Joestar','Mecanico'),
	(608563257,'Pornaref','Trader'),
	(508563257,'Dyo','Investidor'),
	(408563257,'Jhonatam','Músico'),
	(308563257,'Erick','Programador');


		INSERT INTO Imoveis
	(inscricaoImovel, valorVenda, areaTotal, areaContruida, cpfProprietario)
	VALUES
	(8559,200000,100,75,12536879584),
	(5586,250000,125,80,12536999584),
	(5526,190000,89,55, 55889983271),
	(8963,180000,79,45, 55899634431),
	(6632,170000,69,35, 55899634431),
	(5879,160000,69,35, 55889983271);

			INSERT INTO Imobiliaria
	(valorVenda,creci,dataVenda, valorComissao,inscricaoImovel)
	VALUES
	(250000,8995,'2021-06-01',20,8559),
	(190000,8995,'2021-05-01',15,5586),
	(180000,7895,'2021-04-01',10,5586),
	(170000,7895,'2021-03-01',05,8963),
	(160000,9773,'2021-02-01',40,6632),
	(160000,7895,'2021-01-01',50,5879);

	----
	ALTER TABLE Imoveis ADD CONSTRAINT FK_cpfProprietario
    FOREIGN KEY (cpfProprietario)
	REFERENCES Proprietario (cpfProprietario)
 
ALTER TABLE Imobiliaria ADD CONSTRAINT FK_Imobiliaria_1
    FOREIGN KEY (inscricaoImovel)
    REFERENCES Imoveis (inscricaoImovel)
 
ALTER TABLE Imobiliaria ADD CONSTRAINT FK_Imobiliaria_2
    FOREIGN KEY (creci)
    REFERENCES Corretores (creci)

	-----

	-----Liste os corretores que tiveram uma única venda-----
	SELECT*
	FROM Imobiliaria

	SELECT creci AS 'Vendedores que fizeram uma venda'
	FROM Imobiliaria
	GROUP BY creci
	HAVING COUNT(*)=1

	SELECT*
	FROM Corretores

	SELECT *
	FROM Corretores
	WHERE creci = '9773'
-----Liste os imóveis pertencentes a um proprietário de sua escolha-----

	SELECT*
	FROM Imoveis

	SELECT cpfProprietario AS 'Os propreitario donos de um único imovel' 
	FROM Imoveis
	GROUP BY cpfProprietario
	HAVING COUNT(*)=1

	SELECT*
	FROM Proprietario
	WHERE cpfProprietario IN ('12536879584','12536999584');

----------Liste as vendas de imóveis feitas no mês de julho----
	SELECT*
	FROM Imobiliaria

	SELECT*
	FROM Imobiliaria
	WHERE  dataVenda >= '2021-06-01' AND dataVenda <='2021-06-30'

------Liste os imóveis com a área construída maior que 200m2---
UPDATE Imoveis
set areaContruida = REPLACE(areaContruida,'55','220')

UPDATE Imoveis
SET areaContruida = 250
WHERE areaContruida = 80

	SELECT*
	FROM Imoveis
	WHERE areaContruida > 200

----Liste o nome dos corretores que receberam mais que 20% de comissão----

SELECT*
FROM Imobiliaria
WHERE valorComissao > 20

SELECT*
FROM Corretores
WHERE creci IN ('9773','7895')

-----Liste o nome dos compradores dos imóveis com a área construída menor que 100m2-----

SELECT *
FROM Imoveis
WHERE areaContruida < 100

 
