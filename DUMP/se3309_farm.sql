-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: se3309
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `farm`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farm` (
  `farmID` int NOT NULL AUTO_INCREMENT,
  `phoneNumber` bigint NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `streetNumber` int DEFAULT NULL,
  `ownerID` int NOT NULL,
  PRIMARY KEY (`farmID`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  KEY `ownerID` (`ownerID`),
  CONSTRAINT `farm_ibfk_1` FOREIGN KEY (`ownerID`) REFERENCES `owner` (`ownerID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` VALUES (1,319226,'province0','city0','street0',100,1),(2,319227,'province1','city1','street1',101,2),(3,319228,'province2','city2','street2',102,3),(4,319229,'province3','city3','street3',103,4),(5,319230,'province4','city4','street4',104,5),(6,319231,'province5','city5','street5',105,6),(7,319232,'province6','city6','street6',106,7),(8,319233,'province7','city7','street7',107,8),(9,319234,'province8','city8','street8',108,9),(10,319235,'province9','city9','street9',109,10),(11,6838040453,'Ontario','London','Main St',123,11),(12,6269647408,'Quebec','Montreal','St. Catherine St',456,12),(13,7471460805,'British Columbia','Vancouver','Granville St',789,13),(14,9300340402,'Alberta','Calgary','17th Ave',101,14),(15,7672486121,'Nova Scotia','Halifax','Spring Garden Rd',222,15);
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16 21:12:30
