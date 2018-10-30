CREATE DATABASE  IF NOT EXISTS `outwardach` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `outwardach`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: outwardach
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ba_acct_mast`
--

DROP TABLE IF EXISTS `ba_acct_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ba_acct_mast` (
  `id` int(11) NOT NULL,
  `acct_no` varchar(12) DEFAULT NULL,
  `current_bal` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ba_acct_mast`
--

LOCK TABLES `ba_acct_mast` WRITE;
/*!40000 ALTER TABLE `ba_acct_mast` DISABLE KEYS */;
INSERT INTO `ba_acct_mast` VALUES (1,'123456789012',500000),(2,'456798761234',450000);
/*!40000 ALTER TABLE `ba_acct_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_settings`
--

DROP TABLE IF EXISTS `charge_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_settings` (
  `id` int(11) NOT NULL,
  `acct_type` varchar(255) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `min_value` int(11) DEFAULT NULL,
  `charge_amount` double DEFAULT NULL,
  `charge_percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_settings`
--

LOCK TABLES `charge_settings` WRITE;
/*!40000 ALTER TABLE `charge_settings` DISABLE KEYS */;
INSERT INTO `charge_settings` VALUES (1,'DDA ',0,-1,200,0),(2,'SDA',0,-1,0,0),(3,'CDA',0,-1,300,0),(4,'MMA',0,-1,400,0),(5,'CMA',0,-1,100,0),(6,'DDA ',500,0,700,0),(7,'SDA',500,0,500,0),(8,'CDA',500,0,800,0),(9,'MMA',500,0,900,0),(10,'CMA',500,0,600,0),(11,'DDA ',999999999,501,1200,0),(12,'SDA',999999999,501,1500,0),(13,'CDA',999999999,501,1300,0),(14,'MMA',999999999,501,1400,0),(15,'CMA',999999999,501,1100,0);
/*!40000 ALTER TABLE `charge_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_message_format`
--

DROP TABLE IF EXISTS `country_message_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_message_format` (
  `id` int(11) NOT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `message_format_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_message_format`
--

LOCK TABLES `country_message_format` WRITE;
/*!40000 ALTER TABLE `country_message_format` DISABLE KEYS */;
INSERT INTO `country_message_format` VALUES (1,'USA',1),(2,'CHN',2),(3,'FRA',1),(4,'HKG',2),(5,'IND',2),(6,'LKA',2),(7,'AFG',2);
/*!40000 ALTER TABLE `country_message_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limit_settings`
--

DROP TABLE IF EXISTS `limit_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limit_settings` (
  `id` int(11) NOT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `transaction_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit_settings`
--

LOCK TABLES `limit_settings` WRITE;
/*!40000 ALTER TABLE `limit_settings` DISABLE KEYS */;
INSERT INTO `limit_settings` VALUES (1,'Internet Banking','IND',1000000),(2,'Mobile Banking','IND',2000000),(3,'Internet Banking','LKA',1000000),(4,'Mobile Banking','LKA',5000000),(5,'Internet Banking','AFG',4500000),(6,'Internet Banking','USA',5000000),(7,'Mobile Banking','USA',5000000);
/*!40000 ALTER TABLE `limit_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_formats`
--

DROP TABLE IF EXISTS `message_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_formats` (
  `id` int(11) NOT NULL,
  `message_type_id` int(11) DEFAULT NULL,
  `message_format` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_formats`
--

LOCK TABLES `message_formats` WRITE;
/*!40000 ALTER TABLE `message_formats` DISABLE KEYS */;
INSERT INTO `message_formats` VALUES (1,2,'SWIFT'),(2,2,'SEPA'),(3,1,'IFX');
/*!40000 ALTER TABLE `message_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_type`
--

DROP TABLE IF EXISTS `message_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_type` (
  `id` int(11) NOT NULL,
  `message_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_type`
--

LOCK TABLES `message_type` WRITE;
/*!40000 ALTER TABLE `message_type` DISABLE KEYS */;
INSERT INTO `message_type` VALUES (1,'INWARD'),(2,'OUTWARD');
/*!40000 ALTER TABLE `message_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microservice_conf`
--

DROP TABLE IF EXISTS `microservice_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microservice_conf` (
  `id` int(11) NOT NULL,
  `microservice_name` varchar(45) DEFAULT NULL,
  `next_topic_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microservice_conf`
--

LOCK TABLES `microservice_conf` WRITE;
/*!40000 ALTER TABLE `microservice_conf` DISABLE KEYS */;
INSERT INTO `microservice_conf` VALUES (1,'preprocessor.main','outward-ach-payment-preprocessor-step1-v1'),(2,'preprocessor.step01.v1','outward-ach-payment-preprocessor-step2-v1'),(3,'preprocessor.step02.v1','outward-ach-payment-processor');
/*!40000 ALTER TABLE `microservice_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_settings`
--

DROP TABLE IF EXISTS `sanction_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanction_settings` (
  `id` int(11) NOT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `is_sanctioned` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_settings`
--

LOCK TABLES `sanction_settings` WRITE;
/*!40000 ALTER TABLE `sanction_settings` DISABLE KEYS */;
INSERT INTO `sanction_settings` VALUES (1,'AFG',1),(2,'USA',0),(3,'IRN',1),(4,'IND',0),(5,'LKA',0);
/*!40000 ALTER TABLE `sanction_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 14:53:13
