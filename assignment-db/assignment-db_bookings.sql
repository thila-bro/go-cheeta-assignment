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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(45) DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `pick_up_city_id` int DEFAULT NULL,
  `drop_off_city_id` int DEFAULT NULL,
  `vehicle_type_id` int DEFAULT NULL,
  `pick_up_street` varchar(100) DEFAULT NULL,
  `drop_off_street` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `feedback_status` tinyint DEFAULT '0',
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'4',1,66,69,19,'12/e,behind The Temple','12/e,behind The Temple',32500,360,1,3,'2022-09-10 07:36:10','2022-09-10 11:16:55'),(2,'4',1,66,65,19,'12/e,behind The Temple','12/e,behind The Temple',32500,360,0,3,'2022-09-10 11:20:02','2022-09-10 11:21:00'),(3,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,3,'2022-09-18 07:09:48','2022-09-18 08:48:36'),(4,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,3,'2022-09-18 07:23:17','2022-09-18 09:01:43'),(5,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,3,'2022-09-18 07:24:34','2022-09-18 09:08:13'),(6,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,1,'2022-09-18 07:26:34','2022-09-18 09:16:51'),(7,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:27:26','2022-09-18 07:27:26'),(8,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:37:16','2022-09-18 07:37:16'),(9,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:37:21','2022-09-18 07:37:21'),(10,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:37:28','2022-09-18 07:37:28'),(11,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:02','2022-09-18 07:38:02'),(12,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:03','2022-09-18 07:38:03'),(13,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:03','2022-09-18 07:38:03'),(14,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:03','2022-09-18 07:38:03'),(15,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:03','2022-09-18 07:38:03'),(16,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:38:51','2022-09-18 07:38:51'),(17,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:39:18','2022-09-18 07:39:18'),(18,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 07:40:41','2022-09-18 07:40:41'),(19,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 09:01:21','2022-09-18 09:01:21'),(20,'4',1,66,67,19,'12/e,behind The Temple','12/e,behind The Temple',10900,120,0,0,'2022-09-18 09:08:01','2022-09-18 09:08:01'),(21,'4',1,66,65,19,'12/e,behind The Temple','12/e,behind The Temple',32500,360,0,3,'2022-09-18 09:16:38','2022-09-18 09:17:05');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-18 21:44:24
