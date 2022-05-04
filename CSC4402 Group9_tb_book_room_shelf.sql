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
-- Table structure for table `tb_book_room_shelf`
--

DROP TABLE IF EXISTS `tb_book_room_shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_book_room_shelf` (
  `book_id` int NOT NULL,
  `room_id` varchar(4) NOT NULL,
  `shelf_id` varchar(10) NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `book_id_idx` (`book_id`),
  KEY `room_id_idx` (`room_id`),
  KEY `shelf_id_idx` (`shelf_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `tb_book_info` (`book_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `tb_room` (`room_id`),
  CONSTRAINT `shelf_id` FOREIGN KEY (`shelf_id`) REFERENCES `tb_shelf` (`shelf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book_room_shelf`
--

LOCK TABLES `tb_book_room_shelf` WRITE;
/*!40000 ALTER TABLE `tb_book_room_shelf` DISABLE KEYS */;
INSERT INTO `tb_book_room_shelf` VALUES (1,'101','6',1),(2,'100','1',2),(3,'100','2',3),(4,'101','2',4),(5,'101','7',5),(6,'107','3',6),(7,'108','4',7),(8,'102','4',8),(9,'106','11',9),(10,'110','21',10),(11,'109','13',11),(12,'103','6',12),(13,'105','6',13),(14,'105','15',14),(15,'108','7',15),(16,'104','3',16),(17,'107','2',17);
/*!40000 ALTER TABLE `tb_book_room_shelf` ENABLE KEYS */;
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

-- Dump completed on 2022-05-04 17:45:50
