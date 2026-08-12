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
CREATE TABLE LocationsHoenn
(
	locationID INT IDENTITY (1,1)
		CONSTRAINT LOC_HOENN PRIMARY KEY,
	locationName VARCHAR (50)
)
GO
CREATE TABLE NationalDex
(
	nationalDexNumber INT IDENTITY (1,1)
		CONSTRAINT PKMN_DEX PRIMARY KEY,
	pokemonName VARCHAR (50)
)
GO
CREATE TABLE EncounterMethods
(
	encounterID INT IDENTITY (1,1)
		CONSTRAINT ENC_METHOD PRIMARY KEY,
	encounterMethod VARCHAR (50)
)
GO
CREATE TABLE GameVersion 
(
	gameVerID INT IDENTITY (1,1)
		CONSTRAINT GAME_VER PRIMARY KEY,
	gameVersion VARCHAR (50)
)
GO
CREATE TABLE FishingRod
(
	fishingRodID INT IDENTITY (1,1)
		CONSTRAINT FISH_ROD PRIMARY KEY,
	fishingRodType VARCHAR (50)
)
GO
CREATE TABLE EvolutionMethod 
(
	evolutionID INT IDENTITY (1,1)
		CONSTRAINT EVO_METHOD PRIMARY KEY,
	evolutionMethod VARCHAR (50)
)
GO
CREATE TABLE HoennSafari
(
	safariAreaID INT IDENTITY (1,1)
		CONSTRAINT SAF_HOENN PRIMARY KEY,
	safariArea VARCHAR (50)
)

INSERT NationalDex (pokemonName)
VALUES ('Bulbasaur'),('Ivysaur'),('Venusaur'),('Charmander'),('Charmeleon'),('Charizard'),('Squirtle'),('Wartortle'),('Blastoise'),('Caterpie'),('Metapod'),('Butterfree'),('Weedle'),
('Kakuna'),('Beedril'),('Pidgey'),('Pidgeotto'),('Pidgeot'),('Rattata'),('Raticate'),('Spearow'),('Fearow'),('Ekans'),('Arbok'),('Pikachu'),('Raichu'),('Sandshrew'),
('Sandslash'),('Nidoran-F'),('Nidorina'),('Nidoqueen'),('Nidoran-M'),('Nidorino'),('Nidoking'),('Clefairy'),('Clefable'),('Vulpix'),('Ninetales'),('Jigglypuff'),
('Wigglytuff'),('Zubat'),('Golbat'),('Oddish'),('Gloom'),('Vileplume'),('Paras'),('Parasect'),('Venonat'),('Venomoth'),('Diglett'),('Dugtrio'),('Meowth'),('Persian'),
('Psyduck'),('Golduck'),('Mankey'),('Primeape'),('Growlithe'),('Arcanine'),('Poliwag'),('Poliwhirl'),('Poliwrath'),('Abra'),('Kadabra'),('Alakazam'),('Machop'),('Machoke'),
('Machamp'),('Bellsprout'),('Weepinbell'),('Victreebel'),('Tentacool'),('Tentacruel'),('Geodude'),('Graveler'),('Golem'),('Ponyta'),('Rapidash'),('Slowpoke'),('Slowbro'),
('Magnemite'),('Magneton'),('Farfetchd'),('Doduo'),('Dodrio'),('Seel'),('Dewgong'),('Grimer'),('Muk'),('Shellder'),('Cloyster'),('Gastly'),('Haunter'),('Gengar'),('Onix'),
('Drowzee'),('Hypno'),('Krabby'),('Kingler'),('Voltorb'),('Electrode'),('Exeggcute'),('Exeggutor'),('Cubone'),('Marowak'),('Hitmonlee'),('Hitmonchan'),('Lickitung'),
('Koffing'),('Weezing'),('Rhyhorn'),('Rhydon'),('Chansey'),('Tangela'),('Kangaskhan'),('Horsea'),('Seadra'),('Goldeen'),('Seaking'),('Staryu'),('Starmie'),('Mr.Mime'),
('Scyther'),('Jynx'),('Electabuzz'),('Magmar'),('Pinsir'),('Tauros'),('Magikarp'),('Gyarados'),('Lapras'),('Ditto'),('Eevee'),('Vaporeon'),('Jolteon'),('Flareon'),('Porygon'),
('Omanyte'),('Omastar'),('Kabuto'),('Kabutops'),('Aerodactyl'),('Snorlax'),('Articuno'),('Zapdos'),('Moltres'),('Dratini'),('Dragonair'),('Dragonite'),('Mewtwo'),('Mew'),
('Chikorita'),('Bayleef'),('Meganium'),('Cyndaquil'),('Quilava'),('Typhlosion'),('Totodile'),('Croconaw'),('Feraligatr'),('Sentret'),('Furret'),('Hoothoot'),('Noctowl'),
('Ledyba'),('Ledian'),('Spinarak'),('Ariados'),('Crobat'),('Chinchou'),('Lanturn'),('Pichu'),('Cleffa'),('Igglybuff'),('Togepi'),('Togetic'),('Natu'),('Xatu'),('Mareep'),
('Flaaffy'),('Ampharos'),('Bellossom'),('Marill'),('Azumarill'),('Sudowoodo'),('Politoed'),('Hoppip'),('Skiploom'),('Jumpluff'),('Aipom'),('Sunkern'),('Sunflora'),('Yanma'),
('Wooper'),('Quagsire'),('Espeon'),('Umbreon'),('Murkrow'),('Slowking'),('Misdreavus'),('Unown'),('Wobbuffet'),('Girafarig'),('Pineco'),('Forretress'),('Dunsparce'),
('Gligar'),('Steelix'),('Snubbull'),('Granbull'),('Qwilfish'),('Scizor'),('Shuckle'),('Heracross'),('Sneasel'),('Teddiursa'),('Ursaring'),('Slugma'),('Magcargo'),('Swinub'),
('Piloswine'),('Corsola'),('Remoraid'),('Octillery'),('Delibird'),('Mantine'),('Skarmory'),('Houndour'),('Houndoom'),('Kingdra'),('Phanpy'),('Donphan'),('Porygon2'),
('Stantler'),('Smeargle'),('Tyrogue'),('Hitmontop'),('Smoochum'),('Elekid'),('Magby'),('Miltank'),('Blissey'),('Raikou'),('Entei'),('Suicune'),('Larvitar'),('Pupitar'),
('Tyranitar'),('Lugia'),('HoOh'),('Celebi'),('Treecko'),('Grovyle'),('Sceptile'),('Torchic'),('Combusken'),('Blaziken'),('Mudkip'),('Marshtomp'),('Swampert'),('Poochyena'),
('Mightyena'),('Zigzagoon'),('Linoone'),('Wurmple'),('Silcoon'),('Beautifly'),('Cascoon'),('Dustox'),('Lotad'),('Lombre'),('Ludicolo'),('Seedot'),('Nuzleaf'),('Shiftry'),
('Taillow'),('Swellow'),('Wingull'),('Pelipper'),('Ralts'),('Kirlia'),('Gardevoir'),('Surskit'),('Masquerain'),('Shroomish'),('Breloom'),('Slakoth'),('Vigoroth'),('Slaking'),
('Nincada'),('Ninjask'),('Shedinja'),('Whismur'),('Loudred'),('Exploud'),('Makuhita'),('Hariyama'),('Azurill'),('Nosepass'),('Skitty'),('Delcatty'),('Sableye'),('Mawile'),
('Aron'),('Lairon'),('Aggron'),('Meditite'),('Medicham'),('Electrike'),('Manectric'),('Plusle'),('Minun'),('Volbeat'),('Illumise'),('Roselia'),('Gulpin'),('Swalot'),
('Carvanha'),('Sharpedo'),('Wailmer'),('Wailord'),('Numel'),('Camerupt'),('Torkoal'),('Spoink'),('Grumpig'),('Spinda'),('Trapinch'),('Vibrava'),('Flygon'),('Cacnea'),
('Cacturne'),('Swablu'),('Altaria'),('Zangoose'),('Seviper'),('Lunatone'),('Solrock'),('Barboach'),('Whiscash'),('Corphish'),('Crawdaunt'),('Baltoy'),('Claydol'),('Lileep'),
('Cradily'),('Anorith'),('Armaldo'),('Feebas'),('Milotic'),('Castform'),('Kecleon'),('Shuppet'),('Banette'),('Duskull'),('Dusclops'),('Tropius'),('Chimecho'),('Absol'),
('Wynaut'),('Snorunt'),('Glalie'),('Spheal'),('Sealeo'),('Walrein'),('Clamperl'),('Huntail'),('Gorebyss'),('Relicanth'),('Luvdisc'),('Bagon'),('Shelgon'),('Salamence'),
('Beldum'),('Metang'),('Metagross'),('Regirock'),('Regice'),('Registeel'),('Latias'),('Latios'),('Kyogre'),('Groudon'),('Rayquaza'),('Jirachi'),('Deoxys'),('Turtwig'),
('Grotle'),('Torterra'),('Chimchar'),('Monferno'),('Infernape'),('Piplup'),('Prinplup'),('Empoleon'),('Starly'),('Staravia'),('Staraptor'),('Bidoof'),('Bibarel'),
('Kricketot'),('Kricketune'),('Shinx'),('Luxio'),('Luxray'),('Budew'),('Roserade'),('Cranidos'),('Rampardos'),('Shieldon'),('Bastiodon'),('Burmy'),('Wormadam'),('Mothim'),
('Combee'),('Vespiquen'),('Pachirisu'),('Buizel'),('Floatzel'),('Cherubi'),('Cherrim'),('Shellos'),('Gastrodon'),('Ambipom'),('Drifloon'),('Drifblim'),('Buneary'),('Lopunny'),
('Mismagius'),('Honchkrow'),('Glameow'),('Purugly'),('Chingling'),('Stunky'),('Skuntank'),('Bronzor'),('Bronzong'),('Bonsly'),('MimeJr.'),('Happiny'),('Chatot'),('Spiritomb'),
('Gible'),('Gabite'),('Garchomp'),('Munchlax'),('Riolu'),('Lucario'),('Hippopotas'),('Hippowdon'),('Skorupi'),('Drapion'),('Croagunk'),('Toxicroak'),('Carnivine'),('Finneon'),
('Lumineon'),('Mantyke'),('Snover'),('Abomasnow'),('Weavile'),('Magnezone'),('Lickilicky'),('Rhyperior'),('Tangrowth'),('Electivire'),('Magmortar'),('Togekiss'),('Yanmega'),
('Leafeon'),('Glaceon'),('Gliscor'),('Mamoswine'),('PorygonZ'),('Gallade'),('Probopass'),('Dusknoir'),('Froslass'),('Rotom'),('Uxie'),('Mesprit'),('Azelf'),('Dialga'),('Palkia'),
('Heatran'),('Regigigas'),('Giratina'),('Cresselia'),('Phione'),('Manaphy'),('Darkrai'),('Shaymin'),('Arceus'),('Victini'),('Snivy'),('Servine'),('Serperior'),('Tepig'),
('Pignite'),('Emboar'),('Oshawott'),('Dewott'),('Samurott'),('Patrat'),('Watchog'),('Lillipup'),('Herdier'),('Stoutland'),('Purrloin'),('Liepard'),('Pansage'),('Simisage'),
('Pansear'),('Simisear'),('Panpour'),('Simipour'),('Munna'),('Musharna'),('Pidove'),('Tranquill'),('Unfezant'),('Blitzle'),('Zebstrika'),('Roggenrola'),('Boldore'),('Gigalith'),
('Woobat'),('Swoobat'),('Drilbur'),('Excadrill'),('Audino'),('Timburr'),('Gurdurr'),('Conkeldurr'),('Tympole'),('Palpitoad'),('Seismitoad'),('Throh'),('Sawk'),('Sewaddle'),
('Swadloon'),('Leavanny'),('Venipede'),('Whirlipede'),('Scolipede'),('Cottonee'),('Whimsicott'),('Petilil'),('Lilligant'),('Basculin'),('Sandile'),('Krokorok'),('Krookodile'),
('Darumaka'),('Darmanitan'),('Maractus'),('Dwebble'),('Crustle'),('Scraggy'),('Scrafty'),('Sigilyph'),('Yamask'),('Cofagrigus'),('Tirtouga'),('Carracosta'),('Archen'),
('Archeops'),('Trubbish'),('Garbodor'),('Zorua'),('Zoroark'),('Minccino'),('Cinccino'),('Gothita'),('Gothorita'),('Gothitelle'),('Solosis'),('Duosion'),('Reuniclus'),('Ducklett'),
('Swanna'),('Vanillite'),('Vanillish'),('Vanilluxe'),('Deerling'),('Sawsbuck'),('Emolga'),('Karrablast'),('Escavalier'),('Foongus'),('Amoonguss'),('Frillish'),('Jellicent'),
('Alomomola'),('Joltik'),('Galvantula'),('Ferroseed'),('Ferrothorn'),('Klink'),('Klang'),('Klinklang'),('Tynamo'),('Eelektrik'),('Eelektross'),('Elgyem'),('Beheeyem'),('Litwick'),
('Lampent'),('Chandelure'),('Axew'),('Fraxure'),('Haxorus'),('Cubchoo'),('Beartic'),('Cryogonal'),('Shelmet'),('Accelgor'),('Stunfisk'),('Mienfoo'),('Mienshao'),('Druddigon'),
('Golett'),('Golurk'),('Pawniard'),('Bisharp'),('Bouffalant'),('Rufflet'),('Braviary'),('Vullaby'),('Mandibuzz'),('Heatmor'),('Durant'),('Deino'),('Zweilous'),('Hydreigon'),
('Larvesta'),('Volcarona'),('Cobalion'),('Terrakion'),('Virizion'),('Tornadus'),('Thundurus'),('Reshiram'),('Zekrom'),('Landorus'),('Kyurem'),('Keldeo'),('Meloetta'),('Genesect')



INSERT LocationsHoenn (locationName)
VALUES ('Route 101'),('Route 102'),('Route 103'),('Route 104'),('Route 105'),('Route 106'),('Route 107'),('Route 108'),('Route 109'),('Route 110'),('Route 111'),('Route 112'),('Route 113'),
('Route 114'),('Route 115'),('Route 116'),('Route 117'),('Route 118'),('Route 119'),('Route 120'),('Route 121'),('Route 122'),('Route 123'),('Route 124'),('Route 125'),('Route 126'),
('Route 127'),('Route 128'),('Route 129'),('Route 130'),('Route 131'),('Route 132'),('Route 133'),('Route 134'),('Abandoned Ship'),('Altering Cave'),('Artisan Cave'),('Battle Resort'),
('Battle Tower'),('Birth Island'),('Cave of Origin 1F'),('Cave of Origin B1F'),('Cave of Origin B2F'),('Cave of Origin B3F'),('Cave of Origin B4F'),('Desert Underpass'),('Dewford Town'),
('Ever Grande City'),('Faraway Island'),('Fiery Path'),('Fortree City'),('Granite Cave 1F'),('Granite Cave Steven Room'),('Granite Cave B1F'),('Granite Cave B2F'),('Jagged Pass'),
('Lilycove City'),('Littleroot Town'),('Marine Cave'),('Meteor Falls 1F1R'),('Meteor Falls 1F2R'),('Meteor Falls B1F1R'),('Meteor Falls B1F2R'),
('Meteor Falls Steven Cave'),('Mirage Island'),('Mirage Spots'),('Mirage Tower'),('Mossdeep City'),('Mt Pyre Exterior'),('Mt Pyre Interior'),('Mt Pyre Summit'),
('New Mauville Entrance'),('New Mauville Basement'),('Pacifidlog Town'),('Petalburg City'),('Petalburg Woods'),('Roaming Hoenn'),('Rustboro City'),('Rusturf Tunnel'),('Scorched Slab'),
('Sea Mauville'),('Seafloor Cavern'),('Sealed Chamber'),('Shoal Cave Main'),('Shoal Cave Ice'),('Sky Pillar 1F'),('Sky Pillar 3F'),('Sky Pillar 5F'),('Slaterport City'),('Sootopolis City'),
('Southern Island'),('Team Magma Hideout'),('Team Aqua Hideout'),('Terra Cave'),('Victory Road 1F'),('Victory Road B1F'),('Victory Road B2F')

INSERT EncounterMethods (encounterMethod)
VALUES ('Tall Grass'),('Long Grass'),('Surfing'),('Breeding'),('Evolution'),('Gift')

INSERT GameVersion (gameVersion)
VALUES ('RSE'),('RS'),('RE'),('SE'),('R'),('S'),('E')

INSERT FishingRod (fishingRodType)
VALUES ('Old Rod'),('Good Rod'),('Super Rod')

INSERT HoennSafari (safariArea)
VALUES ('Area 1-Central'),('Area 2-West'),('Area 3-Northwest'),('Area 4-North'),('Area 5-East'),('Area 6-Northeast')

SELECT * FROM NationalDex
SELECT * FROM HoennSafari
SELECT * FROM FishingRod
SELECT * FROM GameVersion
SELECT * FROM EncounterMethods
SELECT * FROM LocationsHoenn


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
'26-28'),('Wingull','Route 123','Surfing','RSE','35%','10-30'),('Wingull','Mt.Pyre Exterior','Tall Grass','RSE','10%','26-28'),('Wingull','Route 105','Surfing','RSE','35%','10-30'),('Wingull',
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
'RSE','1%','30-35'),('Sableye','Granite Cave B1F','Cave','SE','10%','9-11'),('Sableye','Granite Cave B2F','Cave','SE','20%','10-12'),('Sableye','Cave of Origin 1F','Cave','SE','30%',
'30,32,34'),('Sableye','Cave of Origin B1F','Cave','SE','30%','30,32,34'),('Sableye','Cave of Origin B2F','Cave','SE','30%','30,32,34'),('Sableye','Cave of Origin B3F','Cave','SE',
'30%','30,32,34'),('Sableye','Sky Pillar 1F','Walking','S','30%','48,50'),('Sableye','Sky Pillar 1F','Walking','E','30%','33,34'),('Sableye','Sky Pillar 3F','Walking','S','30%',
'51,53'),('Sableye','Sky Pillar 3F','Walking','E','30%','33,34'),('Sableye','Sky Pillar 5F','Walking','S','30%','54,56'),('Sableye','Sky Pillar 5F','Walking','E','30%','33,34'),
('Sableye','Victory Road B2F','Cave','SE','35%','40,42,44'),('Mawile','Granite Cave B1F','Cave','R','10%','9-11'),('Mawile','Granite Cave B2F','Cave','R','20%','10-12'),('Mawile',
'Cave of Origin 1F','Cave','R','30%','30,32,34'),('Mawile','Cave of Origin B1F','Cave','R','30%','30,32,34'),('Mawile','Cave of Origin B2F','Cave','R','30%','30,32,34'),('Mawile',
'Cave of Origin B3F','Cave','R','30%','30,32,34'),('Mawile','Sky Pillar 1F','Walking','R','30%','48,50'),('Mawile','Sky Pillar 3F','Walking','R','30%','51,53'),('Mawile','Sky Pillar 5F',
'Walking','R','30%','54,56'),('Mawile','Victory Road B2F','Cave','R','35%','40,42,44'),('Mawile','Victory Road B2F','Cave','E','5%','42,44'),('Aron','Granite Cave Steven Room','Cave',
'RSE','10%','7,8'),('Aron','Granite Cave B1F','Cave','RSE','40%','9-11'),('Aron','Granite Cave B2F','Cave','RSE','40%','10-12'),('Aron','Victory Road 1F','Cave','RSE','5%','36'),
('Lairon','Victory Road 1F','Cave','RSE','10%','40'),('Lairon','Victory Road B1F','Cave','RS','15%','40,42'),('Lairon','Victory Road B1F','Cave','E','25%','40,42'),('Lairon',
'Victory Road B2F','Cave','RS','15%','40,42,44'),('Lairon','Victory Road B2F','Cave','E','25%','40,42,44'),('Machop','Route 112','Tall Grass','RS','25%','14-16'),('Machop','Fiery Path',
'Cave','RSE','15%','15,16'),('Machop','Jagged Pass','Tall Grass','R','25%','18-20'),('Machop','Jagged Pass','Tall Grass','SE','25%','20-22'),('Meditite','Mt.Pyre Exterior','Tall Grass',
'RS','30%','27,29'),('Meditite','Victory Road B1F','Cave','RS','5%','38'),('Medicham','Victory Road B1F','Cave','RS','10%','40'),('Medicham','Victory Road B2F','Cave','RS','15%','40,42,44'),
('Electrike','Route 110','Tall Grass','RSE','30%','12,13'),('Electrike','Route 118','Tall Grass','RSE','30%','24,26'),('Manectric','Route 118','Tall Grass','RSE','10%','26'),
('Plusle','Route 110','Tall Grass','RE','2%','12,13'),('Plusle','Route 110','Tall Grass','S','15%','13'),('Plusle','Fortree City','Trade Volbeat','E','100%','Same as traded'),
('Minun','Route 110','Tall Grass','RE','15%','13'),('Minun','Route 110','Tall Grass','S','2%','12,13'),('Magnemite','New Mauville','Entrance','RSE','50%','22-26'),('Magnemite','New Mauville',
'Basement','RSE','49%','22-26'),('Magneton','New Mauville','Basement','RSE','1%','26'),('Voltorb','New Mauville','Entrance','RSE','50%','22-26'),('Voltorb','New Mauville','Basement','RSE',
'49%','22-26'),('Electrode','New Mauville','Basement','RSE','1%','26'),('Electrode','Team Magma Hideout','Static','R','100%','30'),('Electrode','Team Magma Hideout','Static','R','100%','30'),
('Electrode','Team Aqua Hideout','Static','SE','100%','30'),('Electrode','Team Aqua Hideout','Static','SE','100%','30'),('Volbeat','Route 117','Tall Grass','RE','1%','13'),('Volbeat','Route 117',
'Tall Grass','S','18%','13,14'),('Illumise','Route 117','Tall Grass','RE','18%','13-14'),('Illumise','Route 117','Tall Grass','S','1%','13'),('Oddish','Route 110','Tall Grass','RSE','10%','13'),
('Oddish','Route 117','Tall Grass','RS','10%','13'),('Oddish','Route 117','Tall Grass','E','40%','13,14'),('Oddish','Route 119','Long Grass','RSE','30%','24-27'),('Oddish','Route 120','Long Grass',
'RSE','25%','25-27'),('Oddish','Route 121','Tall Grass','RSE','15%','26,28'),('Oddish','Route 123','Tall Grass','RSE','15%','26,28'),('Gloom','Route 121','Tall Grass','RSE','5%','28'),('Gloom',
'Route 123','Tall Grass','RSE','5%','28'),('Roselia','Route 117','Tall Grass','RS','30%','13,14'),('Gulpin','Route 110','Tall Grass','RSE','15%','12,13'),('Wailord','Route 129','Surfing','R','1%',
'35-40'),('Wailord','Route 129','Surfing','SE','1%','25-30')



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
('Tentacruel','Abandoned Ship','Super Rod','RSE','20%','20-35'),('Carvanha','Route 118','Good Rod','RSE','20%','10-30'),('Carvanha','Route 118','Super Rod','RSE','60%','20-25,30-45'),('Carvanha','Route 119',
'Good Rod','RSE','20%','10-30'),('Carvanha','Route 119','Super Rod','RSE','100%','20-45'),('Sharpedo','Route 103','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 118','Super Rod','RSE','40%','30-35'),
('Sharpedo','Route 122','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 124','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 125','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 126','Super Rod',
'RSE','40%','30-35'),('Sharpedo','Route 127','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 129','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 130','Super Rod','RSE','40%','30-35'),('Sharpedo',
'Route 131','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 132','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 133','Super Rod','RSE','40%','30-35'),('Sharpedo','Route 134','Super Rod','RSE','40%',
'30-35'),('Sharpedo','Mossdeep City','Super Rod','RSE','40%','30-35'),('Sharpedo','Pacifidlog Town','Super Rod','RSE','40%','30-35'),('Wailmer','Route 103','Good Rod','RSE','20%','10-30'),('Wailmer','Route 103',
'Super Rod','RSE','60%','25-45'),('Wailmer','Route 105','Good Rod','RSE','20%','10-30'),('Wailmer','Route 105','Super Rod','RSE','100%','20-45'),('Wailmer','Route 106','Good Rod','RSE','20%','10-30'),
('Wailmer','Route 106','Super Rod','RSE','100%','20-45'),('Wailmer','Route 107','Good Rod','RSE','20%','10-30'),('Wailmer','Route 107','Super Rod','RSE','100%','20-45'),('Wailmer','Route 108','Good Rod','RSE',
'20%','10-30'),('Wailmer','Route 108','Super Rod','RSE','100%','20-45'),('Wailmer','Route 109','Good Rod','RSE','20%','10-30'),('Wailmer','Route 109','Super Rod','RSE','100%','20-45'),('Wailmer','Route 110',
'Good Rod','RSE','20%','10-30'),('Wailmer','Route 110','Super Rod','RSE','100%','20-45'),('Wailmer','Route 115','Good Rod','RSE','20%','10-30'),('Wailmer','Route 115','Super Rod','RSE','100%','20-45'),
('Wailmer','Route 121','Good Rod','RSE','20%','10-30'),('Wailmer','Route 121','Super Rod','RSE','100%','20-45'),('Wailmer','Route 122','Good Rod','RSE','20%','10-30'),('Wailmer','Route 122','Super Rod','RSE',
'60%','25-45'),('Wailmer','Route 123','Good Rod','RSE','20%','10-30'),('Wailmer','Route 123','Super Rod','RSE','100%','20-45'),('Wailmer','Route 124','Good Rod','RSE','20%','10-30'),('Wailmer','Route 124',
'Super Rod','RSE','60%','25-45'),('Wailmer','Route 125','Good Rod','RSE','20%','10-30'),('Wailmer','Route 125','Super Rod','RSE','60%','25-45'),('Wailmer','Route 126','Good Rod','RSE','20%','10-30'),
('Wailmer','Route 126','Super Rod','RSE','60%','25-45'),('Wailmer','Route 127','Good Rod','RSE','20%','10-30'),('Wailmer','Route 127','Super Rod','RSE','60%','25-45'),('Wailmer','Route 128','Good Rod','RSE',
'20%','10-30'),('Wailmer','Route 128','Super Rod','RSE','45%','30-45'),('Wailmer','Route 129','Good Rod','RSE','20%','10-30'),('Wailmer','Route 129','Super Rod','RSE','60%','25-45'),('Wailmer','Route 130',
'Good Rod','RSE','20%','10-30'),('Wailmer','Route 130','Super Rod','RSE','60%','25-45'),('Wailmer','Route 131','Good Rod','RSE','20%','10-30'),('Wailmer','Route 131','Super Rod','RSE','60%','25-45'),('Wailmer',
'Route 132','Good Rod','RSE','20%','10-30'),('Wailmer','Route 132','Super Rod','RSE','45%','30-45'),('Wailmer','Route 133','Good Rod','RSE','20%','10-30'),('Wailmer','Route 133','Super Rod','RSE','45%','30-45'),
('Wailmer','Route 134','Good Rod','RSE','20%','10-30'),('Wailmer','Route 134','Super Rod','RSE','45%','30-45'),('Wailmer','Dewford Town','Good Rod','RSE','20%','10-30'),('Wailmer','Dewford Town','Super Rod','RSE',
'100%','20-45'),('Wailmer','Ever Grande City','Good Rod','RSE','20%','10-30'),('Wailmer','Ever Grande City','Super Rod','RSE','45%','30-45'),('Wailmer','Lilycove City','Good Rod','RSE','20%','10-30'),('Wailmer',
'Lilycove City','Super Rod','RSE','85%','25-45'),('Wailmer','Mossdeep City','Good Rod','RSE','20%','10-30'),('Wailmer','Mossdeep City','Super Rod','RSE','60%','25-45'),('Wailmer','Pacifidlog Town','Good Rod','RSE',
'20%','10-30'),('Wailmer','Pacifidlog Town','Super Rod','RSE','60%','25-45'),('Wailmer','Seafloor Cavern','Good Rod','RSE','20%','10-30'),('Wailmer','Route 105','Seafloor Cavern','RSE','100%','20-45'),('Wailmer',
'Shoal Cave','Good Rod','RSE','20%','10-30'),('Wailmer','Shoal Cave','Super Rod','RSE','100%','20-45'),('Wailmer','Slateport City','Good Rod','RSE','20%','10-30'),('Wailmer','Slateport City','Super Rod','RSE','100%',
'20-45')

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
VALUES ('Grovyle','Evoltuion','Treecko','Level Up','Level 16'),('Sceptile','Evoltuion','Grovyle','Level Up','Level 36'),('Combusken','Evoltuion','Torchic','Level Up','Level 16'),('Blaziken',
'Evoltuion','Combusken','Level Up','Level 36'),('Marshtomp','Evoltuion','Mudkip','Level Up','Level 16'),('Swampert','Evoltuion','Marshtomp','Level Up','Level 36'),('Mightyena','Evoltuion',
'Poochyena','Level Up','Level 18'),('Linoone','Evoltuion','Zigzagoon','Level Up','Level 20'),('Beautifly','Evoltuion','Silcoon','Level Up','Level 10'),('Dustox','Evoltuion','Cascoon','Level Up','Level 10'),
('Lombre','Evoltuion','Lotad','Level Up','Level 14'),('Ludicolo','Evoltuion','Lombre','Item','Water Stone'),('Nuzleaf','Evoltuion','Seedot','Level Up','Level 14'),('Shiftry','Evoltuion','Nuzleaf','Item',
'Leaf Stone'),('Swellow','Evoltuion','Taillow','Level Up','Level 22'),('Pelipper','Evoltuion','Wingull','Level Up','Level 25'),('Kirlia','Evoltuion','Ralts','Level Up','Level 20'),('Gardevoir','Evoltuion',
'Kirlia','Level Up','Level 30'),('Masquerain','Evoltuion','Surskit','Level Up','Level 22'),('Breloom','Evoltuion','Shroomish','Level Up','Level 23'),('Vigoroth','Evoltuion','Slakoth','Level Up','Level 18'),
('Slaking','Evoltuion','Vigoroth','Level Up','Level 36'),('Kadabra','Evoltuion','Abra','Level Up','Level 16'),('Alakazam','Evoltuion','Kadabra','Trade','Evolves upon trading'),('Ninjask','Evoltuion',
'Nincada','Level Up','Level 20'),('Shedinja','Evoltuion','Nincada','Level Up','Level 20 with space in party'),('Loudred','Evoltuion','Whismur','Level Up','Level 20'),('Exploud','Evoltuion','Loudred',
'Level Up','Level 40'),('Hariyama','Evoltuion','Makuhita','Level Up','Level 24'),('Seaking','Evoltuion','Goldeen','Level Up','Level 33'),('Gyarados','Evoltuion','Magikarp','Level Up','Level 20'),('Marill',
'Evoltuion','Azurill','Friendship','Level up with high friendship'),('Azumarill','Evoltuion','Marill','Level Up','Level 18'),('Graveler','Evoltuion','Geodude','Level Up','Level 25'),('Golem','Evoltuion',
'Graveler','Trade','Evolves upon trading'),('Delcatty','Evoltuion','Skitty','Item','Moon Stone'),('Golbat','Evoltuion','Zubat','Level Up','Level 22'),('Crobat','Evolution','Golbat','Friendship',
'Level up with high friendship'),('Tentacruel','Evoltuion','Tentacool','Level Up','Level 30'),('Lairon','Evolution','Aron','Level Up','Level 32'),('Aggron','Evolution','Lairon','Level Up','Level 42'),
('Machoke','Evolution','Machop','Level Up','Level 28'),('Machamp','Evolution','Machoke','Trade','Evolves upon trading'),('Medicham','Evolution','Meditite','Level Up','Level 37'),('Manectric','Evolution',
'Electrike','Level Up','Level 26'),('Magneton','Evolution','Magnemite','Level Up','Level 30'),('Electrode','Evolution','Voltorb','Level Up','Level 30'),('Gloom','Evolution','Oddish','Level Up','Level 21'),
('Vileplume','Evoltuion','Gloom','Item','Leaf Stone'),('Bellossom','Evoltuion','Nuzleaf','Item','Sun Stone'),('Dodrio','Evolution','Doduo','Level Up','Level 31'),('Swalot','Evolution','Gulpin','Level Up',
'Level 26'),('Sharpedo','Evolution','Carvanha','Level Up','Level 30'),('Wailord','Evolution','Wailmer','Level Up','Level 40')

INSERT RandomSafariPokemonRSE (pokemonName, safariArea,
encounterMethod, gameVersion, encounterChance, levelRange)
VALUES ('Marill','Area 5-East','Surfing','E','39%','5-35'),('Geodude','Area 4-North','Rock Smash','RSE','100%','5-30'),('Oddish','Area 1-Central','Tall Grass','RSE','40%','25,27'),('Oddish','Area 2-West',
'Tall Grass','RSE','40%','25,27'),('Oddish','Area 3-Northwest','Tall Grass','RSE','30%','27,29'),('Oddish','Area 4-North','Tall Grass','RSE','30%','27,29'),('Gloom','Area 1-Central','Tall Grass','RSE',
'5%','25'),('Gloom','Area 2-West','Tall Grass','RSE','5%','25'),('Gloom','Area 3-Northwest','Tall Grass','RSE','15%','29,31'),('Gloom','Area 4-North','Tall Grass','RSE','15%','29,31'),('Doduo',
'Area 1-Central','Tall Grass','RSE','10%','25'),('Doduo','Area 2-West','Tall Grass','R','10%','25'),('Doduo','Area 2-West','Tall Grass','SE','10%','27'),('Doduo','Area 3-Northwest','Tall Grass','RSE',
'15%','27,29'),('Dodrio','Area 3-Northwest','Tall Grass','RSE','5%','29,31')

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