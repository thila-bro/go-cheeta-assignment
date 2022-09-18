-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: assignment-db
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `fixed` varchar(45) DEFAULT NULL,
  `address1` varchar(110) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (8,64,'galle@gocheeta.com','0782195255','0912547892','#450/B','Akuressa Road','2022-08-16 10:54:06','2022-08-16 10:49:12'),(9,65,'kandy@gocheeta.com','0768470707','091854521','#32/A, First Floor','Badulla Road','2022-08-16 10:50:27','2022-08-16 10:50:27'),(10,66,'nugegoda@gocheeta.com','0712548640','0112806078','#250','Main Road','2022-08-16 10:55:48','2022-08-16 10:52:38'),(11,67,'gampaha@gocheeta.com','076456987','0248956384','#21','','2022-08-16 10:54:01','2022-08-16 10:54:01'),(12,68,'kurunegala@gocheeta.com','0778524690','0459641380','#360,  2nd Floor','Main Road','2022-08-16 10:55:55','2022-08-16 10:55:39'),(13,69,'jaffna@gocheeta.com','0787569840','0982546987','#620','','2022-08-16 10:57:17','2022-08-16 10:57:17'),(16,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:02:46','2022-09-15 15:02:46'),(18,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:03:39','2022-09-15 15:03:39'),(19,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:07:02','2022-09-15 15:07:02'),(20,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:07:19','2022-09-15 15:07:19'),(21,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:08:31','2022-09-15 15:08:31'),(22,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:09:15','2022-09-15 15:09:15'),(23,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:10:01','2022-09-15 15:10:01'),(24,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:10:50','2022-09-15 15:10:50'),(25,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:11:13','2022-09-15 15:11:13'),(26,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:11:24','2022-09-15 15:11:24'),(27,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:11:56','2022-09-15 15:11:56'),(28,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:12:44','2022-09-15 15:12:44'),(29,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:13:00','2022-09-15 15:13:00'),(30,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:13:40','2022-09-15 15:13:40'),(31,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:13:54','2022-09-15 15:13:54'),(32,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:23:31','2022-09-15 15:23:31'),(33,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:26:04','2022-09-15 15:26:04'),(34,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:26:24','2022-09-15 15:26:24'),(35,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:27:00','2022-09-15 15:27:00'),(36,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:27:20','2022-09-15 15:27:20'),(37,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:31:02','2022-09-15 15:31:02'),(38,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:32:37','2022-09-15 15:32:37'),(39,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 15:34:08','2022-09-15 15:34:08'),(44,69,'a@.acom','1234567890','0875432190','address line 1','address line 2','2022-09-15 16:50:36','2022-09-15 16:50:36');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-18 21:44:23
