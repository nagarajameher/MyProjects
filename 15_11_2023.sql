CREATE DATABASE  IF NOT EXISTS `badminton` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `badminton`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: badminton
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `tournament_id` int NOT NULL,
  `round_no` int NOT NULL,
  `game_no` int NOT NULL,
  `player_1` int DEFAULT '0',
  `player_2` int DEFAULT '0',
  `winner` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (2,1,1,1,4,1),(2,1,2,2,0,2),(1,1,1,3,1,NULL),(3,1,1,2,1,NULL),(3,1,2,4,0,4),(5,1,2,4,2,NULL),(5,1,1,3,8,NULL),(5,1,3,7,0,7),(5,1,4,1,0,1),(4,1,2,3,2,NULL),(4,1,1,4,1,NULL),(4,1,3,8,0,8),(4,1,4,7,0,7),(6,1,1,3,2,2),(6,1,2,7,4,7),(6,1,3,1,0,1),(6,1,4,8,0,8),(6,2,1,2,7,2),(6,2,2,1,8,1),(6,3,1,2,1,1);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered` (
  `player` int NOT NULL,
  `tournament` int NOT NULL,
  `status` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`player`,`tournament`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES (1,1,NULL,'2023-11-13 00:47:52'),(1,2,NULL,'2023-11-12 00:47:52'),(1,3,NULL,'2023-11-13 02:16:01'),(1,4,NULL,'2023-11-13 23:02:44'),(1,5,NULL,'2023-11-13 22:58:12'),(1,6,NULL,'2023-11-13 22:58:12'),(2,2,NULL,'2023-11-11 01:47:52'),(2,3,NULL,'2023-11-13 02:11:58'),(2,4,NULL,'2023-11-13 23:02:44'),(2,5,NULL,'2023-11-13 22:58:12'),(2,6,NULL,'2023-11-13 22:58:12'),(3,1,NULL,'2023-11-13 02:47:52'),(3,4,NULL,'2023-11-13 23:02:44'),(3,5,NULL,'2023-11-13 22:58:12'),(3,6,NULL,'2023-11-13 22:58:12'),(4,2,NULL,'2023-11-13 02:01:03'),(4,3,NULL,'2023-11-13 02:06:16'),(4,4,NULL,'2023-11-13 23:02:44'),(4,5,NULL,'2023-11-13 22:58:12'),(4,6,NULL,'2023-11-13 22:58:12'),(7,4,NULL,'2023-11-13 23:02:44'),(7,5,NULL,'2023-11-13 22:58:12'),(7,6,NULL,'2023-11-13 22:58:12'),(8,4,NULL,'2023-11-13 23:02:44'),(8,5,NULL,'2023-11-13 22:58:12'),(8,6,NULL,'2023-11-13 22:58:12');
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(256) DEFAULT NULL,
  `fee` int NOT NULL,
  `prize` int DEFAULT NULL,
  `player_limit` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `winner` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'Yonex-Sunrise All India','2022-10-20','2022-10-30','Arlington, Texas',250,1000000,32,'Yonex-Sunrise All India Junior Sub Junior (U-15 & U-17) Ranking Badminton Tournament 2023',NULL,1),(2,'Yonex-Sunrise All USA','2023-11-01','2023-11-15','Texas',350,1000000,32,'Yonex-Sunrise Junior Sub Junior (U-15 & U-17) Ranking Badminton Tournament 2023',NULL,NULL),(3,'Yonex-Sunrise World Championship','2023-11-01','2023-11-15','Texas',10000,1000000,32,'Yonex-Sunrise World Championship (U-15 & U-17) Ranking Badminton Tournament 2023',NULL,NULL),(4,'US Open 2024','2024-01-10','2024-01-21','Texas',500,10000,16,'US Open for all age groups.\n\n1st Place:- 5000$\n2nd Place:- 3000$\n3rd Place:- 2000$\n\nAll age groups and gender are allowed',8,NULL),(5,'US Open 2024 - 2','2024-02-01','2024-02-15','Texas',350,8000,8,'US Open for all age groups and genders.\n\nPrize pool will be distributed for the first 3 places.\n\n1st Place:- 4000$\n2nd Place:- 2500$\n3rd Place:- 1500$',8,NULL),(6,'US Open 2024 - 3','2024-10-10','2024-11-10','Texas',100,100000,32,'US ALL Open',8,1);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `type` varchar(256) DEFAULT 'player',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Prajwal','Nagothu','Prajwal, Nagothu','dummy@gmail.com','$2a$10$ApeR2F2d3J7fkdKZJkwH/evg.OS4zdoivkDEYHZI7iF6hXhQo/Ese',NULL,'admin','2023-11-14 19:00:41'),(2,'Nagaraj','Meher','Nagaraj, Meher','dummy1@gmail.com','$2a$10$ApeR2F2d3J7fkdKZJkwH/evg.OS4zdoivkDEYHZI7iF6hXhQo/Ese',NULL,'player','2023-11-14 19:00:41'),(3,'Roshan','Ratan','Roshan, Ratan','dummy2@gmail.com','$2a$10$ApeR2F2d3J7fkdKZJkwH/evg.OS4zdoivkDEYHZI7iF6hXhQo/Ese',NULL,'player','2023-11-14 19:00:41'),(4,'Rakesh','Aduri','Rakesh, Aduri','rakesh@gmail.com','$2a$10$ApeR2F2d3J7fkdKZJkwH/evg.OS4zdoivkDEYHZI7iF6hXhQo/Ese','male','player','2023-11-14 19:00:41'),(7,'Logan','Paul','Logan, Paul','logan@gmail.com','$2a$10$IaLuYoXmHtvd2OtO0fMSVOPDGgnt2wJS/zS8TGr889QhVkN914Gdy','male','player','2023-11-14 19:00:41'),(9,'Kenny','Lera','Kenny, Lera','kenny@gmail.com','$2a$10$hEG69FHqrOdul0m7ipAZBee1fnI7/wDNQKasekwA4toUpqTtAg/sG','male','player','2023-11-14 19:00:41'),(10,'Maria','Lane','Maria, Lane','maria@gmail.com','$2a$10$EOUBKXd1J6SRfw33cnVUwucb5/edGLOFs4OHeiaHedLZPZtnkvNs.','female','player','2023-11-14 19:44:37'),(12,'Louis','Jane','Louis, Jane','louis@gmail.com','$2a$10$aLH.moTRsYbXMNc1UtKJ4O3lrkoaMjHRHZru9j9gcYoUjgN6RPESK','female','organiser','2023-11-14 20:03:17');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 23:16:40
