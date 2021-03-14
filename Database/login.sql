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
  `blocked` tinyint(4) unsigned NOT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `golden_channel` bigint(20) NOT NULL,
  `facebook_status` tinyint(4) unsigned NOT NULL,
  `secured` tinyint(4) unsigned NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,0,'12digitsphra',1500434821,0,1,'user','67eabbf39d1e39ae7fad930244949c85d12b72965795794c9d5b66e8d8595467','user@email.com',20210311111308),(2,0,'12digitsphra',1500434821,0,1,'user2','ae471a7d82020498f9bab02f476d40e61bbdd985e1d625825a7ed603be8cb498','user2@email.com',20210312134729);
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
INSERT INTO `item_serial` VALUES (0,0,0);
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
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_server`
--

LOCK TABLES `world_server` WRITE;
/*!40000 ALTER TABLE `world_server` DISABLE KEYS */;
INSERT INTO `world_server` VALUES (0,0);
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

-- Dump completed on 2021-03-14 11:10:50
