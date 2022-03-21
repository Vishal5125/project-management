-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: project_management
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'ashokdefy@gmail.com','Ashokkumar','Kothandan'),(2,'akashpg@gmail.com','Akash','PG');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 1','INPROGRESS','2021-03-14 00:00:00.000000'),(3,'Project description Project description Project description','2022-01-01 00:00:00.000000','Project 2','NOTSTARTED','2021-02-14 00:00:00.000000'),(4,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 3','INPROGRESS','2021-03-14 00:00:00.000000'),(5,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 4','NOTSTARTED','2021-03-14 00:00:00.000000'),(6,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 5','NOTSTARTED','2021-03-14 00:00:00.000000'),(7,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 6','INPROGRESS','2021-03-14 00:00:00.000000'),(8,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 7','INPROGRESS','2021-03-14 00:00:00.000000'),(9,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 8','NOTSTARTED','2021-03-14 00:00:00.000000'),(10,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 9','INPROGRESS','2021-03-14 00:00:00.000000'),(11,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 10','INPROGRESS','2021-03-14 00:00:00.000000'),(12,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 11','NOTSTARTED','2021-03-14 00:00:00.000000'),(13,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 12','INPROGRESS','2021-03-14 00:00:00.000000'),(14,'Project description Project description Project description','2022-03-14 00:00:00.000000','Project 13','NOTSTARTED','2021-03-14 00:00:00.000000'),(15,'Project description Project description Project description','2021-05-01 00:00:00.000000','Project 14','INPROGRESS','2020-03-01 00:00:00.000000');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_employee`
--

DROP TABLE IF EXISTS `project_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_employee` (
  `project_id` bigint NOT NULL,
  `employee_id` bigint NOT NULL,
  KEY `FKn5yqs0xm3rmsg62n84ccyk4k0` (`employee_id`),
  KEY `FK1907nkisp2dlsswuycpnakiv8` (`project_id`),
  CONSTRAINT `FK1907nkisp2dlsswuycpnakiv8` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKn5yqs0xm3rmsg62n84ccyk4k0` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_employee`
--

LOCK TABLES `project_employee` WRITE;
/*!40000 ALTER TABLE `project_employee` DISABLE KEYS */;
INSERT INTO `project_employee` VALUES (1,1),(3,1),(4,2),(6,1),(6,2),(15,2);
/*!40000 ALTER TABLE `project_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_accounts` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKsalhmu557mx3otyqhkqc7rcsp` (`employee_id`),
  CONSTRAINT `FKsalhmu557mx3otyqhkqc7rcsp` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` VALUES (1,'ashokdefy@gmail.com',_binary '\0','$2a$10$z66Eo8JsJxEmzKXwvHBJmuWbaJJfdJI3DzBvpdFaCZF0mIATN4cMq','ROLE_ADMIN','ashokdefy',NULL),(2,'vishal@gmail.com',_binary '','$2a$10$z66Eo8JsJxEmzKXwvHBJmuWbaJJfdJI3DzBvpdFaCZF0mIATN4cMq','ROLE_ADMIN','vishal',NULL),(3,'akashpg@gmail.com',_binary '','$2a$10$A/1kYv02ce.FUDtYPABkvOpY1pQaaI2IYQ7dlrwt66GrgMzQicY36','ROLE_EMPLOYEE','akashpg',NULL);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 21:36:40
