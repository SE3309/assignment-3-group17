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
-- Table structure for table `technician`
--

DROP TABLE IF EXISTS `technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technician` (
  `username` varchar(100) DEFAULT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  `personName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` bigint NOT NULL,
  `technicianID` int NOT NULL AUTO_INCREMENT,
  `certifications` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`technicianID`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician`
--

LOCK TABLES `technician` WRITE;
/*!40000 ALTER TABLE `technician` DISABLE KEYS */;
INSERT INTO `technician` VALUES ('user0','password0','name0','email0',319226,1,'certifications0'),('user1','password1','name1','email1',319227,2,'certifications1'),('user2','password2','name2','email2',319228,3,'certifications2'),('user3','password3','name3','email3',319229,4,'certifications3'),('user4','password4','name4','email4',319230,5,'certifications4'),('user5','password5','name5','email5',319231,6,'certifications5'),('user6','password6','name6','email6',319232,7,'certifications6'),('user7','password7','name7','email7',319233,8,'certifications7'),('user8','password8','name8','email8',319234,9,'certifications8'),('user9','password9','name9','email9',319235,10,'certifications9'),('user10','password10','name10','email10',319236,11,'certifications10'),('user11','password11','name11','email11',319237,12,'certifications11'),('user12','password12','name12','email12',319238,13,'certifications12'),('user13','password13','name13','email13',319239,14,'certifications13'),('user14','password14','name14','email14',319240,15,'certifications14'),('user15','password15','name15','email15',319241,16,'certifications15'),('user16','password16','name16','email16',319242,17,'certifications16'),('user17','password17','name17','email17',319243,18,'certifications17'),('user18','password18','name18','email18',319244,19,'certifications18'),('user19','password19','name19','email19',319245,20,'certifications19'),('user20','password20','name20','email20',319246,21,'certifications20'),('user21','password21','name21','email21',319247,22,'certifications21'),('user22','password22','name22','email22',319248,23,'certifications22'),('user23','password23','name23','email23',319249,24,'certifications23'),('user24','password24','name24','email24',319250,25,'certifications24'),('user25','password25','name25','email25',319251,26,'certifications25'),('user26','password26','name26','email26',319252,27,'certifications26'),('user27','password27','name27','email27',319253,28,'certifications27'),('user28','password28','name28','email28',319254,29,'certifications28'),('user29','password29','name29','email29',319255,30,'certifications29'),('tech1','password123','John Doe','johndoe@example.com',3173512584,31,'A+, Network+'),('tech2','secure_pass','Jane Smith','janesmith@example.com',4105686692,32,'CCNA, CCNP'),('tech3','tech3pass','Michael Johnson','michaelj@example.com',5082959118,33,'Security+'),('tech4','pass4tech','Emily Davis','emilyd@example.com',6134402951,34,'MCSA, MCSE'),('tech5','strong_pass','David Lee','davidlee@example.com',4573827517,35,'Linux+');
/*!40000 ALTER TABLE `technician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 21:21:44
