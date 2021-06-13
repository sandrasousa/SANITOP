CREATE DATABASE SANITOP;

CREATE TABLE SANITOP.dbo.TBUtilizador (
	IDUtilizador INT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100),
	Email VARCHAR(250),
	DataCriacao DATETIME DEFAULT GETDATE()
);

SELECT * FROM SANITOP.dbo.TBUtilizador;

INSERT INTO SANITOP.dbo.TBUtilizador VAlUES ('Sandra','sandrasousa1908@gmail.com', GETDATE());
INSERT INTO SANITOP.dbo.TBUtilizador VAlUES ('Sousa','sandrasousa1908@gmail.com', GETDATE());

