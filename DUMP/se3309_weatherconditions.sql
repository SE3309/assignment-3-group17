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
-- Table structure for table `weatherconditions`
--

DROP TABLE IF EXISTS `weatherconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weatherconditions` (
  `weatherID` int NOT NULL,
  `weatherDescription` varchar(100) NOT NULL,
  PRIMARY KEY (`weatherID`,`weatherDescription`),
  KEY `weatherDescription` (`weatherDescription`),
  CONSTRAINT `weatherconditions_ibfk_1` FOREIGN KEY (`weatherID`) REFERENCES `weather` (`weatherID`),
  CONSTRAINT `weatherconditions_ibfk_2` FOREIGN KEY (`weatherDescription`) REFERENCES `conditions` (`weatherDescription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weatherconditions`
--

LOCK TABLES `weatherconditions` WRITE;
/*!40000 ALTER TABLE `weatherconditions` DISABLE KEYS */;
INSERT INTO `weatherconditions` VALUES (3,'foggy'),(16,'foggy'),(18,'foggy'),(20,'foggy'),(22,'foggy'),(25,'foggy'),(30,'foggy'),(31,'foggy'),(34,'foggy'),(38,'foggy'),(41,'foggy'),(47,'foggy'),(50,'foggy'),(52,'foggy'),(59,'foggy'),(71,'foggy'),(73,'foggy'),(78,'foggy'),(82,'foggy'),(83,'foggy'),(88,'foggy'),(90,'foggy'),(92,'foggy'),(100,'foggy'),(101,'foggy'),(104,'foggy'),(105,'foggy'),(110,'foggy'),(115,'foggy'),(118,'foggy'),(120,'foggy'),(125,'foggy'),(128,'foggy'),(143,'foggy'),(144,'foggy'),(149,'foggy'),(151,'foggy'),(159,'foggy'),(171,'foggy'),(177,'foggy'),(181,'foggy'),(183,'foggy'),(185,'foggy'),(187,'foggy'),(190,'foggy'),(194,'foggy'),(198,'foggy'),(200,'foggy'),(203,'foggy'),(211,'foggy'),(213,'foggy'),(227,'foggy'),(228,'foggy'),(230,'foggy'),(237,'foggy'),(238,'foggy'),(245,'foggy'),(256,'foggy'),(258,'foggy'),(262,'foggy'),(263,'foggy'),(264,'foggy'),(266,'foggy'),(268,'foggy'),(272,'foggy'),(280,'foggy'),(288,'foggy'),(296,'foggy'),(5,'overcast'),(9,'overcast'),(17,'overcast'),(23,'overcast'),(24,'overcast'),(28,'overcast'),(29,'overcast'),(33,'overcast'),(35,'overcast'),(42,'overcast'),(48,'overcast'),(54,'overcast'),(57,'overcast'),(58,'overcast'),(61,'overcast'),(62,'overcast'),(65,'overcast'),(67,'overcast'),(72,'overcast'),(75,'overcast'),(77,'overcast'),(84,'overcast'),(89,'overcast'),(91,'overcast'),(106,'overcast'),(114,'overcast'),(126,'overcast'),(131,'overcast'),(133,'overcast'),(153,'overcast'),(161,'overcast'),(163,'overcast'),(165,'overcast'),(166,'overcast'),(174,'overcast'),(175,'overcast'),(178,'overcast'),(186,'overcast'),(197,'overcast'),(205,'overcast'),(206,'overcast'),(207,'overcast'),(212,'overcast'),(214,'overcast'),(215,'overcast'),(218,'overcast'),(219,'overcast'),(220,'overcast'),(222,'overcast'),(235,'overcast'),(239,'overcast'),(240,'overcast'),(248,'overcast'),(254,'overcast'),(265,'overcast'),(275,'overcast'),(278,'overcast'),(279,'overcast'),(284,'overcast'),(285,'overcast'),(291,'overcast'),(292,'overcast'),(304,'overcast'),(307,'overcast'),(309,'overcast'),(312,'overcast'),(315,'overcast'),(316,'overcast'),(317,'overcast'),(320,'overcast'),(323,'overcast'),(325,'overcast'),(332,'overcast'),(335,'overcast'),(336,'overcast'),(337,'overcast'),(340,'overcast'),(343,'overcast'),(345,'overcast'),(354,'overcast'),(357,'overcast'),(359,'overcast'),(363,'overcast'),(365,'overcast'),(374,'overcast'),(377,'overcast'),(379,'overcast'),(382,'overcast'),(385,'overcast'),(386,'overcast'),(387,'overcast'),(390,'overcast'),(394,'overcast'),(397,'overcast'),(399,'overcast'),(402,'overcast'),(405,'overcast'),(406,'overcast'),(407,'overcast'),(410,'overcast'),(413,'overcast'),(415,'overcast'),(422,'overcast'),(425,'overcast'),(426,'overcast'),(427,'overcast'),(430,'overcast'),(433,'overcast'),(435,'overcast'),(444,'overcast'),(447,'overcast'),(449,'overcast'),(1,'rainy'),(4,'rainy'),(7,'rainy'),(8,'rainy'),(11,'rainy'),(12,'rainy'),(26,'rainy'),(27,'rainy'),(32,'rainy'),(37,'rainy'),(40,'rainy'),(44,'rainy'),(56,'rainy'),(60,'rainy'),(63,'rainy'),(68,'rainy'),(70,'rainy'),(74,'rainy'),(76,'rainy'),(86,'rainy'),(95,'rainy'),(97,'rainy'),(99,'rainy'),(109,'rainy'),(116,'rainy'),(119,'rainy'),(123,'rainy'),(127,'rainy'),(129,'rainy'),(130,'rainy'),(142,'rainy'),(146,'rainy'),(147,'rainy'),(148,'rainy'),(152,'rainy'),(155,'rainy'),(160,'rainy'),(167,'rainy'),(168,'rainy'),(173,'rainy'),(182,'rainy'),(195,'rainy'),(196,'rainy'),(199,'rainy'),(201,'rainy'),(202,'rainy'),(208,'rainy'),(210,'rainy'),(217,'rainy'),(221,'rainy'),(223,'rainy'),(225,'rainy'),(226,'rainy'),(231,'rainy'),(232,'rainy'),(233,'rainy'),(234,'rainy'),(236,'rainy'),(241,'rainy'),(242,'rainy'),(243,'rainy'),(249,'rainy'),(255,'rainy'),(260,'rainy'),(270,'rainy'),(273,'rainy'),(276,'rainy'),(289,'rainy'),(295,'rainy'),(298,'rainy'),(301,'rainy'),(302,'rainy'),(305,'rainy'),(308,'rainy'),(313,'rainy'),(314,'rainy'),(318,'rainy'),(322,'rainy'),(327,'rainy'),(330,'rainy'),(333,'rainy'),(334,'rainy'),(338,'rainy'),(342,'rainy'),(347,'rainy'),(350,'rainy'),(351,'rainy'),(352,'rainy'),(355,'rainy'),(358,'rainy'),(362,'rainy'),(367,'rainy'),(370,'rainy'),(371,'rainy'),(372,'rainy'),(375,'rainy'),(378,'rainy'),(383,'rainy'),(384,'rainy'),(388,'rainy'),(391,'rainy'),(392,'rainy'),(395,'rainy'),(398,'rainy'),(403,'rainy'),(404,'rainy'),(408,'rainy'),(412,'rainy'),(417,'rainy'),(420,'rainy'),(423,'rainy'),(424,'rainy'),(428,'rainy'),(432,'rainy'),(437,'rainy'),(440,'rainy'),(441,'rainy'),(442,'rainy'),(445,'rainy'),(448,'rainy'),(2,'snowing'),(19,'snowing'),(39,'snowing'),(43,'snowing'),(46,'snowing'),(51,'snowing'),(66,'snowing'),(69,'snowing'),(80,'snowing'),(81,'snowing'),(85,'snowing'),(87,'snowing'),(93,'snowing'),(96,'snowing'),(108,'snowing'),(111,'snowing'),(112,'snowing'),(117,'snowing'),(121,'snowing'),(122,'snowing'),(134,'snowing'),(135,'snowing'),(139,'snowing'),(145,'snowing'),(150,'snowing'),(156,'snowing'),(157,'snowing'),(158,'snowing'),(179,'snowing'),(180,'snowing'),(184,'snowing'),(192,'snowing'),(193,'snowing'),(209,'snowing'),(244,'snowing'),(246,'snowing'),(250,'snowing'),(252,'snowing'),(259,'snowing'),(261,'snowing'),(283,'snowing'),(287,'snowing'),(293,'snowing'),(297,'snowing'),(299,'snowing'),(6,'sunny'),(10,'sunny'),(13,'sunny'),(14,'sunny'),(15,'sunny'),(21,'sunny'),(36,'sunny'),(45,'sunny'),(49,'sunny'),(53,'sunny'),(55,'sunny'),(64,'sunny'),(79,'sunny'),(94,'sunny'),(98,'sunny'),(102,'sunny'),(103,'sunny'),(107,'sunny'),(113,'sunny'),(124,'sunny'),(132,'sunny'),(136,'sunny'),(137,'sunny'),(138,'sunny'),(140,'sunny'),(141,'sunny'),(154,'sunny'),(162,'sunny'),(164,'sunny'),(169,'sunny'),(170,'sunny'),(172,'sunny'),(176,'sunny'),(188,'sunny'),(189,'sunny'),(191,'sunny'),(204,'sunny'),(216,'sunny'),(224,'sunny'),(229,'sunny'),(247,'sunny'),(251,'sunny'),(253,'sunny'),(257,'sunny'),(267,'sunny'),(269,'sunny'),(271,'sunny'),(274,'sunny'),(277,'sunny'),(281,'sunny'),(282,'sunny'),(286,'sunny'),(290,'sunny'),(294,'sunny'),(300,'sunny'),(303,'sunny'),(306,'sunny'),(310,'sunny'),(311,'sunny'),(319,'sunny'),(321,'sunny'),(324,'sunny'),(326,'sunny'),(328,'sunny'),(329,'sunny'),(331,'sunny'),(339,'sunny'),(341,'sunny'),(344,'sunny'),(346,'sunny'),(348,'sunny'),(349,'sunny'),(353,'sunny'),(356,'sunny'),(360,'sunny'),(361,'sunny'),(364,'sunny'),(366,'sunny'),(368,'sunny'),(369,'sunny'),(373,'sunny'),(376,'sunny'),(380,'sunny'),(381,'sunny'),(389,'sunny'),(393,'sunny'),(396,'sunny'),(400,'sunny'),(401,'sunny'),(409,'sunny'),(411,'sunny'),(414,'sunny'),(416,'sunny'),(418,'sunny'),(419,'sunny'),(421,'sunny'),(429,'sunny'),(431,'sunny'),(434,'sunny'),(436,'sunny'),(438,'sunny'),(439,'sunny'),(443,'sunny'),(446,'sunny'),(450,'sunny');
/*!40000 ALTER TABLE `weatherconditions` ENABLE KEYS */;
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
