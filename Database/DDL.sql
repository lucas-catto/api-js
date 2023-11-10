
CREATE DATABASE McDonalds;

USE McDonalds;

CREATE TABLE lanches(
	lancheId        INT AUTO_INCREMENT,
	lancheNome      NVARCHAR(30) NOT NULL,

	PRIMARY KEY (lancheId)
);

CREATE TABLE ingredientes(
	ingredienteId   INT AUTO_INCREMENT,
	ingredienteNome NVARCHAR(30) NOT NULL,
	
    PRIMARY KEY (ingredienteId)
);
  
CREATE TABLE ingredientes_lanches(
	lancheId        INT,
	ingredienteId   INT,
	quantidade      INT NOT NULL,

	PRIMARY KEY(lancheId, ingredienteId),

	FOREIGN KEY (lancheId)      REFERENCES lanches      (lancheId),
	FOREIGN KEY (ingredienteId) REFERENCES ingredientes (ingredienteId)
);
