CREATE DATABASE banco_got;
USE banco_got;

CREATE TABLE personagens(
ID INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
personagens VARCHAR(100) NOT NULL,
atores VARCHAR(100) NOT NULL,
aparicoes INT(3) NOT NULL
);

SELECT * FROM personagens;

SELECT * FROM personagens ORDER BY aparicoes ASC; #Consultar aparição por ordem crescente
SELECT * FROM personagens ORDER BY aparicoes DESC; #Consultar aparição por ordem decrescente

CREATE TABLE episodios(
id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
temporada INT(10) NOT NULL,
episodio INT(10) NOT NULL,
titulo VARCHAR(255) NOT NULL,
ranking FLOAT(10) NOT NULL,
votos INT(10) NOT NULL,
audiencia_eua FLOAT(10) NOT NULL,
duração INT(10) NOT NULL
);

SELECT * FROM episodios;

SELECT AVG(ranking) FROM episodios; # Calcular a média de nota dos episódios

SELECT AVG(ranking) FROM episodios WHERE temporada = 1; # Calcular a nota média de cada season
SELECT AVG(ranking) FROM episodios WHERE temporada = 2;
SELECT AVG(ranking) FROM episodios WHERE temporada = 3;
SELECT AVG(ranking) FROM episodios WHERE temporada = 4;
SELECT AVG(ranking) FROM episodios WHERE temporada = 5;
SELECT AVG(ranking) FROM episodios WHERE temporada = 6;
SELECT AVG(ranking) FROM episodios WHERE temporada = 7;
SELECT AVG(ranking) FROM episodios WHERE temporada = 8;

SELECT AVG(audiencia_eua) FROM episodios; # Calcular a média de audiência nos Estados Unidos
SELECT AVG(duração) FROM episodios; # Calcular a média de duração dos episódios 

CREATE TABLE casas(
id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
casa VARCHAR(100),
regiao VARCHAR(100)
);

SELECT * FROM casas;