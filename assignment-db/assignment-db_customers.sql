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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'saman 2','kumara 2','samankumara@gmail.com','760778598','d050f90ce46fd8f3e661790c8ef6412c694ea981abdbce78dfb37ba6ef7df10f','2022-09-14 11:43:44','2022-09-02 18:01:20'),(3,'saman','kumara','samankumara@gmail.com','760778598','c55a68607910dadf5e8607335b69df098e54685e530918cec194c63c23cec63c','2022-09-02 18:04:40','2022-09-02 18:04:40'),(4,'thila','bro20','thilaBro@gmail.com','702505399','8d99fa0b88e40ae2481f27790df16fd8af854f847b337c496dda59ebca7d96e3','2022-09-02 18:13:41','2022-09-02 18:13:41'),(5,'testt','customer','test.customer@gmail.com','760778598','d050f90ce46fd8f3e661790c8ef6412c694ea981abdbce78dfb37ba6ef7df10f','2022-09-13 07:41:35','2022-09-13 07:41:35'),(6,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:23:31','2022-09-15 15:23:31'),(7,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:26:04','2022-09-15 15:26:04'),(8,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:26:24','2022-09-15 15:26:24'),(9,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:27:00','2022-09-15 15:27:00'),(10,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:27:20','2022-09-15 15:27:20'),(11,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:31:02','2022-09-15 15:31:02'),(12,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:32:37','2022-09-15 15:32:37'),(13,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:34:08','2022-09-15 15:34:08'),(14,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:40:16','2022-09-15 15:40:16'),(15,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:47:58','2022-09-15 15:47:58'),(16,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:51:38','2022-09-15 15:51:38'),(17,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:52:25','2022-09-15 15:52:25'),(18,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 15:53:21','2022-09-15 15:53:21'),(22,'first name','last name','a@acom','1234567890','30cfcb858527428fd658b03e68c1472cfe87befc39235b651e8047da34f57b9b','2022-09-15 16:50:36','2022-09-15 16:50:36');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-18 21:44:26
