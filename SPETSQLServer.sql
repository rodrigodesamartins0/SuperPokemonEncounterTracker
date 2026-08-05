SET DATEFORMAT YMD
GO
USE master
go
IF EXISTS (SELECT * FROM SYS.databases WHERE NAME = 'SPET')
ALTER DATABASE SPET SET SINGLE_USER WITH ROLLBACK IMMEDIATE
IF EXISTS (SELECT * FROM SYS.databases WHERE NAME = 'SPET')
DROP database SPET
go
CREATE DATABASE SPET
GO
USE SPET
GO
CREATE TABLE PokemonRSE
(
	pokemonName VARCHAR (50),
    encounterLocation VARCHAR (50),
	encounterMethod VARCHAR (50),
    gameVersion VARCHAR (50),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50),
)
GO

INSERT PokemonRSE (pokemonName, encounterLocation, 
encounterMethod, gameVersion, encounterChance, levelRange)
VALUES ('Treecko', 'Route 101', 'Gift', 'RSE', '100%', '5'),('Torchic', 'Route 101', 'Gift', 'RSE', '100%', '5'),('Mudkip', 'Route 101', 'Gift', 'RSE', '100%', '5'),
('Poochyena','Route 101', 'Tall Grass', 'RS', '10%','2-3'),('Poochyena','Route 101', 'Tall Grass', 'E', '45%','2-3'),('Poochyena','Route 102', 'Tall Grass', 'RS', '15%','3-4'),
('Poochyena','Route 102', 'Tall Grass', 'E', '30%','3-4'),('Poochyena','Route 103', 'Tall Grass', 'RS', '30%','2-4'),('Poochyena','Route 103', 'Tall Grass', 'E', '60%','2-4'),
('Poochyena','Route 104', 'Tall Grass', 'E', '40%','4-5'),('Poochyena','Route 110', 'Tall Grass', 'E', '20%','12'),('Poochyena','Route 116', 'Tall Grass', 'E', '28%','6-8'),
('Poochyena','Route 117', 'Tall Grass', 'E', '30%','13-14'),('Poochyena','Route 120', 'Long Grass', 'E', '20%','25'), ('Poochyena','Route 121', 'Tall Grass', 'E', '20%','26'),
('Poochyena','Route 123', 'Tall Grass', 'E', '20%','26'),('Poochyena','Petalburg Woods', 'Tall Grass', 'E', '30%','5-6')


SELECT (pokemonName) as Pokémon, (encounterLocation) as Localização, (encounterMethod) as Método, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM PokemonRSE

