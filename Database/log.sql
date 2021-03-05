-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mu_online_log
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
-- Table structure for table `antihack`
--

DROP TABLE IF EXISTS `antihack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antihack` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `player_location` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antihack`
--

LOCK TABLES `antihack` WRITE;
/*!40000 ALTER TABLE `antihack` DISABLE KEYS */;
/*!40000 ALTER TABLE `antihack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bag_serial`
--

DROP TABLE IF EXISTS `item_bag_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_serial` (
  `serial` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bag_serial`
--

LOCK TABLES `item_bag_serial` WRITE;
/*!40000 ALTER TABLE `item_bag_serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bag_serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_boss_kill`
--

DROP TABLE IF EXISTS `log_boss_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_boss_kill` (
  `boss_index` smallint(6) unsigned DEFAULT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_id` tinyint(4) unsigned DEFAULT NULL,
  `character_id` int(11) unsigned DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `damage` bigint(20) DEFAULT NULL,
  `damage_reflect` bigint(20) DEFAULT NULL,
  `damage_debuff` bigint(20) DEFAULT NULL,
  `damage_elemental` bigint(20) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `first_hit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_boss_kill`
--

LOCK TABLES `log_boss_kill` WRITE;
/*!40000 ALTER TABLE `log_boss_kill` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_boss_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cash_shop`
--

DROP TABLE IF EXISTS `log_cash_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_cash_shop` (
  `server_id` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `dest_char` varchar(255) DEFAULT NULL,
  `package_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `option_id` int(11) unsigned DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price_type` tinyint(4) unsigned DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `gift` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cash_shop`
--

LOCK TABLES `log_cash_shop` WRITE;
/*!40000 ALTER TABLE `log_cash_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_cash_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_errtel_pentagram`
--

DROP TABLE IF EXISTS `log_errtel_pentagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_errtel_pentagram` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `blessing_spirit` tinyint(4) unsigned DEFAULT NULL,
  `result` tinyint(4) unsigned DEFAULT NULL,
  `pentagram_data` varchar(255) DEFAULT NULL,
  `errtel_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_errtel_pentagram`
--

LOCK TABLES `log_errtel_pentagram` WRITE;
/*!40000 ALTER TABLE `log_errtel_pentagram` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_errtel_pentagram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_item_buy`
--

DROP TABLE IF EXISTS `log_item_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_buy` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_item_buy`
--

LOCK TABLES `log_item_buy` WRITE;
/*!40000 ALTER TABLE `log_item_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_item_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_item_create`
--

DROP TABLE IF EXISTS `log_item_create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_create` (
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `interface_id` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_shop` int(11) unsigned DEFAULT NULL,
  `item` smallint(6) unsigned DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_item_create`
--

LOCK TABLES `log_item_create` WRITE;
/*!40000 ALTER TABLE `log_item_create` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_item_create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_item_drop`
--

DROP TABLE IF EXISTS `log_item_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_drop` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_item_drop`
--

LOCK TABLES `log_item_drop` WRITE;
/*!40000 ALTER TABLE `log_item_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_item_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_item_loot`
--

DROP TABLE IF EXISTS `log_item_loot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_loot` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_item_loot`
--

LOCK TABLES `log_item_loot` WRITE;
/*!40000 ALTER TABLE `log_item_loot` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_item_loot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_item_sell`
--

DROP TABLE IF EXISTS `log_item_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_sell` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_item_sell`
--

LOCK TABLES `log_item_sell` WRITE;
/*!40000 ALTER TABLE `log_item_sell` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_item_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_jewel_drop`
--

DROP TABLE IF EXISTS `log_jewel_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_jewel_drop` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `jewel_type` tinyint(4) unsigned DEFAULT NULL,
  `jewel_index` smallint(6) unsigned DEFAULT NULL,
  `jewel_name` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_jewel_drop`
--

LOCK TABLES `log_jewel_drop` WRITE;
/*!40000 ALTER TABLE `log_jewel_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_jewel_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_jewel_mix`
--

DROP TABLE IF EXISTS `log_jewel_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_jewel_mix` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `mix_type` tinyint(4) unsigned DEFAULT NULL,
  `mix_id` tinyint(4) unsigned DEFAULT NULL,
  `mix_level` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_jewel_mix`
--

LOCK TABLES `log_jewel_mix` WRITE;
/*!40000 ALTER TABLE `log_jewel_mix` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_jewel_mix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_level_up`
--

DROP TABLE IF EXISTS `log_level_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_level_up` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `level_normal` smallint(6) unsigned DEFAULT NULL,
  `level_master` smallint(6) unsigned DEFAULT NULL,
  `level_majestic` smallint(6) unsigned DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `event_ground` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_level_up`
--

LOCK TABLES `log_level_up` WRITE;
/*!40000 ALTER TABLE `log_level_up` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_level_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_mix`
--

DROP TABLE IF EXISTS `log_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_mix` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `mix_id` smallint(6) unsigned DEFAULT NULL,
  `mix_name` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `cost` int(11) unsigned DEFAULT NULL,
  `result` tinyint(4) unsigned DEFAULT NULL,
  `item_data_before` varchar(255) DEFAULT NULL,
  `item_data_after` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_mix`
--

LOCK TABLES `log_mix` WRITE;
/*!40000 ALTER TABLE `log_mix` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_mix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_personal_store`
--

DROP TABLE IF EXISTS `log_personal_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_personal_store` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id_01` int(11) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(11) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int(11) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(11) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `offstore` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_personal_store`
--

LOCK TABLES `log_personal_store` WRITE;
/*!40000 ALTER TABLE `log_personal_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_personal_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pvp`
--

DROP TABLE IF EXISTS `log_pvp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pvp` (
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_class_1` tinyint(4) unsigned DEFAULT NULL,
  `char_stat_1` varchar(255) DEFAULT NULL,
  `char_set_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `char_class_2` tinyint(4) unsigned DEFAULT NULL,
  `char_stat_2` varchar(255) DEFAULT NULL,
  `char_set_2` varchar(255) DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `hp_damage` int(11) DEFAULT NULL,
  `sd_damage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pvp`
--

LOCK TABLES `log_pvp` WRITE;
/*!40000 ALTER TABLE `log_pvp` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_pvp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_trade`
--

DROP TABLE IF EXISTS `log_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_trade` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id_01` int(11) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(11) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int(11) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(11) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `money` int(11) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_trade`
--

LOCK TABLES `log_trade` WRITE;
/*!40000 ALTER TABLE `log_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_recovery`
--

DROP TABLE IF EXISTS `mix_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_recovery` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_recovery`
--

LOCK TABLES `mix_recovery` WRITE;
/*!40000 ALTER TABLE `mix_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_dungeon`
--

DROP TABLE IF EXISTS `reward_dungeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_dungeon` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_dungeon`
--

LOCK TABLES `reward_dungeon` WRITE;
/*!40000 ALTER TABLE `reward_dungeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_dungeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_labyrinth_of_dimensions`
--

DROP TABLE IF EXISTS `reward_labyrinth_of_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_labyrinth_of_dimensions` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `category` tinyint(4) unsigned DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_labyrinth_of_dimensions`
--

LOCK TABLES `reward_labyrinth_of_dimensions` WRITE;
/*!40000 ALTER TABLE `reward_labyrinth_of_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_labyrinth_of_dimensions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 17:50:27
