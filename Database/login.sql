-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mu_online_login
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blocked` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `security_code` varchar(255) DEFAULT NULL,
  `golden_channel` bigint(20) NOT NULL,
  `facebook_status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `secured` tinyint(4) unsigned NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,0,'12digitsphra',1500434821,0,1,'user','67eabbf39d1e39ae7fad930244949c85d12b72965795794c9d5b66e8d8595467','user@email.com',20210311111308),(2,0,'12digitsphra',1500434821,0,1,'user2','ae471a7d82020498f9bab02f476d40e61bbdd985e1d625825a7ed603be8cb498','user2@email.com',20210312134729),(4,0,'12digitsphra',1500434821,0,1,'test','0abf9601b8ad64ec7c88814ecb7b7ee6da1b54e74aaf6393c4e8ac37a91f2489','test@email.com',20210325202638);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_allowed`
--

DROP TABLE IF EXISTS `accounts_allowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_allowed` (
  `account_id` int(11) unsigned NOT NULL,
  `guid` int(11) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_allowed`
--

LOCK TABLES `accounts_allowed` WRITE;
/*!40000 ALTER TABLE `accounts_allowed` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_allowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_banned`
--

DROP TABLE IF EXISTS `accounts_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_banned` (
  `account_id` int(11) unsigned NOT NULL,
  `guid` int(11) unsigned NOT NULL,
  `unban_date` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_banned`
--

LOCK TABLES `accounts_banned` WRITE;
/*!40000 ALTER TABLE `accounts_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_disconnect`
--

DROP TABLE IF EXISTS `accounts_disconnect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_disconnect` (
  `account_id` int(11) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  `masive` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_disconnect`
--

LOCK TABLES `accounts_disconnect` WRITE;
/*!40000 ALTER TABLE `accounts_disconnect` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_disconnect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_security`
--

DROP TABLE IF EXISTS `accounts_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_security` (
  `account_id` int(11) unsigned NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_security`
--

LOCK TABLES `accounts_security` WRITE;
/*!40000 ALTER TABLE `accounts_security` DISABLE KEYS */;
INSERT INTO `accounts_security` VALUES (1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(2,'user2','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988),(1,'user','192.168.1.60','B4:2E:99:C7:D5:A3',1519512988);
/*!40000 ALTER TABLE `accounts_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_status`
--

DROP TABLE IF EXISTS `accounts_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_status` (
  `account_id` int(11) unsigned NOT NULL,
  `server_group` smallint(6) unsigned NOT NULL,
  `current_server` smallint(6) unsigned NOT NULL,
  `start_server` smallint(6) unsigned NOT NULL,
  `dest_server` smallint(6) NOT NULL,
  `dest_world` smallint(6) NOT NULL,
  `dest_x` smallint(6) NOT NULL,
  `dest_y` smallint(6) NOT NULL,
  `warp_time` int(11) unsigned NOT NULL,
  `warp_auth_1` int(11) unsigned NOT NULL,
  `warp_auth_2` int(11) unsigned NOT NULL,
  `warp_auth_3` int(11) unsigned NOT NULL,
  `warp_auth_4` int(11) unsigned NOT NULL,
  `last_ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_mac` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_online` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `online` tinyint(4) unsigned NOT NULL,
  `disk_serial` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_status`
--

LOCK TABLES `accounts_status` WRITE;
/*!40000 ALTER TABLE `accounts_status` DISABLE KEYS */;
INSERT INTO `accounts_status` VALUES (1,0,0,0,-1,-1,-1,-1,0,0,0,0,0,'192.168.1.60','B4:2E:99:C7:D5:A3','2021-03-13 10:08:32',0,1519512988,0),(2,0,0,0,-1,-1,-1,-1,0,0,0,0,0,'192.168.1.60','B4:2E:99:C7:D5:A3','2021-03-12 13:49:34',0,1519512988,0);
/*!40000 ALTER TABLE `accounts_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_validation`
--

DROP TABLE IF EXISTS `accounts_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_validation` (
  `account_id` int(11) unsigned NOT NULL,
  `disk_serial` int(11) unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_validation`
--

LOCK TABLES `accounts_validation` WRITE;
/*!40000 ALTER TABLE `accounts_validation` DISABLE KEYS */;
INSERT INTO `accounts_validation` VALUES (1,1519512988),(2,1519512988);
/*!40000 ALTER TABLE `accounts_validation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_warning`
--

DROP TABLE IF EXISTS `accounts_warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_warning` (
  `account_id` int(11) unsigned NOT NULL,
  `disk_serial` int(11) unsigned NOT NULL,
  `block_date` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_warning`
--

LOCK TABLES `accounts_warning` WRITE;
/*!40000 ALTER TABLE `accounts_warning` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_warning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_diskserial`
--

DROP TABLE IF EXISTS `block_diskserial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_diskserial` (
  `disk_serial` int(11) unsigned NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_diskserial`
--

LOCK TABLES `block_diskserial` WRITE;
/*!40000 ALTER TABLE `block_diskserial` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_diskserial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_ip`
--

DROP TABLE IF EXISTS `block_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_ip` (
  `ip` varchar(16) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_ip`
--

LOCK TABLES `block_ip` WRITE;
/*!40000 ALTER TABLE `block_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_mac`
--

DROP TABLE IF EXISTS `block_mac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_mac` (
  `mac` varchar(50) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_mac`
--

LOCK TABLES `block_mac` WRITE;
/*!40000 ALTER TABLE `block_mac` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_mac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_notification`
--

DROP TABLE IF EXISTS `character_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_notification` (
  `server_group` smallint(6) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `notification_id` varchar(255) DEFAULT NULL,
  `notification_data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_notification`
--

LOCK TABLES `character_notification` WRITE;
/*!40000 ALTER TABLE `character_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_serial`
--

DROP TABLE IF EXISTS `item_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_serial` (
  `server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `serial_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_serial`
--

LOCK TABLES `item_serial` WRITE;
/*!40000 ALTER TABLE `item_serial` DISABLE KEYS */;
INSERT INTO `item_serial` VALUES (0,129,0);
/*!40000 ALTER TABLE `item_serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_pc`
--

DROP TABLE IF EXISTS `master_pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_pc` (
  `disk_serial` int(11) unsigned NOT NULL,
  `mac` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_pc`
--

LOCK TABLES `master_pc` WRITE;
/*!40000 ALTER TABLE `master_pc` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_list`
--

DROP TABLE IF EXISTS `server_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_list` (
  `server` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `code` smallint(6) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `port` smallint(6) unsigned NOT NULL,
  `ip` varchar(16) NOT NULL,
  `flag` tinyint(4) unsigned NOT NULL,
  `online` tinyint(4) unsigned NOT NULL,
  `default_world` smallint(6) unsigned NOT NULL,
  `default_x` smallint(6) NOT NULL,
  `default_y` smallint(6) NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_list`
--

LOCK TABLES `server_list` WRITE;
/*!40000 ALTER TABLE `server_list` DISABLE KEYS */;
INSERT INTO `server_list` VALUES (0,0,'Test',55509,'127.0.0.1',1,0,0,75,75,0);
/*!40000 ALTER TABLE `server_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_server`
--

DROP TABLE IF EXISTS `world_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_server` (
  `server` smallint(6) unsigned NOT NULL,
  `world` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`server`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_server`
--

LOCK TABLES `world_server` WRITE;
/*!40000 ALTER TABLE `world_server` DISABLE KEYS */;
INSERT INTO `world_server` VALUES (0,0),(0,1),(0,2),(0,3),(0,4),(0,5),(0,6),(0,7),(0,8),(0,9),(0,10),(0,11),(0,12),(0,13),(0,14),(0,15),(0,16),(0,17),(0,18),(0,19),(0,20),(0,21),(0,22),(0,23),(0,24),(0,25),(0,26),(0,27),(0,28),(0,29),(0,30),(0,31),(0,32),(0,33),(0,34),(0,35),(0,36),(0,37),(0,38),(0,39),(0,40),(0,41),(0,42),(0,43),(0,44),(0,45),(0,46),(0,47),(0,48),(0,49),(0,50),(0,51),(0,52),(0,53),(0,54),(0,55),(0,56),(0,57),(0,58),(0,59),(0,60),(0,61),(0,62),(0,63),(0,64),(0,65),(0,66),(0,67),(0,68),(0,69),(0,70),(0,71),(0,72),(0,73),(0,74),(0,75),(0,76),(0,77),(0,78),(0,79),(0,80),(0,81),(0,82),(0,83),(0,84),(0,85),(0,86),(0,87),(0,88),(0,89),(0,90),(0,91),(0,92),(0,93),(0,94),(0,95),(0,96),(0,97),(0,98),(0,99),(0,100),(0,101),(0,102),(0,103),(0,104),(0,105),(0,106),(0,107),(0,108),(0,109),(0,110),(0,111),(0,112),(0,113),(0,114),(0,115),(0,116),(0,117),(0,118),(0,119),(0,120),(0,121),(0,122),(0,123),(0,124),(0,125),(0,126),(0,127),(0,128),(0,129),(0,130),(0,131),(0,132),(0,133);
/*!40000 ALTER TABLE `world_server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  1:36:20
