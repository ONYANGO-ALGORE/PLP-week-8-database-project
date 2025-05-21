CREATE DATABASE  IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `music`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `AlbumID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(150) NOT NULL,
  `ArtistName` varchar(100) DEFAULT NULL,
  `ReleaseDate` date NOT NULL,
  `ArtistID` int NOT NULL,
  `LabelID` int NOT NULL,
  `StudioID` int NOT NULL,
  `DistributorID` int NOT NULL,
  PRIMARY KEY (`AlbumID`),
  KEY `ArtistID` (`ArtistID`),
  KEY `LabelID` (`LabelID`),
  KEY `StudioID` (`StudioID`),
  KEY `DistributorID` (`DistributorID`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `artists` (`ArtistID`),
  CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`LabelID`) REFERENCES `labels` (`LabelID`),
  CONSTRAINT `albums_ibfk_3` FOREIGN KEY (`StudioID`) REFERENCES `studios` (`StudioID`),
  CONSTRAINT `albums_ibfk_4` FOREIGN KEY (`DistributorID`) REFERENCES `distributors` (`DistributorID`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (185,'Zulu Man With Some Power','Nasty C','2020-08-28',11,35,11,11),(186,'Ivyson Army Tour Mixtape','Nasty C','2022-09-15',11,35,11,11),(187,'Under Construction','Miss Eliot','2002-11-12',8,32,8,8),(188,'Iconology','Miss Eliot','2019-08-23',8,32,8,8),(189,'Now You Know','Nyashinski','2021-05-15',3,27,3,3),(190,'Balance','Nyashinski','2022-04-01',3,27,3,3),(191,'Psychodrama','Dave','2019-03-08',5,29,5,5),(192,'We\'re All Alone In This Together','Dave','2021-07-23',5,29,5,5),(193,'Scorpion','Drake','2018-06-29',7,31,7,7),(194,'Certified Lover Boy','Drake','2021-09-03',7,31,7,7),(195,'F.A.M.E.','Chrisbrown','2011-03-18',2,26,2,2),(196,'Indigo','Chrisbrown','2019-06-28',2,26,2,2),(197,'Victims of Madness','Wakadinali','2021-11-01',10,34,10,10),(198,'The Marshall Mathers LP 2','Eminem','2013-11-05',4,28,4,4),(199,'Music to Be Murdered By','Eminem','2020-01-17',4,28,4,4),(200,'Afrikan Sauce','Sauti Sol','2019-01-31',9,33,9,9),(201,'Midnight Train','Sauti Sol','2020-06-05',9,33,9,9),(202,'Where We Come From','Popcaan','2014-06-10',6,30,6,6),(203,'Great Is He','Popcaan','2023-01-27',6,30,6,6),(204,'Tha Carter III','Lilwayne','2008-06-10',1,25,1,1),(205,'Pink Friday','Nikiminaj','2010-11-22',12,25,12,12),(206,'No Ceilings','Lilwayne','2009-10-31',1,25,1,1),(207,'Queen','Nikiminaj','2018-08-10',12,25,12,12);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `ArtistID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`ArtistID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (2,'Chrisbrown'),(5,'Dave'),(7,'Drake'),(4,'Eminem'),(1,'Lilwayne'),(8,'Miss Eliot'),(11,'Nasty C'),(12,'Nikiminaj'),(3,'Nyashinski'),(6,'Popcaan'),(9,'Sauti Sol'),(10,'Wakadinali');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributors`
--

DROP TABLE IF EXISTS `distributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributors` (
  `DistributorID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Region` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DistributorID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributors`
--

LOCK TABLES `distributors` WRITE;
/*!40000 ALTER TABLE `distributors` DISABLE KEYS */;
INSERT INTO `distributors` VALUES (1,'Universal Music','Global'),(2,'Sony Music','Global'),(3,'Boomplay','Africa'),(4,'Aftermath','USA'),(5,'Warner Music','Global'),(6,'VP Records','Caribbean'),(7,'Republic Records','North America'),(8,'Atlantic Records','USA'),(9,'Mdundo','Africa'),(10,'Black Market','Africa'),(11,'Def Jam','Africa'),(12,'TuneCore','Global');
/*!40000 ALTER TABLE `distributors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `LabelID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LabelID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (25,'Young Money','USA'),(26,'RCA Records','USA'),(27,'Kaka Empire','Kenya'),(28,'Shady Records','USA'),(29,'Neighbourhood','UK'),(30,'Unruly Entertainment','Jamaica'),(31,'OVO Sound','Canada'),(32,'Goldmind Inc.','USA'),(33,'Sol Generation','Kenya'),(34,'Rong Rende','Kenya'),(35,'Def Jam Africa','South Africa');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios`
--

DROP TABLE IF EXISTS `studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studios` (
  `StudioID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`StudioID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios`
--

LOCK TABLES `studios` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;
INSERT INTO `studios` VALUES (1,'Cash Money Studios','New Orleans'),(2,'Record Plant','Los Angeles'),(3,'Decimal Studios','Nairobi'),(4,'Effigy Studios','Detroit'),(5,'Abbey Road','London'),(6,'Unruly Studio','Kingston'),(7,'SOTA Studios','Toronto'),(8,'Hit Factory','Miami'),(9,'MG Studios','Nairobi'),(10,'Black Market Studios','Nairobi'),(11,'Red Bull Studio','Cape Town'),(12,'Platinum Sound','New York');
/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'music'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 18:57:38
