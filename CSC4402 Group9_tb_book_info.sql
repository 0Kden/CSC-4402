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
-- Table structure for table `tb_book_info`
--

DROP TABLE IF EXISTS `tb_book_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_book_info` (
  `ISBN` varchar(30) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `author_id` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `pub_date` date NOT NULL,
  `book_price` double NOT NULL,
  `book_id` int NOT NULL,
  `book_status` tinyint NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book_info`
--

LOCK TABLES `tb_book_info` WRITE;
/*!40000 ALTER TABLE `tb_book_info` DISABLE KEYS */;
INSERT INTO `tb_book_info` VALUES ('000-ISBN-001','Harry Potter and the Goblet of Fire','3','Bloomsbury Publishin','1998-07-02',21,1,1),('000-ISBN-002','Astrophyics for People in a Hurry','4','W. W. Norton & Compa','2017-05-02',10,2,0),('000-ISBN-003','Harry Potter and the Deathly Hallows','3','Bloomsbury Publishin','2007-07-14',18,3,0),('000-ISBN-004','Harry Potter and the Order of Phoenix','3','Bloomsbury Publishin','2003-06-21',18,4,0),('000-ISBN-005','Harry Potter and the Half-blood Prince','3','Bloomsbury Publishin','2005-07-16',20,5,1),('000-ISBN-006','Harry Potter and the Sorcerer\'s Stone','3','Bloomsbury Publishin','1997-06-26',18,6,0),('000-ISBN-007','Harry Potter and the Chamber of Secrets','3','Bloomsbury Publishin','1998-07-02',20,7,0),('000-ISBN-008','Harry Potter and the Prisoner of Azkaban','3','Bloomsbury Publishin','2000-07-08',20,8,0),('000-ISBN-009','No Longer Human','5','Chikuma Shobo','1948-00-00',14,9,0),('000-ISBN-010','The Hunger Games','8','Scholastic','2008-09-00',10,10,0),('000-ISBN-011','Catching Fire','8','Scholastic','2009-09-01',14,11,0),('000-ISBN-012','Mockingjay','8','Scholastic','2010-08-24',14,12,0),('000-ISBN-013',' The Ballad of Songbirds and Snakes','8','Scholastic','2020-05-19',20,13,0),('000-ISBN-014','Diary of a Wimpy Kid','9','ABRAMS','2007-04-01',10,14,0),('000-ISBN-015','Diary of a Wimpy Kid: Rodrick Rules','9','ABRAMS','2008-02-01',10,15,0),('000-ISBN-016','The Return','6','Grand Central Publis','2020-09-29',14,16,0),('000-ISBN-017','Untamed','7','The Dial Press','2020-03-10',15,17,0),('000-ISBN-018','A Random Book','7','A Random Publication','2020-01-01',15,18,0);
/*!40000 ALTER TABLE `tb_book_info` ENABLE KEYS */;
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

-- Dump completed on 2022-05-04 17:45:48
