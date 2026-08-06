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
VALUES ('Treecko','Route 101','Gift','RSE','100%','5'),('Torchic','Route 101','Gift','RSE','100%','5'),('Mudkip','Route 101','Gift','RSE','100%','5'),
('Poochyena','Route 101','Tall Grass','RS','10%','2-3'),('Poochyena','Route 101','Tall Grass','E','45%','2-3'),('Poochyena','Route 102','Tall Grass','RS','15%','3-4'),
('Poochyena','Route 102','Tall Grass','E','30%','3-4'),('Poochyena','Route 103','Tall Grass','RS','30%','2-4'),('Poochyena','Route 103','Tall Grass','E','60%','2-4'),
('Poochyena','Route 104','Tall Grass','E','40%','4-5'),('Poochyena','Route 110','Tall Grass','E','20%','12'),('Poochyena','Route 116','Tall Grass','E','28%','6-8'),
('Poochyena','Route 117','Tall Grass','E','30%','13-14'),('Poochyena','Route 120','Long Grass','E','20%','25'),('Poochyena','Route 121','Tall Grass','E','20%','26'),
('Poochyena','Route 123','Tall Grass','E','20%','26'),('Poochyena','Petalburg Woods','Tall Grass','E','30%','5-6'),('Mightyena','Route 120','Long Grass','E','30%','25,27'),
('Mightyena','Route 121','Tall Grass','E','20%','26-28'),('Mightyena','Route 123','Tall Grass','E','20%','26-28'),('Mightyena','Route 121','Tall Grass','E','20%','26-28'),
('Zigzagoon','Route 101','Tall Grass','RS','45%','2-3'),('Zigzagoon','Route 101','Tall Grass','E','10%','2-3'),('Zigzagoon','Route 102','Tall Grass','RS','30%','3-4'),
('Zigzagoon','Route 102','Tall Grass','E','15%','3-4'),('Zigzagoon','Route 103','Tall Grass','RS','60%','2-4'),('Zigzagoon','Route 103','Tall Grass','E','20%','3-4'),
('Zigzagoon','Route 104','Tall Grass','RS','50%','4-5'),('Zigzagoon','Route 110','Tall Grass','RS','20%','12'),('Zigzagoon','Route 116','Tall Grass','RS','28%','6-8'),
('Zigzagoon','Route 117','Tall Grass','RS','30%','13-14'),('Zigzagoon','Route 118','Tall Grass','RSE','30%','24,26'),('Zigzagoon','Route 119','Long Grass','RSE','30%','24-27'),
('Zigzagoon','Route 120','Long Grass','RS','20%','25'),('Zigzagoon','Route 121','Tall Grass','RS','20%','26'),('Zigzagoon','Route 123','Tall Grass','RS','20%','26'),('Zigzagoon',
'Petalburg Woods','Tall Grass','RS','30%','5-6'),('Linoone','Route 118','Tall Grass','RSE','10%','26'),('Linoone','Route 119','Long Grass','RSE','30%','25,27'),('Linoone',
'Route 120','Long Grass','RS','30%','25,27'),('Linoone','Route 121','Tall Grass','RS','20%','26,28'),('Linoone','Route 123','Tall Grass','RS','20%','26,28'),('Wurmple','Route 101',
'Tall Grass','RSE','45%','2-3'),('Wurmple','Route 102','Tall Grass','RSE','30%','3-4'),('Wurmple','Route 104','Tall Grass','RS','30%','4-5'),('Wurmple','Route 104','Tall Grass',
'E','20%','4'),('Wurmple','Petalburg Woods','Tall Grass','RSE','25%','5-6'),('Silcoon','Petalburg Woods','Tall Grass','RSE','10%','5'),('Cascoon','Petalburg Woods',
'Tall Grass','RSE','10%','5'),('Lotad','Route 102','Tall Grass','SE','20%','3-4'),('Lotad','Route 114','Tall Grass','SE','30%','15-16'),('Lombre','Route 114','Tall Grass','S','10%','16,18'),
('Lombre','Route 114','Tall Grass','E','20%','16-18'),('Seedot','Route 102','Tall Grass','R','20%','3-4'),('Seedot','Route 102','Tall Grass','E','1%','3'),('Seedot','Route 114','Tall Grass',
'R','30%','15-16'),('Seedot','Route 117','Tall Grass','E','1%','13'),('Seedot','Route 120','Long Grass','E','1%','25'),('Seedot','Rustboro City','Trade Ralts','E','100%','4'),('Nuzleaf',
'Route 114','Tall Grass','R','10%','16,18'),('Nuzleaf','Route 114','Tall Grass','E','1%','15'),('Tailow','Route 104','Tall Grass','RSE','10%','4-5'),('Tailow','Route 115','Tall Grass',
'RSE','40%','23-25'),('Tailow','Route 116','Tall Grass','RSE','20%','6-8'),('Tailow','Petalburg Woods','Tall Grass','RSE','5%','5-6'),('Swellow','Route 115','Tall Grass','RSE','10%','25')




SELECT (pokemonName) as Pokémon, (encounterLocation) as Localização, (encounterMethod) as Método, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM PokemonRSE
