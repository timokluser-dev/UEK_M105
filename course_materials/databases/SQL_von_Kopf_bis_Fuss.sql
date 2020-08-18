/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Create schema sql_vkbf
--

CREATE DATABASE IF NOT EXISTS sql_vkbf;
USE sql_vkbf;

--
-- Definition of table `sql_vkbf`.`clown_info`
--

DROP TABLE IF EXISTS `sql_vkbf`.`clown_info`;
CREATE TABLE  `sql_vkbf`.`clown_info` (
  `name` varchar(50) default NULL,
  `letzte_sichtung` varchar(50) default NULL,
  `erscheinung` varchar(50) default NULL,
  `aktivitaeten` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`clown_info`
--

INSERT INTO `sql_vkbf`.`clown_info` VALUES  ('Elsie','Kirchhof Seniorenzentrum','F, rote Haare, grünes Kostüm, riesige Füße','Ballons, Mini-Auto'),
 ('Pip','Hans Grüns Party','M, orange Haare, blauer Anzug, riesige Füße','Pantomime'),
 ('Kuschel','Ball-Mart','F, gelbes Hemd, sackartige rote Hose','Horn, Schirm'),
 ('August','BG Zirkus','M, Zigarre, schwarze Haare, kleiner Hut','Geige'),
 ('Klarabella','Belmont-Seniorenzentrum','F, pinke Haare, große Blume, blaues Kostüm','Grölen, Tanzen'),
 ('Schnecke','Grünwald-Klinik','M, blaue Haare, roter Anzug, große Nase','Ballons'),
 ('Zippo','Cäcilien-Center','F, oranger Anzug, ausgebeulte Hosen','Tanzen'),
 ('Baby','Karls Autos','F, ganz pink und glitzernd','Jonglieren, Mini-Auto'),
 ('Bonzo','','M, in gepunktetem Frauenkostüm','Singen, Tanzen'),
 ('Schlumpf','Trixies','M, grün-roter Anzug, spitze Nase','');


--
-- Definition of table `sql_vkbf`.`donut_bewertungen`
--

DROP TABLE IF EXISTS `sql_vkbf`.`donut_bewertungen`;
CREATE TABLE  `sql_vkbf`.`donut_bewertungen` (
  `laden` varchar(50) default NULL,
  `uhrzeit` time default NULL,
  `datum` date default NULL,
  `typ` varchar(50) default NULL,
  `bewertung` tinyint(4) default NULL,
  `kommentar` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`donut_bewertungen`
--

INSERT INTO `sql_vkbf`.`donut_bewertungen` VALUES  ('Knusperkönig','08:50:00','2007-09-27','Zuckerguss',10,'fast perfekt'),
 ('Donalds Donuts','08:59:00','2007-08-25',NULL,6,'fettig'),
 ('Sternback-Kaffee','19:35:00','2007-05-24','Zimtkuchen',5,'alt, aber schmackhaft'),
 ('Donalds Donuts','19:03:00','2007-04-26','Gefüllt',7,'nicht genug Füllung');

--
-- Definition of table `sql_vkbf`.`drink_info`
--

DROP TABLE IF EXISTS `sql_vkbf`.`drink_info`;
CREATE TABLE  `sql_vkbf`.`drink_info` (
  `drink_name` varchar(16) default NULL,
  `preis` decimal(4,2) default NULL,
  `kohlenhydrate` decimal(4,2) default NULL,
  `farbe` varchar(20) default NULL,
  `eis` char(1) default NULL,
  `kalorien` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`drink_info`
--

INSERT INTO `sql_vkbf`.`drink_info` VALUES  ('Blackthorn','3.00','8.40','Gelb','J',33),
 ('Blue Moon','2.50','3.20','Blau','J',12),
 ('Oh My Gosh','3.50','8.60','Orange','J',35),
 ('Lime Fizz','2.50','5.40','Grün','J',24),
 ('Kiss on the Lips','5.50','42.50','Violett','J',171),
 ('Hot Gold','3.20','32.10','Orange','N',135),
 ('Lone Tree','3.60','4.20','Rot','J',17),
 ('Greyhound','4.00','14.00','Gelb','J',50),
 ('Indian Summer','2.80','7.20','Braun','N',30),
 ('Bull Frog','2.60','21.50','Ocker','J',80),
 ('Soda and It','3.80','4.70','Rot','N',19),
 ('Slim Shady','99.99',NULL,'Farblos','J',NULL);

--
-- Definition of table `sql_vkbf`.`einfache_drinks`
--

DROP TABLE IF EXISTS `sql_vkbf`.`einfache_drinks`;
CREATE TABLE  `sql_vkbf`.`einfache_drinks` (
  `drink_name` varchar(16) default NULL,
  `grundlage` varchar(20) default NULL,
  `menge1` decimal(3,1) default NULL,
  `zutat` varchar(20) default NULL,
  `menge2` decimal(4,2) default NULL,
  `anweisungen` varchar(250) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`einfache_drinks`
--

INSERT INTO `sql_vkbf`.`einfache_drinks` VALUES  ('Blackthorn','Tonic','4.5','Ananassaft','3.00','mit Eis mischen, mit einem Schuss Zitrone in Cocktailglas geben'),
 ('Blue Moon','Soda','3.5','Blaubeersaft','2.25','mit Eis mischen, mit einem Schuss Zitrone in Cocktailglas geben'),
 ('Oh My Gosh','Pfirsichsaft','3.0','Ananassaft','3.00','mit Eis mischen, in Schnapsglas geben'),
 ('Lime Fizz','Sprite','4.5','Limonensaft','2.25','mit Eis mischen, in Cocktailglas geben'),
 ('Kiss on the Lips','Kirschsaft','6.0','Aprikosensaft','21.00','auf Eis, mit Strohhalm servieren'),
 ('Hot Gold','Pfirsichsaft','9.0','Orangensaft','18.00','heißen Orangensaft in Becher geben und  Pfirsichsaft zugeben'),
 ('Lone Tree','Soda','4.5','Kirschsaft','2.25','mit Eis mischen, in Cocktailglas geben'),
 ('Greyhound','Soda','4.5','Grapefruitsaft','15.00','auf Eis servieren, gut vermischen'),
 ('Indian Summer','Apfelsaft','6.0','heiÃŸer Tee','18.00','Saft in Becher geben und heiÃŸen Tee darauf geben'),
 ('Bull Frog','Eistee','4.5','Limonade','15.00','auf Eis, mit Limonenscheibe servieren'),
 ('Soda and It','Soda','6.0','Traubensaft','3.00','in Cocktailglas schütteln, ohne Eis');


--
-- Definition of table `sql_vkbf`.`film_tabelle`
--

DROP TABLE IF EXISTS `sql_vkbf`.`film_tabelle`;
CREATE TABLE  `sql_vkbf`.`film_tabelle` (
  `film_id` int(11) NOT NULL auto_increment,
  `titel` varchar(50) NOT NULL default '',
  `fsk` varchar(5) NOT NULL default '',
  `kategorie` varchar(10) NOT NULL default '',
  `erworben` date NOT NULL,
  PRIMARY KEY  (`film_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sql_vkbf`.`film_tabelle`
--

INSERT INTO `sql_vkbf`.`film_tabelle` VALUES  (82,'Toad Trip','OA','Familie','0000-00-00'),
 (83,'Das große Abenteuer','OA','Familie','2002-06-03'),
 (84,'Gregor: Das Geheimnis','6','Action','2001-02-05'),
 (85,'Durchgedrehte Clowns','16','Horror','1999-11-20'),
 (86,'Paraskavedekatriaphobia','16','Action','2003-04-19'),
 (87,'Eine Ratte namens Dirk','OA','Familie','2003-04-19'),
 (88,'Das Ende der Linie','16','Versch','2001-02-05'),
 (89,'Die glänzenden Dinge','6','Drama','2002-06-03'),
 (90,'Nimm es zurück','16','Comedy','2001-02-05'),
 (91,'Haifutter','OA','Versch','1999-11-20'),
 (92,'Polderpiraten','16','Versch','2003-04-19'),
 (93,'Unbewohnte Welten','6','SciFi','2001-02-05'),
 (94,'Cows Gone Wild','16','Horror','0000-00-00');

--
-- Definition of table `sql_vkbf`.`fisch_info`
--

DROP TABLE IF EXISTS `sql_vkbf`.`fisch_info`;
CREATE TABLE  `sql_vkbf`.`fisch_info` (
  `alltagsname` varchar(50) NOT NULL default '',
  `art` varchar(50) NOT NULL default '',
  `fangort` varchar(50) NOT NULL default '',
  `gewicht` varchar(15) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`fisch_info`
--

INSERT INTO `sql_vkbf`.`fisch_info` VALUES  ('Schwarzbarsch','M. salmoides','Montgomery Lake, GA','10.092422'),
 ('Am. Zander','S. vitreus','Old Hickory Lake, TN','11.3398'),
 ('Cutthroat-Forelle','O. Clarki','Pyramid Lake, NV','18.597272'),
 ('Am. Flussbarsch','P. Flavescens','Bordentown, NJ','1.8994165'),
 ('Blauer Sonnenbarsch','L. Macrochirus','Ketona Lake, AL','2.154562'),
 ('Knochenhecht','L. Osseus','Trinity River, TX','22.8213475'),
 ('WeißŸer Crappie','P. annularis','Enid Dam, MS','2.3530085'),
 ('Rotflossenhecht','E. americanus','Dewart Lake, IN','0.453592'),
 ('Giebel','C. auratus','Lake Hodges, CA','3.005047'),
 ('Königslachs','O. Tshawytscha','Kenai River, AK','44.111822');


--
-- Definition of table `sql_vkbf`.`fischrekorde`
--

DROP TABLE IF EXISTS `sql_vkbf`.`fischrekorde`;
CREATE TABLE  `sql_vkbf`.`fischrekorde` (
  `vorname` varchar(50) NOT NULL default '',
  `nachname` varchar(50) NOT NULL default '',
  `alltagsname` varchar(50) NOT NULL default '',
  `fangort` varchar(50) NOT NULL default '',
  `staat` varchar(2) NOT NULL default '',
  `gewicht` varchar(15) NOT NULL default '',
  `datum` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`fischrekorde`
--

INSERT INTO `sql_vkbf`.`fischrekorde` VALUES  ('George','Perry','Schwarzbarsch','Montgomery Lake','GA','10.092422','1932-06-02'),
 ('Mabry','Harper','Am. Zander','Old Hickory Lake','TN','11.3398','1960-08-02'),
 ('John','Skimmerhorn','Cutthroat-Forelle','Pyramid Lake','NV','18.597272','1925-12-01'),
 ('C.C.','Abbot','Am. Flussbarsch','Bordentown','NJ','1.8994165','1865-05-01'),
 ('T.S.','Hudson','Blauer Sonnenbarsch','Ketona Lake','AL','2.154562','1950-04-09'),
 ('Townsend','Miller','Knochenhecht','Trinity River','TX','22.8213475','1954-07-30'),
 ('Fred','Bright','WeißŸer Crappie','Enid Dam','MS','2.3530085','1957-07-31'),
 ('Mike','Berg','Rotflossenhecht','Dewart Lake','IN','0.453592','1990-06-09'),
 ('Florentino','Abena','Giebel','Lake Hodges','CA','3.005047','1996-04-17'),
 ('Les','Anderson','Königslachs','Kenai River','AK','44.111822','1985-05-17');

--
-- Definition of table `sql_vkbf`.`gebrauchtwagen`
--

DROP TABLE IF EXISTS `sql_vkbf`.`gebrauchtwagen`;
CREATE TABLE  `sql_vkbf`.`gebrauchtwagen` (
  `farbe` varchar(20) default NULL,
  `baujahr` varchar(4) default NULL,
  `hersteller` varchar(20) default NULL,
  `mdl` varchar(20) default NULL,
  `betrag` float(10,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`gebrauchtwagen`
--

INSERT INTO `sql_vkbf`.`gebrauchtwagen` VALUES  ('Silber','1998','Porsche','Boxter',17992.539),
 (NULL,'2000','Jaguar','XJ',15995.000),
 ('Rot','2002','Cadillac','Escalade',40215.898);


--
-- Definition of table `sql_vkbf`.`jungen`
--

DROP TABLE IF EXISTS `sql_vkbf`.`jungen`;
CREATE TABLE  `sql_vkbf`.`jungen` (
  `junge_id` int(11) default NULL,
  `junge` varchar(20) default NULL,
  `spielzeug_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`jungen`
--

INSERT INTO `sql_vkbf`.`jungen` VALUES  (1,'David',3),
 (2,'Lukas',5),
 (3,'Marlon',2),
 (4,'Frederic',1),
 (6,'Ron',4),
 (5,'Luis',2);

--
-- Definition of table `sql_vkbf`.`keksverkaeufe`
--

DROP TABLE IF EXISTS `sql_vkbf`.`keksverkaeufe`;
CREATE TABLE  `sql_vkbf`.`keksverkaeufe` (
  `ID` int(11) NOT NULL auto_increment,
  `vorname` varchar(20) NOT NULL default '',
  `verkaeufe` decimal(4,2) NOT NULL,
  `verk_datum` date NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`keksverkaeufe`
--

INSERT INTO `sql_vkbf`.`keksverkaeufe` VALUES  (1,'Verona','32.02','2007-03-12'),
 (2,'Paris','26.53','2007-03-12'),
 (3,'Britney','11.25','2007-03-12'),
 (4,'Nicole','18.96','2007-03-12'),
 (5,'Verona','9.16','2007-03-11'),
 (6,'Paris','1.52','2007-03-11'),
 (7,'Britney','43.21','2007-03-11'),
 (8,'Nicole','8.05','2007-03-11'),
 (9,'Verona','17.62','2007-03-10'),
 (10,'Paris','24.19','2007-03-10'),
 (11,'Britney','3.40','2007-03-10'),
 (12,'Nicole','15.21','2007-03-10'),
 (13,'Verona','0.00','2007-03-09'),
 (14,'Paris','31.99','2007-03-09'),
 (15,'Britney','2.58','2007-03-09'),
 (16,'Nicole','0.00','2007-03-09'),
 (17,'Verona','2.34','2007-03-08'),
 (18,'Paris','13.44','2007-03-08'),
 (19,'Britney','8.78','2007-03-08'),
 (20,'Nicole','26.82','2007-03-08'),
 (21,'Verona','3.71','2007-03-07'),
 (22,'Paris','0.56','2007-03-07'),
 (23,'Britney','34.19','2007-03-07'),
 (24,'Nicole','7.77','2007-03-07'),
 (25,'Verona','16.23','2007-03-06'),
 (26,'Paris','0.00','2007-03-06'),
 (27,'Britney','4.50','2007-03-06'),
 (28,'Nicole','19.22','2007-03-06');

--
-- Definition of table `sql_vkbf`.`kfz_liste`
--

DROP TABLE IF EXISTS `sql_vkbf`.`kfz_liste`;
CREATE TABLE  `sql_vkbf`.`kfz_liste` (
  `kfz_nummer` varchar(16) default NULL,
  `hersteller` varchar(20) default NULL,
  `modell` varchar(20) default NULL,
  `farbe` varchar(20) default NULL,
  `preis` decimal(7,2) default NULL,
  `baujahr` varchar(4) default NULL,
  `kfz_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`kfz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`kfz_liste`
--

INSERT INTO `sql_vkbf`.`kfz_liste` VALUES  ('RNKLK66N33G21348','Porsche','Boxter','Silber','17992.54','1998',1),
 ('SAEDA44B17B04113','Jaguar','XJ',NULL,'15995.00','2000',2),
 ('3GYEK63NT2G28066','Cadillac','Escalade','Rot','40215.90','2002',3);

--
-- Definition of table `sql_vkbf`.`laden_bestand`
--

DROP TABLE IF EXISTS `sql_vkbf`.`laden_bestand`;
CREATE TABLE  `sql_vkbf`.`laden_bestand` (
  `sz_id` int(11) NOT NULL,
  `laden_id` int(11) NOT NULL,
  `bestand` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`laden_bestand`
--

INSERT INTO `sql_vkbf`.`laden_bestand` VALUES  (5,1,34),
 (5,3,12),
 (5,1,5),
 (6,2,10),
 (6,4,24),
 (9,1,50),
 (9,2,2),
 (9,2,18),
 (12,4,28),
 (12,4,11);
UNLOCK TABLES;

--
-- Definition of table `sql_vkbf`.`laden_info`
--

DROP TABLE IF EXISTS `sql_vkbf`.`laden_info`;
CREATE TABLE  `sql_vkbf`.`laden_info` (
  `laden_id` int(11) NOT NULL auto_increment,
  `adresse` varchar(50) NOT NULL default '',
  `telefon` varchar(10) NOT NULL default '',
  `leiter` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`laden_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`laden_info`
--

INSERT INTO `sql_vkbf`.`laden_info` VALUES  (1,'Hohestr. 12','555-6712','Hanne'),
 (2,'Königsallee 91','555-3478','Susi'),
 (3,'Kuhdamm 67','555-0987','Klaus'),
 (4,'Marienplatz 17','555-6554','Gerd');

--
-- Definition of table `sql_vkbf`.`maedchen`
--

DROP TABLE IF EXISTS `sql_vkbf`.`maedchen`;
CREATE TABLE  `sql_vkbf`.`maedchen` (
  `maedchen_id` int(11) default NULL,
  `maedchen` varchar(20) default NULL,
  `spielzeug_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`maedchen`
--

INSERT INTO `sql_vkbf`.`maedchen` VALUES  (1,'Jana',3),
 (2,'Sarah',4),
 (3,'Livia',1),
 (4,'Hanna',1);

--
-- Definition of table `sql_vkbf`.`meine_kontakte`
--

DROP TABLE IF EXISTS `sql_vkbf`.`meine_kontakte`;
CREATE TABLE  `sql_vkbf`.`meine_kontakte` (
  `last_name` varchar(30) default NULL,
  `first_name` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `gender` char(1) default NULL,
  `birthday` date default NULL,
  `profession` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `status` varchar(20) default NULL,
  `interests` varchar(100) default NULL,
  `seeking` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`meine_kontakte`
--

INSERT INTO `sql_vkbf`.`meine_kontakte` VALUES  ('Anderson','Julian','j_anderson@ruckzuckpizza.de','M','1980-09-05','Fachbuchautor','Düsseldorf, NW','Single','Kajakfahren, Reptilien','Beziehung, Freunde'),
 ('Joffe','Kevin','joffe@simente.de','M','1974-01-10','Manager','Bonn, NW','Geschieden','Frauen','Frauen'),
 ('Neumann','Amanda','aman2luv@ruckzuckpizza.de','W','1966-01-23','Kreuzfahrtschiffkapitän','Köln, NW','Single','Segeln, Fischen','Männer'),
 ('Garcia','Carlos','carlito99@vonunten.de','M','1977-04-28','Software-Marketing','Leverkusen, NW','Verheiratet','Fischen, Tinken','neuer Job'),
 ('Rund','Johanna','jojo@ruckzuckpizza.de','W','1964-09-10','Systemadimistrator','Köln, NW','Verheiratet','RPG','Nichts'),
 ('Brings','Chris','cbrings@boards-r-us.com','M','1962-07-01','Buchhändler','München, BY','Verheiratet','Bücher sammeln','Freunde'),
 ('Hart','Lenard','hovercraft@ruckzuckpizza.de','M','1976-12-03','Arbeitslos','Bonn, NW','Geschieden','Kochen','Arbeit'),
 ('Toth','Anne','anne_Toth@huepfdohle.de','W','1979-08-19','Unix-Systemadministratorin','Köln, NW','Verheiratet','Schauspielerei, Tanz','neuer Job'),
 ('Willems','Andre','andrewwiley@objekthausen.net','M','1967-01-23','Programmierer','Berlin, BE','Feste Beziehung','RPG, Anime','Freunde'),
 ('Palumbo','Thomas','meinkumpel@kaukugel.net','M','1963-04-18','Vertreter','Tübingen, BW','Verheiratet','Poesie, Drehbuch schreiben','Nichts'),
 ('Lotte','Anna','angrypirate@ruckzuckpizza.de','W','1969-11-18','Künstlerin','Köln, NW','Single',NULL,NULL),
 ('Schõfer','Kurt','kurt@sternback.com','M','1977-08-09','Bäcker','Berlin, BE','Geschieden',NULL,NULL),
 ('Müller','Anna','annam@schok-o-holika.com','W','1963-04-18','Lehrerin','Köln, NW',NULL,NULL,NULL),
 ('Mechler','Brian','bp@machssuesse.de','M','1983-01-10','Student','Trier, RP',NULL,NULL,NULL),
 ('Manson','Anne','am86@objekthausen.net','W','1959-10-09','Webprogrammiererin','Hamburg, HH',NULL,NULL,NULL),
 ('Mandel','Debora','debmonster@ruckzuckpizza.de','W','1968-02-05','Programmiererin','Kaiserslautern, RP',NULL,NULL,NULL),
 ('Tedesco','Janis','janistedesco@sternback.com','W',NULL,NULL,'Aachen, NW',NULL,NULL,NULL),
 ('Talwar','Vikram','vikt@sternback.com','W',NULL,NULL,'Düsseldorf, NW',NULL,NULL,NULL),
 ('Szwed','Jossip','szwed_jo@objekthausen.net','M',NULL,NULL,'Berlin, BE',NULL,NULL,NULL),
 ('Schmidt','Diana','sheriff@kaukugel.net','W',NULL,NULL,'Solingen, NW',NULL,NULL,NULL),
 ('Schnee','Eduard','snowman@tikibeanlounge.com','M',NULL,NULL,'Frechen, NW',NULL,NULL,NULL),
 ('Otto','Gaby','gaby0098@objekthausen.net','W',NULL,NULL,'Kassel, HE',NULL,NULL,NULL),
 ('Hamann','Anne','anneh@vonunten.de','W',NULL,NULL,'Köln, NW',NULL,NULL,NULL),
 ('Diele','Marie','nobigdeal@sternback.com','W',NULL,NULL,'Frankfurt, HE',NULL,NULL,NULL),
 ('Jagel','Anna','dreamgirl@ruckzuckpizza.de','W',NULL,NULL,'Köln, NW',NULL,NULL,NULL),
 ('Melfi','Tim','drmelfi@vonunten.de','M',NULL,NULL,'Nürnberg, BY',NULL,NULL,NULL),
 ('Oliver','Lena','lena_oliver@wetterorama.com','W',NULL,NULL,'Wiesbaden, HE',NULL,NULL,NULL),
 ('Parker','Anne','annep@sternback.com','W',NULL,NULL,'Köln, NW',NULL,NULL,NULL),
 ('Ricci','Peter','ricciman@tikibeanlounge.com','M',NULL,NULL,'Bochum, NW',NULL,NULL,NULL),
 ('Reno','Graziella','grace23@objekthausen.net','W',NULL,NULL,'Düsseldorf, NW',NULL,NULL,NULL),
 ('Moss','Zelda','zelda@wetterorama.com','W',NULL,NULL,'Freiburg, BW',NULL,NULL,NULL),
 ('Tag','Klaus','klausnacht@ruckzuckpizza.de','M',NULL,NULL,'Jena, TH',NULL,NULL,NULL),
 ('Bolger','Betina','betty@schok-o-holika.com','W',NULL,NULL,'München, BY',NULL,NULL,NULL),
 ('Blunt','Anne','anneblunt@ruckzuckpizza.de','W',NULL,NULL,'Köln, NW',NULL,NULL,NULL),
 ('Bolling','Linda','lindy@tikibeanlounge.com','W',NULL,NULL,'Krefeld, NW',NULL,NULL,NULL),
 ('Gares','Fred','fgares@objekthausen.net','M',NULL,NULL,'Bonn, NW',NULL,NULL,NULL),
 ('Jacobs','Anne','anne99@objekthausen.net','W',NULL,NULL,'Bonn, NW',NULL,NULL,NULL),
 ('Ingram','David','dingram@ruckzuckpizza.de','M',NULL,NULL,'Travemünde, SH',NULL,NULL,NULL);


--
-- Definition of table `sql_vkbf`.`projekte`
--

DROP TABLE IF EXISTS `sql_vkbf`.`projekte`;
CREATE TABLE  `sql_vkbf`.`projekte` (
  `nummer` int(11) NOT NULL default '0',
  `beschreibungvonprojekt` varchar(50) default NULL,
  `arbeitervorort` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`projekte`
--

INSERT INTO `sql_vkbf`.`projekte` VALUES  (1,'Hauswand anmalen','Marks'),
 (2,'Küche umbauen','Schmidt'),
 (3,'Parkett legen','Keller'),
 (4,'Dach decken','Johann');


--
-- Definition of table `sql_vkbf`.`spielzeug_ids`
--

DROP TABLE IF EXISTS `sql_vkbf`.`spielzeug_ids`;
CREATE TABLE  `sql_vkbf`.`spielzeug_ids` (
  `sz_id` int(11) NOT NULL auto_increment,
  `spielzeug` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`sz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`spielzeug_ids`
--

INSERT INTO `sql_vkbf`.`spielzeug_ids` VALUES  (5,'Wasserball'),
 (6,'Frisbee'),
 (9,'Drachen'),
 (12,'Jo-Jo');


--
-- Definition of table `sql_vkbf`.`spielzeug_info`
--

DROP TABLE IF EXISTS `sql_vkbf`.`spielzeug_info`;
CREATE TABLE  `sql_vkbf`.`spielzeug_info` (
  `sz_id` int(11) NOT NULL,
  `spielzeug` varchar(30) default NULL,
  `farbe` varchar(30) NOT NULL default '',
  `preis` decimal(5,2) default NULL,
  `gewicht` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`spielzeug_info`
--

INSERT INTO `sql_vkbf`.`spielzeug_info` VALUES  (1,'Wasserball','Weiß','1.95','0.30'),
 (2,'Wasserball','Gelb','2.20','0.40'),
 (3,'Wasserball','Blau','1.95','0.30'),
 (4,'Frisbee','Grün','3.50','0.50'),
 (5,'Frisbee','Gelb','1.50','0.20'),
 (6,'Drachen','Rot','5.75','1.20'),
 (7,'Drachen','Blau','5.75','1.20'),
 (8,'Drachen','Grün','3.15','0.80'),
 (9,'Jo-Jo','Weiß','4.25','0.40'),
 (10,'Jo-Jo','Gelb','1.50','0.20');


--
-- Definition of table `sql_vkbf`.`spielzeuge`
--

DROP TABLE IF EXISTS `sql_vkbf`.`spielzeuge`;
CREATE TABLE  `sql_vkbf`.`spielzeuge` (
  `sz_id` int(11) default NULL,
  `spielzeug` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`spielzeuge`
--

INSERT INTO `sql_vkbf`.`spielzeuge` VALUES  (1,'Gameboy'),
 (2,'Modellflugzeug'),
 (3,'Pfeil und Bogen'),
 (4,'Blockflöte'),
 (5,'Sammelkarten'),
 (6,'Frisbee'),
 (7,'Drachen'),
 (8,'Jo-Jo');


--
-- Definition of table `sql_vkbf`.`spielzeuge_2`
--

DROP TABLE IF EXISTS `sql_vkbf`.`spielzeuge_2`;
CREATE TABLE  `sql_vkbf`.`spielzeuge_2` (
  `sz_id` int(11) NOT NULL,
  `laden_id` int(11) NOT NULL,
  `farbe` varchar(30) NOT NULL default '',
  `bestand` int(11) default NULL,
  `adresse` varchar(30) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`spielzeuge_2`
--

INSERT INTO `sql_vkbf`.`spielzeuge_2` VALUES  (5,1,'Weiß',34,'Hohestr. 12'),
 (5,3,'Gelb',12,'Kuhdamm 67'),
 (5,1,'Blau',5,'Hohestr. 12'),
 (6,2,'Grün',10,'Königsallee 91'),
 (6,4,'Gelb',24,'Marienplatz 17'),
 (9,1,'Rot',50,'Hohestr. 12'),
 (9,2,'Blau',2,'Königsallee 91'),
 (9,2,'Grün',18,'Königsallee 91'),
 (12,4,'Weiß',28,'Marienplatz 17'),
 (12,4,'Gelb',11,'Marienplatz 17');


--
-- Definition of table `sql_vkbf`.`superhelden`
--

DROP TABLE IF EXISTS `sql_vkbf`.`superhelden`;
CREATE TABLE  `sql_vkbf`.`superhelden` (
  `name` varchar(20) NOT NULL,
  `kraft` varchar(50) NOT NULL default '',
  `schaeche` varchar(20) default '',
  `stadt` varchar(20) NOT NULL default '',
  `land` varchar(20) NOT NULL default '',
  `erzfeind` varchar(50) NOT NULL default '',
  `initialen` varchar(2) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_vkbf`.`superhelden`
--

INSERT INTO `sql_vkbf`.`superhelden` VALUES  ('Müllmann','Reinigt schnell','Bleiche','Gotham','Gotham','Schmutzmann','M'),
 ('Börsenmann','Macht Geld aus nichts',NULL,'New York','US','Finanzmann','BÖ'),
 ('Supertyp','Fliegt','Vögel','Metropolis','D','Superkumpel','SU'),
 ('Superservice','Vergisst keine Bestellung','Insekten','Paris','Frankreich','Frist-Alles-Frau','SS'),
 ('Schmutzmann','Macht Sandstürme','Bleiche','Hannover','D','Meister Proper','SC'),
 ('Supertyp','Superkraft','Aluminium','Metropolis','D','Bösermann','SU'),
 ('Böse Frau','Wird schlimm wütend',NULL,'Rom','Italien','Der Therapeut','BÖ'),
 ('Unkenfrau','Stimme der Gerechtigkeit','Insekten','London','England','Storch','UN'),
 ('Büchermann','Findet alles','Kinder','Berlin','D','Lotterfrau','BÜ'),
 ('Vogelfrau','Fliegt',NULL,'Tokio','J','Das Netz','VO'),
 ('Stockmann','Hilft den Menschen','Hangman','London','England','Radierer','ST');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
