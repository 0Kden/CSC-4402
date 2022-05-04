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
-- Table structure for table `tb_book_author`
--

DROP TABLE IF EXISTS `tb_book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_book_author` (
  `ISBN` varchar(30) NOT NULL,
  `author_id` varchar(15) NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ISBN_idx` (`ISBN`),
  KEY `author_id_idx` (`author_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `tb_author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ISBN` FOREIGN KEY (`ISBN`) REFERENCES `tb_book_info` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book_author`
--

LOCK TABLES `tb_book_author` WRITE;
/*!40000 ALTER TABLE `tb_book_author` DISABLE KEYS */;
INSERT INTO `tb_book_author` VALUES ('000-ISBN-001','3',1),('000-ISBN-002','4',2),('000-ISBN-003','3',3),('000-ISBN-004','3',4),('000-ISBN-005','3',5),('000-ISBN-006','3',6),('000-ISBN-007','3',7),('000-ISBN-008','3',8),('000-ISBN-009','5',9),('000-ISBN-010','8',10),('000-ISBN-011','8',11),('000-ISBN-012','8',12),('000-ISBN-013','8',13),('000-ISBN-014','9',14),('000-ISBN-015','9',15),('000-ISBN-016','6',16),('000-ISBN-017','7',17);
/*!40000 ALTER TABLE `tb_book_author` ENABLE KEYS */;
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

-- Dump completed on 2022-05-04 17:45:37
