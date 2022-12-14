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
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  `nic` varchar(25) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `license_expire_date` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `branch_id_idx` (`branch_id`),
  CONSTRAINT `branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,8,'driver 1','Galle','1234567890','driver1.galle@gocheeta.com','B1223456','000000000V','8b8605f73dca3e3047b8d21e9728a3f4205171bbb00f796d5578f2b40990a07d','2021-12-30',0,'2022-09-04 14:47:49','2022-09-04 14:47:49'),(2,10,'driver 2','Nugegoda','1234567890','driver1.nugegoda@gocheeta.com','B1223456','000000000V','acf2d46b2c57f91edca58460ebb0152ebda0e08d1044773b5d9d4571cec37476','2021-12-30',0,'2022-09-04 14:48:38','2022-09-14 16:48:55'),(3,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:03:39','2022-09-15 15:03:39'),(4,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:07:02','2022-09-15 15:07:02'),(5,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:07:19','2022-09-15 15:07:19'),(6,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:08:31','2022-09-15 15:08:31'),(7,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:09:15','2022-09-15 15:09:15'),(8,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:10:01','2022-09-15 15:10:01'),(9,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:10:50','2022-09-15 15:10:50'),(10,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:11:13','2022-09-15 15:11:13'),(11,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:11:24','2022-09-15 15:11:24'),(12,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:11:56','2022-09-15 15:11:56'),(13,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:12:44','2022-09-15 15:12:44'),(14,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:13:00','2022-09-15 15:13:00'),(16,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:13:54','2022-09-15 15:13:54'),(17,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:23:31','2022-09-15 15:23:31'),(18,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:26:04','2022-09-15 15:26:04'),(19,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:26:24','2022-09-15 15:26:24'),(20,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:27:00','2022-09-15 15:27:00'),(21,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:27:20','2022-09-15 15:27:20'),(22,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:31:02','2022-09-15 15:31:02'),(23,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 15:32:37','2022-09-15 15:32:37'),(28,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 16:04:58','2022-09-15 16:04:58'),(29,8,'first name','last name','1234567890','a@a.com','B47657t67','456789312','494e779dbc05a9c59fac9784168d857db2dec64384236e0587db712f50cbc3c9','2022-08-12',0,'2022-09-15 16:50:36','2022-09-15 16:50:36');
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

-- Dump completed on 2022-09-18 21:44:24
