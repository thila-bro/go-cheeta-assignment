-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: assignment-db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  `nic` varchar(25) DEFAULT NULL,
  `license_expire_date` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `stars` int DEFAULT '5',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'thilan 1','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-08-15',0,5,'2022-08-07 13:31:43','2022-08-07 13:46:08'),(2,'thilan 2','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-08-15',0,5,'2022-08-07 13:34:37','2022-08-07 13:46:08'),(3,'thilan 3','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-08-15',0,5,'2022-08-07 13:34:45','2022-08-07 13:46:08'),(7,'thilan','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-08-15',0,5,'2022-08-07 15:09:39','2022-08-07 15:09:39'),(8,'thilan','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-09-15',0,5,'2022-08-07 16:41:15','2022-08-07 16:41:15'),(9,'thilan','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-10-15',0,5,'2022-08-07 16:41:22','2022-08-07 16:41:22'),(10,'thilan','maduranga','0768470707','thilanmaduranga73@gmail.com','12345678','952191926V','2022-11-15',0,5,'2022-08-07 16:41:49','2022-08-07 16:41:49'),(11,'gourge','andrew','0768470707','gourge@gmail.com','12345678','952191926V','2022-12-22',0,5,'2022-08-07 16:41:56','2022-08-07 16:52:21');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10 22:19:53
