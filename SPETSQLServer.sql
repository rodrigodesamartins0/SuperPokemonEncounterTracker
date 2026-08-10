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
CREATE TABLE RandomPokemonRSE
(
	pokemonName VARCHAR (50),
    encounterLocation VARCHAR (50),
	encounterMethod VARCHAR (50),
    gameVersion VARCHAR (50),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50),
)
GO
CREATE TABLE FishingPokemonRSE
(
	pokemonName VARCHAR (50),
	encounterlocation VARCHAR (50),
	rodType VARCHAR (50),
	gameVersion VARCHAR (50),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50),
)
GO
CREATE TABLE FishingSafariPokemonRSE
(
	pokemonName VARCHAR (50),
	safariArea VARCHAR (50),
	rodType VARCHAR (50),
	gameVersion VARCHAR (50),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50),
)
GO
CREATE TABLE RandomSafariPokemonRSE
(
	pokemonName VARCHAR (50),
	safariArea VARCHAR (50),
	encounterMethod VARCHAR (50),
	gameVersion VARCHAR (50),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50),
)
GO
CREATE TABLE BreedingPokemonRSE
(
	pokemonName VARCHAR (50),
	encounterMethod VARCHAR (50),
	breedingItem VARCHAR (50),
	breedingParent VARCHAR (50),
	eggGroups VARCHAR (50),
)
GO
CREATE TABLE EvolutionPokemonRSE
(
	pokemonName VARCHAR (50),
	encounterMethod VARCHAR (50),
	evolvesFrom VARCHAR (50),
	evolutionMethod VARCHAR (50),
	evolutionRequirement VARCHAR (50),	
)
GO


INSERT RandomPokemonRSE (pokemonName, encounterLocation, 
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
'R','30%','15-16'),('Seedot','Route 117','Tall Grass','E','1%','13'),('Seedot','Route 120','Long Grass','E','1%','25'),('Seedot','Rustboro City','Trade Ralts','E','100%','Same as traded'),('Nuzleaf',
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
'Surfing','RS','1%','20-30'),('Shroomish','Petalburg Woods','Tall Grass','RSE','15%','5-6'),('Slakoth','Petalburg Woods','Tall Grass','RSE','5%','5-6'),('Abra','Granite Cave 1F','Cave','RSE',
'10%','8'),('Abra','Granite Cave Steven Room','Cave','RSE','10%','8'),('Abra','B1F','Cave','RSE','10%','9'),('Abra','B2F','Cave','RSE','10%','10'),('Abra','Route 116','Tall Grass','E','10%',
'7'),('Nincada','Route 116','Tall Grass','RSE','20%','6-7'),('Whismur','Route 116','Tall Grass','RS','30%','6-7'),('Whismur','Route 116','Tall Grass','E','20%','6'),('Whismur','Rusturf Tunnel',
'Cave','RSE','100%','5-8'),('Whismur','Victory Road 1F','Cave','RSE','5%','36'),('Whismur','Desert Underpass','Cave','E','34%','35,36,38'),('Loudred','Victory Road 1F','Cave','RSE','10%','40'),
('Loudred','Desert Underpass','Cave','E','16%','38,40,44'),('Makuhita','Granite Cave 1F','Cave','RSE','50%','6-10'),('Makuhita','Granite Cave Steven Room','Cave','RSE','50%','6-10'),('Makuhita',
'Granite Cave B1F','Cave','RSE','10%','10-11'),('Makuhita','Victory Road 1F','Cave','RSE','10%','36'),('Makuhita','Rustboro City','Trade Slakoth','RS','100%','Same as traded'),('Hariyama',
'Victory Road 1F','Cave','RSE','25%','38,40'),('Hariyama','Victory Road B1F','Cave','RSE','35%','38,40,42'),('Goldeen','Route 102','Surfing','E','1%','20-30'),('Goldeen','Route 111','Surfing',
'E','1%','20-30'),('Goldeen','Route 114','Surfing','E','1%','20-30'),('Goldeen','Route 117','Surfing','E','1%','20-30'),('Goldeen','Route 120','Surfing','E','1%','20-30'),('Magikarp','Sootopolis City',
'Surfing','RSE','100%','5-35'),('Marill','Route 102','Surfing','RSE','99%','5-35'),('Marill','Route 104','Tall Grass','E','20%','4-5'),('Marill','Route 111','Surfing','RSE','99%','5-35'),
('Marill','Route 112','Tall Grass','E','25%','14-16'),('Marill','Route 114','Surfing','RSE','99%','5-35'),('Marill','Route 117','Surfing','RSE','99%','5-35'),('Marill','Route 117','Tall Grass',
'RSE','10%','13'),('Marill','Route 120','Surfing','RSE','99%','5-35'),('Marill','Route 120','Long Grass','RSE','15%','25,27'),('Marill','Petalburg City','Surfing','RSE','100%','5-35'),('Geodude',
'Route 111','Rock Smash','RSE','100%','5-20'),('Geodude','Route 114','Rock Smash','RSE','100%','5-20'),('Geodude','Victory Road B1F','Rock Smash','RSE','30%','30-40'),('Geodude','Granite Cave 1F',
'Cave','RSE','10%','6-9'),('Geodude','Granite Cave B2F','Rock Smash','RSE','70%','5-20'),('Geodude','Magma Hideout','Cave','E','55%','27-30'),('Graveler','Victory Road B1F','Rock Smash','RSE','70%',
'30-40'),('Graveler','Magma Hideout','Cave','E','15%','30-33'),('Nosepass','Granite Cave B2F','Rock Smash','RSE','30%','10-20'),('Skitty','Route 116','Tall Grass','RSE','2%','7-8'),
('Skitty','Fortree City','Trade Pikachu','RSE','100%','Same as traded'),('Zubat','Cave of Origin Entrance','Cave','RSE','90%','28-35'),('Zubat','Cave of Origin 1F','Cave','RSE','60%',
'30-34'),('Zubat','Cave of Origin B1F','Cave','RSE','60%','30-34'),('Zubat','Cave of Origin B2F','Cave','RSE','60%','30-34'),('Zubat','Cave of OriginB3F','Cave','RSE','60%','30-34'),('Zubat',
'Granite Cave 1F','Cave','RSE','30%','7-8'),('Zubat','Granite Cave Steven Room','Cave','RSE','30%','7-8'),('Zubat','Granite Cave B1F','Cave','RSE','30%','9-10'),('Zubat','Granite Cave B2F',
'Cave','RSE','30%','10-11'),('Zubat','Victory Road 1F','Cave','RSE','10%','36'),('Zubat','Meteor Falls 1F1R','Cave','RSE','80%','14-20'),('Zubat','Meteor Falls 1F1R',
'Surfing','RSE','90%','5-35'),('Zubat','Seafloor Cavern','Cave','RSE','90%','28-35'),('Zubat','Seafloor Cavern','Surfing','RSE','35%','5-35'),('Zubat','Shoal Cave Main','Cave','RSE','45%',
'26,28,30,32'),('Zubat','Shoal Cave Main','Surfing','RSE','30%','5-35'),('Zubat','Shoal Cave Ice','Cave','RSE','40%','26,28,30'),('Zubat','Altering Cave','Cave','E','100%','6,8,10,12,14,16'),
('Golbat','Meteor Falls 1F2R','Cave','RSE','65%','33,35,38,40'),('Golbat','Meteor Falls B1F1R','Cave','RSE','65%','33,35,38,40'),('Golbat','Meteor Falls 1F2R','Surfing','RSE','90%','30-35'),
('Golbat','Meteor Falls B1F1R','Surfing','RSE','90%','30-35'),('Golbat','Meteor Falls B1F2R','Cave','RSE','50%','33,35,38,40'),('Golbat','Meteor Falls B1F2R','Surfing','RSE','90%','30-35'),
('Golbat','Meteor Falls Steven Cave','Cave','E','65%','33,35,38,40'),('Golbat','Seafloor Cavern','Cave','RSE','10%','33-36'),('Golbat','Seafloor Cavern','Surfing','RSE','5%','30-35'),
('Golbat','Victory Road 1F','Cave','RSE','25%','38,40'),('Golbat','Victory Road B1F','Cave','RSE','35%','38,40,42'),('Golbat','Victory Road B2F','Cave','RSE','35%','40,42,44'),('Golbat',
'Victory Road B2F','Surfing','RSE','100%','25-40'),('Golbat','Cave of Origin Entrance','Cave','RSE','10%','33-36'),('Golbat','Cave of Origin 1F','Cave','RSE','10%','33-36'),('Golbat',
'Cave of Origin B1F','Cave','RSE','10%','33-36'),('Golbat','Cave of Origin B2F','Cave','RSE','10%','33-36'),('Golbat','Cave of Origin B3F','Cave','RSE','10%','33-36'),('Golbat','Shoal 
Cave Main','Cave','RSE','5%','32'),('Golbat','Shoal Cave Ice','Cave','RSE','5%','30,32'),('Golbat','Sky Pillar 1F','Walking','RS','30%','48,50'),('Golbat','Sky Pillar 1F','Walking','E',
'30%','34,35'),('Golbat','Sky Pillar 3F','Walking','RS','30%','51,53'),('Golbat','Sky Pillar 3F','Walking','E','30%','34,35'),('Golbat','Sky Pillar 5F','Walking','RS','30%','54-56'),
('Golbat','Sky Pillar 5F','Walking','E','30%','34,35'),('Tentacool','Route 128','Surfing','RSE','60%','5-35'),('Tentacool','Ever Grande City','Surfing','RSE','60%','5-35'),
('Tentacool','Abandoned Ship','Surfing','RSE','99%','5-35'),('Tentacool','Route 103','Surfing','RSE','60%','5-35'),('Tentacool','Route 105','Surfing','RSE','60%','5-35'),('Tentacool',
'Route 106','Surfing','RSE','60%','5-35'),('Tentacool','Route 107','Surfing','RSE','60%','5-35'),('Tentacool','Route 108','Surfing','RSE','60%','5-35'),('Tentacool','Route 109',
'Surfing','RSE','60%','5-35'),('Tentacool','Route 110','Surfing','RSE','60%','5-35'),('Tentacool','Route 115','Surfing','RSE','60%','5-35'),('Tentacool','Route 118','Surfing','RSE',
'60%','5-35'),('Tentacool','Route 119','Surfing','RSE','60%','5-35'),('Tentacool','Route 121','Surfing','RSE','60%','5-35'),('Tentacool','Route 122','Surfing','RSE','60%','5-35'),
('Tentacool','Route 123','Surfing','RSE','60%','5-35'),('Tentacool','Route 124','Surfing','RSE','60%','5-35'),('Tentacool','Route 125','Surfing','RSE','60%','5-35'),('Tentacool',
'Route 126','Surfing','RSE','60%','5-35'),('Tentacool','Route 127','Surfing','RSE','60%','5-35'),('Tentacool','Route 129','Surfing','RSE','60%','5-35'),('Tentacool','Route 130',
'Surfing','RSE','60%','5-35'),('Tentacool','Route 131','Surfing','RSE','60%','5-35'),('Tentacool','Route 132','Surfing','RSE','60%','5-35'),('Tentacool','Route 133','Surfing',
'RSE','60%','5-35'),('Tentacool','Route 134','Surfing','RSE','60%','5-35'),('Tentacool','Slateport City','Surfing','RSE','60%','5-35'),('Tentacool','Pacifidlog Town','Surfing',
'RSE','60%','5-35'),('Tentacool','Mossdeep City','Surfing','RSE','60%','5-35'),('Tentacool','Lilycove City','Surfing','RSE','60%','5-35'),('Tentacool','Dewford Town','Surfing',
'RSE','60%','5-35'),('Tentacool','Shoal Cave Main','Surfing','RSE','60%','5-35'),('Tentacool','Seafloor Cavern','Surfing','RSE','60%','5-35'),('Tentacruel','Abandoned Ship','Surfing',
'RSE','1%','30-35')



INSERT FishingPokemonRSE (pokemonName, encounterLocation, 
rodType, gameVersion, encounterChance, levelRange)
VALUES ('Goldeen','Route 102','Old Rod','RSE','30%','5-10'),('Goldeen','Route 102','Good Rod','RSE','20%','10-30'),('Goldeen','Route 111','Old Rod','RSE','30%','5-10'),('Goldeen','Route 111',
'Good Rod','RSE','30%','5-10'),('Goldeen','Route 114','Old Rod','RSE','30%','5-10'),('Goldeen','Route 114','Good Rod','RSE','20%','10-30'),('Goldeen','Route 117','Old Rod','RSE','30%','5-10'),
('Goldeen','Route 117','Good Rod','RSE','20%','10-30'),('Goldeen','Route 120','Old Rod','RSE','30%','5-10'),('Goldeen','Route 120','Good Rod','RSE','20%','10-30'),('Goldeen','Petalburg City',
'Old Rod','RSE','30%','5-10'),('Goldeen','Petalburg City','Good Rod','RSE','20%','10-30'),('Goldeen','Meteor Falls 1F1R','Old Rod','RSE','30%','5-10'),('Goldeen','Meteor Falls 1F1R','Good Rod',
'RSE','20%','10-30'),('Goldeen','Meteor Falls 1F2R','Old Rod','RSE','30%','5-10'),('Goldeen','Meteor Falls 1F2R','Good Rod','RSE','20%','10-30'),('Goldeen','Meteor Falls B1F1R','Old Rod','RSE',
'30%','5-10'),('Goldeen','Meteor Falls B1F1R','Good Rod','RSE','20%','10-30'),('Goldeen','Meteor Falls B1F2R','Old Rod','RSE','30%','5-10'),('Goldeen','Meteor Falls B1F2R','Good Rod','RSE','20%',
'10-30'),('Goldeen','Victory Road B2F','Old Rod','RSE','30%','5-10'),('Goldeen','Victory Road B2F','Good Rod','RSE','20%','10-30'),('Magikarp','Route 102','Old Rod','RSE','70%','5-10'),('Magikarp',
'Route 102','Good Rod','RSE','60%','10-30'),('Magikarp','Route 103','Old Rod','RSE','70%','5-10'),('Magikarp','Route 103','Good Rod','RSE','60%','10-30'),('Magikarp','Route 104','Old Rod','RSE',
'100%','5-10'),('Magikarp','Route 104','Good Rod','RSE','100%','10-30'),('Magikarp','Route 104','Super Rod','RSE','70%','20-45'),('Magikarp','Route 105','Old Rod','RSE','70%','5-10'),('Magikarp',
'Route 105','Good Rod','RSE','60%','10-30'),('Magikarp','Route 106','Old Rod','RSE','70%','5-10'),('Magikarp','Route 106','Good Rod','RSE','60%','10-30'),('Magikarp','Route 107','Old Rod','RSE',
'70%','5-10'),('Magikarp','Route 107','Good Rod','RSE','60%','10-30'),('Magikarp','Route 108','Old Rod','RSE','70%','5-10'),('Magikarp','Route 108','Good Rod','RSE','60%','10-30'),('Magikarp',
'Route 109','Old Rod','RSE','70%','5-10'),('Magikarp','Route 109','Good Rod','RSE','60%','10-30'),('Magikarp','Route 110','Old Rod','RSE','70%','5-10'),('Magikarp','Route 110','Good Rod','RSE',
'60%','10-30'),('Magikarp','Route 111','Old Rod','RSE','70%','5-10'),('Magikarp','Route 111','Good Rod','RSE','60%','10-30'),('Magikarp','Route 114','Old Rod','RSE','70%','5-10'),('Magikarp',
'Route 114','Good Rod','RSE','60%','10-30'),('Magikarp','Route 115','Old Rod','RSE','70%','5-10'),('Magikarp','Route 115','Good Rod','RSE','60%','10-30'),('Magikarp','Route 117','Old Rod','RSE',
'70%','5-10'),('Magikarp','Route 117','Good Rod','RSE','60%','10-30'),('Magikarp','Route 118','Old Rod','RSE','70%','5-10'),('Magikarp','Route 118','Good Rod','RSE','60%','10-30'),('Magikarp',
'Route 119','Old Rod','RSE','70%','5-10'),('Magikarp','Route 119','Good Rod','RSE','60%','10-30'),('Magikarp','Route 120','Old Rod','RSE','70%','5-10'),('Magikarp','Route 120','Good Rod','RSE',
'60%','10-30'),('Magikarp','Route 121','Old Rod','RSE','70%','5-10'),('Magikarp','Route 121','Good Rod','RSE','60%','10-30'),('Magikarp','Route 122','Old Rod','RSE','70%','5-10'),('Magikarp',
'Route 122','Good Rod','RSE','60%','10-30'),('Magikarp','Route 123','Old Rod','RSE','70%','5-10'),('Magikarp','Route 123','Good Rod','RSE','60%','10-30'),('Magikarp','Route 124','Old Rod','RSE',
'70%','5-10'),('Magikarp','Route 124','Good Rod','RSE','60%','10-30'),('Magikarp','Route 125','Old Rod','RSE','70%','5-10'),('Magikarp','Route 125','Good Rod','RSE','60%','10-30'),('Magikarp',
'Route 126','Old Rod','RSE','70%','5-10'),('Magikarp','Route 126','Good Rod','RSE','60%','10-30'),('Magikarp','Route 127','Old Rod','RSE','70%','5-10'),('Magikarp','Route 127','Good Rod','RSE',
'60%','10-30'),('Magikarp','Route 128','Old Rod','RSE','70%','5-10'),('Magikarp','Route 128','Good Rod','RSE','60%','10-30'),('Magikarp','Route 129','Old Rod','RSE','70%','5-10'),('Magikarp',
'Route 129','Good Rod','RSE','60%','10-30'),('Magikarp','Route 130','Old Rod','RSE','70%','5-10'),('Magikarp','Route 130','Good Rod','RSE','60%','10-30'),('Magikarp','Route 131','Old Rod','RSE',
'70%','5-10'),('Magikarp','Route 131','Good Rod','RSE','60%','10-30'),('Magikarp','Route 132','Old Rod','RSE','70%','5-10'),('Magikarp','Route 132','Good Rod','RSE','60%','10-30'),('Magikarp',
'Route 133','Old Rod','RSE','70%','5-10'),('Magikarp','Route 133','Good Rod','RSE','60%','10-30'),('Magikarp','Route 134','Old Rod','RSE','70%','5-10'),('Magikarp','Route 134','Good Rod','RSE',
'60%','10-30'),('Magikarp','Sootopolis City','Old Rod','R','100%','5-15'),('Magikarp','Sootopolis City','Old Rod','SE','70%','5-10'),('Magikarp','Sootopolis City','Good Rod','RSE','100%','10-30'),
('Magikarp','Sootopolis City','Super Rod','RSE','80%','30-35'),('Magikarp','Petalburg City','Old Rod','RSE','70%','5-10'),('Magikarp','Petalburg City','Good Rod','RSE','60%','10-30'),('Magikarp',
'Dewford Town','Old Rod','RSE','70%','5-10'),('Magikarp','Dewford Town','Good Rod','RSE','60%','10-30'),('Magikarp','Slateport City','Old Rod','RSE','70%','5-10'),('Magikarp','Slateport City',
'Good Rod','RSE','60%','10-30'),('Magikarp','Lilycove City','Old Rod','RSE','70%','5-10'),('Magikarp','Lilycove City','Good Rod','RSE','60%','10-30'),('Magikarp','Pacifidlog Town','Old Rod',
'RSE','70%','5-10'),('Magikarp','Pacifidlog Town','Good Rod','RSE','60%','10-30'),('Magikarp','Ever Grande City','Old Rod','RSE','70%','5-10'),('Magikarp','Evergrande City','Good Rod','RSE',
'60%','10-30'),('Magikarp','Abandoned Ship','Old Rod','RSE','70%','5-10'),('Magikarp','Abandoned Ship','Good Rod','RSE','60%','10-30'),('Magikarp','Shoal Cave Main','Old Rod','RSE','70%','5-10'),
('Magikarp','Shoal Cave Main','Good Rod','RSE','60%','10-30'),('Magikarp','Meteor Falls 1F1R','Old Rod','RSE','70%','5-10'),('Magikarp','Meteor Falls 1F1R','Good Rod','RSE','60%','10-30'),('Magikarp',
'Meteor Falls 1F2R','Old Rod','RSE','70%','5-10'),('Magikarp','Meteor Falls 1F2R','Good Rod','RSE','60%','10-30'),('Magikarp','Meteor Falls B1F1R','Old Rod','RSE','70%','5-10'),('Magikarp',
'Meteor Falls B1F1R','Good Rod','RSE','60%','10-30'),('Magikarp','Meteor Falls B1F2R','Old Rod','RSE','70%','5-10'),('Magikarp','Meteor Falls B1F2R','Good Rod','RSE','60%','10-30'),('Magikarp',
'Seafloor Cavern','Old Rod','RSE','70%','5-10'),('Magikarp','Seafloor Cavern','Good Rod','RSE','60%','10-30'),('Magikarp','Victory Road B2F','Old Rod','RSE','70%','5-10'),('Magikarp','Victory Road B2F',
'Good Rod','RSE','60%','10-30'),('Magikarp','Mossdeep City','Old Rod','RSE','70%','5-10'),('Magikarp','Mossdeep City','Good Rod','RSE','60%','10-30'),('Gyarados','Sootopolis City','Super Rod','RSE',
'20%','5-45'),('Tentacool','Route 128','Old Rod','RSE','30%','5-10'),('Tentacool','Ever Grande City','Old Rod','RSE','30%','5-10'),('Tentacool','Sootopolis City','Old Rod','SE','30%','5-10'),('Tentacool',
'Abandoned Ship','Old Rod','RSE','30%','5-10'),('Tentacool','Abandoned Ship','Good Rod','RSE','40%','10-30'),('Tentacool','Abandoned Ship','Super Rod','RSE','80%','25-35'),('Tentacool','Route 103','Old Rod',
'RSE','30%','5-10'),('Tentacool','Route 103','Good Rod','RSE','20%','10-30'),('Tentacool','Route 105','Old Rod','RSE','30%','5-10'),('Tentacool','Route 105','Good Rod','RSE','20%','10-30'),('Tentacool',
'Route 106','Old Rod','RSE','30%','5-10'),('Tentacool','Route 106','Good Rod','RSE','20%','10-30'),('Tentacool','Route 107','Old Rod','RSE','30%','5-10'),('Tentacool','Route 107','Good Rod',
'RSE','20%','10-30'),('Tentacool','Route 108','Old Rod','RSE','30%','5-10'),('Tentacool','Route 108','Good Rod','RSE','20%','10-30'),('Tentacool','Route 109','Old Rod','RSE','30%','5-10'),
('Tentacool','Route 109','Good Rod','RSE','20%','10-30'),('Tentacool','Route 110','Old Rod','RSE','30%','5-10'),('Tentacool','Route 110','Good Rod','RSE','20%','10-30'),('Tentacool','Route 115',
'Old Rod','RSE','30%','5-10'),('Tentacool','Route 115','Good Rod','RSE','20%','10-30'),('Tentacool','Route 118','Old Rod','RSE','30%','5-10'),('Tentacool','Route 118','Good Rod','RSE','20%','10-30'),
('Tentacool','Route 119','Old Rod','RSE','30%','5-10'),('Tentacool','Route 119','Good Rod','RSE','20%','10-30'),('Tentacool','Route 121','Old Rod','RSE','30%','5-10'),('Tentacool','Route 121','Good Rod',
'RSE','20%','10-30'),('Tentacool','Route 122','Old Rod','RSE','30%','5-10'),('Tentacool','Route 122','Good Rod','RSE','20%','10-30'),('Tentacool','Route 123','Old Rod','RSE','30%','5-10'),('Tentacool',
'Route 123','Good Rod','RSE','20%','10-30'),('Tentacool','Route 124','Old Rod','RSE','30%','5-10'),('Tentacool','Route 124','Good Rod','RSE','20%','10-30'),('Tentacool','Route 125','Old Rod','RSE','30%',
'5-10'),('Tentacool','Route 125','Good Rod','RSE','20%','10-30'),('Tentacool','Route 126','Old Rod','RSE','30%','5-10'),('Tentacool','Route 126','Good Rod','RSE','20%','10-30'),('Tentacool','Route 127',
'Old Rod','RSE','30%','5-10'),('Tentacool','Route 127','Good Rod','RSE','20%','10-30'),('Tentacool','Route 129','Old Rod','RSE','30%','5-10'),('Tentacool','Route 129','Good Rod','RSE','20%','10-30'),
('Tentacool','Route 130','Old Rod','RSE','30%','5-10'),('Tentacool','Route 130','Good Rod','RSE','20%','10-30'),('Tentacool','Route 131','Old Rod','RSE','30%','5-10'),('Tentacool','Route 131','Good Rod',
'RSE','20%','10-30'),('Tentacool','Route 132','Old Rod','RSE','30%','5-10'),('Tentacool','Route 132','Good Rod','RSE','20%','10-30'),('Tentacool','Route 133','Old Rod','RSE','30%','5-10'),('Tentacool',
'Route 133','Good Rod','RSE','20%','10-30'),('Tentacool','Route 134','Old Rod','RSE','30%','5-10'),('Tentacool','Route 134','Good Rod','RSE','20%','10-30'),('Tentacool','Slateport City','Old Rod','RSE',
'30%','5-10'),('Tentacool','Slateport City','Good Rod','RSE','20%','10-30'),('Tentacool','Pacifidlog Town','Old Rod','RSE','30%','5-10'),('Tentacool','Pacifidlog Town','Good Rod','RSE','20%','10-30'),
('Tentacool','Mossdeep City','Old Rod','RSE','30%','5-10'),('Tentacool','Mossdeep City','Good Rod','RSE','20%','10-30'),('Tentacool','Lilycove City','Old Rod','RSE','30%','5-10'),('Tentacool','Lilycove City',
'Good Rod','RSE','20%','10-30'),('Tentacool','Dewford Town','Old Rod','RSE','30%','5-10'),('Tentacool','Dewford Town','Good Rod','RSE','20%','10-30'),('Tentacool','Shoal Cave Main','Old Rod','RSE','30%',
'5-10'),('Tentacool','Shoal Cave Main','Good Rod','RSE','20%','10-30'),('Tentacool','Seafloor Cavern','Old Rod','RSE','30%','5-10'),('Tentacool','Seafloor Cavern','Good Rod','RSE','20%','10-30'),
('Tentacruel','Abandoned Ship','Super Rod','RSE','20%','20-35')



INSERT FishingSafariPokemonRSE (pokemonName, safariArea,
rodType, gameVersion, encounterChance, levelRange)
VALUES ('Goldeen','Area 2-West','Old Rod','RSE','30%','5-10'),('Goldeen','Area 2-West','Good Rod','RSE','40%','10-30'),('Goldeen','Area 2-West','Super Rod','RSE','80%','25-35'),('Goldeen',
'Area 3-Northwest','Old Rod','RSE','30%','5-10'),('Goldeen','Area 3-Northwest','Good Rod','RSE','40%','10-30'),('Goldeen','Area 3-Northwest','Super Rod','RSE','80%','25-35'),('Goldeen',
'Area 5-East','Old Rod','E','30%','25-30'),('Goldeen','Area 5-East','Good Rod','E','20%','25-30'),('Goldeen','Area 5-East','Super Rod','RSE','40%','25-30'),('Seaking','Area 2-West',
'Super Rod','RSE','20%','25-40'),('Seaking','Area 3-Northwest','Super Rod','RSE','20%','25-40'),('Magikarp','Area 2-West','Old Rod','RSE','70%','5-10'),('Magikarp','Area 2-West',
'Good Rod','RSE','60%','10-30'),('Magikarp','Area 3-Northwest','Old Rod','RSE','70%','5-10'),('Magikarp','Area 3-Northwest','Good Rod','RSE','60%','10-30'),('Magikarp','Area 5-East',
'Old Rod','E','70%','25-30'),('Magikarp','Area 5-East','Good Rod','E','60%','25-30')
 
INSERT BreedingPokemonRSE (pokemonName, encounterMethod, 
breedingItem, breedingParent, eggGroups)
VALUES ('Azurill','Breeding','Sea Incense','Marill/Azumarill','Water1/Fairy')

INSERT EvolutionPokemonRSE (pokemonName, encounterMethod,
evolvesFrom, evolutionMethod, evolutionRequirement)
VALUES ('Grovyle','Evoltuion','Treecko','Level Up','Level 16'),('Combusken','Evoltuion','Torchic','Level Up','Level 16'),('Marshtomp','Evoltuion','Mudkip','Level Up','Level 16'),('Sceptile',
'Evoltuion','Grovyle','Level Up','Level 36'),('Blaziken','Evoltuion','Combusken','Level Up','Level 36'),('Swampert','Evoltuion','Marshtomp','Level Up','Level 36'),('Beautifly','Evoltuion',
'Silcoon','Level Up','Level 10'),('Dustox','Evoltuion','Cascoon','Level Up','Level 10'),('Ludicolo','Evoltuion','Lombre','Item','Water Stone'),('Shiftry','Evoltuion','Nuzleaf','Item',
'Leaf Stone'),('Kirlia','Evoltuion','Ralts','Level Up','Level 20'),('Gardevoir','Evoltuion','Kirlia','Level Up','Level 30'),('Masquerain','Evoltuion','Surskit','Level Up','Level 22'),
('Breloom','Evoltuion','Shroomish','Level Up','Level 23'),('Vigoroth','Evoltuion','Slakoth','Level Up','Level 18'),('Slaking','Evoltuion','Vigoroth','Level Up','Level 36'),
('Kadabra','Evoltuion','Abra','Level Up','Level 16'),('Alakazam','Evoltuion','Kadabra','Trade','Evolves upon trading'),('Ninjask','Evoltuion','Nincada','Level Up','Level 20'),
('Ninjask','Evoltuion','Nincada','Level Up','Level 20 with space in party'),('Exploud','Evoltuion','Loudred','Level Up','Level 40'),('Azumarill','Evoltuion','Marill','Level Up','Level 18'),
('Golem','Evoltuion','Graveler','Trade','Evolves upon trading'),('Delcatty','Evoltuion','Skitty','Item','Moon Stone'),('Crobat','Evolution','Golbat','Friendship','Level up with high friendship')

INSERT RandomSafariPokemonRSE (pokemonName, safariArea,
encounterMethod, gameVersion, encounterChance, levelRange)
VALUES ('Marill','Area 5-East','Surfing','E','39%','5-35'),('Geodude','Area 4-North','Rock Smash','RSE','100%','5-30')

SELECT (pokemonName) as Pokémon, (safariArea) as Área, (encounterMethod) as Método, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM RandomSafariPokemonRSE

SELECT (pokemonName) as Pokémon, (encounterMethod) as Método, (evolutionMethod) as Método_Evolução, 
(evolvesFrom) as Pré_Evolução, (evolutionRequirement) as Requisito_Evolução FROM EvolutionPokemonRSE

SELECT (pokemonName) as Pokémon, (encounterMethod) as Método, (breedingItem) as Item, (breedingParent) as Pais,
(eggGroups) as Egg_Groups FROM BreedingPokemonRSE

SELECT (pokemonName) as Pokémon, (safariArea) as Área, (rodType) as Vara, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM FishingSafariPokemonRSE

SELECT (pokemonName) as Pokémon, (encounterLocation) as Localização, (rodType) as Vara, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM FishingPokemonRSE

SELECT (pokemonName) as Pokémon, (encounterLocation) as Localização, (encounterMethod) as Método, (gameVersion) as Versão, (encounterChance) as Chance,
(levelRange) as Level_Range FROM RandomPokemonRSE