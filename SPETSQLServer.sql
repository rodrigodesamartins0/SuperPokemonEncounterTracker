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
	evolutionMethodID INT IDENTITY (1,1)
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
GO
CREATE TABLE GeneralItems
(
	itemID INT IDENTITY (1,1)
		CONSTRAINT IT_EM PRIMARY KEY,
	itemName VARCHAR (50)
)
GO
CREATE TABLE FossilItems
(
	fossilItemID INT IDENTITY (1,1)
		CONSTRAINT FOS_ITEM PRIMARY KEY,
	fossilName VARCHAR (50)
)
GO
CREATE TABLE ReviveLabs
(
	labID INT IDENTITY (1,1)
		CONSTRAINT LAB_ID PRIMARY KEY,
	labName VARCHAR (50)
)
GO

INSERT ReviveLabs
VALUES ('Cinnabar Lab'),('Pewter Museum of Science'),('Devon Corporation'),('Oreburgh Mining Museum'),('Nacrene Museum'),('Ambrette Fossil Lab'),('Pokémon Research Lab'),
('Fossil Restoration Center'),('Route 6')

INSERT FossilItems
VALUES ('Helix Fossil'),('Dome Fossil'),('Old Amber'),('Root Fossil'),('Claw Fossil'),('Skull Fossil'),('Armor Fossil'),('Cover Fossil'),('Plume Fossil'),('Jaw Fossil'),('Sail Fossil'),
('Fossilized Bird'),('Fossilized Fish'),('Fossilized Drake'),('Fossilized Dino')

INSERT GeneralItems
VALUES ('None'),('Fire Stone'),('Water Stone'),('Thunder Stone'),('Leaf Stone'),('Moon Stone'),('Sun Stone'),('Shiny Stone'),('Dusk Stone'),('Dawn Stone'),('Ice Stone'),('Auspicious Armor'),('Black Augurite'),('Chipped Pot'),('Cracked Pot'),
('Galarica Cuff'),('Galarica Wreath'),('Malicious Armor'),('Masterpiece Teacup'),('Metal Alloy'),('Peat Block'),('Scroll of Darkness'),('Scroll of Waters'),('Sweet Apple'),('Syrupy Apple'),('Tart Apple'),('Unremarkable Teacup'),('Deep Sea Scale'),
('Deep Sea Tooth '),('Dragon Scale'),('Dubious Disc'),('Electirizer'),('Kings Rock'),('Magmarizer'),('Metal Coat'),('Oval Stone'),('Prism Scale'),('Protector'),('Razor Claw'),('Razor Fang'),('Reaper Cloth'),('Sachet'),('Upgrade'),('Whipped Dream'),
('Strawberry Sweet'),('Love Sweet'),('Berry Sweet'),('Clover Sweet'),('Flower Sweet'),('Star Sweet '),('Ribbon Sweet'),('Leaders Crest'),('Gimmighoul Coin'),('Full Incense'),('Lax Incense'),('Luck Incense'),('Odd Incense'),('Pure Incense'),('Rock Incense'),
('Rose Incense'),('Sea Incense'),('Wave Incense'),('Linking Cord')

INSERT NationalDex (pokemonName)
VALUES ('Bulbasaur'),('Ivysaur'),('Venusaur'),('Charmander'),('Charmeleon'),('Charizard'),('Squirtle'),('Wartortle'),('Blastoise'),('Caterpie'),('Metapod'),('Butterfree'),('Weedle'),
('Kakuna'),('Beedril'),('Pidgey'),('Pidgeotto'),('Pidgeot'),('Rattata'),('Raticate'),('Spearow'),('Fearow'),('Ekans'),('Arbok'),('Pikachu'),('Raichu'),('Sandshrew'),
('Sandslash'),('Nidoran-F'),('Nidorina'),('Nidoqueen'),('Nidoran-M'),('Nidorino'),('Nidoking'),('Clefairy'),('Clefable'),('Vulpix'),('Ninetales'),('Jigglypuff'),
('Wigglytuff'),('Zubat'),('Golbat'),('Oddish'),('Gloom'),('Vileplume'),('Paras'),('Parasect'),('Venonat'),('Venomoth'),('Diglett'),('Dugtrio'),('Meowth'),('Persian'),
('Psyduck'),('Golduck'),('Mankey'),('Primeape'),('Growlithe'),('Arcanine'),('Poliwag'),('Poliwhirl'),('Poliwrath'),('Abra'),('Kadabra'),('Alakazam'),('Machop'),('Machoke'),
('Machamp'),('Bellsprout'),('Weepinbell'),('Victreebel'),('Tentacool'),('Tentacruel'),('Geodude'),('Graveler'),('Golem'),('Ponyta'),('Rapidash'),('Slowpoke'),('Slowbro'),
('Magnemite'),('Magneton'),('Farfetchd'),('Doduo'),('Dodrio'),('Seel'),('Dewgong'),('Grimer'),('Muk'),('Shellder'),('Cloyster'),('Gastly'),('Haunter'),('Gengar'),('Onix'),
('Drowzee'),('Hypno'),('Krabby'),('Kingler'),('Voltorb'),('Electrode'),('Exeggcute'),('Exeggutor'),('Cubone'),('Marowak'),('Hitmonlee'),('Hitmonchan'),('Lickitung'),
('Koffing'),('Weezing'),('Rhyhorn'),('Rhydon'),('Chansey'),('Tangela'),('Kangaskhan'),('Horsea'),('Seadra'),('Goldeen'),('Seaking'),('Staryu'),('Starmie'),('Mr. Mime'),
('Scyther'),('Jynx'),('Electabuzz'),('Magmar'),('Pinsir'),('Tauros'),('Magikarp'),('Gyarados'),('Lapras'),('Ditto'),('Eevee'),('Vaporeon'),('Jolteon'),('Flareon'),('Porygon'),
('Omanyte'),('Omastar'),('Kabuto'),('Kabutops'),('Aerodactyl'),('Snorlax'),('Articuno'),('Zapdos'),('Moltres'),('Dratini'),('Dragonair'),('Dragonite'),('Mewtwo'),('Mew'),
('Chikorita'),('Bayleef'),('Meganium'),('Cyndaquil'),('Quilava'),('Typhlosion'),('Totodile'),('Croconaw'),('Feraligatr'),('Sentret'),('Furret'),('Hoothoot'),('Noctowl'),
('Ledyba'),('Ledian'),('Spinarak'),('Ariados'),('Crobat'),('Chinchou'),('Lanturn'),('Pichu'),('Cleffa'),('Igglybuff'),('Togepi'),('Togetic'),('Natu'),('Xatu'),('Mareep'),
('Flaaffy'),('Ampharos'),('Bellossom'),('Marill'),('Azumarill'),('Sudowoodo'),('Politoed'),('Hoppip'),('Skiploom'),('Jumpluff'),('Aipom'),('Sunkern'),('Sunflora'),('Yanma'),
('Wooper'),('Quagsire'),('Espeon'),('Umbreon'),('Murkrow'),('Slowking'),('Misdreavus'),('Unown'),('Wobbuffet'),('Girafarig'),('Pineco'),('Forretress'),('Dunsparce'),
('Gligar'),('Steelix'),('Snubbull'),('Granbull'),('Qwilfish'),('Scizor'),('Shuckle'),('Heracross'),('Sneasel'),('Teddiursa'),('Ursaring'),('Slugma'),('Magcargo'),('Swinub'),
('Piloswine'),('Corsola'),('Remoraid'),('Octillery'),('Delibird'),('Mantine'),('Skarmory'),('Houndour'),('Houndoom'),('Kingdra'),('Phanpy'),('Donphan'),('Porygon 2'),
('Stantler'),('Smeargle'),('Tyrogue'),('Hitmontop'),('Smoochum'),('Elekid'),('Magby'),('Miltank'),('Blissey'),('Raikou'),('Entei'),('Suicune'),('Larvitar'),('Pupitar'),
('Tyranitar'),('Lugia'),('Ho-Oh'),('Celebi'),('Treecko'),('Grovyle'),('Sceptile'),('Torchic'),('Combusken'),('Blaziken'),('Mudkip'),('Marshtomp'),('Swampert'),('Poochyena'),
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
('Leafeon'),('Glaceon'),('Gliscor'),('Mamoswine'),('Porygon-Z'),('Gallade'),('Probopass'),('Dusknoir'),('Froslass'),('Rotom'),('Uxie'),('Mesprit'),('Azelf'),('Dialga'),('Palkia'),
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
('Larvesta'),('Volcarona'),('Cobalion'),('Terrakion'),('Virizion'),('Tornadus'),('Thundurus'),('Reshiram'),('Zekrom'),('Landorus'),('Kyurem'),('Keldeo'),('Meloetta'),('Genesect'),
('Chespin'),('Quilladin'),('Chesnaught'),('Fennekin'),('Braixen'),('Delphox'),('Froakie'),('Frogadier'),('Greninja'),('Bunnelby'),('Diggersby'),('Fletchling'),('Fletchinder'),
('Talonflame'),('Scatterbug'),('Spewpa'),('Vivillon'),('Litleo'),('Pyroar'),('Flabébé'),('Floette'),('Florges'),('Skiddo'),('Gogoat'),('Pancham'),('Pangoro'),('Furfrou'),
('Espurr'),('Meowstic'),('Honedge'),('Doublade'),('Aegislash'),('Spritzee'),('Aromatisse'),('Swirlix'),('Slurpuff'),('Inkay'),('Malamar'),('Binacle'),('Barbaracle'),('Skrelp'),
('Dragalge'),('Clauncher'),('Clawitzer'),('Helioptile'),('Heliolisk'),('Tyrunt'),('Tyrantrum'),('Amaura'),('Aurorus'),('Sylveon'),('Hawlucha'),('Dedenne'),('Carbink'),('Goomy'),
('Sliggoo'),('Goodra'),('Klefki'),('Phantump'),('Trevenant'),('Pumpkaboo'),('Gourgeist'),('Bergmite'),('Avalugg'),('Noibat'),('Noivern'),('Xerneas'),('Yveltal'),('Zygarde'),
('Diancie'),('Hoopa'),('Volcanion'),('Rowlet'),('Dartrix'),('Decidueye'),('Litten'),('Torracat'),('Incineroar'),('Popplio'),('Brionne'),('Primarina'),('Pikipek'),('Trumbeak'),
('Toucannon'),('Yungoos'),('Gumshoos'),('Grubbin'),('Charjabug'),('Vikavolt'),('Crabrawler'),('Crabominable'),('Oricorio'),('Cutiefly'),('Ribombee'),('Rockruff'),('Lycanroc'),
('Wishiwashi'),('Mareanie'),('Toxapex'),('Mudbray'),('Mudsdale'),('Dewpider'),('Araquanid'),('Fomantis'),('Lurantis'),('Morelull'),('Shiinotic'),('Salandit'),('Salazzle'),
('Stufful'),('Bewear'),('Bounsweet'),('Steenee'),('Tsareena'),('Comfey'),('Oranguru'),('Passimian'),('Wimpod'),('Golisopod'),('Sandygast'),('Palossand'),('Pyukumuku'),
('Type:Null'),('Silvally'),('Minior'),('Komala'),('Turtonator'),('Togedemaru'),('Mimikyu'),('Bruxish'),('Drampa'),('Dhelmise'),('Jangmo-o'),('Hakamo-o'),('Kommo-o'),('Tapu Koko'),
('Tapu Lele'),('Tapu Bulu'),('Tapu Fini'),('Cosmog'),('Cosmoem'),('Solgaleo'),('Lunala'),('Nihilego'),('Buzzwole'),('Pheromosa'),('Xurkitree'),('Celesteela'),('Kartana'),('Guzzlord'),
('Necrozma'),('Magearna'),('Marshadow'),('Poipole'),('Naganadel'),('Stakataka'),('Blacephalon'),('Zeraora'),('Meltan'),('Melmetal'),('Grookey'),('Thwackey'),('Rillaboom'),
('Scorbunny'),('Raboot'),('Cinderace'),('Sobble'),('Drizzile'),('Inteleon'),('Skwovet'),('Greedent'),('Rookidee'),('Corvisquire'),('Corviknight'),('Blipbug'),('Dottler'),
('Orbeetle'),('Nickit'),('Thievul'),('Gossifleur'),('Eldegoss'),('Wooloo'),('Dubwool'),('Chewtle'),('Drednaw'),('Yamper'),('Boltund'),('Rolycoly'),('Carkol'),('Coalossal'),
('Applin'),('Flapple'),('Appletun'),('Silicobra'),('Sandaconda'),('Cramorant'),('Arrokuda'),('Barraskewda'),('Toxel'),('Toxtricity'),('Sizzlipede'),('Centiskorch'),('Clobbopus'),
('Grapploct'),('Sinistea'),('Polteageist'),('Hatenna'),('Hattrem'),('Hatterene'),('Impidimp'),('Morgrem'),('Grimmsnarl'),('Obstagoon'),('Perrserker'),('Cursola'),('Sirfetchd'),
('Mr. Rime'),('Runerigus'),('Milcery'),('Alcremie'),('Falinks'),('Pincurchin'),('Snom'),('Frosmoth'),('Stonjourner'),('Eiscue'),('Indeedee'),('Morpeko'),('Cufant'),('Copperajah'),
('Dracozolt'),('Arctozolt'),('Dracovish'),('Arctovish'),('Duraludon'),('Dreepy'),('Drakloak'),('Dragapult'),('Zacian'),('Zamazenta'),('Eternatus'),('Kubfu'),('Urshifu'),('Zarude'),
('Regieleki'),('Regidrago'),('Glastrier'),('Spectrier'),('Calyrex'),('Wyrdeer'),('Kleavor'),('Ursaluna'),('Basculegion'),('Sneasler'),('Overqwil'),('Enamorus'),('Sprigatito'),
('Floragato'),('Meowscarada'),('Fuecoco'),('Crocalor'),('Skeledirge'),('Quaxly'),('Quaxwell'),('Quaquaval'),('Lechonk'),('Oinkologne'),('Tarountula'),('Spidops'),('Nymble'),
('Lokix'),('Pawmi'),('Pawmo'),('Pawmot'),('Tandemaus'),('Maushold'),('Fidough'),('Dachsbun'),('Smoliv'),('Dolliv'),('Arboliva'),('Squawkabilly'),('Nacli'),('Naclstack'),
('Garganacl'),('Charcadet'),('Armarouge'),('Ceruledge'),('Tadbulb'),('Bellibolt'),('Wattrel'),('Kilowattrel'),('Maschiff'),('Mabosstiff'),('Shroodle'),('Grafaiai'),('Bramblin'),
('Brambleghast'),('Toedscool'),('Toedscruel'),('Klawf'),('Capsakid'),('Scovillain'),('Rellor'),('Rabsca'),('Flittle'),('Espathra'),('Tinkatink'),('Tinkatuff'),('Tinkaton'),
('Wiglett'),('Wugtrio'),('Bombirdier'),('Finizen'),('Palafin'),('Varoom'),('Revavroom'),('Cyclizar'),('Orthworm'),('Glimmet'),('Glimmora'),('Greavard'),('Houndstone'),('Flamigo'),
('Cetoddle'),('Cetitan'),('Veluza'),('Dondozo'),('Tatsugiri'),('Annihilape'),('Clodsire'),('Farigiraf'),('Dudunsparce'),('Kingambit'),('Great Tusk'),('Scream Tail'),('Brute Bonnet'),
('Flutter Mane'),('Slither Wing'),('Sandy Shocks'),('Iron Treads'),('Iron Bundle'),('Iron Hands'),('Iron Jugulis'),('Iron Moth'),('Iron Thorns'),('Frigibax'),('Arctibax'),('Baxcalibur'),
('Gimmighoul'),('Gholdengo')

INSERT NationalDex (pokemonName)
VALUES ('Wo-Chien'),('Chien-Pao'),('Ting-Lu'),('Chi-Yu'),('Roaring Moon'),('Iron Valiant'),('Koraidon'),('Miraidon'),('Walking Wake'),('Iron Leaves'),('Dipplin'),
('Poltchageist'),('Sinistcha'),('Okidogi'),('Munkidori'),('Fezandipiti'),('Ogerpon'),('Archaludon'),('Hydrapple'),('Gouging Fire'),('Raging Bolt'),('Iron Boulder'),('Iron Crown'),
('Terapagos'),('Pecharunt')

INSERT LocationsHoenn (locationName)
VALUES ('Route 101'),('Route 102'),('Route 103'),('Route 104'),('Route 105'),('Route 106'),('Route 107'),('Route 108'),('Route 109'),('Route 110'),('Route 111'),('Route 112'),('Route 113'),
('Route 114'),('Route 115'),('Route 116'),('Route 117'),('Route 118'),('Route 119'),('Route 120'),('Route 121'),('Route 122'),('Route 123'),('Route 124'),('Route 125'),('Route 126'),
('Route 127'),('Route 128'),('Route 129'),('Route 130'),('Route 131'),('Route 132'),('Route 133'),('Route 134'),('Abandoned Ship'),('Altering Cave'),('Artisan Cave'),('Battle Resort'),
('Battle Tower'),('Birth Island'),('Cave of Origin 1F'),('Cave of Origin B1F'),('Cave of Origin B2F'),('Cave of Origin B3F'),('Cave of Origin B4F'),('Desert Underpass'),('Dewford Town'),
('Ever Grande City'),('Faraway Island'),('Fiery Path'),('Fortree City'),('Granite Cave 1F'),('Granite Cave Steven Room'),('Granite Cave B1F'),('Granite Cave B2F'),('Jagged Pass'),
('Lilycove City'),('Littleroot Town'),('Marine Cave'),('Meteor Falls 1F1R'),('Meteor Falls 1F2R'),('Meteor Falls B1F1R'),('Meteor Falls B1F2R'),
('Meteor Falls Steven Cave'),('Route 130 Mirage Island'),('Mirage Spots'),('Mirage Tower 1F-4F'),('Mossdeep City'),('Mt Pyre Exterior'),('Mt Pyre Interior 1F-3F'),('Mt Pyre Summit'),
('New Mauville Entrance'),('New Mauville Basement'),('Pacifidlog Town'),('Petalburg City'),('Petalburg Woods'),('Roaming Hoenn'),('Rustboro City'),('Rusturf Tunnel'),('Scorched Slab'),
('Sea Mauville'),('Seafloor Cavern'),('Sealed Chamber'),('Shoal Cave Main'),('Shoal Cave Ice'),('Sky Pillar 1F'),('Sky Pillar 3F'),('Sky Pillar 5F'),('Slateport City'),('Sootopolis City'),
('Southern Island'),('Team Magma Hideout'),('Team Aqua Hideout'),('Terra Cave'),('Victory Road 1F'),('Victory Road B1F'),('Victory Road B2F'),('Cave of Origin Entrance'),('Magma Hideout (Jagged Pass)'),
('Route 119 Feebas Tile'),('Weather Institute'),('Mt Pyre Interior 4F-6F'),('Lavaridge Town')

INSERT EncounterMethods (encounterMethod)
VALUES ('Tall Grass'),('Long Grass'),('Surfing'),('Breeding'),('Evolution'),('Gift'),('Trade Slakoth'),('Trade Pikachu'),('Trade Bellossom'),('Trade Ralts'),('Trade Volbeat'),
('Trade Bagon'),('Trade Skitty'),('Walking'),('Cave'),('Rock Smash'),('Static'),('Deep Sand'),('Seaweed')

INSERT GameVersion (gameVersion)
VALUES ('RSE'),('RS'),('RE'),('SE'),('R'),('S'),('E'),('None')

INSERT FishingRod (fishingRodType)
VALUES ('Old Rod'),('Good Rod'),('Super Rod')

INSERT HoennSafari (safariArea)
VALUES ('Area 1-Central'),('Area 2-West'),('Area 3-Northwest'),('Area 4-North'),('Area 5-East'),('Area 6-Northeast')

INSERT EvolutionMethod (evolutionMethod)
VALUES ('Level Up'),('Friendship'),('Move'),('Location'),('Time'),('Item'),('Gender'),('Game'),('Lets Go!'),('Special'),('Trade')

SELECT * FROM ReviveLabs
SELECT * FROM FossilItems
SELECT * FROM EvolutionMethod
SELECT * FROM GeneralItems
SELECT * FROM NationalDex
SELECT * FROM HoennSafari
SELECT * FROM FishingRod
SELECT * FROM GameVersion
SELECT * FROM EncounterMethods
SELECT * FROM LocationsHoenn

CREATE TABLE FossilPokemonRSE
(
	fossilID INT IDENTITY (1,1)
		CONSTRAINT FOS_SIL PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT FOS_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	fossilItemID INT
		CONSTRAINT FOS_DEAD FOREIGN KEY REFERENCES FossilItems (fossilItemID),
	labID INT 
		CONSTRAINT LAB_NAME FOREIGN KEY REFERENCES ReviveLabs (labID),
	locationID INT 
		CONSTRAINT LAB_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	gameVerID INT
		CONSTRAINT FOS_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	levelRange VARCHAR (50)
)

GO
CREATE TABLE RandomPokemonRSE
(
	randomID INT IDENTITY (1,1)
		CONSTRAINT PKMN_RANDOM PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT RANDOM_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	locationID INT
		CONSTRAINT RANDOM_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	methodID INT
		CONSTRAINT RANDOM_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	gameVerID INT
		CONSTRAINT RANDOM_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50)
)
GO
CREATE TABLE FishingPokemonRSE
(
	fishingID INT IDENTITY (1,1)
		CONSTRAINT PKMN_FISH PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT FISHING_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	locationID INT
		CONSTRAINT FISHING_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	fishingRodID INT
		CONSTRAINT FISHING_ROD FOREIGN KEY REFERENCES FishingRod (fishingRodID),
	gameVerID INT
		CONSTRAINT FISHING_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50)
)
GO
CREATE TABLE FishingSafariPokemonRSE
(
	safariFishingID INT IDENTITY (1,1)
		CONSTRAINT SAFARI_FISH PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT SAFISH_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	safariAreaID INT
		CONSTRAINT FISH_AREA FOREIGN KEY REFERENCES HoennSafari (safariAreaID),
	fishingRodID INT
		CONSTRAINT SAFARI_ROD FOREIGN KEY REFERENCES FishingRod (fishingRodID),
	gameVerID INT
		CONSTRAINT SAFISH_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50)
)
GO
CREATE TABLE RandomSafariPokemonRSE
(
	safariRandomID INT IDENTITY (1,1)
		CONSTRAINT SAF_RANDOM PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT SARAN_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	safariAreaID INT
		CONSTRAINT RANDOM_AREA FOREIGN KEY REFERENCES HoennSafari (safariAreaID),
	methodID INT
		CONSTRAINT SARAN_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	gameVERID INT 
		CONSTRAINT SARAN_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50)
)
GO
CREATE TABLE BreedingPokemonRSE
(
	breedingID INT IDENTITY (1,1)
		CONSTRAINT BREE_DING PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT BRED_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	methodID INT
		CONSTRAINT BRED_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	itemID INT
		CONSTRAINT BRED_ITEM FOREIGN KEY REFERENCES GeneralItems (itemID),
	breedingParent VARCHAR (50),
	eggGroups VARCHAR (50)
)
GO
CREATE TABLE EvolutionPokemonRSE
(
	evolutionID INT IDENTITY (1,1)
		CONSTRAINT EVO_TABLE PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT EVO_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	methodID INT
		CONSTRAINT EVOTABLE_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	evolvesFrom INT
		CONSTRAINT EVOFROM_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	evolutionMethodID INT
		CONSTRAINT EVO_HOW FOREIGN KEY REFERENCES EvolutionMethod (evolutionMethodID),
	evolutionRequirement VARCHAR (500)
)
GO
CREATE TABLE SwarmPokemonRSE
(
	swarmID INT IDENTITY (1,1)
		CONSTRAINT SWA_RM PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT SWA_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	swarmLocation INT
		CONSTRAINT SWA_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	methodID INT
		CONSTRAINT SWA_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	gameVerID INT
		CONSTRAINT SWA_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	mixingRecordsWith INT
		CONSTRAINT SWA_MIXING FOREIGN KEY REFERENCES GameVersion (gameVerID),
	encounterChance VARCHAR (50),
	levelRange VARCHAR (50)	
)
GO
CREATE TABLE StaticPokemonRSE
(
	staticID INT IDENTITY (1,1)
		CONSTRAINT STA_ENC PRIMARY KEY,
	nationalDexNumber INT 
		CONSTRAINT STA_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	locationID INT 
		CONSTRAINT STA_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	locationDescription VARCHAR (500),
	methodID INT
		CONSTRAINT STA_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	gameVerID INT
		CONSTRAINT STA_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	levelFound VARCHAR (50)
)
GO
CREATE TABLE GiftPokemonRSE
(
	giftID INT IDENTITY (1,1)
		CONSTRAINT GIFT_GET PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT GIFT_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	locationID INT
		CONSTRAINT GIFT_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	methodID INT
		CONSTRAINT GIFT_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	giftGiver VARCHAR (50),
	gameVerID INT
		CONSTRAINT GIFT_GAMEVER FOREIGN KEY REFERENCES GameVersion (gameVerID),
	levelGiven VARCHAR (50)
)
GO
CREATE TABLE TradePokemonRSE
(
	tradeID INT IDENTITY (1,1)
		CONSTRAINT TRADE_SET PRIMARY KEY,
	nationalDexNumber INT
		CONSTRAINT TRADE_PKMN FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	locationID INT 
		CONSTRAINT TRADE_LOC FOREIGN KEY REFERENCES LocationsHoenn (locationID),
	methodID INT
		CONSTRAINT TRADE_METHOD FOREIGN KEY REFERENCES EncounterMethods (encounterID),
	pokemonRequested INT
		CONSTRAINT TRADE_REQ FOREIGN KEY REFERENCES NationalDex (nationalDexNumber),
	gameVerID INT
		CONSTRAINT TRADE_GAMEVER FOREIGN KEY REFERENCES gameVersion (gameVerID),
	levelTraded VARCHAR (50)
)

INSERT FossilPokemonRSE (nationalDexNumber, fossilItemID,
labID, locationID, gameVerID, levelRange)
VALUES ('345','4','3','75','1','Level 20'),('347','5','3','75','1','Level 20')


INSERT RandomPokemonRSE (nationalDexNumber, locationID, 
methodID, gameVerID, encounterChance, levelRange)
VALUES ('261','1','1','2','10%','2-3'),('261','1','1','7','45%','2-3'),('261','2','1','2','15%','3-4'),
('261','2','1','7','30%','3-4'),('261','3','1','2','30%','2-4'),('261','3','1','7','60%','2-4'),
('261','4','1','7','40%','4-5'),('261','10','1','7','20%','12'),('261','16','1','7','28%','6-8'),
('261','17','1','7','30%','13-14'),('261','20','2','7','20%','25'),('261','21','1','7','20%','26'),
('261','23','1','7','20%','26'),('261','76','1','7','30%','5-6'),('262','20','2','7','30%','25,27'),
('262','21','1','7','20%','26-28'),('262','23','1','7','20%','26-28'),('262','21','1','7','20%','26-28'),
('263','1','1','2','45%','2-3'),('263','1','1','7','10%','2-3'),('263','2','1','2','30%','3-4'),
('263','2','1','7','15%','3-4'),('263','3','1','2','60%','2-4'),('263','3','1','7','20%','3-4'),
('263','4','1','2','50%','4-5'),('263','10','1','2','20%','12'),('263','16','1','2','28%','6-8'),
('263','17','1','2','30%','13-14'),('263','18','1','1','30%','24,26'),('263','19','2','1','30%','24-27'),
('263','20','2','2','20%','25'),('263','21','1','2','20%','26'),('263','23','1','2','20%','26'),('263',
'76','1','2','30%','5-6'),('264','18','1','1','10%','26'),('264','19','2','1','30%','25,27'),('264',
'20','2','2','30%','25,27'),('264','21','1','2','20%','26,28'),('264','23','1','2','20%','26,28'),('265','1',
'1','1','45%','2-3'),('265','2','1','1','30%','3-4'),('265','4','1','2','30%','4-5'),('265','4','1',
'7','20%','4'),('265','76','1','1','25%','5-6'),('266','76','1','1','10%','5'),('268','76',
'1','1','10%','5'),('270','2','1','4','20%','3-4'),('270','14','1','4','30%','15-16'),('271','14','1','6','10%','16,18'),
('271','14','1','7','20%','16-18'),('273','2','1','5','20%','3-4'),('273','2','1','7','1%','3'),('273','14','1',
'5','30%','15-16'),('273','17','1','7','1%','13'),('273','20','2','7','1%','25'),('274','14','1','5','10%','16,18'),
('274','14','1','7','1%','15'),('276','4','1','1','10%','4-5'),('276','15','1','1','40%','23-25'),
('276','16','1','1','20%','6-8'),('276','76','1','1','5%','5-6'),('276','15','1','1','10%','25'),
('278','3','1','2','10%','2-4'),('278','3','1','7','20%','2-4'),('278','3','3','1','35%','10-30'),('278','4',
'1','1','10%','3-5'),('278','4','3','1','95%','10-30'),('278','10','1','1','8%','12'),('278','10','3','1','35%','10-30'),
('278','15','1','1','30%','23,25'),('278','15','3','1','35%','10-30'),('278','18','1','1','19%','25-27'),('278','18',
'3','1','35%','10-30'),('278','21','1','1','9%','26-28'),('278','21','3','1','35%','10-30'),('278','23','1','1','9%',
'26-28'),('278','23','3','1','35%','10-30'),('278','69','1','1','10%','26-28'),('278','5','3','1','35%','10-30'),('278',
'6','3','1','35%','10-30'),('278','7','3','1','35%','10-30'),('278','8','3','1','35%','10-30'),('278','9','3','1',
'35%','10-30'),('278','19','3','1','35%','10-30'),('278','22','3','1','35%','10-30'),('278','24','3','1','35%','10-30'),('278',
'25','3','1','35%','10-30'),('278','26','3','1','35%','10-30'),('278','27','3','1','35%','10-30'),('278','28','3','1',
'35%','10-30'),('278','29','3','1','35%','10-30'),('278','30','3','1','35%','10-30'),('278','31','3','1','35%','10-30'),('278',
'32','3','1','35%','10-30'),('278','33','3','1','35%','10-30'),('278','34','3','1','35%','10-30'),('278','47','3',
'1','35%','10-30'),('278','48','3','1','35%','10-30'),('278','57','3','1','35%','10-30'),('278','68','3','1',
'35%','10-30'),('278','74','3','1','35%','10-30'),('278','89','3','1','35%','10-30'),('279','3','3','1','5%','25-30'),
('279','4','3','1','5%','25-30'),('279','5','3','1','5%','25-30'),('279','6','3','1','5%','25-30'),('279','7',
'3','1','5%','25-30'),('279','8','3','1','5%','25-30'),('279','9','3','1','5%','25-30'),('279','10','3','1','5%','25-30'),
('279','15','3','1','5%','25-30'),('279','18','3','1','5%','25-30'),('279','19','3','1','5%','25-30'),('279','21',
'3','1','5%','25-30'),('279','22','3','1','5%','25-30'),('279','23','3','1','5%','25-30'),('279','24','3','1','5%','25-30'),
('279','25','3','1','5%','25-30'),('279','26','3','1','5%','25-30'),('279','27','3','1','5%','25-30'),('279','28',
'3','1','5%','25-30'),('279','29','3','1','4%','25-30'),('279','30','3','1','5%','25-30'),('279','31','3','1','5%','25-30'),
('279','32','3','1','5%','25-30'),('279','33','3','1','5%','25-30'),('279','34','3','1','5%','25-30'),('279','47',
'3','1','5%','25-30'),('279','48','3','1','5%','25-30'),('279','57','3','1','5%','25-30'),('279','68','3',
'1','5%','25-30'),('279','74','3','1','5%','25-30'),('279','89','3','1','5%','25-30'),('280','2','1','1','4%','4'),
('283','2','1','2','1%','3'),('283','11','3','2','1%','20-30'),('283','14','1','2','1%','15'),('283','14','3','2',
'1%','20-30'),('283','17','1','2','1%','13'),('283','17','3','2','1%','20-30'),('283','20','2','2','1%','25'),('283','20',
'3','2','1%','20-30'),('285','76','1','1','15%','5-6'),('287','76','1','1','5%','5-6'),('63','52','15','1',
'10%','8'),('63','53','15','1','10%','8'),('63','54','15','1','10%','9'),('63','55','15','1','10%','10'),('63','16','1','7','10%',
'7'),('290','16','1','1','20%','6-7'),('293','16','1','2','30%','6-7'),('293','16','1','7','20%','6'),('293','78',
'15','1','100%','5-8'),('293','95','15','1','5%','36'),('293','46','15','7','34%','35,36,38'),('294','95','15','1','10%','40'),
('294','46','15','7','16%','38,40,44'),('296','52','15','1','50%','6-10'),('296','53','15','1','50%','6-10'),('296',
'54','15','1','10%','10-11'),('296','95','15','1','10%','36'),('297','95','15','1','25%','38,40'),
('297','96','15','1','35%','38,40,42'),('118','2','3','7','1%','20-30'),('118','11','3','7','1%','20-30'),
('118','14','3','7','1%','20-30'),('118','17','3','7','1%','20-30'),('118','20','3','7','1%','20-30'),('129','90',
'3','1','100%','5-35'),('183','2','3','1','99%','5-35'),('183','4','1','7','20%','4-5'),('183','11','3','1','99%','5-35'),
('183','12','1','7','25%','14-16'),('183','14','3','1','99%','5-35'),('183','17','3','1','99%','5-35'),('183','17','1',
'1','10%','13'),('183','20','3','1','99%','5-35'),('183','20','2','1','15%','25,27'),('183','75','3','1','100%','5-35'),('74',
'11','16','1','100%','5-20'),('74','14','16','1','100%','5-20'),('74','96','16','1','30%','30-40'),('74','52',
'15','1','10%','6-9'),('74','55','16','1','70%','5-20'),('74','99','15','7','55%','27-30'),('75','96','16','1','70%',
'30-40'),('75','99','15','7','15%','30-33'),('299','55','16','1','30%','10-20'),('300','16','1','1','2%','7-8'),
('41','98','15','1','90%','28-35'),('41','41','15','1','60%','30-34'),('41','42','15','1','60%','30-34'),
('41','43','15','1','60%','30-34'),('41','44','15','1','60%','30-34'),('41','52','15','1','30%','7-8'),
('41','53','15','1','30%','7-8'),('41','54','15','1','30%','9-10'),('41','55','15','1','30%','10-11'),('41','95','15','1','10%','36'),
('41','60','15','1','80%','14-20'),('41','60','3','1','90%','5-35'),('41','82','15','1','90%','28-35'),
('41','82','3','1','35%','5-35'),('41','84','15','1','45%','26,28,30,32'),('41','84','3','1','30%','5-35'),
('41','85','15','1','40%','26,28,30'),('41','36','15','7','100%','6,8,10,12,14,16'),
('42','61','15','1','65%','33,35,38,40'),('42','62','15','1','65%','33,35,38,40'),('42','61','3','1','90%','30-35'),
('42','62','3','1','90%','30-35'),('42','63','15','1','50%','33,35,38,40'),('42','63','3','1','90%','30-35'),
('42','64','15','7','65%','33,35,38,40'),('42','82','15','1','10%','33-36'),('42','82','3','1','5%','30-35'),
('42','95','15','1','25%','38,40'),('42','96','15','1','35%','38,40,42'),('42','97','15','1','35%','40,42,44'),('42',
'97','3','1','100%','25-40'),('42','98','15','1','10%','33-36'),('42','41','15','1','10%','33-36'),('42',
'42','15','1','10%','33-36'),('42','43','15','1','10%','33-36'),('42','44','15','1','10%','33-36'),('42','84','15','1','5%','32'),
('42','85','15','1','5%','30,32'),('42','86','14','2','30%','48,50'),('42','86','14','7','30%','34,35'),
('42','87','14','2','30%','51,53'),('42','87','14','7','30%','34,35'),('42','88','14','2','30%','54-56'),
('42','88','14','7','30%','34,35'),('72','28','3','1','60%','5-35'),('72','48','3','1','60%','5-35'),
('72','35','3','1','99%','5-35'),('72','3','3','1','60%','5-35'),('72','5','3','1','60%','5-35'),('72',
'6','3','1','60%','5-35'),('72','7','3','1','60%','5-35'),('72','8','3','1','60%','5-35'),('72','9',
'3','1','60%','5-35'),('72','10','3','1','60%','5-35'),('72','15','3','1','60%','5-35'),('72','18','3','1',
'60%','5-35'),('72','19','3','1','60%','5-35'),('72','21','3','1','60%','5-35'),('72','22','3','1','60%','5-35'),
('72','23','3','1','60%','5-35'),('72','24','3','1','60%','5-35'),('72','25','3','1','60%','5-35'),('72',
'26','3','1','60%','5-35'),('72','27','3','1','60%','5-35'),('72','29','3','1','60%','5-35'),('72','30',
'3','1','60%','5-35'),('72','31','3','1','60%','5-35'),('72','32','3','1','60%','5-35'),('72','33','3',
'1','60%','5-35'),('72','34','3','1','60%','5-35'),('72','89','3','1','60%','5-35'),('72','74','3',
'1','60%','5-35'),('72','68','3','1','60%','5-35'),('72','57','3','1','60%','5-35'),('72','47','3',
'1','60%','5-35'),('72','84','3','1','60%','5-35'),('72','82','3','1','60%','5-35'),('73','35','3',
'1','1%','30-35'),('302','54','15','4','10%','9-11'),('302','55','15','4','20%','10-12'),('302','41','15','4','30%',
'30,32,34'),('302','42','15','4','30%','30,32,34'),('302','43','15','4','30%','30,32,34'),('302','44','15','4',
'30%','30,32,34'),('302','86','14','6','30%','48,50'),('302','86','14','7','30%','33,34'),('302','87','14','6','30%',
'51,53'),('302','87','14','7','30%','33,34'),('302','88','14','6','30%','54,56'),('302','88','14','7','30%','33,34'),
('302','97','15','4','35%','40,42,44'),('303','54','15','5','10%','9-11'),('303','55','15','5','20%','10-12'),('303',
'41','15','5','30%','30,32,34'),('303','42','15','5','30%','30,32,34'),('303','43','15','5','30%','30,32,34'),('303',
'44','15','5','30%','30,32,34'),('303','86','14','5','30%','48,50'),('303','87','14','5','30%','51,53'),('303','88',
'14','5','30%','54,56'),('303','97','15','5','35%','40,42,44'),('303','97','15','7','5%','42,44'),('304','53','15',
'1','10%','7,8'),('304','54','15','1','40%','9-11'),('304','55','15','1','40%','10-12'),('304','95','15','1','5%','36'),
('305','95','15','1','10%','40'),('305','96','15','2','15%','40,42'),('305','96','15','7','25%','40,42'),('305',
'97','15','2','15%','40,42,44'),('305','97','15','7','25%','40,42,44'),('66','12','1','2','25%','14-16'),('66','50',
'15','1','15%','15,16'),('66','56','1','5','25%','18-20'),('66','56','1','4','25%','20-22'),('307','69','1',
'2','30%','27,29'),('307','96','15','2','5%','38'),('308','96','15','2','10%','40'),('308','97','15','2','15%','40,42,44'),
('309','10','1','1','30%','12,13'),('309','18','1','1','30%','24,26'),('310','18','1','1','10%','26'),
('311','10','1','3','2%','12,13'),('311','10','1','6','15%','13'),('312','10','1','3','15%','13'),
('312','10','1','6','2%','12,13'),('81','72','14','1','50%','22-26'),('81','72','14','1','49%','22-26'),
('82','73','14','1','1%','26'),('100','72','14','1','50%','22-26'),('100','73','14','1','49%','22-26'),
('101','73','14','1','1%','26'),('313','17','1','3','1%','13'),('313','17','1','6','18%','13,14'),
('314','17','1','3','18%','13-14'),('314','17','1','6','1%','13'),('43','10','1','1','10%','13'),
('43','17','1','2','10%','13'),('43','17','1','7','40%','13,14'),('43','19','2','1','30%','24-27'),('43','20','2',
'1','25%','25-27'),('43','21','1','1','15%','26,28'),('43','23','1','1','15%','26,28'),('44','21','1','1','5%','28'),('44',
'23','1','1','5%','28'),('315','17','1','2','30%','13,14'),('316','10','1','1','15%','12,13'),('321','29','3','5','1%',
'35-40'),('321','29','3','4','1%','25-30'),('322','12','1','1','75%','14-16'),('322','50','15','1','30%','15-16'),
('322','56','1','5','55%','18-20'),('322','56','1','4','55%','20-22'),('218','13','1','7','25%','14-16'),
('218','50','15','4','10%','15'),('324','50','15','1','18%','14-16'),('324','99','15','7','30%','28,30'),
('88','50','15','3','2%','14'),('88','50','15','6','25%','15,16'),('109','50','15','3','25%','15,16'),
('109','50','15','6','2%','14'),('325','56','1','5','20%','18-20'),('325','56','1','4','20%','20-22'),
('27','11','18','1','35%','19-21'),('27','13','1','2','25%','14-16'),('27','67','14','7','50%','20-24'),
('327','13','1','1','70%','14-16'),('227','13','1','1','5%','16'),('328','11','18','1','35%','19-21'),
('328','67','14','7','50%','20-24'),('331','11','18','2','20%','19,21'),('331','11','18','7','6%','20,22'),
('333','14','1','1','40%','15-17'),('333','15','1','1','30%','23,25'),('334','88','14','2','6%','54,57,60'),
('334','88','14','7','6%','38,39'),('335','14','1','5','19%','15-17'),('336','14','1','6','19%','15-17'),
('336','14','1','7','9%','15,17'),('337','60','15','6','20%','14,16,18'),('337','60','3','6','10%','5-35'),
('337','61','15','6','35%','33,35,37,39'),('337','61','3','6','10%','5-35'),('337','62','15','6','35%','33,35,37,39'),
('337','62','3','6','10%','5-35'),('337','63','15','6','25%','35,37,39'),('337','63','3','6','10%','5-35'),
('338','60','15','3','20%','14,16,18'),('338','60','3','3','10%','5-35'),('338','61','15','3','35%','33,35,37,39'),
('338','61','3','3','10%','5-35'),('338','62','15','3','35%','33,35,37,39'),('338','62','3','3','10%','5-35'),
('338','63','15','3','25%','35,37,39'),('338','63','3','3','10%','5-35'),('338','64','15','7','35%','33,35,37,39'),
('343','11','18','2','10%','20,22'),('343','11','18','7','24%','19-21'),('344','86','14','2','25%','47-50'),
('344','86','14','7','25%','36-38'),('344','87','14','2','25%','50-53'),('344','87','14','7','25%','36-38'),
('344','88','14','2','19%','54-56'),('344','88','14','7','19%','36-38'),('344','88','14','7','19%','36-38'),
('39','15','1','1','10%','24,25'),('353','21','1','4','30%','26,28'),('353','23','1','4','30%','26,28'),
('353','70','14','4','100%','22-29'),('353','102','14','4','90%','22-29'),('353','102','14','5','10%','25,27,29'),
('353','69','1','6','40%','27-29'),('353','69','1','7','60%','27-29'),('353','71','1','4','85%','24-30'),
('353','71','1','5','13%','26,28,30'),('354','86','14','6','15%','48,50'),('354','86','14','7','15%','37,38'),
('354','87','14','6','15%','51,53'),('354','87','14','7','15%','37,38'),('354','88','14','6','15%','54,56'),
('354','88','14','7','15%','37,38'),('355','21','1','5','30%','26,28'),('355','23','1','5','30%','26,28'),
('355','70','14','5','100%','22-29'),('355','102','14','5','90%','22-29'),('355','102','14','4','10%','25,27,29'),
('355','69','1','5','40%','27-29'),('355','71','1','5','85%','24-30'),('355','71','1','4','13%','26,28,30'),
('356','86','14','5','15%','48,50'),('356','87','14','5','15%','51,53'),('356','88','14','5','15%','54,56'),
('357','19','2','1','9%','25-27'),('358','71','1','1','2%','28'),('359','20','2','1','8%','25,27'),
('37','69','1','2','20%','25,27,29'),('37','69','1','7','30%','25,27,29'),('25','69','1','7','30%','25,27,29'),
('360','65','1','1','100%','5,10,15,20,25,30,35,40,45,50'),('361','85','15','1','10%','26,28,30'),
('363','84','15','1','50%','26,28,30,32'),('363','84','3','1','10%','25-35'),('363','85','15','1','45%','26,28,30,32'),
('366','24','19','1','65%','20-35'),('366','26','19','1','65%','20-35'),('369','24','19','1','5%','30-35'),
('369','26','19','1','5%','30-35'),('222','74','9','1','5%','30-35')


INSERT FishingPokemonRSE (nationalDexNumber, locationID, 
fishingRodID, gameVerID, encounterChance, levelRange)
VALUES ('118','2','1','1','30%','5-10'),('118','2','2','1','20%','10-30'),('118','11','1','1','30%','5-10'),('118','11',
'2','1','30%','5-10'),('118','14','1','1','30%','5-10'),('118','14','2','1','20%','10-30'),('118','17','1','1','30%','5-10'),
('118','17','2','1','20%','10-30'),('118','20','1','1','30%','5-10'),('118','20','2','1','20%','10-30'),('118','75',
'1','1','30%','5-10'),('118','75','2','1','20%','10-30'),('118','60','1','1','30%','5-10'),('118','60','2',
'1','20%','10-30'),('118','61','1','1','30%','5-10'),('118','61','2','1','20%','10-30'),('118','62','1','1',
'30%','5-10'),('118','62','2','1','20%','10-30'),('118','63','1','1','30%','5-10'),('118','63','2','1','20%',
'10-30'),('118','97','1','1','30%','5-10'),('118','97','2','1','20%','10-30'),('129','2','1','1','70%','5-10'),('129',
'2','2','1','60%','10-30'),('129','3','1','1','70%','5-10'),('129','3','2','1','60%','10-30'),('129','4','1','1',
'100%','5-10'),('129','4','2','1','100%','10-30'),('129','4','3','1','70%','20-45'),('129','5','1','1','70%','5-10'),('129',
'5','2','1','60%','10-30'),('129','6','1','1','70%','5-10'),('129','6','2','1','60%','10-30'),('129','7','1','1',
'70%','5-10'),('129','7','2','1','60%','10-30'),('129','8','1','1','70%','5-10'),('129','8','2','1','60%','10-30'),('129',
'9','1','1','70%','5-10'),('129','9','2','1','60%','10-30'),('129','10','1','1','70%','5-10'),('129','10','2','1',
'60%','10-30'),('129','11','1','1','70%','5-10'),('129','11','2','1','60%','10-30'),('129','14','1','1','70%','5-10'),('129',
'14','2','1','60%','10-30'),('129','15','1','1','70%','5-10'),('129','15','2','1','60%','10-30'),('129','17','1','1',
'70%','5-10'),('129','17','2','1','60%','10-30'),('129','18','1','1','70%','5-10'),('129','18','2','1','60%','10-30'),('129',
'19','1','1','70%','5-10'),('129','19','2','1','60%','10-30'),('129','100','1','1','35%','5-10'),
('129','100','2','1','30%','10-30'),('129','20','1','1','70%','5-10'),('129','20','2','1',
'60%','10-30'),('129','21','1','1','70%','5-10'),('129','21','2','1','60%','10-30'),('129','22','1','1','70%','5-10'),('129',
'22','2','1','60%','10-30'),('129','23','1','1','70%','5-10'),('129','23','2','1','60%','10-30'),('129','24','1','1',
'70%','5-10'),('129','24','2','1','60%','10-30'),('129','25','1','1','70%','5-10'),('129','25','2','1','60%','10-30'),('129',
'26','1','1','70%','5-10'),('129','26','2','1','60%','10-30'),('129','27','1','1','70%','5-10'),('129','27','2','1',
'60%','10-30'),('129','28','1','1','70%','5-10'),('129','28','2','1','60%','10-30'),('129','29','1','1','70%','5-10'),('129',
'29','2','1','60%','10-30'),('129','30','1','1','70%','5-10'),('129','30','2','1','60%','10-30'),('129','31','1','1',
'70%','5-10'),('129','31','2','1','60%','10-30'),('129','32','1','1','70%','5-10'),('129','32','2','1','60%','10-30'),('129',
'33','1','1','70%','5-10'),('129','33','2','1','60%','10-30'),('129','34','1','1','70%','5-10'),('129','34','2','1',
'60%','10-30'),('129','90','1','5','100%','5-15'),('129','90','1','4','70%','5-10'),('129','90','2','1','100%','10-30'),
('129','90','3','1','80%','30-35'),('129','75','1','1','70%','5-10'),('129','75','2','1','60%','10-30'),('129',
'47','1','1','70%','5-10'),('129','47','2','1','60%','10-30'),('129','89','1','1','70%','5-10'),('129','89',
'2','1','60%','10-30'),('129','57','1','1','70%','5-10'),('129','57','2','1','60%','10-30'),('129','74','1',
'1','70%','5-10'),('129','74','2','1','60%','10-30'),('129','48','1','1','70%','5-10'),('129','48','2','1',
'60%','10-30'),('129','35','1','1','70%','5-10'),('129','35','2','1','60%','10-30'),('129','84','1','1','70%','5-10'),
('129','84','2','1','60%','10-30'),('129','60','1','1','70%','5-10'),('129','60','2','1','60%','10-30'),('129',
'61','1','1','70%','5-10'),('129','61','2','1','60%','10-30'),('129','62','1','1','70%','5-10'),('129',
'62','2','1','60%','10-30'),('129','63','1','1','70%','5-10'),('129','63','2','1','60%','10-30'),('129',
'82','1','1','70%','5-10'),('129','82','2','1','60%','10-30'),('129','97','1','1','70%','5-10'),('129','97',
'2','1','60%','10-30'),('129','68','1','1','70%','5-10'),('129','68','2','1','60%','10-30'),('130','90','3','1',
'20%','5-45'),('72','28','1','1','30%','5-10'),('72','48','1','1','30%','5-10'),('72','90','1','4','30%','5-10'),('72',
'35','1','1','30%','5-10'),('72','35','2','1','40%','10-30'),('72','35','3','1','80%','25-35'),('72','3','1',
'1','30%','5-10'),('72','3','2','1','20%','10-30'),('72','5','1','1','30%','5-10'),('72','5','2','1','20%','10-30'),('72',
'6','1','1','30%','5-10'),('72','6','2','1','20%','10-30'),('72','7','1','1','30%','5-10'),('72','7','2',
'1','20%','10-30'),('72','8','1','1','30%','5-10'),('72','8','2','1','20%','10-30'),('72','9','1','1','30%','5-10'),
('72','9','2','1','20%','10-30'),('72','10','1','1','30%','5-10'),('72','10','2','1','20%','10-30'),('72','15',
'1','1','30%','5-10'),('72','15','2','1','20%','10-30'),('72','18','1','1','30%','5-10'),('72','18','2','1','20%','10-30'),
('72','19','1','1','30%','5-10'),('72','19','2','1','20%','10-30'),('72','100','1','1','15%','5-10'),
('72','100','2','1','10%','10-30'),('72','21','1','1','30%','5-10'),('72','21','2','1','20%','10-30'),
('72','22','1','1','30%','5-10'),('72','22','2','1','20%','10-30'),('72','23','1','1','30%','5-10'),('72',
'23','2','1','20%','10-30'),('72','24','1','1','30%','5-10'),('72','24','2','1','20%','10-30'),('72','25','1','1','30%',
'5-10'),('72','25','2','1','20%','10-30'),('72','26','1','1','30%','5-10'),('72','26','2','1','20%','10-30'),('72','27',
'1','1','30%','5-10'),('72','27','2','1','20%','10-30'),('72','29','1','1','30%','5-10'),('72','29','2','1','20%','10-30'),
('72','30','1','1','30%','5-10'),('72','30','2','1','20%','10-30'),('72','31','1','1','30%','5-10'),('72','31','2',
'1','20%','10-30'),('72','32','1','1','30%','5-10'),('72','32','2','1','20%','10-30'),('72','33','1','1','30%','5-10'),('72',
'33','2','1','20%','10-30'),('72','34','1','1','30%','5-10'),('72','34','2','1','20%','10-30'),('72','89','1','1',
'30%','5-10'),('72','89','2','1','20%','10-30'),('72','74','1','1','30%','5-10'),('72','74','2','1','20%','10-30'),
('72','68','1','1','30%','5-10'),('72','68','2','1','20%','10-30'),('72','57','1','1','30%','5-10'),('72','57',
'2','1','20%','10-30'),('72','47','1','1','30%','5-10'),('72','47','2','1','20%','10-30'),('72','84','1','1','30%',
'5-10'),('72','84','2','1','20%','10-30'),('72','82','1','1','30%','5-10'),('72','82','2','1','20%','10-30'),
('73','35','3','1','20%','20-35'),('318','18','2','1','20%','10-30'),('318','18','3','1','60%','20-25,30-45'),('318','19',
'2','1','20%','10-30'),('318','19','3','1','100%','20-45'),('318','100','2','1','10%','10-30'),('318','100','3','1','50%','20-45'),
('319','3','3','1','40%','30-35'),('319','18','3','1','40%','30-35'),('319','22','3','1','40%','30-35'),('319','24','3','1','40%','30-35'),
('319','25','3','1','40%','30-35'),('319','26','3','1','40%','30-35'),('319','27','3','1','40%','30-35'),
('319','29','3','1','40%','30-35'),('319','30','3','1','40%','30-35'),('319','31','3','1','40%','30-35'),
('319','32','3','1','40%','30-35'),('319','33','3','1','40%','30-35'),('319','34','3','1','40%','30-35'),
('319','68','3','1','40%','30-35'),('319','74','3','1','40%','30-35'),('320','3','2','1','20%','10-30'),('320','3',
'3','1','60%','25-45'),('320','5','2','1','20%','10-30'),('320','5','3','1','100%','20-45'),('320','6','2','1','20%','10-30'),
('320','6','3','1','100%','20-45'),('320','7','2','1','20%','10-30'),('320','7','3','1','100%','20-45'),('320','8','2','1',
'20%','10-30'),('320','8','3','1','100%','20-45'),('320','9','2','1','20%','10-30'),('320','9','3','1','100%','20-45'),('320','10',
'2','1','20%','10-30'),('320','10','3','1','100%','20-45'),('320','15','2','1','20%','10-30'),('320','15','3','1','100%','20-45'),
('320','21','2','1','20%','10-30'),('320','21','3','1','100%','20-45'),('320','22','2','1','20%','10-30'),('320','22','3','1',
'60%','25-45'),('320','23','2','1','20%','10-30'),('320','23','3','1','100%','20-45'),('320','24','2','1','20%','10-30'),('320','24',
'3','1','60%','25-45'),('320','25','2','1','20%','10-30'),('320','25','3','1','60%','25-45'),('320','26','2','1','20%','10-30'),
('320','26','3','1','60%','25-45'),('320','27','2','1','20%','10-30'),('320','27','3','1','60%','25-45'),('320','28','2','1',
'20%','10-30'),('320','28','3','1','45%','30-45'),('320','29','2','1','20%','10-30'),('320','29','3','1','60%','25-45'),('320','30',
'2','1','20%','10-30'),('320','30','3','1','60%','25-45'),('320','31','2','1','20%','10-30'),('320','31','3','1','60%','25-45'),('320',
'32','2','1','20%','10-30'),('320','32','3','1','45%','30-45'),('320','33','2','1','20%','10-30'),('320','33','3','1','45%','30-45'),
('320','34','2','1','20%','10-30'),('320','34','3','1','45%','30-45'),('320','47','2','1','20%','10-30'),('320','47','3','1',
'100%','20-45'),('320','48','2','1','20%','10-30'),('320','48','3','1','45%','30-45'),('320','57','2','1','20%','10-30'),('320',
'57','3','1','85%','25-45'),('320','68','2','1','20%','10-30'),('320','68','3','1','60%','25-45'),('320','74','2','1',
'20%','10-30'),('320','74','3','1','60%','25-45'),('320','82','2','1','20%','10-30'),('320','82','3','1','100%','20-45'),('320',
'84','2','1','20%','10-30'),('320','84','3','1','100%','20-45'),('320','89','2','1','20%','10-30'),('320','89','3','1','100%',
'20-45'),('339','11','2','1','20%','10-30'),('339','11','3','1','100%','20-45'),('339','14','2','1','20%','10-30'),
('339','14','3','1','100%','20-45'),('339','20','2','1','20%','10-30'),('339','20','3','1','100%','20-45'),
('339','60','2','1','20%','10-30'),('339','60','3','1','100%','20-45'),('339','61','2','1','20%','10-30'),
('339','61','3','1','80%','25-35'),('339','62','2','1','20%','10-30'),('339','62','3','1','80%','25-35'),
('339','63','2','1','20%','10-30'),('339','63','3','1','80%','25-35'),('339','97','2','1','20%','10-30'),
('339','97','3','1','80%','25-35'),('340','61','3','1','20%','30-45'),('340','62','3','1','20%','30-45'),
('340','63','3','1','20%','30-45'),('340','97','3','1','20%','30-45'),('341','2','2','1','20%','10-30'),
('341','2','3','1','100%','20-45'),('341','17','2','1','20%','10-30'),('341','17','3','1','100%','20-45'),
('341','75','3','1','100%','20-45'),('349','100','1','1','50%','20-25'),('349','100','2','1','50%','20-25'),
('349','100','3','1','50%','20-25'),('120','57','3','1','15%','25-30'),('120','57','3','1','15%','25-30')


INSERT FishingSafariPokemonRSE (nationalDexNumber, safariAreaID, 
fishingRodID, gameVerID, encounterChance, levelRange)
VALUES ('118','2','1','1','30%','5-10'),('118','2','2','1','40%','10-30'),('118','2','3','1','80%','25-35'),('118',
'3','1','1','30%','5-10'),('118','3','2','1','40%','10-30'),('118','3','3','1','80%','25-35'),('118',
'5','1','7','30%','25-30'),('118','5','2','7','20%','25-30'),('118','5','3','1','40%','25-30'),('119','2',
'3','1','20%','25-40'),('119','3','3','1','20%','25-40'),('129','2','1','1','70%','5-10'),('129','2',
'2','1','60%','10-30'),('129','3','1','1','70%','5-10'),('129','3','2','1','60%','10-30'),('129','5',
'1','7','70%','25-30'),('129','5','2','7','60%','25-30')
 
INSERT BreedingPokemonRSE (nationalDexNumber, methodID, 
itemID, breedingParent, eggGroups)
VALUES ('298','4','61','Marill/Azumarill','Water1/Fairy'),('174','4','1','Jigglypuff/Wigglytuff','Fairy'),('172','4','1','Pikachu/Raichu','Field/Fairy'),
('360','4','55','Wobbufett','Amorphous')


INSERT EvolutionPokemonRSE (nationalDexNumber, methodID, 
evolvesFrom, evolutionMethodID, evolutionRequirement)
VALUES ('253','5','252','1','Level 16'),('254','5','253','1','Level 36'),('256','5','255','1','Level 16'),('257',
'5','256','1','Level 36'),('259','5','258','1','Level 16'),('260','5','259','1','Level 36'),('262','5',
'261','1','Level 18'),('264','5','263','1','Level 20'),('267','5','266','1','Level 10'),('269','5','268','1','Level 10'),
('271','5','270','1','Level 14'),('272','5','271','6','Water Stone'),('274','5','273','1','Level 14'),('275','5','274','6',
'Leaf Stone'),('276','5','276','1','Level 22'),('279','5','278','1','Level 25'),('281','5','280','1','Level 20'),('282','5',
'281','1','Level 30'),('284','5','283','1','Level 22'),('286','5','285','1','Level 23'),('288','5','287','1','Level 18'),
('289','5','288','1','Level 36'),('64','5','63','1','Level 16'),('65','5','64','11','Evolves upon trading'),('291','5',
'290','1','Level 20'),('292','5','290','1','Level 20 with space in party'),('294','5','293','1','Level 20'),('295','5','294',
'1','Level 40'),('297','5','296','1','Level 24'),('119','5','118','1','Level 33'),('130','5','129','1','Level 20'),('183',
'5','298','2','Level up with high friendship'),('184','5','183','1','Level 18'),('75','5','74','1','Level 25'),('76','5',
'75','11','Evolves upon trading'),('301','5','300','6','Moon Stone'),('42','5','41','1','Level 22'),('169','5','42','2',
'Level up with high friendship'),('73','5','72','1','Level 30'),('305','5','304','1','Level 32'),('306','5','305','1','Level 42'),
('67','5','66','1','Level 28'),('68','5','67','11','Evolves upon trading'),('308','5','307','1','Level 37'),('310','5',
'309','1','Level 26'),('82','5','81','1','Level 30'),('101','5','100','1','Level 30'),('44','5','43','1','Level 21'),
('45','5','44','6','Leaf Stone'),('182','5','274','6','Sun Stone'),('85','5','84','1','Level 31'),('317','5','316','1',
'Level 26'),('319','5','318','1','Level 30'),('321','5','320','1','Level 40'),('323','5','322','1','Level 33'),
('219','5','218','1','Level 38'),('88','5','89','1','Level 38'),('110','5','109','1','Level 35'),('326','5','325','1','Level 32'),
('28','5','27','1','Level 22'),('329','5','328','1','Level 35'),('330','5','329','1','Level 45'),('332','5','331','1','Level 32'),
('334','5','333','1','Level 35'),('340','5','339','1','Level 30'),('342','5','341','1','Level 30'),('344','5','343','1','Level 36'),
('346','5','345','1','Level 40'),('348','5','347','1','Level 40'),('39','5','174','2','Level up with high friendship '),('40','5','39','6','Moon Stone'),
('350','5','349','10','Level up with its Beautiful condition high enough'),('121','5','120','6','Water Stone'),('354','5','353','1','Level 37'),
('356','5','355','1','Level 37'),('38','5','37','6','Fire Stone'),('26','5','25','6','Thunder Stone'),('55','5','54','1','Level 33'),
('202','5','360','1','Level 15'),('178','5','177','1','Level 25'),('232','5','231','1','Level 25'),
('112','5','111','1','Level 42'),('362','5','361','1','Level 42'),('364','5','363','1','Level 32'),
('365','5','364','1','Level 44'),('367','5','366','11','Evolves upon trading while holding a Deep Sea Tooth'),
('368','5','366','11','Evolves upon trading while holding a Deep Sea Scale')


INSERT RandomSafariPokemonRSE (nationalDexNumber, safariAreaID, 
methodID, gameVerID, encounterChance, levelRange)
VALUES ('183','5','3','7','39%','5-35'),('74','4','16','1','100%','5-30'),('43','1','1','1','40%','25,27'),('43','2',
'1','1','40%','25,27'),('43','3','1','1','30%','27,29'),('43','4','1','1','30%','27,29'),('44','1','1','1',
'5%','25'),('44','2','1','1','5%','25'),('44','3','1','1','15%','29,31'),('44','4','1','1','15%','29,31'),('84',
'1','1','1','10%','25'),('84','2','1','5','10%','25'),('84','2','1','4','10%','27'),('84','3','1','1',
'15%','27,29'),('85','3','1','1','5%','29,31'),('25','1','1','1','5%','25,27'),('25','2','1','1','5%','25,27'),
('54','2','3','1','100%','20-35'),('54','3','3','1','95%','20-35'),('55','3','3','1','5%','25-40'),
('202','1','1','1','10%','27,29'),('202','2','1','1','10%','27,29'),('177','1','1','1','10%','25'),
('177','2','1','1','10%','25'),('177','4','1','1','15%','27,29'),('178','4','1','1','5%','29,31'),
('203','1','1','1','20%','25,27'),('203','2','1','1','20%','25,27'),('231','4','1','1','30%','27,29'),
('127','3','1','1','5%','27,29'),('214','4','1','1','5%','27,29'),('111','3','1','1','30%','27,29')

INSERT SwarmPokemonRSE (nationalDexNumber, swarmLocation,
methodID,gameVerID,mixingRecordsWith,encounterChance,levelRange)
VALUES ('283','2','1','2','8','50%','3'),('283','14','1','2','8','50%','15'),('283','17','1','2','8','50%','15'),
('283','20','1','2','8','50%','28'),('283','2','1','7','2','50%','3'),('283','14','1','7','2','50%','15'),('283','17','1','7','2','50%','15'),
('283','20','1','7','2','50%','28'),('300','16','1','2','8','50%','15'),('300','16','1','2','7','50%','8'),('300','16','1','7','8','50%','8'),
('300','16','1','7','2','50%','15'),('273','2','1','7','8','50%','3'),('273','17','1','7','8','50%','13'),('273','20','1','7','8','50%','25'),
('274','14','1','7','8','50%','15'),('273','2','1','2','7','50%','3'),('273','17','1','2','7','50%','13'),('273','20','1','2','7','50%','25'),
('274','14','1','2','7','50%','15')

INSERT StaticPokemonRSE (nationalDexNumber, locationID,
locationDescription, methodID, gameVerID, levelFound)
VALUES ('101','92','in Maxies room as fake item','17','5','30'),('101','92','in Maxies room as fake item','17','5','30'),('101','93','in Archies room as fake item','17','4','30'),
('101','93','in Archies room as fake item','17','4','30'),('352','19','With Devon Scope, in the northern section by the bike rails','17','2','30'),
('352','19','With Devon Scope, in the dead end path near the entrance to Fortree City','17','7','30'),
('352','19','With Devon Scope, just to right of last Ninja Boy before Fortree City, in the indent of trees','17','1','30'),
('352','20','With Devon Scope, behind the route sign in the north of the route','17','1','30'),
('352','20','With Devon Scope, blocking the steps down to the Scorched Slab','17','1','30'),
('352','20','With Devon Scope, in the middle of the path connecting the two Pokémon Rangers in the long grass maze','17','1','30'),
('352','20','With Devon Scope, by the four plots of soft soil south of the Ancient Tomb, north of the westernmost plot','17','1','30'),
('352','20','With Devon Scope, on the north side of the Ancient Tomb','17','1','30')

INSERT GiftPokemonRSE (nationalDexNumber, locationID,
methodID, giftGiver, gameVerID, levelGiven)
VALUES ('252','1','6','Professor Birch','1','5'),('255','1','6','Professor Birch','1','5'),('258','1','6','Professor Birch','1','5'),('351','101','6','Weather Institute worker','1','25'),
('360','103','6','Old couple','1','Egg -> Level 1')


INSERT TradePokemonRSE (nationalDexNumber, locationID,
methodID, pokemonRequested, gameVerID, levelTraded)
VALUES ('273','78','13','280','7','Same as traded'),('296','78','13','287','2','Same as traded'),('300','51','13','25','2','Same as traded'),
('311','51','13','313','7','Same as traded')
GO
CREATE VIEW vw_RandomPokemonRSE AS
SELECT
	r.randomID,
	n.pokemonName AS Pokémon,
	l.locationName AS Localização,
	e.encounterMethod AS Método,
	g.gameVersion AS Versão,
	r.encounterChance AS Chance, 
	r.levelRange AS Level_Range
FROM RandomPokemonRSE r 
INNER JOIN NationalDex n ON r.nationalDexNumber=n.nationalDexNumber
INNER JOIN LocationsHoenn l ON r.locationID=l.locationID
INNER JOIN EncounterMethods e ON r.methodID = e.encounterID
INNER JOIN GameVersion g ON r.gameVerID=g.gameVerID
GO
SELECT * FROM vw_RandomPokemonRSE 
ORDER BY randomID
GO
CREATE VIEW vw_FishingPokemonRSE AS
SELECT
	f.fishingID,
	n.pokemonName AS Pokémon,
	l.locationName AS Localização,
	fr.fishingRodType AS Vara,
	g.gameVersion AS Versão,
	f.encounterChance AS Chance,
	f.levelRange AS Level_Range
FROM FishingPokemonRSE f 
INNER JOIN NationalDex n ON f.nationalDexNumber=n.nationalDexNumber
INNER JOIN LocationsHoenn l ON f.locationID=l.locationID
INNER JOIN FishingRod fr ON f.fishingRodID=fr.fishingRodID
INNER JOIN GameVersion g ON f.gameVerID=g.gameVerID
GO
SELECT * FROM vw_FishingPokemonRSE
ORDER BY fishingID
GO
CREATE VIEW vw_FishingSafariPokemonRSE AS
SELECT
	fs.safariFishingID,
	n.pokemonName AS Pokémon,
	hs.safariArea AS Área,
	fr.fishingRodType AS Vara,
	g.gameVersion AS Versão,
	fs.encounterChance AS Chance,
	fs.levelRange AS Level_Range
FROM FishingSafariPokemonRSE fs
INNER JOIN NationalDex n ON fs.nationalDexNumber=n.nationalDexNumber
INNER JOIN HoennSafari hs ON fs.safariAreaID=hs.safariAreaID
INNER JOIN FishingRod fr ON fs.fishingRodID=fr.fishingRodID
INNER JOIN GameVersion g ON fs.gameVerID=g.gameVerID
GO
SELECT * FROM vw_FishingSafariPokemonRSE
ORDER BY Área
GO
CREATE VIEW vw_RandomSafariPokemonRSE AS 
SELECT
	rs.safariRandomID,
	n.pokemonName AS Pokémon,
	hs.safariArea AS Área,
	e.encounterMethod AS Método,
	g.gameVersion AS Versão,
	rs.encounterChance AS Chance, 
	rs.levelRange AS Level_Range
FROM RandomSafariPokemonRSE rs
INNER JOIN NationalDex n ON rs.nationalDexNumber=n.nationalDexNumber
INNER JOIN HoennSafari hs ON rs.safariAreaID=hs.safariAreaID
INNER JOIN EncounterMethods e ON rs.methodID = e.encounterID
INNER JOIN GameVersion g ON rs.gameVerID=g.gameVerID
GO
SELECT * FROM vw_RandomSafariPokemonRSE
ORDER BY Área
GO
CREATE VIEW vw_BreedingPokemonRSE AS
SELECT
	b.breedingID,
	n.pokemonName AS Pokémon,
	e.encounterMethod AS Método,	
	gi.itemName AS Item,
	b.breedingParent AS Pais,
	b.eggGroups AS Egg_Groups
FROM BreedingPokemonRSE b 
INNER JOIN NationalDex n ON b.nationalDexNumber=n.nationalDexNumber
INNER JOIN EncounterMethods e ON b.methodID=e.encounterID
INNER JOIN GeneralItems gi ON b.itemID=gi.itemID
GO
SELECT * FROM vw_BreedingPokemonRSE
ORDER BY breedingID
GO
CREATE VIEW vw_EvolutionPokemonRSE AS
SELECT
	ev.evolutionID,
	n1.pokemonName AS Pokémon,
	e.encounterMethod AS Método,
	n2.pokemonName AS Pré_Evolução,
	evm.evolutionMethod AS Método_Evolução,
	ev.evolutionRequirement AS Requerimento
FROM EvolutionPokemonRSE ev
INNER JOIN NationalDex n1 ON ev.nationalDexNumber=n1.nationalDexNumber
INNER JOIN EncounterMethods e ON ev.methodID=e.encounterID
INNER JOIN NationalDex n2 ON ev.evolvesFrom=n2.nationalDexNumber
INNER JOIN EvolutionMethod evm ON ev.evolutionMethodID=evm.evolutionMethodID
GO
SELECT * FROM vw_EvolutionPokemonRSE
ORDER BY evolutionID
GO
CREATE VIEW vw_SwarmPokemonRSE AS
SELECT
	sw.swarmID,
	n.pokemonName AS Pokémon,
	l.locationName AS Localização,
	e.encounterMethod AS Método,
	g1.gameVersion AS Versão,
	g2.gameVersion AS Mixing_Records,
	sw.encounterChance AS Chance, 
	sw.levelRange AS Level_Range
FROM SwarmPokemonRSE sw 
INNER JOIN NationalDex n ON sw.nationalDexNumber=n.nationalDexNumber
INNER JOIN LocationsHoenn l ON sw.swarmLocation=l.locationID
INNER JOIN EncounterMethods e ON sw.methodID = e.encounterID
INNER JOIN GameVersion g1 ON sw.gameVerID=g1.gameVerID
INNER JOIN GameVersion g2 ON sw.mixingRecordsWith=g2.gameVerID
GO
SELECT * FROM vw_SwarmPokemonRSE 
ORDER BY swarmID
GO
CREATE VIEW vw_FossilPokemonRSE AS
SELECT
	fo.fossilID,
	n.pokemonName AS Pokémon,
	fi.fossilName AS Fóssil,
	rev.labName AS Onde_Reviver,
	l.locationName AS Localização,
	g.gameVersion AS Versão,
	fo.levelRange AS Level_Revivido
FROM FossilPokemonRSE fo  
INNER JOIN NationalDex n ON fo.nationalDexNumber=n.nationalDexNumber
INNER JOIN FossilItems fi ON fo.fossilItemID=fi.fossilItemID
INNER JOIN ReviveLabs rev ON fo.labID=rev.labID 
INNER JOIN LocationsHoenn l ON fo.locationID=l.locationID
INNER JOIN GameVersion g ON fo.gameVerID=g.gameVerID
GO
SELECT * FROM vw_FossilPokemonRSE
ORDER BY fossilID
GO
CREATE VIEW vw_StaticPokemonRSE AS
SELECT
	st.staticID,
	n.pokemonName AS Pokémon,
	l.locationName AS Localização,
	st.locationDescription AS Descrição,
	e.encounterMethod AS Método,
	g.gameVersion AS Versão,
	st.levelFound AS Level_Encontrado
FROM StaticPokemonRSE st
INNER JOIN NationalDex n ON st.nationalDexNumber=n.nationalDexNumber
INNER JOIN LocationsHoenn l ON st.locationID=l.locationID
INNER JOIN EncounterMethods e ON st.methodID=e.encounterID
INNER JOIN GameVersion g ON st.gameVerID=g.gameVerID
GO
SELECT * FROM vw_StaticPokemonRSE
ORDER BY staticID
GO
CREATE VIEW vw_GiftPokemonRSE AS
SELECT
	gi.giftID,
	n.pokemonName AS Pokémon,
	l.locationName AS Localização,
	e.encounterMethod AS Método,
	gi.giftGiver AS Dado_por,
	g.gameVersion AS Versão,
	gi.levelGiven AS Level_Range
FROM GiftPokemonRSE gi
INNER JOIN NationalDex n ON gi.nationalDexNumber=n.nationalDexNumber
INNER JOIN LocationsHoenn l ON gi.locationID=l.locationID
INNER JOIN EncounterMethods e ON gi.methodID = e.encounterID
INNER JOIN GameVersion g ON gi.gameVerID=g.gameVerID
GO
SELECT * FROM vw_GiftPokemonRSE
ORDER BY giftID
GO
CREATE VIEW vw_TradePokemonRSE AS
SELECT
	tr.tradeID,
	n1.pokemonName AS Trade_Pokémon,
	l.locationName AS Localização,
	e.encounterMethod AS Método,
	n2.pokemonName AS Pokémon_Requested,
	g.gameVersion AS Versão,
	tr.levelTraded AS Level_Troca
FROM TradePokemonRSE tr
INNER JOIN NationalDex n1 ON tr.nationalDexNumber=n1.nationalDexNumber
INNER JOIN LocationsHoenn l ON tr.locationID=l.locationID
INNER JOIN EncounterMethods e ON tr.methodID=e.encounterID
INNER JOIN NationalDex n2 ON tr.pokemonRequested=n2.nationalDexNumber
INNER JOIN GameVersion g ON tr.gameVerID=g.gameVerID
GO
SELECT * FROM vw_TradePokemonRSE
ORDER BY tradeID
GO
