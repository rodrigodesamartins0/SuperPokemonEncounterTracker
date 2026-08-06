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
'RSE','40%','23-25'),('Tailow','Route 116','Tall Grass','RSE','20%','6-8'),('Tailow','Petalburg Woods','Tall Grass','RSE','5%','5-6'),('Swellow','Route 115','Tall Grass','RSE','10%','25'),
('Wingull','Route 103','Tall Grass','RS','10%','2-4'),('Wingull','Route 103','Tall Grass','E','20%','2-4'),('Wingull','Route 103','Surfing','RSE','35%','10-30'),('Wingull','Route 104',
'Tall Grass','RSE','10%','3-5'),('Wingull','Route 104','Surfing','RSE','95%','10-30'),('Wingull','Route 110','Tall Grass','RSE','8%','12'),('Wingull','Route 110','Surfing','RSE','35%','10-30'),
('Wingull','Route 115','Tall Grass','RSE','30%','23,25'),('Wingull','Route 115','Surfing','RSE','35%','10-30'),('Wingull','Route 118','Tall Grass','RSE','19%','25-27'),('Wingull','Route 118',
'Surfing','RSE','35%','10-30'),('Wingull','Route 121','Tall Grass','RSE','9%','26-28'),('Wingull','Route 121','Surfing','RSE','35%','10-30'),('Wingull','Route 123','Tall Grass','RSE','9%',
'26-28'),('Wingull','Route 123','Surfing','RSE','35%','10-30'),('Wingull','Mt. Pyre Exterior','Tall Grass','RSE','10%','26-28'),('Wingull','Route 105','Surfing','RSE','35%','10-30'),('Wingull',
'Route 106','Surfing','RSE','35%','10-30'),('Wingull','Route 107','Surfing','RSE','35%','10-30'),('Wingull','Route 108','Surfing','RSE','35%','10-30'),('Wingull','Route 109','Surfing','RSE',
'35%','10-30'),('Wingull','Route 119','Surfing','RSE','35%','10-30'),('Wingull','Route 122','Surfing','RSE','35%','10-30'),('Wingull','Route 124','Surfing','RSE','35%','10-30'),('Wingull',
'Route 125','Surfing','RSE','35%','10-30'),('Wingull','Route 126','Surfing','RSE','35%','10-30'),('Wingull','Route 127','Surfing','RSE','35%','10-30'),('Wingull','Route 128','Surfing','RSE',
'35%','10-30'),('Wingull','Route 129','Surfing','RSE','35%','10-30'),('Wingull','Route 130','Surfing','RSE','35%','10-30'),('Wingull','Route 131','Surfing','RSE','35%','10-30'),('Wingull',
'Route 132','Surfing','RSE','35%','10-30'),('Wingull','Route 133','Surfing','RSE','35%','10-30'),('Wingull','Route 134','Surfing','RSE','35%','10-30'),('Wingull','Dewford Town','Surfing',
'RSE','35%','10-30'),('Wingull','Ever Grande City','Surfing','RSE','35%','10-30'),('Wingull','Lilycove City','Surfing','RSE','35%','10-30'),('Wingull','Mossdeep City','Surfing','RSE',
'35%','10-30'),('Wingull','Pacifidlog Town','Surfing','RSE','35%','10-30'),('Wingull','Slaterport City','Surfing','RSE','35%','10-30'),('Pelipper','Route 103','Surfing','RSE','5%','25-30'),
('Pelipper','Route 104','Surfing','RSE','5%','25-30'),('Pelipper','Route 105','Surfing','RSE','5%','25-30'),('Pelipper','Route 106','Surfing','RSE','5%','25-30'),('Pelipper','Route 107',
'Surfing','RSE','5%','25-30'),('Pelipper','Route 108','Surfing','RSE','5%','25-30'),('Pelipper','Route 109','Surfing','RSE','5%','25-30'),('Pelipper','Route 110','Surfing','RSE','5%','25-30'),
('Pelipper','Route 115','Surfing','RSE','5%','25-30'),('Pelipper','Route 118','Surfing','RSE','5%','25-30'),('Pelipper','Route 119','Surfing','RSE','5%','25-30'),('Pelipper','Route 121',
'Surfing','RSE','5%','25-30'),('Pelipper','Route 122','Surfing','RSE','5%','25-30'),('Pelipper','Route 123','Surfing','RSE','5%','25-30'),('Pelipper','Route 124','Surfing','RSE','5%','25-30'),
('Pelipper','Route 125','Surfing','RSE','5%','25-30'),('Pelipper','Route 126','Surfing','RSE','5%','25-30'),('Pelipper','Route 127','Surfing','RSE','5%','25-30'),('Pelipper','Route 128',
'Surfing','RSE','5%','25-30'),('Pelipper','Route 129','Surfing','RSE','4%','25-30'),('Pelipper','Route 130','Surfing','RSE','5%','25-30'),('Pelipper','Route 131','Surfing','RSE','5%','25-30'),
('Pelipper','Route 132','Surfing','RSE','5%','25-30'),('Pelipper','Route 133','Surfing','RSE','5%','25-30'),('Pelipper','Route 134','Surfing','RSE','5%','25-30'),('Pelipper','Dewford Town',
'Surfing','RSE','5%','25-30'),('Pelipper','Ever Grande City','Surfing','RSE','5%','25-30'),('Pelipper','Lilycove City','Surfing','RSE','5%','25-30'),('Pelipper','Mossdeep City','Surfing',
'RSE','5%','25-30'),('Pelipper','Pacifidlog Town','Surfing','RSE','5%','25-30'),('Pelipper','Slaterport City','Surfing','RSE','5%','25-30'),('Ralts','Route 102','Tall Grass','RSE','4%','4'),
('Surskit','Route 102','Tall Grass','RS','1%','3'),('Surskit','Route 111','Surfing','RS','1%','20-30'),('Surskit','Route 114','Tall Grass','RS','1%','15'),('Surskit','Route 114','Surfing','RS',
'1%','20-30'),('Surskit','Route 117','Tall Grass','RS','1%','13'),('Surskit','Route 117','Surfing','RS','1%','20-30'),('Surskit','Route 120','Long Grass','RS','1%','25'),('Surskit','Route 120',
'Surfing','RS','1%','20-30')


SELECT (pokemonName) as Pokémon, (encounterLocation) as Localização, (encounterMethod) as Método, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM PokemonRSE