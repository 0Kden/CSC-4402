-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: database-1.crzcaebivplk.us-west-1.rds.amazonaws.com    Database: CSC4402 Group9
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `tb_borrow_return`
--

DROP TABLE IF EXISTS `tb_borrow_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_borrow_return` (
  `id` int NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `borrow_date` date NOT NULL,
  `assigned_return_date` date NOT NULL,
  `re_borrow` tinyint NOT NULL COMMENT 're_borrow wont stay as a boolean ',
  `book_id` int NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `tb_borrow_return` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ISBN_idx` (`id`),
  KEY `user_name_idx` (`user_name`),
  KEY `ISBN_idx1` (`book_id`),
  CONSTRAINT `user_name` FOREIGN KEY (`user_name`) REFERENCES `tb_user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_borrow_return`
--

LOCK TABLES `tb_borrow_return` WRITE;
/*!40000 ALTER TABLE `tb_borrow_return` DISABLE KEYS */;
INSERT INTO `tb_borrow_return` VALUES (1,'anish','2022-03-01','2022-05-01',0,1,NULL,''),(2,'anish','2022-03-02','2022-05-05',0,3,'2022-05-01',''),(3,'ruxin','2021-11-19','2022-04-23',0,17,'2022-02-19',' '),(4,'Luffy','2022-10-07','2023-01-01',2,5,'2022-03-10',' '),(5,'MattPat','2020-05-21','2021-07-16',1,8,'2021-07-20',' '),(6,'anish','2020-05-01','2021-05-01',0,18,NULL,'');
/*!40000 ALTER TABLE `tb_borrow_return` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 17:45:42
