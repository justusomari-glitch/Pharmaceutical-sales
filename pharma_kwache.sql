CREATE DATABASE  IF NOT EXISTS `justus_phamproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `justus_phamproject`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: justus_phamproject
-- ------------------------------------------------------
-- Server version	8.0.44

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
  `customer_id` int DEFAULT NULL,
  `customer_name` text,
  `region` text,
  `customer_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Customer_1','Central','Pharmacy'),(2,'Customer_2','Rift Valley','Hospital'),(3,'Customer_3','Coast','Pharmacy'),(4,'Customer_4','Nairobi','Hospital'),(5,'Customer_5','Nairobi','Hospital'),(6,'Customer_6','Eastern','Hospital'),(7,'Customer_7','Eastern','Pharmacy'),(8,'Customer_8','Central','Hospital'),(9,'Customer_9','Western','Pharmacy'),(10,'Customer_10','Central','Pharmacy'),(11,'Customer_11','Central','Pharmacy'),(12,'Customer_12','Central','Hospital'),(13,'Customer_13','Eastern','Hospital'),(14,'Customer_14','Eastern','Pharmacy'),(15,'Customer_15','Eastern','Pharmacy'),(16,'Customer_16','Nairobi','Pharmacy'),(17,'Customer_17','Western','Hospital'),(18,'Customer_18','Western','Hospital'),(19,'Customer_19','Eastern','Pharmacy'),(20,'Customer_20','Central','Hospital'),(21,'Customer_21','Central','Hospital'),(22,'Customer_22','Eastern','Pharmacy'),(23,'Customer_23','Eastern','Hospital'),(24,'Customer_24','Coast','Pharmacy'),(25,'Customer_25','Coast','Hospital'),(26,'Customer_26','Central','Pharmacy'),(27,'Customer_27','Western','Hospital'),(28,'Customer_28','Nairobi','Pharmacy'),(29,'Customer_29','Rift Valley','Hospital'),(30,'Customer_30','Nairobi','Hospital'),(31,'Customer_31','Central','Hospital'),(32,'Customer_32','Nairobi','Pharmacy'),(33,'Customer_33','Nairobi','Hospital'),(34,'Customer_34','Coast','Pharmacy'),(35,'Customer_35','Central','Hospital'),(36,'Customer_36','Rift Valley','Pharmacy'),(37,'Customer_37','Coast','Hospital'),(38,'Customer_38','Eastern','Pharmacy'),(39,'Customer_39','Western','Pharmacy'),(40,'Customer_40','Western','Pharmacy');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers2`
--

DROP TABLE IF EXISTS `customers2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers2` (
  `customer_id` int NOT NULL,
  `customer_name` text,
  `region` text,
  `customer_type` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers2`
--

LOCK TABLES `customers2` WRITE;
/*!40000 ALTER TABLE `customers2` DISABLE KEYS */;
INSERT INTO `customers2` VALUES (1,'Customer 1','Central','Pharmacy'),(2,'Customer 2','Rift Valley','Hospital'),(3,'Customer 3','Coast','Pharmacy'),(4,'Customer 4','Nairobi','Hospital'),(5,'Customer 5','Nairobi','Hospital'),(6,'Customer 6','Eastern','Hospital'),(7,'Customer 7','Eastern','Pharmacy'),(8,'Customer 8','Central','Hospital'),(9,'Customer 9','Western','Pharmacy'),(10,'Customer 10','Central','Pharmacy'),(11,'Customer 11','Central','Pharmacy'),(12,'Customer 12','Central','Hospital'),(13,'Customer 13','Eastern','Hospital'),(14,'Customer 14','Eastern','Pharmacy'),(15,'Customer 15','Eastern','Pharmacy'),(16,'Customer 16','Nairobi','Pharmacy'),(17,'Customer 17','Western','Hospital'),(18,'Customer 18','Western','Hospital'),(19,'Customer 19','Eastern','Pharmacy'),(20,'Customer 20','Central','Hospital'),(21,'Customer 21','Central','Hospital'),(22,'Customer 22','Eastern','Pharmacy'),(23,'Customer 23','Eastern','Hospital'),(24,'Customer 24','Coast','Pharmacy'),(25,'Customer 25','Coast','Hospital'),(26,'Customer 26','Central','Pharmacy'),(27,'Customer 27','Western','Hospital'),(28,'Customer 28','Nairobi','Pharmacy'),(29,'Customer 29','Rift Valley','Hospital'),(30,'Customer 30','Nairobi','Hospital'),(31,'Customer 31','Central','Hospital'),(32,'Customer 32','Nairobi','Pharmacy'),(33,'Customer 33','Nairobi','Hospital'),(34,'Customer 34','Coast','Pharmacy'),(35,'Customer 35','Central','Hospital'),(36,'Customer 36','Rift Valley','Pharmacy'),(37,'Customer 37','Coast','Hospital'),(38,'Customer 38','Eastern','Pharmacy'),(39,'Customer 39','Western','Pharmacy'),(40,'Customer 40','Western','Pharmacy');
/*!40000 ALTER TABLE `customers2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `expiry_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,8,8,115,'2025-11-26'),(2,22,1,301,'2027-04-12'),(3,15,19,112,'2025-09-29'),(4,5,23,323,'2025-11-21'),(5,15,3,463,'2025-10-24'),(6,22,3,263,'2026-05-23'),(7,18,22,248,'2026-04-29'),(8,35,5,370,'2027-04-29'),(9,37,16,124,'2027-12-04'),(10,31,26,208,'2026-04-04'),(11,7,4,337,'2026-12-07'),(12,23,14,210,'2027-01-13'),(13,47,2,344,'2027-07-23'),(14,42,4,31,'2026-11-08'),(15,47,11,409,'2026-01-11'),(16,16,7,97,'2027-03-25'),(17,29,5,216,'2026-03-28'),(18,18,15,127,'2025-12-08'),(19,29,26,441,'2027-04-08'),(20,7,2,333,'2027-03-29'),(21,1,3,474,'2027-11-02'),(22,16,6,208,'2027-02-01'),(23,31,7,442,'2026-11-06'),(24,4,6,194,'2025-09-24'),(25,25,9,474,'2027-12-03'),(26,30,10,216,'2027-09-05'),(27,47,26,284,'2027-07-31'),(28,46,16,79,'2026-04-04'),(29,19,7,495,'2025-11-20'),(30,38,24,277,'2025-11-23'),(31,48,11,29,'2025-11-12'),(32,38,16,257,'2027-03-19'),(33,11,2,491,'2027-02-24'),(34,6,28,95,'2025-12-01'),(35,39,3,345,'2026-05-20'),(36,26,4,482,'2027-04-28'),(37,16,19,304,'2025-11-01'),(38,40,3,214,'2027-07-27'),(39,38,19,267,'2026-08-11'),(40,17,7,342,'2027-09-25'),(41,21,8,135,'2026-11-01'),(42,9,22,330,'2026-07-26'),(43,30,11,475,'2027-10-31'),(44,5,1,234,'2027-06-20'),(45,37,4,37,'2027-03-26'),(46,14,17,135,'2026-02-04'),(47,23,29,35,'2026-05-30'),(48,24,10,80,'2026-12-14'),(49,35,23,154,'2027-06-10'),(50,42,17,4,'2027-08-06'),(51,36,10,477,'2027-08-02'),(52,7,29,68,'2026-06-19'),(53,8,29,54,'2027-10-22'),(54,36,5,139,'2026-07-07'),(55,39,7,367,'2026-09-08'),(56,14,22,324,'2026-06-19'),(57,33,16,128,'2025-11-13'),(58,6,21,216,'2026-07-02'),(59,3,1,170,'2027-11-20'),(60,9,21,134,'2026-03-06'),(61,48,15,282,'2027-09-14'),(62,28,18,4,'2026-01-14'),(63,5,29,353,'2026-02-21'),(64,35,2,427,'2026-10-05'),(65,38,18,75,'2026-12-06'),(66,9,2,157,'2026-09-30'),(67,3,29,183,'2026-04-25'),(68,44,8,341,'2026-01-05'),(69,23,25,286,'2026-11-12'),(70,40,24,79,'2026-05-22'),(71,11,26,415,'2026-03-22'),(72,27,1,91,'2027-10-16'),(73,22,26,476,'2026-11-17'),(74,43,28,376,'2026-06-03'),(75,18,6,403,'2027-09-10'),(76,7,13,446,'2025-10-31'),(77,31,8,102,'2027-01-06'),(78,23,10,420,'2026-05-13'),(79,15,1,337,'2026-04-07'),(80,26,11,142,'2025-12-02'),(81,50,9,179,'2027-07-10'),(82,33,13,347,'2027-03-25'),(83,22,1,59,'2026-06-16'),(84,12,19,492,'2026-06-20'),(85,3,4,305,'2026-12-10'),(86,23,24,402,'2026-08-09'),(87,28,20,261,'2026-01-18'),(88,25,29,295,'2026-04-04'),(89,17,2,362,'2026-12-12'),(90,1,17,473,'2027-03-27'),(91,44,24,481,'2027-10-21'),(92,48,22,100,'2026-09-29'),(93,28,3,485,'2027-08-03'),(94,22,20,160,'2027-08-02'),(95,8,24,460,'2026-07-26'),(96,33,10,341,'2026-11-14'),(97,21,13,356,'2026-07-21'),(98,36,5,98,'2026-11-26'),(99,43,13,346,'2027-10-28'),(100,12,20,291,'2026-07-27'),(101,26,18,426,'2025-09-22'),(102,20,10,107,'2026-12-06'),(103,38,20,335,'2026-08-17'),(104,30,15,226,'2027-08-14'),(105,14,17,242,'2027-10-15'),(106,11,22,43,'2026-07-09'),(107,33,22,324,'2027-06-18'),(108,22,3,419,'2027-10-31'),(109,16,22,158,'2026-05-10'),(110,13,5,12,'2025-11-08'),(111,16,16,312,'2027-11-17'),(112,5,15,212,'2027-06-28'),(113,37,7,367,'2027-09-05'),(114,25,16,204,'2026-05-29'),(115,10,21,352,'2025-09-27'),(116,49,28,394,'2026-01-09'),(117,50,14,112,'2026-03-21'),(118,45,17,237,'2025-11-12'),(119,36,8,469,'2026-01-24'),(120,30,5,410,'2027-01-10'),(121,43,17,286,'2027-05-24'),(122,21,25,456,'2026-12-19'),(123,40,27,368,'2027-02-20'),(124,28,27,464,'2027-04-06'),(125,29,29,81,'2027-10-23'),(126,31,15,132,'2027-10-31'),(127,16,27,326,'2026-07-02'),(128,50,25,266,'2027-01-31'),(129,41,8,140,'2026-12-16'),(130,5,23,146,'2026-05-20'),(131,18,11,163,'2027-03-29'),(132,6,5,77,'2026-05-16'),(133,25,23,78,'2027-09-15'),(134,14,3,212,'2026-11-13'),(135,22,18,238,'2026-11-21'),(136,4,7,426,'2026-11-26'),(137,25,29,394,'2027-05-13'),(138,45,1,438,'2027-11-14'),(139,37,13,244,'2025-09-28'),(140,23,10,385,'2026-10-26'),(141,27,18,382,'2027-10-14'),(142,35,26,308,'2026-05-05'),(143,32,8,139,'2026-12-12'),(144,32,1,199,'2026-09-01'),(145,43,22,408,'2026-11-10'),(146,47,6,430,'2027-01-13'),(147,9,20,273,'2025-10-19'),(148,26,19,288,'2027-08-01'),(149,2,3,329,'2026-12-04'),(150,9,28,236,'2026-03-27'),(151,4,9,194,'2026-08-23'),(152,14,15,167,'2026-09-02'),(153,49,29,194,'2026-07-03'),(154,49,27,215,'2026-06-07'),(155,6,16,9,'2027-10-29'),(156,35,2,487,'2026-09-15'),(157,15,21,35,'2027-11-30'),(158,42,2,386,'2025-10-23'),(159,16,7,429,'2025-10-12'),(160,40,5,122,'2026-01-29'),(161,31,22,58,'2027-04-22'),(162,14,15,358,'2026-06-11'),(163,50,12,85,'2027-06-04'),(164,39,24,367,'2026-01-17'),(165,50,27,83,'2026-08-06'),(166,7,19,13,'2026-08-07'),(167,37,22,464,'2026-10-11'),(168,26,23,101,'2025-12-08'),(169,38,23,425,'2027-06-26'),(170,16,4,356,'2027-11-22'),(171,20,28,350,'2027-05-29'),(172,8,26,289,'2027-12-02'),(173,3,12,272,'2026-12-04'),(174,43,12,35,'2027-02-22'),(175,42,11,6,'2026-11-26'),(176,32,4,221,'2026-09-27'),(177,41,29,424,'2027-01-05'),(178,46,5,222,'2026-03-21'),(179,47,17,494,'2027-07-20'),(180,18,20,413,'2027-03-27'),(181,50,16,238,'2026-12-12'),(182,47,19,137,'2026-08-18'),(183,16,27,478,'2025-12-19'),(184,18,29,230,'2026-05-29'),(185,49,15,291,'2027-06-08'),(186,43,13,172,'2025-10-21'),(187,32,28,166,'2026-03-27'),(188,32,7,181,'2026-06-13'),(189,22,9,450,'2027-05-25'),(190,45,29,141,'2027-04-14'),(191,1,17,485,'2026-04-05'),(192,6,8,368,'2026-11-12'),(193,32,18,388,'2026-05-26'),(194,45,16,330,'2027-09-20'),(195,32,15,405,'2025-10-09'),(196,6,10,113,'2026-11-10'),(197,45,8,156,'2027-08-02'),(198,38,12,242,'2027-04-11'),(199,34,12,217,'2027-10-25'),(200,36,11,180,'2027-09-11');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory2`
--

DROP TABLE IF EXISTS `inventory2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory2` (
  `inventory_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `expiry_date` text,
  PRIMARY KEY (`inventory_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `inventory2_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products2` (`product_id`),
  CONSTRAINT `inventory2_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers2` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory2`
--

LOCK TABLES `inventory2` WRITE;
/*!40000 ALTER TABLE `inventory2` DISABLE KEYS */;
INSERT INTO `inventory2` VALUES (1,8,8,115,'2025-11-26'),(2,22,1,301,'2027-04-12'),(3,15,19,112,'2025-09-29'),(4,5,23,323,'2025-11-21'),(5,15,3,463,'2025-10-24'),(6,22,3,263,'2026-05-23'),(7,18,22,248,'2026-04-29'),(8,35,5,370,'2027-04-29'),(9,37,16,124,'2027-12-04'),(10,31,26,208,'2026-04-04'),(11,7,4,337,'2026-12-07'),(12,23,14,210,'2027-01-13'),(13,47,2,344,'2027-07-23'),(14,42,4,31,'2026-11-08'),(15,47,11,409,'2026-01-11'),(16,16,7,97,'2027-03-25'),(17,29,5,216,'2026-03-28'),(18,18,15,127,'2025-12-08'),(19,29,26,441,'2027-04-08'),(20,7,2,333,'2027-03-29'),(21,1,3,474,'2027-11-02'),(22,16,6,208,'2027-02-01'),(23,31,7,442,'2026-11-06'),(24,4,6,194,'2025-09-24'),(25,25,9,474,'2027-12-03'),(26,30,10,216,'2027-09-05'),(27,47,26,284,'2027-07-31'),(28,46,16,79,'2026-04-04'),(29,19,7,495,'2025-11-20'),(30,38,24,277,'2025-11-23'),(31,48,11,29,'2025-11-12'),(32,38,16,257,'2027-03-19'),(33,11,2,491,'2027-02-24'),(34,6,28,95,'2025-12-01'),(35,39,3,345,'2026-05-20'),(36,26,4,482,'2027-04-28'),(37,16,19,304,'2025-11-01'),(38,40,3,214,'2027-07-27'),(39,38,19,267,'2026-08-11'),(40,17,7,342,'2027-09-25'),(41,21,8,135,'2026-11-01'),(42,9,22,330,'2026-07-26'),(43,30,11,475,'2027-10-31'),(44,5,1,234,'2027-06-20'),(45,37,4,37,'2027-03-26'),(46,14,17,135,'2026-02-04'),(47,23,29,35,'2026-05-30'),(48,24,10,80,'2026-12-14'),(49,35,23,154,'2027-06-10'),(50,42,17,4,'2027-08-06'),(51,36,10,477,'2027-08-02'),(52,7,29,68,'2026-06-19'),(53,8,29,54,'2027-10-22'),(54,36,5,139,'2026-07-07'),(55,39,7,367,'2026-09-08'),(56,14,22,324,'2026-06-19'),(57,33,16,128,'2025-11-13'),(58,6,21,216,'2026-07-02'),(59,3,1,170,'2027-11-20'),(60,9,21,134,'2026-03-06'),(61,48,15,282,'2027-09-14'),(62,28,18,4,'2026-01-14'),(63,5,29,353,'2026-02-21'),(64,35,2,427,'2026-10-05'),(65,38,18,75,'2026-12-06'),(66,9,2,157,'2026-09-30'),(67,3,29,183,'2026-04-25'),(68,44,8,341,'2026-01-05'),(69,23,25,286,'2026-11-12'),(70,40,24,79,'2026-05-22'),(71,11,26,415,'2026-03-22'),(72,27,1,91,'2027-10-16'),(73,22,26,476,'2026-11-17'),(74,43,28,376,'2026-06-03'),(75,18,6,403,'2027-09-10'),(76,7,13,446,'2025-10-31'),(77,31,8,102,'2027-01-06'),(78,23,10,420,'2026-05-13'),(79,15,1,337,'2026-04-07'),(80,26,11,142,'2025-12-02'),(81,50,9,179,'2027-07-10'),(82,33,13,347,'2027-03-25'),(83,22,1,59,'2026-06-16'),(84,12,19,492,'2026-06-20'),(85,3,4,305,'2026-12-10'),(86,23,24,402,'2026-08-09'),(87,28,20,261,'2026-01-18'),(88,25,29,295,'2026-04-04'),(89,17,2,362,'2026-12-12'),(90,1,17,473,'2027-03-27'),(91,44,24,481,'2027-10-21'),(92,48,22,100,'2026-09-29'),(93,28,3,485,'2027-08-03'),(94,22,20,160,'2027-08-02'),(95,8,24,460,'2026-07-26'),(96,33,10,341,'2026-11-14'),(97,21,13,356,'2026-07-21'),(98,36,5,98,'2026-11-26'),(99,43,13,346,'2027-10-28'),(100,12,20,291,'2026-07-27'),(101,26,18,426,'2025-09-22'),(102,20,10,107,'2026-12-06'),(103,38,20,335,'2026-08-17'),(104,30,15,226,'2027-08-14'),(105,14,17,242,'2027-10-15'),(106,11,22,43,'2026-07-09'),(107,33,22,324,'2027-06-18'),(108,22,3,419,'2027-10-31'),(109,16,22,158,'2026-05-10'),(110,13,5,12,'2025-11-08'),(111,16,16,312,'2027-11-17'),(112,5,15,212,'2027-06-28'),(113,37,7,367,'2027-09-05'),(114,25,16,204,'2026-05-29'),(115,10,21,352,'2025-09-27'),(116,49,28,394,'2026-01-09'),(117,50,14,112,'2026-03-21'),(118,45,17,237,'2025-11-12'),(119,36,8,469,'2026-01-24'),(120,30,5,410,'2027-01-10'),(121,43,17,286,'2027-05-24'),(122,21,25,456,'2026-12-19'),(123,40,27,368,'2027-02-20'),(124,28,27,464,'2027-04-06'),(125,29,29,81,'2027-10-23'),(126,31,15,132,'2027-10-31'),(127,16,27,326,'2026-07-02'),(128,50,25,266,'2027-01-31'),(129,41,8,140,'2026-12-16'),(130,5,23,146,'2026-05-20'),(131,18,11,163,'2027-03-29'),(132,6,5,77,'2026-05-16'),(133,25,23,78,'2027-09-15'),(134,14,3,212,'2026-11-13'),(135,22,18,238,'2026-11-21'),(136,4,7,426,'2026-11-26'),(137,25,29,394,'2027-05-13'),(138,45,1,438,'2027-11-14'),(139,37,13,244,'2025-09-28'),(140,23,10,385,'2026-10-26'),(141,27,18,382,'2027-10-14'),(142,35,26,308,'2026-05-05'),(143,32,8,139,'2026-12-12'),(144,32,1,199,'2026-09-01'),(145,43,22,408,'2026-11-10'),(146,47,6,430,'2027-01-13'),(147,9,20,273,'2025-10-19'),(148,26,19,288,'2027-08-01'),(149,2,3,329,'2026-12-04'),(150,9,28,236,'2026-03-27'),(151,4,9,194,'2026-08-23'),(152,14,15,167,'2026-09-02'),(153,49,29,194,'2026-07-03'),(154,49,27,215,'2026-06-07'),(155,6,16,9,'2027-10-29'),(156,35,2,487,'2026-09-15'),(157,15,21,35,'2027-11-30'),(158,42,2,386,'2025-10-23'),(159,16,7,429,'2025-10-12'),(160,40,5,122,'2026-01-29'),(161,31,22,58,'2027-04-22'),(162,14,15,358,'2026-06-11'),(163,50,12,85,'2027-06-04'),(164,39,24,367,'2026-01-17'),(165,50,27,83,'2026-08-06'),(166,7,19,13,'2026-08-07'),(167,37,22,464,'2026-10-11'),(168,26,23,101,'2025-12-08'),(169,38,23,425,'2027-06-26'),(170,16,4,356,'2027-11-22'),(171,20,28,350,'2027-05-29'),(172,8,26,289,'2027-12-02'),(173,3,12,272,'2026-12-04'),(174,43,12,35,'2027-02-22'),(175,42,11,6,'2026-11-26'),(176,32,4,221,'2026-09-27'),(177,41,29,424,'2027-01-05'),(178,46,5,222,'2026-03-21'),(179,47,17,494,'2027-07-20'),(180,18,20,413,'2027-03-27'),(181,50,16,238,'2026-12-12'),(182,47,19,137,'2026-08-18'),(183,16,27,478,'2025-12-19'),(184,18,29,230,'2026-05-29'),(185,49,15,291,'2027-06-08'),(186,43,13,172,'2025-10-21'),(187,32,28,166,'2026-03-27'),(188,32,7,181,'2026-06-13'),(189,22,9,450,'2027-05-25'),(190,45,29,141,'2027-04-14'),(191,1,17,485,'2026-04-05'),(192,6,8,368,'2026-11-12'),(193,32,18,388,'2026-05-26'),(194,45,16,330,'2027-09-20'),(195,32,15,405,'2025-10-09'),(196,6,10,113,'2026-11-10'),(197,45,8,156,'2027-08-02'),(198,38,12,242,'2027-04-11'),(199,34,12,217,'2027-10-25'),(200,36,11,180,'2027-09-11');
/*!40000 ALTER TABLE `inventory2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `product_name` text,
  `category` text,
  `unit_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Drug_1','Supplement',12),(2,'Drug_2','Antibiotic',22),(3,'Drug_3','Analgesic',19),(4,'Drug_4','Analgesic',11),(5,'Drug_5','Supplement',39),(6,'Drug_6','Antibiotic',42),(7,'Drug_7','Antihypertensive',7),(8,'Drug_8','Antibiotic',10),(9,'Drug_9','Analgesic',19),(10,'Drug_10','Vaccine',43),(11,'Drug_11','Antibiotic',40),(12,'Drug_12','Analgesic',50),(13,'Drug_13','Supplement',49),(14,'Drug_14','Vaccine',31),(15,'Drug_15','Analgesic',33),(16,'Drug_16','Vaccine',22),(17,'Drug_17','Antibiotic',15),(18,'Drug_18','Supplement',32),(19,'Drug_19','Antimalarial',22),(20,'Drug_20','Analgesic',18),(21,'Drug_21','Antimalarial',11),(22,'Drug_22','Antibiotic',29),(23,'Drug_23','Antibiotic',27),(24,'Drug_24','Antimalarial',43),(25,'Drug_25','Antimalarial',7),(26,'Drug_26','Supplement',34),(27,'Drug_27','Vaccine',12),(28,'Drug_28','Antihypertensive',10),(29,'Drug_29','Vaccine',23),(30,'Drug_30','Supplement',44),(31,'Drug_31','Antimalarial',41),(32,'Drug_32','Analgesic',50),(33,'Drug_33','Antibiotic',7),(34,'Drug_34','Supplement',19),(35,'Drug_35','Antimalarial',10),(36,'Drug_36','Analgesic',11),(37,'Drug_37','Antihypertensive',22),(38,'Drug_38','Antihypertensive',45),(39,'Drug_39','Antimalarial',15),(40,'Drug_40','Antimalarial',27),(41,'Drug_41','Analgesic',47),(42,'Drug_42','Antimalarial',49),(43,'Drug_43','Supplement',46),(44,'Drug_44','Antibiotic',43),(45,'Drug_45','Supplement',15),(46,'Drug_46','Vaccine',20),(47,'Drug_47','Analgesic',34),(48,'Drug_48','Antihypertensive',22),(49,'Drug_49','Supplement',49),(50,'Drug_50','Vaccine',19);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products2`
--

DROP TABLE IF EXISTS `products2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products2` (
  `product_id` int NOT NULL,
  `product_name` text,
  `category` text,
  `unit_price` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products2`
--

LOCK TABLES `products2` WRITE;
/*!40000 ALTER TABLE `products2` DISABLE KEYS */;
INSERT INTO `products2` VALUES (1,'Drug 1','Supplement',12),(2,'Drug 2','Antibiotic',22),(3,'Drug 3','Analgesic',19),(4,'Drug 4','Analgesic',11),(5,'Drug 5','Supplement',39),(6,'Drug 6','Antibiotic',42),(7,'Drug 7','Antihypertensive',7),(8,'Drug 8','Antibiotic',10),(9,'Drug 9','Analgesic',19),(10,'Drug 10','Vaccine',43),(11,'Drug 11','Antibiotic',40),(12,'Drug 12','Analgesic',50),(13,'Drug 13','Supplement',49),(14,'Drug 14','Vaccine',31),(15,'Drug 15','Analgesic',33),(16,'Drug 16','Vaccine',22),(17,'Drug 17','Antibiotic',15),(18,'Drug 18','Supplement',32),(19,'Drug 19','Antimalarial',22),(20,'Drug 20','Analgesic',18),(21,'Drug 21','Antimalarial',11),(22,'Drug 22','Antibiotic',29),(23,'Drug 23','Antibiotic',27),(24,'Drug 24','Antimalarial',43),(25,'Drug 25','Antimalarial',7),(26,'Drug 26','Supplement',34),(27,'Drug 27','Vaccine',12),(28,'Drug 28','Antihypertensive',10),(29,'Drug 29','Vaccine',23),(30,'Drug 30','Supplement',44),(31,'Drug 31','Antimalarial',41),(32,'Drug 32','Analgesic',50),(33,'Drug 33','Antibiotic',7),(34,'Drug 34','Supplement',19),(35,'Drug 35','Antimalarial',10),(36,'Drug 36','Analgesic',11),(37,'Drug 37','Antihypertensive',22),(38,'Drug 38','Antihypertensive',45),(39,'Drug 39','Antimalarial',15),(40,'Drug 40','Antimalarial',27),(41,'Drug 41','Analgesic',47),(42,'Drug 42','Antimalarial',49),(43,'Drug 43','Supplement',46),(44,'Drug 44','Antibiotic',43),(45,'Drug 45','Supplement',15),(46,'Drug 46','Vaccine',20),(47,'Drug 47','Analgesic',34),(48,'Drug 48','Antihypertensive',22),(49,'Drug 49','Supplement',49),(50,'Drug 50','Vaccine',19);
/*!40000 ALTER TABLE `products2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_issues`
--

DROP TABLE IF EXISTS `quality_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quality_issues` (
  `issue_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `issue_type` text,
  `reported_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_issues`
--

LOCK TABLES `quality_issues` WRITE;
/*!40000 ALTER TABLE `quality_issues` DISABLE KEYS */;
INSERT INTO `quality_issues` VALUES (1,20,'Damaged','2025-10-12'),(2,49,'Recall','2025-07-26'),(3,21,'Expired','2025-12-18'),(4,32,'Temperature Breach','2025-09-23'),(5,9,'Temperature Breach','2025-03-24'),(6,46,'Damaged','2025-04-09'),(7,36,'Recall','2025-11-15'),(8,26,'Expired','2025-05-12'),(9,2,'Temperature Breach','2025-11-12'),(10,21,'Temperature Breach','2025-03-03'),(11,26,'Temperature Breach','2025-07-26'),(12,8,'Temperature Breach','2025-12-11'),(13,21,'Damaged','2025-02-08'),(14,30,'Recall','2025-11-06'),(15,28,'Expired','2025-08-19'),(16,28,'Temperature Breach','2025-03-28'),(17,6,'Temperature Breach','2025-07-16'),(18,48,'Recall','2025-08-30'),(19,22,'Damaged','2025-11-12'),(20,33,'Expired','2025-03-25'),(21,33,'Damaged','2025-06-26'),(22,23,'Damaged','2025-08-23'),(23,7,'Damaged','2025-08-12'),(24,13,'Damaged','2025-02-16'),(25,10,'Expired','2025-09-22'),(26,50,'Temperature Breach','2025-04-28'),(27,49,'Temperature Breach','2025-01-07'),(28,37,'Recall','2025-02-03'),(29,21,'Damaged','2025-05-10'),(30,5,'Temperature Breach','2025-05-09'),(31,41,'Recall','2025-08-03'),(32,38,'Expired','2025-06-24'),(33,33,'Expired','2025-07-16'),(34,30,'Temperature Breach','2025-12-02'),(35,4,'Recall','2025-07-28'),(36,5,'Expired','2025-02-10'),(37,39,'Temperature Breach','2025-04-29'),(38,38,'Expired','2025-05-05'),(39,37,'Damaged','2025-07-10'),(40,39,'Temperature Breach','2025-04-09'),(41,10,'Expired','2025-05-05'),(42,7,'Recall','2024-12-21'),(43,6,'Damaged','2025-12-01'),(44,16,'Temperature Breach','2025-05-11'),(45,34,'Damaged','2025-06-18'),(46,24,'Recall','2025-06-06'),(47,27,'Recall','2025-01-08'),(48,39,'Expired','2025-02-01'),(49,42,'Recall','2025-11-18'),(50,22,'Expired','2025-03-11'),(51,44,'Temperature Breach','2025-07-29'),(52,17,'Damaged','2025-07-04'),(53,6,'Damaged','2025-06-25'),(54,20,'Temperature Breach','2025-10-16'),(55,39,'Expired','2025-07-16'),(56,36,'Temperature Breach','2025-01-26'),(57,22,'Damaged','2025-01-12'),(58,45,'Expired','2025-01-25'),(59,43,'Temperature Breach','2025-04-05'),(60,24,'Expired','2025-06-19'),(61,20,'Damaged','2025-09-03'),(62,22,'Temperature Breach','2025-09-14'),(63,15,'Damaged','2025-10-03'),(64,5,'Recall','2025-10-31'),(65,33,'Expired','2025-01-17'),(66,22,'Damaged','2025-02-19'),(67,25,'Damaged','2025-09-29'),(68,12,'Damaged','2025-05-11'),(69,3,'Temperature Breach','2025-06-18'),(70,44,'Damaged','2025-05-08'),(71,40,'Recall','2025-05-06'),(72,15,'Damaged','2025-07-16'),(73,31,'Damaged','2025-06-16'),(74,44,'Temperature Breach','2025-04-29'),(75,50,'Recall','2025-06-09'),(76,33,'Temperature Breach','2025-09-30'),(77,13,'Damaged','2025-08-15'),(78,4,'Temperature Breach','2025-06-14'),(79,36,'Expired','2024-12-22'),(80,34,'Expired','2025-07-29'),(81,6,'Damaged','2025-08-04'),(82,29,'Damaged','2025-05-12'),(83,6,'Damaged','2025-05-05'),(84,23,'Expired','2025-05-23'),(85,4,'Temperature Breach','2025-04-08'),(86,24,'Damaged','2025-06-07'),(87,6,'Recall','2025-08-29'),(88,2,'Recall','2025-11-01'),(89,46,'Recall','2025-10-08'),(90,9,'Expired','2025-07-28'),(91,31,'Damaged','2024-12-25'),(92,31,'Temperature Breach','2025-02-09'),(93,1,'Expired','2025-12-12'),(94,17,'Damaged','2025-10-06'),(95,36,'Temperature Breach','2025-10-26'),(96,50,'Recall','2025-08-22'),(97,20,'Expired','2025-11-27'),(98,16,'Temperature Breach','2025-01-28'),(99,40,'Temperature Breach','2025-11-19'),(100,8,'Temperature Breach','2025-02-19'),(101,35,'Expired','2025-02-01'),(102,33,'Damaged','2025-10-09'),(103,19,'Temperature Breach','2025-12-21'),(104,40,'Recall','2025-08-20'),(105,37,'Temperature Breach','2025-09-17'),(106,43,'Expired','2025-03-28'),(107,24,'Expired','2025-03-27'),(108,35,'Expired','2025-06-05'),(109,31,'Expired','2025-01-30'),(110,25,'Recall','2025-08-14'),(111,48,'Expired','2025-06-22'),(112,5,'Recall','2025-08-20'),(113,47,'Expired','2025-02-27'),(114,48,'Recall','2025-10-14'),(115,3,'Recall','2025-03-17'),(116,22,'Damaged','2025-01-05'),(117,30,'Temperature Breach','2025-02-01'),(118,12,'Damaged','2025-11-19'),(119,46,'Temperature Breach','2025-12-03'),(120,19,'Damaged','2025-11-29'),(121,13,'Expired','2025-07-13'),(122,20,'Temperature Breach','2025-03-18'),(123,31,'Recall','2025-12-03'),(124,49,'Damaged','2025-07-28'),(125,23,'Expired','2025-01-20'),(126,22,'Recall','2025-10-19'),(127,24,'Temperature Breach','2025-05-31'),(128,48,'Temperature Breach','2025-06-07'),(129,22,'Damaged','2025-04-11'),(130,45,'Temperature Breach','2025-06-16'),(131,34,'Recall','2025-11-09'),(132,47,'Temperature Breach','2025-11-11'),(133,28,'Damaged','2025-03-17'),(134,19,'Recall','2025-10-30'),(135,6,'Recall','2025-01-17'),(136,19,'Recall','2025-05-07'),(137,39,'Temperature Breach','2025-09-27'),(138,45,'Temperature Breach','2025-06-25'),(139,29,'Expired','2025-06-24'),(140,40,'Temperature Breach','2025-08-03'),(141,41,'Expired','2025-11-13'),(142,43,'Temperature Breach','2025-06-18'),(143,33,'Damaged','2025-12-06'),(144,10,'Temperature Breach','2025-12-04'),(145,9,'Expired','2025-08-23'),(146,50,'Recall','2025-06-19'),(147,25,'Expired','2025-02-15'),(148,10,'Temperature Breach','2025-06-15'),(149,24,'Temperature Breach','2025-11-12'),(150,37,'Damaged','2025-03-25'),(151,24,'Temperature Breach','2025-07-14'),(152,42,'Recall','2025-08-16'),(153,8,'Expired','2025-09-17'),(154,32,'Temperature Breach','2025-03-09'),(155,8,'Recall','2025-08-10'),(156,46,'Temperature Breach','2025-09-03'),(157,40,'Recall','2024-12-31'),(158,32,'Damaged','2025-10-20'),(159,9,'Expired','2025-05-04'),(160,12,'Temperature Breach','2025-11-07'),(161,44,'Recall','2025-01-14'),(162,23,'Expired','2025-03-15'),(163,35,'Recall','2025-07-21'),(164,11,'Damaged','2025-06-19'),(165,33,'Damaged','2025-10-20'),(166,13,'Damaged','2025-08-22'),(167,32,'Expired','2025-06-20'),(168,36,'Recall','2025-04-26'),(169,36,'Damaged','2025-02-11'),(170,6,'Expired','2025-07-16'),(171,26,'Temperature Breach','2025-03-27'),(172,27,'Temperature Breach','2025-03-02'),(173,5,'Damaged','2025-07-12'),(174,42,'Expired','2025-05-05'),(175,30,'Recall','2025-10-17'),(176,50,'Damaged','2025-10-16'),(177,28,'Expired','2025-10-19'),(178,34,'Damaged','2025-07-19'),(179,11,'Damaged','2025-07-09'),(180,46,'Damaged','2025-06-27'),(181,34,'Recall','2025-11-11'),(182,17,'Damaged','2025-01-30'),(183,36,'Recall','2025-10-18'),(184,41,'Recall','2025-02-10'),(185,35,'Expired','2025-04-08'),(186,42,'Damaged','2025-02-21'),(187,38,'Damaged','2025-09-25'),(188,43,'Recall','2025-03-08'),(189,3,'Expired','2025-11-10'),(190,3,'Recall','2025-01-22'),(191,14,'Temperature Breach','2025-02-08'),(192,41,'Expired','2025-04-11'),(193,41,'Recall','2025-01-27'),(194,20,'Temperature Breach','2025-08-18'),(195,44,'Temperature Breach','2025-07-22'),(196,30,'Expired','2025-01-03'),(197,4,'Damaged','2025-05-10'),(198,27,'Temperature Breach','2025-04-28'),(199,14,'Recall','2025-02-14'),(200,10,'Recall','2025-07-11');
/*!40000 ALTER TABLE `quality_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_issues2`
--

DROP TABLE IF EXISTS `quality_issues2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quality_issues2` (
  `issue_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `issue_type` text,
  `reported_date` text,
  PRIMARY KEY (`issue_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `quality_issues2_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products2` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_issues2`
--

LOCK TABLES `quality_issues2` WRITE;
/*!40000 ALTER TABLE `quality_issues2` DISABLE KEYS */;
INSERT INTO `quality_issues2` VALUES (1,20,'Damaged','2025-10-12'),(2,49,'Recall','2025-07-26'),(3,21,'Expired','2025-12-18'),(4,32,'Temperature Breach','2025-09-23'),(5,9,'Temperature Breach','2025-03-24'),(6,46,'Damaged','2025-04-09'),(7,36,'Recall','2025-11-15'),(8,26,'Expired','2025-05-12'),(9,2,'Temperature Breach','2025-11-12'),(10,21,'Temperature Breach','2025-03-03'),(11,26,'Temperature Breach','2025-07-26'),(12,8,'Temperature Breach','2025-12-11'),(13,21,'Damaged','2025-02-08'),(14,30,'Recall','2025-11-06'),(15,28,'Expired','2025-08-19'),(16,28,'Temperature Breach','2025-03-28'),(17,6,'Temperature Breach','2025-07-16'),(18,48,'Recall','2025-08-30'),(19,22,'Damaged','2025-11-12'),(20,33,'Expired','2025-03-25'),(21,33,'Damaged','2025-06-26'),(22,23,'Damaged','2025-08-23'),(23,7,'Damaged','2025-08-12'),(24,13,'Damaged','2025-02-16'),(25,10,'Expired','2025-09-22'),(26,50,'Temperature Breach','2025-04-28'),(27,49,'Temperature Breach','2025-01-07'),(28,37,'Recall','2025-02-03'),(29,21,'Damaged','2025-05-10'),(30,5,'Temperature Breach','2025-05-09'),(31,41,'Recall','2025-08-03'),(32,38,'Expired','2025-06-24'),(33,33,'Expired','2025-07-16'),(34,30,'Temperature Breach','2025-12-02'),(35,4,'Recall','2025-07-28'),(36,5,'Expired','2025-02-10'),(37,39,'Temperature Breach','2025-04-29'),(38,38,'Expired','2025-05-05'),(39,37,'Damaged','2025-07-10'),(40,39,'Temperature Breach','2025-04-09'),(41,10,'Expired','2025-05-05'),(42,7,'Recall','2024-12-21'),(43,6,'Damaged','2025-12-01'),(44,16,'Temperature Breach','2025-05-11'),(45,34,'Damaged','2025-06-18'),(46,24,'Recall','2025-06-06'),(47,27,'Recall','2025-01-08'),(48,39,'Expired','2025-02-01'),(49,42,'Recall','2025-11-18'),(50,22,'Expired','2025-03-11'),(51,44,'Temperature Breach','2025-07-29'),(52,17,'Damaged','2025-07-04'),(53,6,'Damaged','2025-06-25'),(54,20,'Temperature Breach','2025-10-16'),(55,39,'Expired','2025-07-16'),(56,36,'Temperature Breach','2025-01-26'),(57,22,'Damaged','2025-01-12'),(58,45,'Expired','2025-01-25'),(59,43,'Temperature Breach','2025-04-05'),(60,24,'Expired','2025-06-19'),(61,20,'Damaged','2025-09-03'),(62,22,'Temperature Breach','2025-09-14'),(63,15,'Damaged','2025-10-03'),(64,5,'Recall','2025-10-31'),(65,33,'Expired','2025-01-17'),(66,22,'Damaged','2025-02-19'),(67,25,'Damaged','2025-09-29'),(68,12,'Damaged','2025-05-11'),(69,3,'Temperature Breach','2025-06-18'),(70,44,'Damaged','2025-05-08'),(71,40,'Recall','2025-05-06'),(72,15,'Damaged','2025-07-16'),(73,31,'Damaged','2025-06-16'),(74,44,'Temperature Breach','2025-04-29'),(75,50,'Recall','2025-06-09'),(76,33,'Temperature Breach','2025-09-30'),(77,13,'Damaged','2025-08-15'),(78,4,'Temperature Breach','2025-06-14'),(79,36,'Expired','2024-12-22'),(80,34,'Expired','2025-07-29'),(81,6,'Damaged','2025-08-04'),(82,29,'Damaged','2025-05-12'),(83,6,'Damaged','2025-05-05'),(84,23,'Expired','2025-05-23'),(85,4,'Temperature Breach','2025-04-08'),(86,24,'Damaged','2025-06-07'),(87,6,'Recall','2025-08-29'),(88,2,'Recall','2025-11-01'),(89,46,'Recall','2025-10-08'),(90,9,'Expired','2025-07-28'),(91,31,'Damaged','2024-12-25'),(92,31,'Temperature Breach','2025-02-09'),(93,1,'Expired','2025-12-12'),(94,17,'Damaged','2025-10-06'),(95,36,'Temperature Breach','2025-10-26'),(96,50,'Recall','2025-08-22'),(97,20,'Expired','2025-11-27'),(98,16,'Temperature Breach','2025-01-28'),(99,40,'Temperature Breach','2025-11-19'),(100,8,'Temperature Breach','2025-02-19'),(101,35,'Expired','2025-02-01'),(102,33,'Damaged','2025-10-09'),(103,19,'Temperature Breach','2025-12-21'),(104,40,'Recall','2025-08-20'),(105,37,'Temperature Breach','2025-09-17'),(106,43,'Expired','2025-03-28'),(107,24,'Expired','2025-03-27'),(108,35,'Expired','2025-06-05'),(109,31,'Expired','2025-01-30'),(110,25,'Recall','2025-08-14'),(111,48,'Expired','2025-06-22'),(112,5,'Recall','2025-08-20'),(113,47,'Expired','2025-02-27'),(114,48,'Recall','2025-10-14'),(115,3,'Recall','2025-03-17'),(116,22,'Damaged','2025-01-05'),(117,30,'Temperature Breach','2025-02-01'),(118,12,'Damaged','2025-11-19'),(119,46,'Temperature Breach','2025-12-03'),(120,19,'Damaged','2025-11-29'),(121,13,'Expired','2025-07-13'),(122,20,'Temperature Breach','2025-03-18'),(123,31,'Recall','2025-12-03'),(124,49,'Damaged','2025-07-28'),(125,23,'Expired','2025-01-20'),(126,22,'Recall','2025-10-19'),(127,24,'Temperature Breach','2025-05-31'),(128,48,'Temperature Breach','2025-06-07'),(129,22,'Damaged','2025-04-11'),(130,45,'Temperature Breach','2025-06-16'),(131,34,'Recall','2025-11-09'),(132,47,'Temperature Breach','2025-11-11'),(133,28,'Damaged','2025-03-17'),(134,19,'Recall','2025-10-30'),(135,6,'Recall','2025-01-17'),(136,19,'Recall','2025-05-07'),(137,39,'Temperature Breach','2025-09-27'),(138,45,'Temperature Breach','2025-06-25'),(139,29,'Expired','2025-06-24'),(140,40,'Temperature Breach','2025-08-03'),(141,41,'Expired','2025-11-13'),(142,43,'Temperature Breach','2025-06-18'),(143,33,'Damaged','2025-12-06'),(144,10,'Temperature Breach','2025-12-04'),(145,9,'Expired','2025-08-23'),(146,50,'Recall','2025-06-19'),(147,25,'Expired','2025-02-15'),(148,10,'Temperature Breach','2025-06-15'),(149,24,'Temperature Breach','2025-11-12'),(150,37,'Damaged','2025-03-25'),(151,24,'Temperature Breach','2025-07-14'),(152,42,'Recall','2025-08-16'),(153,8,'Expired','2025-09-17'),(154,32,'Temperature Breach','2025-03-09'),(155,8,'Recall','2025-08-10'),(156,46,'Temperature Breach','2025-09-03'),(157,40,'Recall','2024-12-31'),(158,32,'Damaged','2025-10-20'),(159,9,'Expired','2025-05-04'),(160,12,'Temperature Breach','2025-11-07'),(161,44,'Recall','2025-01-14'),(162,23,'Expired','2025-03-15'),(163,35,'Recall','2025-07-21'),(164,11,'Damaged','2025-06-19'),(165,33,'Damaged','2025-10-20'),(166,13,'Damaged','2025-08-22'),(167,32,'Expired','2025-06-20'),(168,36,'Recall','2025-04-26'),(169,36,'Damaged','2025-02-11'),(170,6,'Expired','2025-07-16'),(171,26,'Temperature Breach','2025-03-27'),(172,27,'Temperature Breach','2025-03-02'),(173,5,'Damaged','2025-07-12'),(174,42,'Expired','2025-05-05'),(175,30,'Recall','2025-10-17'),(176,50,'Damaged','2025-10-16'),(177,28,'Expired','2025-10-19'),(178,34,'Damaged','2025-07-19'),(179,11,'Damaged','2025-07-09'),(180,46,'Damaged','2025-06-27'),(181,34,'Recall','2025-11-11'),(182,17,'Damaged','2025-01-30'),(183,36,'Recall','2025-10-18'),(184,41,'Recall','2025-02-10'),(185,35,'Expired','2025-04-08'),(186,42,'Damaged','2025-02-21'),(187,38,'Damaged','2025-09-25'),(188,43,'Recall','2025-03-08'),(189,3,'Expired','2025-11-10'),(190,3,'Recall','2025-01-22'),(191,14,'Temperature Breach','2025-02-08'),(192,41,'Expired','2025-04-11'),(193,41,'Recall','2025-01-27'),(194,20,'Temperature Breach','2025-08-18'),(195,44,'Temperature Breach','2025-07-22'),(196,30,'Expired','2025-01-03'),(197,4,'Damaged','2025-05-10'),(198,27,'Temperature Breach','2025-04-28'),(199,14,'Recall','2025-02-14'),(200,10,'Recall','2025-07-11');
/*!40000 ALTER TABLE `quality_issues2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int DEFAULT NULL,
  `sale_date` text,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2025-05-03',18,20,17),(2,'2025-08-25',8,47,13),(3,'2025-07-13',8,48,35),(4,'2025-01-02',12,13,14),(5,'2025-04-18',18,47,38),(6,'2025-03-28',39,19,7),(7,'2025-09-13',19,15,24),(8,'2025-09-21',20,1,46),(9,'2025-03-23',9,18,3),(10,'2025-11-24',36,19,45),(11,'2025-10-18',32,7,1),(12,'2025-03-03',19,31,31),(13,'2025-05-10',22,12,4),(14,'2025-08-14',31,8,5),(15,'2025-05-30',32,5,37),(16,'2025-02-02',4,10,10),(17,'2025-03-08',20,6,16),(18,'2025-10-22',36,49,27),(19,'2025-02-14',39,40,15),(20,'2025-03-29',25,29,29),(21,'2025-07-22',38,28,20),(22,'2025-03-05',40,4,40),(23,'2025-11-01',14,41,14),(24,'2025-08-08',6,11,16),(25,'2025-09-24',36,5,11),(26,'2025-12-20',27,29,45),(27,'2025-02-20',31,19,3),(28,'2025-08-25',19,46,19),(29,'2024-12-27',30,5,44),(30,'2025-08-24',17,41,38),(31,'2025-01-17',13,28,8),(32,'2025-03-18',15,42,10),(33,'2025-08-07',10,5,4),(34,'2025-09-28',20,39,48),(35,'2025-03-05',19,29,8),(36,'2025-04-26',20,45,26),(37,'2025-08-04',33,35,32),(38,'2025-05-11',6,39,3),(39,'2025-05-14',21,39,17),(40,'2025-12-08',6,15,44),(41,'2025-03-02',38,2,49),(42,'2025-01-11',18,37,3),(43,'2025-09-23',31,34,42),(44,'2025-05-09',18,12,38),(45,'2025-05-12',32,6,31),(46,'2025-06-26',27,22,21),(47,'2025-01-12',7,11,22),(48,'2025-05-25',32,19,43),(49,'2025-05-30',36,3,30),(50,'2025-11-06',21,17,21),(51,'2025-10-23',26,33,1),(52,'2025-01-19',35,30,27),(53,'2025-11-24',13,34,24),(54,'2025-02-06',32,41,29),(55,'2025-11-25',14,18,36),(56,'2025-10-15',19,29,45),(57,'2025-04-17',8,2,41),(58,'2025-02-13',16,46,11),(59,'2025-07-15',36,1,36),(60,'2025-05-27',6,15,8),(61,'2025-04-29',8,42,10),(62,'2025-04-10',19,33,46),(63,'2025-08-04',27,31,31),(64,'2025-08-19',30,36,10),(65,'2025-06-08',13,39,33),(66,'2025-10-13',5,18,50),(67,'2025-05-23',22,33,18),(68,'2025-12-20',19,47,20),(69,'2025-02-24',38,43,32),(70,'2025-10-06',29,35,31),(71,'2025-06-28',22,36,49),(72,'2025-03-18',25,30,21),(73,'2025-09-16',16,37,25),(74,'2025-08-24',27,3,21),(75,'2025-04-23',25,25,43),(76,'2025-01-22',10,32,3),(77,'2025-10-18',33,38,22),(78,'2025-10-31',29,7,34),(79,'2025-05-02',1,47,10),(80,'2025-05-26',10,5,31),(81,'2025-08-08',22,40,45),(82,'2025-06-01',6,22,44),(83,'2025-03-23',25,21,41),(84,'2025-04-16',35,3,40),(85,'2025-11-16',16,41,44),(86,'2025-07-27',15,48,6),(87,'2025-05-13',7,49,41),(88,'2024-12-26',7,29,11),(89,'2024-12-31',20,2,3),(90,'2025-07-08',4,19,23),(91,'2025-06-13',28,10,16),(92,'2025-03-25',27,37,44),(93,'2025-09-20',11,12,6),(94,'2025-02-12',25,40,44),(95,'2025-08-20',32,38,10),(96,'2025-08-25',30,41,17),(97,'2025-04-30',17,43,1),(98,'2025-04-27',19,44,35),(99,'2025-10-02',5,29,23),(100,'2025-02-24',20,41,28),(101,'2025-01-02',17,30,20),(102,'2025-09-11',25,31,7),(103,'2025-08-22',25,37,23),(104,'2025-03-02',19,45,19),(105,'2025-12-10',26,18,1),(106,'2025-03-07',4,39,48),(107,'2025-04-11',19,50,15),(108,'2025-02-14',23,15,41),(109,'2025-09-15',40,17,44),(110,'2025-01-18',9,41,7),(111,'2025-02-03',3,20,29),(112,'2025-12-04',38,24,47),(113,'2025-10-15',6,19,21),(114,'2025-05-23',12,13,9),(115,'2025-03-20',24,34,33),(116,'2025-08-04',11,17,31),(117,'2025-07-23',22,8,30),(118,'2025-11-13',10,49,15),(119,'2025-01-09',26,36,24),(120,'2025-11-05',26,1,17),(121,'2025-03-22',8,30,24),(122,'2025-01-11',17,38,25),(123,'2025-01-29',24,7,44),(124,'2025-08-24',31,2,40),(125,'2025-03-09',21,40,15),(126,'2025-01-24',5,41,30),(127,'2024-12-28',20,42,27),(128,'2025-10-23',9,3,3),(129,'2025-07-19',32,8,7),(130,'2025-08-23',35,9,25),(131,'2025-05-03',24,43,48),(132,'2024-12-30',35,27,38),(133,'2025-10-03',27,42,7),(134,'2025-04-15',40,27,18),(135,'2025-12-05',24,14,29),(136,'2025-05-08',16,24,7),(137,'2025-01-04',24,35,42),(138,'2025-06-21',4,26,18),(139,'2025-09-15',8,30,6),(140,'2025-01-16',14,42,41),(141,'2025-02-19',2,4,22),(142,'2025-08-19',9,37,14),(143,'2025-11-16',36,14,38),(144,'2025-09-02',15,22,50),(145,'2025-10-07',39,1,18),(146,'2025-10-08',9,35,17),(147,'2025-09-23',8,43,2),(148,'2025-10-15',1,23,16),(149,'2025-02-23',21,2,12),(150,'2025-08-08',4,9,48),(151,'2025-05-20',34,8,48),(152,'2025-11-19',31,29,50),(153,'2025-06-19',33,38,7),(154,'2025-05-04',33,15,40),(155,'2025-11-29',34,20,30),(156,'2025-01-26',2,4,31),(157,'2025-05-30',28,44,7),(158,'2025-04-14',29,5,6),(159,'2025-07-10',39,10,5),(160,'2025-10-18',18,40,41),(161,'2025-02-25',36,46,21),(162,'2025-06-09',39,34,19),(163,'2025-05-03',33,39,28),(164,'2025-11-01',8,42,42),(165,'2025-03-14',14,28,29),(166,'2025-08-27',27,22,30),(167,'2025-05-31',27,47,7),(168,'2025-07-14',28,21,43),(169,'2025-08-13',24,10,44),(170,'2025-04-23',5,6,6),(171,'2025-11-04',28,7,48),(172,'2025-06-14',9,36,4),(173,'2025-02-24',36,36,22),(174,'2025-01-12',8,27,23),(175,'2025-01-15',28,47,4),(176,'2025-07-27',39,20,23),(177,'2025-10-29',37,33,14),(178,'2025-10-03',31,15,7),(179,'2025-06-25',36,24,8),(180,'2025-08-01',37,15,28),(181,'2025-03-09',40,40,44),(182,'2025-01-26',36,2,39),(183,'2025-01-19',18,2,12),(184,'2025-08-04',20,22,23),(185,'2025-12-18',12,10,37),(186,'2025-01-19',26,5,10),(187,'2025-01-31',2,6,48),(188,'2025-03-25',14,25,27),(189,'2025-05-03',22,11,24),(190,'2025-07-15',21,50,37),(191,'2025-02-19',6,4,10),(192,'2025-10-02',40,4,44),(193,'2025-11-10',18,29,43),(194,'2025-05-18',32,39,29),(195,'2025-05-23',18,14,49),(196,'2025-04-03',8,23,28),(197,'2025-10-26',19,44,44),(198,'2025-02-21',32,34,43),(199,'2025-07-17',3,15,26),(200,'2025-02-18',4,1,14);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales2`
--

DROP TABLE IF EXISTS `sales2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales2` (
  `sale_id` int NOT NULL,
  `sale_date` text,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales2_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers2` (`customer_id`),
  CONSTRAINT `sales2_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers2` (`customer_id`),
  CONSTRAINT `sales2_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products2` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales2`
--

LOCK TABLES `sales2` WRITE;
/*!40000 ALTER TABLE `sales2` DISABLE KEYS */;
INSERT INTO `sales2` VALUES (1,'2025-05-03',18,20,17),(2,'2025-08-25',8,47,13),(3,'2025-07-13',8,48,35),(4,'2025-01-02',12,13,14),(5,'2025-04-18',18,47,38),(6,'2025-03-28',39,19,7),(7,'2025-09-13',19,15,24),(8,'2025-09-21',20,1,46),(9,'2025-03-23',9,18,3),(10,'2025-11-24',36,19,45),(11,'2025-10-18',32,7,1),(12,'2025-03-03',19,31,31),(13,'2025-05-10',22,12,4),(14,'2025-08-14',31,8,5),(15,'2025-05-30',32,5,37),(16,'2025-02-02',4,10,10),(17,'2025-03-08',20,6,16),(18,'2025-10-22',36,49,27),(19,'2025-02-14',39,40,15),(20,'2025-03-29',25,29,29),(21,'2025-07-22',38,28,20),(22,'2025-03-05',40,4,40),(23,'2025-11-01',14,41,14),(24,'2025-08-08',6,11,16),(25,'2025-09-24',36,5,11),(26,'2025-12-20',27,29,45),(27,'2025-02-20',31,19,3),(28,'2025-08-25',19,46,19),(29,'2024-12-27',30,5,44),(30,'2025-08-24',17,41,38),(31,'2025-01-17',13,28,8),(32,'2025-03-18',15,42,10),(33,'2025-08-07',10,5,4),(34,'2025-09-28',20,39,48),(35,'2025-03-05',19,29,8),(36,'2025-04-26',20,45,26),(37,'2025-08-04',33,35,32),(38,'2025-05-11',6,39,3),(39,'2025-05-14',21,39,17),(40,'2025-12-08',6,15,44),(41,'2025-03-02',38,2,49),(42,'2025-01-11',18,37,3),(43,'2025-09-23',31,34,42),(44,'2025-05-09',18,12,38),(45,'2025-05-12',32,6,31),(46,'2025-06-26',27,22,21),(47,'2025-01-12',7,11,22),(48,'2025-05-25',32,19,43),(49,'2025-05-30',36,3,30),(50,'2025-11-06',21,17,21),(51,'2025-10-23',26,33,1),(52,'2025-01-19',35,30,27),(53,'2025-11-24',13,34,24),(54,'2025-02-06',32,41,29),(55,'2025-11-25',14,18,36),(56,'2025-10-15',19,29,45),(57,'2025-04-17',8,2,41),(58,'2025-02-13',16,46,11),(59,'2025-07-15',36,1,36),(60,'2025-05-27',6,15,8),(61,'2025-04-29',8,42,10),(62,'2025-04-10',19,33,46),(63,'2025-08-04',27,31,31),(64,'2025-08-19',30,36,10),(65,'2025-06-08',13,39,33),(66,'2025-10-13',5,18,50),(67,'2025-05-23',22,33,18),(68,'2025-12-20',19,47,20),(69,'2025-02-24',38,43,32),(70,'2025-10-06',29,35,31),(71,'2025-06-28',22,36,49),(72,'2025-03-18',25,30,21),(73,'2025-09-16',16,37,25),(74,'2025-08-24',27,3,21),(75,'2025-04-23',25,25,43),(76,'2025-01-22',10,32,3),(77,'2025-10-18',33,38,22),(78,'2025-10-31',29,7,34),(79,'2025-05-02',1,47,10),(80,'2025-05-26',10,5,31),(81,'2025-08-08',22,40,45),(82,'2025-06-01',6,22,44),(83,'2025-03-23',25,21,41),(84,'2025-04-16',35,3,40),(85,'2025-11-16',16,41,44),(86,'2025-07-27',15,48,6),(87,'2025-05-13',7,49,41),(88,'2024-12-26',7,29,11),(89,'2024-12-31',20,2,3),(90,'2025-07-08',4,19,23),(91,'2025-06-13',28,10,16),(92,'2025-03-25',27,37,44),(93,'2025-09-20',11,12,6),(94,'2025-02-12',25,40,44),(95,'2025-08-20',32,38,10),(96,'2025-08-25',30,41,17),(97,'2025-04-30',17,43,1),(98,'2025-04-27',19,44,35),(99,'2025-10-02',5,29,23),(100,'2025-02-24',20,41,28),(101,'2025-01-02',17,30,20),(102,'2025-09-11',25,31,7),(103,'2025-08-22',25,37,23),(104,'2025-03-02',19,45,19),(105,'2025-12-10',26,18,1),(106,'2025-03-07',4,39,48),(107,'2025-04-11',19,50,15),(108,'2025-02-14',23,15,41),(109,'2025-09-15',40,17,44),(110,'2025-01-18',9,41,7),(111,'2025-02-03',3,20,29),(112,'2025-12-04',38,24,47),(113,'2025-10-15',6,19,21),(114,'2025-05-23',12,13,9),(115,'2025-03-20',24,34,33),(116,'2025-08-04',11,17,31),(117,'2025-07-23',22,8,30),(118,'2025-11-13',10,49,15),(119,'2025-01-09',26,36,24),(120,'2025-11-05',26,1,17),(121,'2025-03-22',8,30,24),(122,'2025-01-11',17,38,25),(123,'2025-01-29',24,7,44),(124,'2025-08-24',31,2,40),(125,'2025-03-09',21,40,15),(126,'2025-01-24',5,41,30),(127,'2024-12-28',20,42,27),(128,'2025-10-23',9,3,3),(129,'2025-07-19',32,8,7),(130,'2025-08-23',35,9,25),(131,'2025-05-03',24,43,48),(132,'2024-12-30',35,27,38),(133,'2025-10-03',27,42,7),(134,'2025-04-15',40,27,18),(135,'2025-12-05',24,14,29),(136,'2025-05-08',16,24,7),(137,'2025-01-04',24,35,42),(138,'2025-06-21',4,26,18),(139,'2025-09-15',8,30,6),(140,'2025-01-16',14,42,41),(141,'2025-02-19',2,4,22),(142,'2025-08-19',9,37,14),(143,'2025-11-16',36,14,38),(144,'2025-09-02',15,22,50),(145,'2025-10-07',39,1,18),(146,'2025-10-08',9,35,17),(147,'2025-09-23',8,43,2),(148,'2025-10-15',1,23,16),(149,'2025-02-23',21,2,12),(150,'2025-08-08',4,9,48),(151,'2025-05-20',34,8,48),(152,'2025-11-19',31,29,50),(153,'2025-06-19',33,38,7),(154,'2025-05-04',33,15,40),(155,'2025-11-29',34,20,30),(156,'2025-01-26',2,4,31),(157,'2025-05-30',28,44,7),(158,'2025-04-14',29,5,6),(159,'2025-07-10',39,10,5),(160,'2025-10-18',18,40,41),(161,'2025-02-25',36,46,21),(162,'2025-06-09',39,34,19),(163,'2025-05-03',33,39,28),(164,'2025-11-01',8,42,42),(165,'2025-03-14',14,28,29),(166,'2025-08-27',27,22,30),(167,'2025-05-31',27,47,7),(168,'2025-07-14',28,21,43),(169,'2025-08-13',24,10,44),(170,'2025-04-23',5,6,6),(171,'2025-11-04',28,7,48),(172,'2025-06-14',9,36,4),(173,'2025-02-24',36,36,22),(174,'2025-01-12',8,27,23),(175,'2025-01-15',28,47,4),(176,'2025-07-27',39,20,23),(177,'2025-10-29',37,33,14),(178,'2025-10-03',31,15,7),(179,'2025-06-25',36,24,8),(180,'2025-08-01',37,15,28),(181,'2025-03-09',40,40,44),(182,'2025-01-26',36,2,39),(183,'2025-01-19',18,2,12),(184,'2025-08-04',20,22,23),(185,'2025-12-18',12,10,37),(186,'2025-01-19',26,5,10),(187,'2025-01-31',2,6,48),(188,'2025-03-25',14,25,27),(189,'2025-05-03',22,11,24),(190,'2025-07-15',21,50,37),(191,'2025-02-19',6,4,10),(192,'2025-10-02',40,4,44),(193,'2025-11-10',18,29,43),(194,'2025-05-18',32,39,29),(195,'2025-05-23',18,14,49),(196,'2025-04-03',8,23,28),(197,'2025-10-26',19,44,44),(198,'2025-02-21',32,34,43),(199,'2025-07-17',3,15,26),(200,'2025-02-18',4,1,14);
/*!40000 ALTER TABLE `sales2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int DEFAULT NULL,
  `supplier_name` text,
  `country` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Supplier_1','UK'),(2,'Supplier_2','Kenya'),(3,'Supplier_3','India'),(4,'Supplier_4','Germany'),(5,'Supplier_5','India'),(6,'Supplier_6','Kenya'),(7,'Supplier_7','USA'),(8,'Supplier_8','Kenya'),(9,'Supplier_9','India'),(10,'Supplier_10','Germany'),(11,'Supplier_11','China'),(12,'Supplier_12','UK'),(13,'Supplier_13','Kenya'),(14,'Supplier_14','Germany'),(15,'Supplier_15','UK'),(16,'Supplier_16','USA'),(17,'Supplier_17','USA'),(18,'Supplier_18','UK'),(19,'Supplier_19','USA'),(20,'Supplier_20','Germany'),(21,'Supplier_21','Kenya'),(22,'Supplier_22','Germany'),(23,'Supplier_23','Germany'),(24,'Supplier_24','UK'),(25,'Supplier_25','China'),(26,'Supplier_26','China'),(27,'Supplier_27','Kenya'),(28,'Supplier_28','UK'),(29,'Supplier_29','China'),(30,'Supplier_30','USA');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers2`
--

DROP TABLE IF EXISTS `suppliers2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers2` (
  `supplier_id` int NOT NULL,
  `supplier_name` text,
  `country` text,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers2`
--

LOCK TABLES `suppliers2` WRITE;
/*!40000 ALTER TABLE `suppliers2` DISABLE KEYS */;
INSERT INTO `suppliers2` VALUES (1,'Supplier 1','UK'),(2,'Supplier 2','Kenya'),(3,'Supplier 3','India'),(4,'Supplier 4','Germany'),(5,'Supplier 5','India'),(6,'Supplier 6','Kenya'),(7,'Supplier 7','USA'),(8,'Supplier 8','Kenya'),(9,'Supplier 9','India'),(10,'Supplier 10','Germany'),(11,'Supplier 11','China'),(12,'Supplier 12','UK'),(13,'Supplier 13','Kenya'),(14,'Supplier 14','Germany'),(15,'Supplier 15','UK'),(16,'Supplier 16','USA'),(17,'Supplier 17','USA'),(18,'Supplier 18','UK'),(19,'Supplier 19','USA'),(20,'Supplier 20','Germany'),(21,'Supplier 21','Kenya'),(22,'Supplier 22','Germany'),(23,'Supplier 23','Germany'),(24,'Supplier 24','UK'),(25,'Supplier 25','China'),(26,'Supplier 26','China'),(27,'Supplier 27','Kenya'),(28,'Supplier 28','UK'),(29,'Supplier 29','China'),(30,'Supplier 30','USA');
/*!40000 ALTER TABLE `suppliers2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-14 20:38:24
