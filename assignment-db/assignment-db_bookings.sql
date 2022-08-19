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
  `vehicle_id` int DEFAULT NULL,
  `pick_up_city_id` int DEFAULT NULL,
  `drop_off_city_id` int DEFAULT NULL,
  `vehicle_type_id` int DEFAULT NULL,
  `pick_up_street` varchar(100) DEFAULT NULL,
  `drop_off_street` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:04:22','2022-08-19 17:05:14'),(2,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:05:00','2022-08-19 17:05:00'),(3,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:49:51','2022-08-19 17:49:51'),(4,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:51:06','2022-08-19 17:51:06'),(5,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:56:37','2022-08-19 17:56:37'),(6,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:57:06','2022-08-19 17:57:06'),(7,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 17:59:35','2022-08-19 17:59:35'),(8,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 18:00:24','2022-08-19 18:00:24'),(9,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 18:01:07','2022-08-19 18:01:07'),(10,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 18:02:20','2022-08-19 18:02:20'),(11,2,66,68,19,'12/e,behind The Temple','12/e,behind The Temple',7300,120,0,'2022-08-19 18:02:28','2022-08-19 18:02:28');
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

-- Dump completed on 2022-08-19 23:41:36
