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
INSERT INTO `weatherconditions` VALUES (3,'foggy'),(12,'foggy'),(13,'foggy'),(24,'foggy'),(29,'foggy'),(34,'foggy'),(37,'foggy'),(44,'foggy'),(46,'foggy'),(56,'foggy'),(64,'foggy'),(69,'foggy'),(70,'foggy'),(77,'foggy'),(96,'foggy'),(99,'foggy'),(100,'foggy'),(107,'foggy'),(114,'foggy'),(118,'foggy'),(120,'foggy'),(129,'foggy'),(137,'foggy'),(144,'foggy'),(149,'foggy'),(151,'foggy'),(153,'foggy'),(160,'foggy'),(161,'foggy'),(162,'foggy'),(163,'foggy'),(165,'foggy'),(166,'foggy'),(170,'foggy'),(181,'foggy'),(182,'foggy'),(186,'foggy'),(192,'foggy'),(194,'foggy'),(195,'foggy'),(196,'foggy'),(201,'foggy'),(214,'foggy'),(216,'foggy'),(219,'foggy'),(220,'foggy'),(227,'foggy'),(246,'foggy'),(251,'foggy'),(258,'foggy'),(264,'foggy'),(265,'foggy'),(266,'foggy'),(267,'foggy'),(270,'foggy'),(271,'foggy'),(272,'foggy'),(276,'foggy'),(278,'foggy'),(281,'foggy'),(284,'foggy'),(289,'foggy'),(299,'foggy'),(1,'overcast'),(7,'overcast'),(9,'overcast'),(10,'overcast'),(19,'overcast'),(21,'overcast'),(30,'overcast'),(32,'overcast'),(39,'overcast'),(45,'overcast'),(50,'overcast'),(52,'overcast'),(59,'overcast'),(61,'overcast'),(65,'overcast'),(81,'overcast'),(84,'overcast'),(86,'overcast'),(95,'overcast'),(97,'overcast'),(104,'overcast'),(109,'overcast'),(112,'overcast'),(123,'overcast'),(124,'overcast'),(125,'overcast'),(126,'overcast'),(132,'overcast'),(135,'overcast'),(142,'overcast'),(150,'overcast'),(158,'overcast'),(164,'overcast'),(175,'overcast'),(179,'overcast'),(189,'overcast'),(190,'overcast'),(204,'overcast'),(208,'overcast'),(211,'overcast'),(221,'overcast'),(240,'overcast'),(257,'overcast'),(274,'overcast'),(285,'overcast'),(301,'overcast'),(302,'overcast'),(304,'overcast'),(307,'overcast'),(308,'overcast'),(309,'overcast'),(312,'overcast'),(313,'overcast'),(314,'overcast'),(318,'overcast'),(322,'overcast'),(326,'overcast'),(327,'overcast'),(328,'overcast'),(329,'overcast'),(330,'overcast'),(332,'overcast'),(333,'overcast'),(334,'overcast'),(338,'overcast'),(342,'overcast'),(346,'overcast'),(347,'overcast'),(348,'overcast'),(349,'overcast'),(350,'overcast'),(351,'overcast'),(352,'overcast'),(354,'overcast'),(357,'overcast'),(358,'overcast'),(359,'overcast'),(362,'overcast'),(366,'overcast'),(367,'overcast'),(368,'overcast'),(369,'overcast'),(370,'overcast'),(371,'overcast'),(372,'overcast'),(374,'overcast'),(377,'overcast'),(378,'overcast'),(379,'overcast'),(382,'overcast'),(383,'overcast'),(384,'overcast'),(388,'overcast'),(391,'overcast'),(392,'overcast'),(394,'overcast'),(397,'overcast'),(398,'overcast'),(399,'overcast'),(402,'overcast'),(403,'overcast'),(404,'overcast'),(408,'overcast'),(412,'overcast'),(416,'overcast'),(417,'overcast'),(418,'overcast'),(419,'overcast'),(420,'overcast'),(422,'overcast'),(423,'overcast'),(424,'overcast'),(428,'overcast'),(432,'overcast'),(436,'overcast'),(437,'overcast'),(438,'overcast'),(439,'overcast'),(440,'overcast'),(441,'overcast'),(442,'overcast'),(444,'overcast'),(447,'overcast'),(448,'overcast'),(449,'overcast'),(2,'rainy'),(16,'rainy'),(18,'rainy'),(20,'rainy'),(22,'rainy'),(25,'rainy'),(26,'rainy'),(27,'rainy'),(28,'rainy'),(31,'rainy'),(33,'rainy'),(51,'rainy'),(54,'rainy'),(55,'rainy'),(58,'rainy'),(62,'rainy'),(66,'rainy'),(67,'rainy'),(71,'rainy'),(75,'rainy'),(80,'rainy'),(88,'rainy'),(89,'rainy'),(93,'rainy'),(101,'rainy'),(106,'rainy'),(108,'rainy'),(115,'rainy'),(116,'rainy'),(130,'rainy'),(131,'rainy'),(136,'rainy'),(138,'rainy'),(145,'rainy'),(146,'rainy'),(147,'rainy'),(155,'rainy'),(159,'rainy'),(172,'rainy'),(174,'rainy'),(184,'rainy'),(193,'rainy'),(197,'rainy'),(200,'rainy'),(206,'rainy'),(210,'rainy'),(212,'rainy'),(222,'rainy'),(231,'rainy'),(233,'rainy'),(234,'rainy'),(241,'rainy'),(248,'rainy'),(252,'rainy'),(253,'rainy'),(263,'rainy'),(275,'rainy'),(277,'rainy'),(283,'rainy'),(288,'rainy'),(291,'rainy'),(293,'rainy'),(294,'rainy'),(306,'rainy'),(311,'rainy'),(315,'rainy'),(316,'rainy'),(321,'rainy'),(324,'rainy'),(331,'rainy'),(335,'rainy'),(336,'rainy'),(341,'rainy'),(344,'rainy'),(356,'rainy'),(361,'rainy'),(364,'rainy'),(376,'rainy'),(381,'rainy'),(385,'rainy'),(386,'rainy'),(396,'rainy'),(401,'rainy'),(405,'rainy'),(406,'rainy'),(411,'rainy'),(414,'rainy'),(421,'rainy'),(425,'rainy'),(426,'rainy'),(431,'rainy'),(434,'rainy'),(446,'rainy'),(5,'snowing'),(23,'snowing'),(35,'snowing'),(36,'snowing'),(41,'snowing'),(42,'snowing'),(43,'snowing'),(49,'snowing'),(57,'snowing'),(73,'snowing'),(74,'snowing'),(76,'snowing'),(82,'snowing'),(90,'snowing'),(91,'snowing'),(98,'snowing'),(105,'snowing'),(119,'snowing'),(121,'snowing'),(122,'snowing'),(133,'snowing'),(140,'snowing'),(141,'snowing'),(152,'snowing'),(154,'snowing'),(157,'snowing'),(168,'snowing'),(169,'snowing'),(171,'snowing'),(180,'snowing'),(183,'snowing'),(187,'snowing'),(188,'snowing'),(202,'snowing'),(203,'snowing'),(217,'snowing'),(223,'snowing'),(224,'snowing'),(225,'snowing'),(230,'snowing'),(232,'snowing'),(239,'snowing'),(242,'snowing'),(245,'snowing'),(250,'snowing'),(254,'snowing'),(261,'snowing'),(262,'snowing'),(268,'snowing'),(269,'snowing'),(273,'snowing'),(279,'snowing'),(280,'snowing'),(282,'snowing'),(287,'snowing'),(295,'snowing'),(296,'snowing'),(297,'snowing'),(4,'sunny'),(6,'sunny'),(8,'sunny'),(11,'sunny'),(14,'sunny'),(15,'sunny'),(17,'sunny'),(38,'sunny'),(40,'sunny'),(47,'sunny'),(48,'sunny'),(53,'sunny'),(60,'sunny'),(63,'sunny'),(68,'sunny'),(72,'sunny'),(78,'sunny'),(79,'sunny'),(83,'sunny'),(85,'sunny'),(87,'sunny'),(92,'sunny'),(94,'sunny'),(102,'sunny'),(103,'sunny'),(110,'sunny'),(111,'sunny'),(113,'sunny'),(117,'sunny'),(127,'sunny'),(128,'sunny'),(134,'sunny'),(139,'sunny'),(143,'sunny'),(148,'sunny'),(156,'sunny'),(167,'sunny'),(173,'sunny'),(176,'sunny'),(177,'sunny'),(178,'sunny'),(185,'sunny'),(191,'sunny'),(198,'sunny'),(199,'sunny'),(205,'sunny'),(207,'sunny'),(209,'sunny'),(213,'sunny'),(215,'sunny'),(218,'sunny'),(226,'sunny'),(228,'sunny'),(229,'sunny'),(235,'sunny'),(236,'sunny'),(237,'sunny'),(238,'sunny'),(243,'sunny'),(244,'sunny'),(247,'sunny'),(249,'sunny'),(255,'sunny'),(256,'sunny'),(259,'sunny'),(260,'sunny'),(286,'sunny'),(290,'sunny'),(292,'sunny'),(298,'sunny'),(300,'sunny'),(303,'sunny'),(305,'sunny'),(310,'sunny'),(317,'sunny'),(319,'sunny'),(320,'sunny'),(323,'sunny'),(325,'sunny'),(337,'sunny'),(339,'sunny'),(340,'sunny'),(343,'sunny'),(345,'sunny'),(353,'sunny'),(355,'sunny'),(360,'sunny'),(363,'sunny'),(365,'sunny'),(373,'sunny'),(375,'sunny'),(380,'sunny'),(387,'sunny'),(389,'sunny'),(390,'sunny'),(393,'sunny'),(395,'sunny'),(400,'sunny'),(407,'sunny'),(409,'sunny'),(410,'sunny'),(413,'sunny'),(415,'sunny'),(427,'sunny'),(429,'sunny'),(430,'sunny'),(433,'sunny'),(435,'sunny'),(443,'sunny'),(445,'sunny'),(450,'sunny');
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

-- Dump completed on 2024-11-17 21:21:43
