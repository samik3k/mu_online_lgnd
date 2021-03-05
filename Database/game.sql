-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mu_online_game
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
-- Table structure for table `buff_template`
--

DROP TABLE IF EXISTS `buff_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buff_template` (
  `buff` smallint(6) unsigned NOT NULL,
  `group` smallint(6) DEFAULT NULL,
  `item_type` tinyint(4) unsigned DEFAULT NULL,
  `item_id` smallint(6) unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `send` tinyint(4) DEFAULT NULL,
  `debuff` tinyint(4) DEFAULT NULL,
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` float DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` float DEFAULT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buff_template`
--

LOCK TABLES `buff_template` WRITE;
/*!40000 ALTER TABLE `buff_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `buff_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_category`
--

DROP TABLE IF EXISTS `cash_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_category` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` tinyint(3) unsigned DEFAULT NULL,
  `main` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_category`
--

LOCK TABLES `cash_shop_category` WRITE;
/*!40000 ALTER TABLE `cash_shop_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_package`
--

DROP TABLE IF EXISTS `cash_shop_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_package` (
  `package` int(10) unsigned NOT NULL,
  `category` int(10) unsigned DEFAULT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_item` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `price_type` tinyint(3) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_package`
--

LOCK TABLES `cash_shop_package` WRITE;
/*!40000 ALTER TABLE `cash_shop_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_product`
--

DROP TABLE IF EXISTS `cash_shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_product` (
  `product` int(10) unsigned NOT NULL,
  `package` int(10) unsigned DEFAULT NULL,
  `option` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `buy_type` tinyint(3) unsigned DEFAULT NULL,
  `use_type` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_level` tinyint(3) unsigned DEFAULT NULL,
  `item_durability` int(11) DEFAULT NULL,
  `item_skill` tinyint(3) unsigned DEFAULT NULL,
  `item_luck` tinyint(3) unsigned DEFAULT NULL,
  `item_option` tinyint(3) unsigned DEFAULT NULL,
  `item_excellent` tinyint(3) unsigned DEFAULT NULL,
  `item_ancient` tinyint(3) unsigned DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_product`
--

LOCK TABLES `cash_shop_product` WRITE;
/*!40000 ALTER TABLE `cash_shop_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_base`
--

DROP TABLE IF EXISTS `character_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_base` (
  `race` int(10) unsigned NOT NULL,
  `strength` int(10) unsigned DEFAULT NULL,
  `agility` int(10) unsigned DEFAULT NULL,
  `vitality` int(10) unsigned DEFAULT NULL,
  `energy` int(10) unsigned DEFAULT NULL,
  `leadership` int(10) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `life_per_level` float DEFAULT NULL,
  `mana_per_level` float DEFAULT NULL,
  `life_per_vitality` float DEFAULT NULL,
  `mana_per_energy` float DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `recovery_life` float DEFAULT NULL,
  `recovery_mana` float DEFAULT NULL,
  `recovery_shield` float DEFAULT NULL,
  `recovery_stamina` float DEFAULT NULL,
  `points_levelup` int(10) unsigned DEFAULT NULL,
  `points_levelup_plus` int(10) unsigned DEFAULT NULL,
  `points_levelup_master` int(10) unsigned DEFAULT NULL,
  `points_levelup_majestic` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_base`
--

LOCK TABLES `character_base` WRITE;
/*!40000 ALTER TABLE `character_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_bonus`
--

DROP TABLE IF EXISTS `character_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_bonus` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL,
  `drop_rate` smallint(6) DEFAULT NULL,
  `server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_bonus`
--

LOCK TABLES `character_bonus` WRITE;
/*!40000 ALTER TABLE `character_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_adjust`
--

DROP TABLE IF EXISTS `character_experience_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_adjust` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_adjust`
--

LOCK TABLES `character_experience_adjust` WRITE;
/*!40000 ALTER TABLE `character_experience_adjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_bonus`
--

DROP TABLE IF EXISTS `character_experience_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_bonus` (
  `race_1` tinyint(3) unsigned NOT NULL,
  `race_2` tinyint(3) unsigned NOT NULL,
  `race_3` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`race_1`,`race_2`,`race_3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_bonus`
--

LOCK TABLES `character_experience_bonus` WRITE;
/*!40000 ALTER TABLE `character_experience_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_table`
--

DROP TABLE IF EXISTS `character_experience_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_table` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_table`
--

LOCK TABLES `character_experience_table` WRITE;
/*!40000 ALTER TABLE `character_experience_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_formula`
--

DROP TABLE IF EXISTS `character_formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_formula` (
  `type` tinyint(3) unsigned NOT NULL,
  `race` tinyint(3) unsigned NOT NULL,
  `level_mul` float DEFAULT NULL,
  `level_div` float DEFAULT NULL,
  `strength_mul` float DEFAULT NULL,
  `strength_div` float DEFAULT NULL,
  `agility_mul` float DEFAULT NULL,
  `agility_div` float DEFAULT NULL,
  `vitality_mul` float DEFAULT NULL,
  `vitality_div` float DEFAULT NULL,
  `energy_mul` float DEFAULT NULL,
  `energy_div` float DEFAULT NULL,
  `leadership_mul` float DEFAULT NULL,
  `leadership_div` float DEFAULT NULL,
  PRIMARY KEY (`race`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_formula`
--

LOCK TABLES `character_formula` WRITE;
/*!40000 ALTER TABLE `character_formula` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_helper` (
  `race` tinyint(3) unsigned NOT NULL,
  `stage` int(11) NOT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `cost_interval` int(10) unsigned DEFAULT NULL,
  `next_stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`stage`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_helper`
--

LOCK TABLES `character_helper` WRITE;
/*!40000 ALTER TABLE `character_helper` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_helper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_item`
--

DROP TABLE IF EXISTS `character_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item` (
  `race` tinyint(3) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`race`,`slot`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_item`
--

LOCK TABLES `character_item` WRITE;
/*!40000 ALTER TABLE `character_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_max_level_reward`
--

DROP TABLE IF EXISTS `character_max_level_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_max_level_reward` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `harmony` tinyint(3) unsigned DEFAULT NULL,
  `option_380` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_max_level_reward`
--

LOCK TABLES `character_max_level_reward` WRITE;
/*!40000 ALTER TABLE `character_max_level_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_max_level_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `race` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`race`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_specialization`
--

DROP TABLE IF EXISTS `character_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_specialization` (
  `race` tinyint(3) unsigned NOT NULL,
  `stat` tinyint(3) unsigned NOT NULL,
  `required_stat` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_min` int(11) DEFAULT NULL,
  `required_stat_max` int(11) DEFAULT NULL,
  `percent_min` tinyint(3) unsigned DEFAULT NULL,
  `percent_max` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`race`,`stat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_specialization`
--

LOCK TABLES `character_specialization` WRITE;
/*!40000 ALTER TABLE `character_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stat_fruit`
--

DROP TABLE IF EXISTS `character_stat_fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_stat_fruit` (
  `race` tinyint(3) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `total_point_add` smallint(5) unsigned DEFAULT NULL,
  `total_point_minus` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stat_fruit`
--

LOCK TABLES `character_stat_fruit` WRITE;
/*!40000 ALTER TABLE `character_stat_fruit` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stat_fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheat_scan_whitelist`
--

DROP TABLE IF EXISTS `cheat_scan_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheat_scan_whitelist` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheat_scan_whitelist`
--

LOCK TABLES `cheat_scan_whitelist` WRITE;
/*!40000 ALTER TABLE `cheat_scan_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheat_scan_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon`
--

DROP TABLE IF EXISTS `evomon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon` (
  `id` tinyint(3) unsigned NOT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_damage_min` int(11) DEFAULT NULL,
  `attack_damage_max` int(11) DEFAULT NULL,
  `attack_success_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `degense_success_rate` int(11) DEFAULT NULL,
  `next_id` tinyint(3) unsigned DEFAULT NULL,
  `next_id_rate` smallint(5) unsigned DEFAULT NULL,
  `special_rate` smallint(5) unsigned DEFAULT NULL,
  `special_monster` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon`
--

LOCK TABLES `evomon` WRITE;
/*!40000 ALTER TABLE `evomon` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon_reward`
--

DROP TABLE IF EXISTS `evomon_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon_reward` (
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `reward_type` tinyint(3) unsigned DEFAULT NULL,
  `reward_index` smallint(5) unsigned DEFAULT NULL,
  `reward_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon_reward`
--

LOCK TABLES `evomon_reward` WRITE;
/*!40000 ALTER TABLE `evomon_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_majestic`
--

DROP TABLE IF EXISTS `experience_majestic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_majestic` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_majestic`
--

LOCK TABLES `experience_majestic` WRITE;
/*!40000 ALTER TABLE `experience_majestic` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_majestic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_master`
--

DROP TABLE IF EXISTS `experience_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_master` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_master`
--

LOCK TABLES `experience_master` WRITE;
/*!40000 ALTER TABLE `experience_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_normal`
--

DROP TABLE IF EXISTS `experience_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_normal` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_normal`
--

LOCK TABLES `experience_normal` WRITE;
/*!40000 ALTER TABLE `experience_normal` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_add_option`
--

DROP TABLE IF EXISTS `item_add_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_add_option` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `effect_1` smallint(5) unsigned DEFAULT NULL,
  `value_1` smallint(5) unsigned DEFAULT NULL,
  `effect_2` smallint(5) unsigned DEFAULT NULL,
  `value_2` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_add_option`
--

LOCK TABLES `item_add_option` WRITE;
/*!40000 ALTER TABLE `item_add_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_add_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bag_items`
--

DROP TABLE IF EXISTS `item_bag_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_items` (
  `id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill_rate` smallint(5) unsigned DEFAULT NULL,
  `luck_rate` smallint(5) unsigned DEFAULT NULL,
  `option_min` tinyint(3) unsigned DEFAULT NULL,
  `option_max` tinyint(3) unsigned DEFAULT NULL,
  `excellent_min` tinyint(3) unsigned DEFAULT NULL,
  `excellent_max` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_min` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_max` tinyint(3) unsigned DEFAULT NULL,
  `socket_1_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_2_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_3_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_4_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_5_rate` smallint(5) unsigned DEFAULT NULL,
  `rate` int(10) unsigned DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bag_items`
--

LOCK TABLES `item_bag_items` WRITE;
/*!40000 ALTER TABLE `item_bag_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bag_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bag_template`
--

DROP TABLE IF EXISTS `item_bag_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_template` (
  `guid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `money_rate` smallint(5) unsigned DEFAULT NULL,
  `money_min` int(10) unsigned DEFAULT NULL,
  `money_max` int(10) unsigned DEFAULT NULL,
  `ruud_rate` smallint(5) unsigned DEFAULT NULL,
  `ruud_min` int(10) unsigned DEFAULT NULL,
  `ruud_max` int(10) unsigned DEFAULT NULL,
  `drop_min` int(10) unsigned DEFAULT NULL,
  `drop_max` int(10) unsigned DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bag_template`
--

LOCK TABLES `item_bag_template` WRITE;
/*!40000 ALTER TABLE `item_bag_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bag_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_create_data`
--

DROP TABLE IF EXISTS `item_create_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_create_data` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_create_data`
--

LOCK TABLES `item_create_data` WRITE;
/*!40000 ALTER TABLE `item_create_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_create_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_drop`
--

DROP TABLE IF EXISTS `item_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_drop` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option_min` tinyint(3) unsigned DEFAULT NULL,
  `option_max` tinyint(3) unsigned DEFAULT NULL,
  `excellent_min` tinyint(3) unsigned DEFAULT NULL,
  `excellent_max` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `monster_level_min` smallint(6) DEFAULT NULL,
  `monster_level_max` smallint(6) DEFAULT NULL,
  `event_id` tinyint(3) unsigned DEFAULT NULL,
  `invasion_id` int(10) unsigned DEFAULT NULL,
  `season_event` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_drop`
--

LOCK TABLES `item_drop` WRITE;
/*!40000 ALTER TABLE `item_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring`
--

DROP TABLE IF EXISTS `item_earring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `link` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  `option_3` tinyint(3) unsigned DEFAULT NULL,
  `value_3` tinyint(3) unsigned DEFAULT NULL,
  `option_4` tinyint(3) unsigned DEFAULT NULL,
  `value_4` tinyint(3) unsigned DEFAULT NULL,
  `option_5` tinyint(3) unsigned DEFAULT NULL,
  `value_5` tinyint(3) unsigned DEFAULT NULL,
  `socket_1_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_2_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_3_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_4_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_5_rate` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring`
--

LOCK TABLES `item_earring` WRITE;
/*!40000 ALTER TABLE `item_earring` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_bonus`
--

DROP TABLE IF EXISTS `item_earring_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_bonus` (
  `id` tinyint(3) unsigned NOT NULL,
  `link_1` tinyint(3) unsigned DEFAULT NULL,
  `link_2` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_bonus`
--

LOCK TABLES `item_earring_bonus` WRITE;
/*!40000 ALTER TABLE `item_earring_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_option`
--

DROP TABLE IF EXISTS `item_earring_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_option`
--

LOCK TABLES `item_earring_option` WRITE;
/*!40000 ALTER TABLE `item_earring_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_option_value`
--

DROP TABLE IF EXISTS `item_earring_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_option_value` (
  `id` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_option_value`
--

LOCK TABLES `item_earring_option_value` WRITE;
/*!40000 ALTER TABLE `item_earring_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_upgrade`
--

DROP TABLE IF EXISTS `item_earring_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_upgrade` (
  `id` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `index_1` smallint(5) unsigned DEFAULT NULL,
  `amount_1` int(11) DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `index_2` smallint(5) unsigned DEFAULT NULL,
  `amount_2` int(11) DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `index_3` smallint(5) unsigned DEFAULT NULL,
  `amount_3` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_upgrade`
--

LOCK TABLES `item_earring_upgrade` WRITE;
/*!40000 ALTER TABLE `item_earring_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_flagdb`
--

DROP TABLE IF EXISTS `item_flagdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_flagdb` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_flagdb`
--

LOCK TABLES `item_flagdb` WRITE;
/*!40000 ALTER TABLE `item_flagdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_flagdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_elite_option`
--

DROP TABLE IF EXISTS `item_guardian_elite_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_elite_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_elite_option`
--

LOCK TABLES `item_guardian_elite_option` WRITE;
/*!40000 ALTER TABLE `item_guardian_elite_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guardian_elite_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_elite_option_value`
--

DROP TABLE IF EXISTS `item_guardian_elite_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_elite_option_value` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `id_1` tinyint(3) unsigned DEFAULT NULL,
  `formula_data_1` tinyint(3) unsigned DEFAULT NULL,
  `value_type_1` tinyint(3) unsigned DEFAULT NULL,
  `id_2` tinyint(3) unsigned DEFAULT NULL,
  `formula_data_2` tinyint(3) unsigned DEFAULT NULL,
  `value_type_2` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_elite_option_value`
--

LOCK TABLES `item_guardian_elite_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_elite_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guardian_elite_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_option`
--

DROP TABLE IF EXISTS `item_guardian_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_option`
--

LOCK TABLES `item_guardian_option` WRITE;
/*!40000 ALTER TABLE `item_guardian_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guardian_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_option_value`
--

DROP TABLE IF EXISTS `item_guardian_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_option_value` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `formula_data` tinyint(3) unsigned DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `condition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_option_value`
--

LOCK TABLES `item_guardian_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guardian_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_harmony`
--

DROP TABLE IF EXISTS `item_harmony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_harmony` (
  `type` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `min_level` tinyint(3) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `required_zen_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `required_zen_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `required_zen_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `required_zen_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `required_zen_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `required_zen_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `required_zen_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `required_zen_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `required_zen_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `required_zen_10` int(11) DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `required_zen_11` int(11) DEFAULT NULL,
  `value_12` int(11) DEFAULT NULL,
  `required_zen_12` int(11) DEFAULT NULL,
  `value_13` int(11) DEFAULT NULL,
  `required_zen_13` int(11) DEFAULT NULL,
  `value_14` int(11) DEFAULT NULL,
  `required_zen_14` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_harmony`
--

LOCK TABLES `item_harmony` WRITE;
/*!40000 ALTER TABLE `item_harmony` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_harmony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_harmony_enhancement`
--

DROP TABLE IF EXISTS `item_harmony_enhancement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_harmony_enhancement` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `separation_value` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_harmony_enhancement`
--

LOCK TABLES `item_harmony_enhancement` WRITE;
/*!40000 ALTER TABLE `item_harmony_enhancement` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_harmony_enhancement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_level_template`
--

DROP TABLE IF EXISTS `item_level_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_level_template` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `price_flag` int(10) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_level_template`
--

LOCK TABLES `item_level_template` WRITE;
/*!40000 ALTER TABLE `item_level_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_level_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mastery_bonus`
--

DROP TABLE IF EXISTS `item_mastery_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mastery_bonus` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mastery_bonus`
--

LOCK TABLES `item_mastery_bonus` WRITE;
/*!40000 ALTER TABLE `item_mastery_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_mastery_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mysterious_stone`
--

DROP TABLE IF EXISTS `item_mysterious_stone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mysterious_stone` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mysterious_stone`
--

LOCK TABLES `item_mysterious_stone` WRITE;
/*!40000 ALTER TABLE `item_mysterious_stone` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_mysterious_stone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_price`
--

DROP TABLE IF EXISTS `item_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_price` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `buy_price` bigint(20) DEFAULT NULL,
  `sell_price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_price`
--

LOCK TABLES `item_price` WRITE;
/*!40000 ALTER TABLE `item_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_price_ruud`
--

DROP TABLE IF EXISTS `item_price_ruud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_price_ruud` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `ruud_price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_price_ruud`
--

LOCK TABLES `item_price_ruud` WRITE;
/*!40000 ALTER TABLE `item_price_ruud` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_price_ruud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_quest`
--

DROP TABLE IF EXISTS `item_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_quest` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `quest_type` smallint(5) unsigned DEFAULT NULL,
  `quest_index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type`,`index`,`quest_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_quest`
--

LOCK TABLES `item_quest` WRITE;
/*!40000 ALTER TABLE `item_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_reduced_drop`
--

DROP TABLE IF EXISTS `item_reduced_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_reduced_drop` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `rate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_reduced_drop`
--

LOCK TABLES `item_reduced_drop` WRITE;
/*!40000 ALTER TABLE `item_reduced_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_reduced_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set_option`
--

DROP TABLE IF EXISTS `item_set_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set_option` (
  `guid` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ancient_option_1_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_1_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_2_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_2_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_3_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_3_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_4_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_4_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_5_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_5_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_6_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_6_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_value_1_0` int(11) DEFAULT NULL,
  `ancient_option_value_1_1` int(11) DEFAULT NULL,
  `ancient_option_value_2_0` int(11) DEFAULT NULL,
  `ancient_option_value_2_1` int(11) DEFAULT NULL,
  `ancient_option_value_3_0` int(11) DEFAULT NULL,
  `ancient_option_value_3_1` int(11) DEFAULT NULL,
  `ancient_option_value_4_0` int(11) DEFAULT NULL,
  `ancient_option_value_4_1` int(11) DEFAULT NULL,
  `ancient_option_value_5_0` int(11) DEFAULT NULL,
  `ancient_option_value_5_1` int(11) DEFAULT NULL,
  `ancient_option_value_6_0` int(11) DEFAULT NULL,
  `ancient_option_value_6_1` int(11) DEFAULT NULL,
  `extra_option_1` tinyint(3) unsigned DEFAULT NULL,
  `extra_option_2` tinyint(3) unsigned DEFAULT NULL,
  `extra_option_value_1` int(11) DEFAULT NULL,
  `extra_option_value_2` int(11) DEFAULT NULL,
  `full_option_1` tinyint(3) unsigned DEFAULT NULL,
  `full_option_2` tinyint(3) unsigned DEFAULT NULL,
  `full_option_3` tinyint(3) unsigned DEFAULT NULL,
  `full_option_4` tinyint(3) unsigned DEFAULT NULL,
  `full_option_5` tinyint(3) unsigned DEFAULT NULL,
  `full_option_6` tinyint(3) unsigned DEFAULT NULL,
  `full_option_7` tinyint(3) unsigned DEFAULT NULL,
  `full_option_8` tinyint(3) unsigned DEFAULT NULL,
  `full_option_9` tinyint(3) unsigned DEFAULT NULL,
  `full_option_value_1` int(11) DEFAULT NULL,
  `full_option_value_2` int(11) DEFAULT NULL,
  `full_option_value_3` int(11) DEFAULT NULL,
  `full_option_value_4` int(11) DEFAULT NULL,
  `full_option_value_5` int(11) DEFAULT NULL,
  `full_option_value_6` int(11) DEFAULT NULL,
  `full_option_value_7` int(11) DEFAULT NULL,
  `full_option_value_8` int(11) DEFAULT NULL,
  `full_option_value_9` int(11) DEFAULT NULL,
  `ancient_hero_soul` tinyint(4) DEFAULT NULL,
  `disassemble` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set_option`
--

LOCK TABLES `item_set_option` WRITE;
/*!40000 ALTER TABLE `item_set_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_set_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set_type`
--

DROP TABLE IF EXISTS `item_set_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set_type` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `ancient_id_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_id_2` tinyint(3) unsigned DEFAULT NULL,
  `ancient_id_3` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set_type`
--

LOCK TABLES `item_set_type` WRITE;
/*!40000 ALTER TABLE `item_set_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_set_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket`
--

DROP TABLE IF EXISTS `item_socket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `socket_slot` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket`
--

LOCK TABLES `item_socket` WRITE;
/*!40000 ALTER TABLE `item_socket` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_bonus`
--

DROP TABLE IF EXISTS `item_socket_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_bonus` (
  `guid` tinyint(3) unsigned NOT NULL,
  `start_item_type` tinyint(4) DEFAULT NULL,
  `end_item_type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL,
  `success_rate` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_1` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_2` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_3` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_4` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_5` tinyint(3) unsigned DEFAULT NULL,
  `seed_level_min` tinyint(3) unsigned DEFAULT NULL,
  `seed_level_max` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_bonus`
--

LOCK TABLES `item_socket_bonus` WRITE;
/*!40000 ALTER TABLE `item_socket_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_mix`
--

DROP TABLE IF EXISTS `item_socket_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_mix` (
  `rank` tinyint(3) unsigned NOT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `success_rate` tinyint(3) unsigned DEFAULT NULL,
  `required_rune` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_mix`
--

LOCK TABLES `item_socket_mix` WRITE;
/*!40000 ALTER TABLE `item_socket_mix` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_mix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_package`
--

DROP TABLE IF EXISTS `item_socket_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_package` (
  `guid` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL,
  `required_type_1` tinyint(3) unsigned DEFAULT NULL,
  `required_type_2` tinyint(3) unsigned DEFAULT NULL,
  `required_type_3` tinyint(3) unsigned DEFAULT NULL,
  `required_type_4` tinyint(3) unsigned DEFAULT NULL,
  `required_type_5` tinyint(3) unsigned DEFAULT NULL,
  `required_type_6` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_package`
--

LOCK TABLES `item_socket_package` WRITE;
/*!40000 ALTER TABLE `item_socket_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_seed`
--

DROP TABLE IF EXISTS `item_socket_seed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_seed` (
  `guid` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `sub_type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `level_1` int(10) unsigned DEFAULT NULL,
  `level_2` int(10) unsigned DEFAULT NULL,
  `level_3` int(10) unsigned DEFAULT NULL,
  `level_4` int(10) unsigned DEFAULT NULL,
  `level_5` int(10) unsigned DEFAULT NULL,
  `level_6` int(10) unsigned DEFAULT NULL,
  `level_7` int(10) unsigned DEFAULT NULL,
  `level_8` int(10) unsigned DEFAULT NULL,
  `level_9` int(10) unsigned DEFAULT NULL,
  `level_10` int(10) unsigned DEFAULT NULL,
  `level_11` int(10) unsigned DEFAULT NULL,
  `level_12` int(10) unsigned DEFAULT NULL,
  `level_13` int(10) unsigned DEFAULT NULL,
  `level_14` int(10) unsigned DEFAULT NULL,
  `level_15` int(10) unsigned DEFAULT NULL,
  `level_16` int(10) unsigned DEFAULT NULL,
  `level_17` int(10) unsigned DEFAULT NULL,
  `level_18` int(10) unsigned DEFAULT NULL,
  `level_19` int(10) unsigned DEFAULT NULL,
  `level_20` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_seed`
--

LOCK TABLES `item_socket_seed` WRITE;
/*!40000 ALTER TABLE `item_socket_seed` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_seed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_seed_sphere`
--

DROP TABLE IF EXISTS `item_socket_seed_sphere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_seed_sphere` (
  `id` smallint(5) unsigned NOT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `next_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_seed_sphere`
--

LOCK TABLES `item_socket_seed_sphere` WRITE;
/*!40000 ALTER TABLE `item_socket_seed_sphere` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_seed_sphere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_upgrade`
--

DROP TABLE IF EXISTS `item_socket_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_upgrade` (
  `id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `seed_sphere` tinyint(3) unsigned DEFAULT NULL,
  `socket_min` tinyint(3) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_type` tinyint(3) unsigned DEFAULT NULL,
  `upgrade_index` smallint(5) unsigned DEFAULT NULL,
  `upgrade_level` tinyint(3) unsigned DEFAULT NULL,
  `upgrade_skill_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_luck_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_1_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_2_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_3_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_4_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_5_rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_upgrade`
--

LOCK TABLES `item_socket_upgrade` WRITE;
/*!40000 ALTER TABLE `item_socket_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stack`
--

DROP TABLE IF EXISTS `item_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_stack` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `max_stack` tinyint(3) unsigned DEFAULT NULL,
  `stack_on_loot` tinyint(4) DEFAULT NULL,
  `stack_convert_type` tinyint(3) unsigned DEFAULT NULL,
  `stack_convert_index` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stack`
--

LOCK TABLES `item_stack` WRITE;
/*!40000 ALTER TABLE `item_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_template`
--

DROP TABLE IF EXISTS `item_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_template` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `x` tinyint(3) unsigned DEFAULT NULL,
  `y` tinyint(3) unsigned DEFAULT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  `drop_rate` smallint(5) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `max_count` smallint(6) DEFAULT NULL,
  `ancient_attribute` tinyint(3) unsigned DEFAULT NULL,
  `kind_1` tinyint(3) unsigned DEFAULT NULL,
  `kind_2` tinyint(3) unsigned DEFAULT NULL,
  `kind_3` tinyint(3) unsigned DEFAULT NULL,
  `value` smallint(5) unsigned DEFAULT NULL,
  `buy_price` int(10) unsigned DEFAULT NULL,
  `price_flags` int(10) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `durability_magic` tinyint(3) unsigned DEFAULT NULL,
  `durability_resistance` int(11) DEFAULT NULL,
  `durability_time` int(11) DEFAULT NULL,
  `durability_time_safe` int(11) DEFAULT NULL,
  `durability_reduction` tinyint(3) unsigned DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `required_strength` int(11) DEFAULT NULL,
  `required_agility` int(11) DEFAULT NULL,
  `required_vitality` int(11) DEFAULT NULL,
  `required_energy` int(11) DEFAULT NULL,
  `required_leadership` int(11) DEFAULT NULL,
  `min_damage` int(10) unsigned DEFAULT NULL,
  `max_damage` int(10) unsigned DEFAULT NULL,
  `power` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(10) unsigned DEFAULT NULL,
  `walk_speed` int(10) unsigned DEFAULT NULL,
  `defence` int(10) unsigned DEFAULT NULL,
  `defence_magic` int(10) unsigned DEFAULT NULL,
  `defence_success` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_knight` tinyint(3) unsigned DEFAULT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned DEFAULT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_lord` tinyint(3) unsigned DEFAULT NULL,
  `required_class_summoner` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned DEFAULT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_slayer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned DEFAULT NULL,
  `harmony_smelt_level` smallint(6) DEFAULT NULL,
  `use_delay` int(10) unsigned DEFAULT NULL,
  `duration_time` int(10) unsigned DEFAULT NULL,
  `looting_time` int(10) unsigned DEFAULT NULL,
  `inventory_type` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_template`
--

LOCK TABLES `item_template` WRITE;
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transformation`
--

DROP TABLE IF EXISTS `item_transformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_transformation` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `skin` smallint(5) unsigned DEFAULT NULL,
  `special` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transformation`
--

LOCK TABLES `item_transformation` WRITE;
/*!40000 ALTER TABLE `item_transformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_graded_option`
--

DROP TABLE IF EXISTS `item_wing_graded_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_graded_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_graded_option`
--

LOCK TABLES `item_wing_graded_option` WRITE;
/*!40000 ALTER TABLE `item_wing_graded_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_graded_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_socket_option`
--

DROP TABLE IF EXISTS `item_wing_socket_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_socket_option` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `value_12` int(11) DEFAULT NULL,
  `value_13` int(11) DEFAULT NULL,
  `value_14` int(11) DEFAULT NULL,
  `value_15` int(11) DEFAULT NULL,
  `value_16` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_socket_option`
--

LOCK TABLES `item_wing_socket_option` WRITE;
/*!40000 ALTER TABLE `item_wing_socket_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_socket_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_socket_upgrade`
--

DROP TABLE IF EXISTS `item_wing_socket_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_socket_upgrade` (
  `level` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `item_type_1` tinyint(3) unsigned DEFAULT NULL,
  `item_index_1` smallint(5) unsigned DEFAULT NULL,
  `item_count_1` int(11) DEFAULT NULL,
  `item_type_2` tinyint(3) unsigned DEFAULT NULL,
  `item_index_2` smallint(5) unsigned DEFAULT NULL,
  `item_count_2` int(11) DEFAULT NULL,
  `item_type_3` tinyint(3) unsigned DEFAULT NULL,
  `item_index_3` smallint(5) unsigned DEFAULT NULL,
  `item_count_3` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_socket_upgrade`
--

LOCK TABLES `item_wing_socket_upgrade` WRITE;
/*!40000 ALTER TABLE `item_wing_socket_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_socket_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_values`
--

DROP TABLE IF EXISTS `item_wing_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_values` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `damage_add` int(11) DEFAULT NULL,
  `damage_add_level` int(11) DEFAULT NULL,
  `absorb_add` int(11) DEFAULT NULL,
  `absorb_add_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_values`
--

LOCK TABLES `item_wing_values` WRITE;
/*!40000 ALTER TABLE `item_wing_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `server_id` smallint(5) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_items`
--

DROP TABLE IF EXISTS `shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_items` (
  `id` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_items`
--

LOCK TABLES `shop_items` WRITE;
/*!40000 ALTER TABLE `shop_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_template`
--

DROP TABLE IF EXISTS `shop_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_template` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `max_pk_level` tinyint(3) unsigned DEFAULT NULL,
  `pk_text` varchar(255) DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `max_buy_count` int(11) DEFAULT NULL,
  `max_buy_type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_template`
--

LOCK TABLES `shop_template` WRITE;
/*!40000 ALTER TABLE `shop_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_attack_time`
--

DROP TABLE IF EXISTS `skill_attack_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_attack_time` (
  `race` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  `step` tinyint(3) unsigned DEFAULT NULL,
  `speed_min` int(11) DEFAULT NULL,
  `speed_max` int(11) DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `real_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_attack_time`
--

LOCK TABLES `skill_attack_time` WRITE;
/*!40000 ALTER TABLE `skill_attack_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_attack_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_learn`
--

DROP TABLE IF EXISTS `skill_learn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_learn` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_learn`
--

LOCK TABLES `skill_learn` WRITE;
/*!40000 ALTER TABLE `skill_learn` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_learn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_require`
--

DROP TABLE IF EXISTS `skill_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_require` (
  `skill` smallint(5) unsigned NOT NULL,
  `required_skill` smallint(5) unsigned DEFAULT NULL,
  `required_master_skill` smallint(5) unsigned DEFAULT NULL,
  `required_master_level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_require`
--

LOCK TABLES `skill_require` WRITE;
/*!40000 ALTER TABLE `skill_require` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_require` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_special`
--

DROP TABLE IF EXISTS `skill_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_special` (
  `guid` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `target` tinyint(3) unsigned DEFAULT NULL,
  `scope_type` int(11) DEFAULT NULL,
  `scope_value` tinyint(3) unsigned DEFAULT NULL,
  `element_1` int(11) DEFAULT NULL,
  `element_2` int(11) DEFAULT NULL,
  `element_3` int(11) DEFAULT NULL,
  `element_4` int(11) DEFAULT NULL,
  `element_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_special`
--

LOCK TABLES `skill_special` WRITE;
/*!40000 ALTER TABLE `skill_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_special_element`
--

DROP TABLE IF EXISTS `skill_special_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_special_element` (
  `guid` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `calc_type` tinyint(3) unsigned DEFAULT NULL,
  `calc_value` int(11) DEFAULT NULL,
  `magic` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_special_element`
--

LOCK TABLES `skill_special_element` WRITE;
/*!40000 ALTER TABLE `skill_special_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_special_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_template`
--

DROP TABLE IF EXISTS `skill_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_template` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `mana_cost` int(11) DEFAULT NULL,
  `stamina_cost` int(11) DEFAULT NULL,
  `effect_range` tinyint(3) unsigned DEFAULT NULL,
  `effect_ratio` tinyint(3) unsigned DEFAULT NULL,
  `cooldown` int(10) unsigned DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `buff_icon` smallint(5) unsigned DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `required_strength` int(11) DEFAULT NULL,
  `required_agility` int(11) DEFAULT NULL,
  `required_vitality` int(11) DEFAULT NULL,
  `required_energy` int(11) DEFAULT NULL,
  `required_leadership` int(11) DEFAULT NULL,
  `required_skill_count` tinyint(3) unsigned DEFAULT NULL,
  `status_1` tinyint(3) unsigned DEFAULT NULL,
  `status_2` tinyint(3) unsigned DEFAULT NULL,
  `status_3` tinyint(3) unsigned DEFAULT NULL,
  `base_skill` smallint(5) unsigned DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_knight` tinyint(3) unsigned DEFAULT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned DEFAULT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_lord` tinyint(3) unsigned DEFAULT NULL,
  `required_class_summoner` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned DEFAULT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_slayer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned DEFAULT NULL,
  `animation` tinyint(3) unsigned DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_bonus_damage` smallint(5) unsigned DEFAULT NULL,
  `attack_delay` int(10) unsigned DEFAULT NULL,
  `mount_check` tinyint(3) unsigned DEFAULT NULL,
  `pvm_damage` tinyint(3) unsigned DEFAULT NULL,
  `pvp_damage` tinyint(3) unsigned DEFAULT NULL,
  `stat_1` int(11) DEFAULT NULL,
  `stat_value_1` int(11) DEFAULT NULL,
  `stat_2` int(11) DEFAULT NULL,
  `state_value_2` int(11) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_template`
--

LOCK TABLES `skill_template` WRITE;
/*!40000 ALTER TABLE `skill_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree`
--

DROP TABLE IF EXISTS `skill_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree` (
  `id` tinyint(3) unsigned NOT NULL,
  `race` tinyint(3) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `required_points` tinyint(3) unsigned DEFAULT NULL,
  `max_level` tinyint(3) unsigned DEFAULT NULL,
  `link` tinyint(3) unsigned DEFAULT NULL,
  `required_skill_1` smallint(5) unsigned DEFAULT NULL,
  `required_skill_points_1` tinyint(3) unsigned DEFAULT NULL,
  `required_skill_2` smallint(5) unsigned DEFAULT NULL,
  `required_skill_points_2` tinyint(3) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `related_skill` smallint(5) unsigned DEFAULT NULL,
  `replace_skill` smallint(5) unsigned DEFAULT NULL,
  `formula_id` smallint(5) unsigned DEFAULT NULL,
  `unknown5` tinyint(3) unsigned DEFAULT NULL,
  `unknown6` tinyint(3) unsigned DEFAULT NULL,
  `unknown7` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree`
--

LOCK TABLES `skill_tree` WRITE;
/*!40000 ALTER TABLE `skill_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree_majestic`
--

DROP TABLE IF EXISTS `skill_tree_majestic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree_majestic` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `section` tinyint(3) unsigned DEFAULT NULL,
  `ui_group` tinyint(3) unsigned DEFAULT NULL,
  `position_temp` tinyint(3) unsigned DEFAULT NULL,
  `skill_id` smallint(5) unsigned DEFAULT NULL,
  `buff_id` smallint(5) unsigned DEFAULT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `formula_id` int(11) DEFAULT NULL,
  `link_slot_1` int(11) DEFAULT NULL,
  `link_line_1` int(11) DEFAULT NULL,
  `link_slot_2` int(11) DEFAULT NULL,
  `link_line_2` int(11) DEFAULT NULL,
  `link_slot_3` int(11) DEFAULT NULL,
  `link_line_3` int(11) DEFAULT NULL,
  `link_slot_4` int(11) DEFAULT NULL,
  `link_line_4` int(11) DEFAULT NULL,
  `link_slot_5` int(11) DEFAULT NULL,
  `link_line_5` int(11) DEFAULT NULL,
  `required_points` tinyint(3) unsigned DEFAULT NULL,
  `max_points` tinyint(3) unsigned DEFAULT NULL,
  `active_next_points` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_1` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_1` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_2` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_2` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_3` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_3` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree_majestic`
--

LOCK TABLES `skill_tree_majestic` WRITE;
/*!40000 ALTER TABLE `skill_tree_majestic` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree_majestic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree_majestic_stat`
--

DROP TABLE IF EXISTS `skill_tree_majestic_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree_majestic_stat` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `section` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `skill_id` smallint(5) unsigned DEFAULT NULL,
  `point_condition_1` tinyint(3) unsigned DEFAULT NULL,
  `required_points_1` tinyint(3) unsigned DEFAULT NULL,
  `max_points_1` tinyint(3) unsigned DEFAULT NULL,
  `point_condition_2` tinyint(3) unsigned DEFAULT NULL,
  `required_points_2` tinyint(3) unsigned DEFAULT NULL,
  `max_points_2` tinyint(3) unsigned DEFAULT NULL,
  `point_condition_3` tinyint(3) unsigned DEFAULT NULL,
  `required_points_3` tinyint(3) unsigned DEFAULT NULL,
  `max_points_3` tinyint(3) unsigned DEFAULT NULL,
  `start_point_1` tinyint(3) unsigned DEFAULT NULL,
  `end_point_1` tinyint(3) unsigned DEFAULT NULL,
  `formula_id_1` smallint(5) unsigned DEFAULT NULL,
  `start_point_2` tinyint(3) unsigned DEFAULT NULL,
  `end_point_2` tinyint(3) unsigned DEFAULT NULL,
  `formula_id_2` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree_majestic_stat`
--

LOCK TABLES `skill_tree_majestic_stat` WRITE;
/*!40000 ALTER TABLE `skill_tree_majestic_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree_majestic_stat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 17:50:16
