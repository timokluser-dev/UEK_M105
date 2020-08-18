-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bundesliga
-- ------------------------------------------------------
-- Server version	5.5.60-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bundesliga`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bundesliga` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `bundesliga`;

--
-- Table structure for table `Liga`
--

DROP TABLE IF EXISTS `Liga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Liga` (
  `Liga_Nr` int(1) NOT NULL,
  `Verband` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Erstaustragung` date NOT NULL,
  `Meister` int(11) DEFAULT NULL,
  `Rekordspieler` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Spiele_Rekordspieler` int(11) DEFAULT NULL,
  PRIMARY KEY (`Liga_Nr`),
  KEY `Meister` (`Meister`),
  CONSTRAINT `Liga_ibfk_1` FOREIGN KEY (`Meister`) REFERENCES `Verein` (`V_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Liga`
--

LOCK TABLES `Liga` WRITE;
/*!40000 ALTER TABLE `Liga` DISABLE KEYS */;
INSERT INTO `Liga` VALUES (1,'DFL','1963-08-24',NULL,'Karl-Heinz K',602);
INSERT INTO `Liga` VALUES (2,'Die Liga ? Fu','1974-08-02',NULL,'Willi Landgraf',508);
INSERT INTO `Liga` VALUES (3,'Deutscher Fu','2008-07-25',NULL,'',306);
/*!40000 ALTER TABLE `Liga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spiel`
--

DROP TABLE IF EXISTS `Spiel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spiel` (
  `Spiel_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Spieltag` int(11) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Uhrzeit` time DEFAULT NULL,
  `Heim` int(11) NOT NULL,
  `Gast` int(11) NOT NULL,
  `Tore_Heim` int(11) DEFAULT NULL,
  `Tore_Gast` int(11) DEFAULT NULL,
  PRIMARY KEY (`Spiel_ID`),
  KEY `Heim` (`Heim`),
  KEY `Gast` (`Gast`),
  CONSTRAINT `Spiel_ibfk_1` FOREIGN KEY (`Heim`) REFERENCES `Verein` (`V_ID`),
  CONSTRAINT `Spiel_ibfk_2` FOREIGN KEY (`Gast`) REFERENCES `Verein` (`V_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spiel`
--

LOCK TABLES `Spiel` WRITE;
/*!40000 ALTER TABLE `Spiel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Spiel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spieler`
--

DROP TABLE IF EXISTS `Spieler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spieler` (
  `Spieler_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vereins_ID` int(11) NOT NULL,
  `Trikot_Nr` int(11) DEFAULT NULL,
  `Spieler_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Land` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Spiele` int(11) DEFAULT NULL,
  `Tore` int(11) DEFAULT NULL,
  `Vorlagen` int(11) DEFAULT NULL,
  PRIMARY KEY (`Spieler_ID`),
  KEY `Vereins_ID` (`Vereins_ID`),
  CONSTRAINT `Spieler_ibfk_1` FOREIGN KEY (`Vereins_ID`) REFERENCES `Verein` (`V_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spieler`
--

LOCK TABLES `Spieler` WRITE;
/*!40000 ALTER TABLE `Spieler` DISABLE KEYS */;
/*!40000 ALTER TABLE `Spieler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Verein`
--

DROP TABLE IF EXISTS `Verein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verein` (
  `V_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Liga` int(1) DEFAULT NULL,
  PRIMARY KEY (`V_ID`),
  UNIQUE KEY `Name` (`Name`),
  KEY `Liga` (`Liga`),
  CONSTRAINT `Verein_ibfk_1` FOREIGN KEY (`Liga`) REFERENCES `Liga` (`Liga_Nr`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verein`
--

LOCK TABLES `Verein` WRITE;
/*!40000 ALTER TABLE `Verein` DISABLE KEYS */;
/*!40000 ALTER TABLE `Verein` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-14  4:07:01
