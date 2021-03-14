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
  `group` smallint(6) NOT NULL,
  `item_type` tinyint(4) unsigned NOT NULL,
  `item_id` smallint(6) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `send` tinyint(4) NOT NULL,
  `debuff` tinyint(4) NOT NULL,
  `effect_1` tinyint(4) unsigned NOT NULL,
  `value_1` float NOT NULL,
  `effect_2` tinyint(4) unsigned NOT NULL,
  `value_2` float NOT NULL,
  `duration` int(11) unsigned NOT NULL,
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
  `parent` tinyint(3) unsigned NOT NULL,
  `main` tinyint(3) unsigned NOT NULL,
  `disabled` tinyint(4) NOT NULL,
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
  `category` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_item` smallint(5) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `price_type` tinyint(3) unsigned NOT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
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
  `package` int(10) unsigned NOT NULL,
  `option` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `buy_type` tinyint(3) unsigned NOT NULL,
  `use_type` tinyint(3) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `duration` bigint(20) NOT NULL,
  `item_type` tinyint(3) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  `item_level` tinyint(3) unsigned NOT NULL,
  `item_durability` int(11) NOT NULL,
  `item_skill` tinyint(3) unsigned NOT NULL,
  `item_luck` tinyint(3) unsigned NOT NULL,
  `item_option` tinyint(3) unsigned NOT NULL,
  `item_excellent` tinyint(3) unsigned NOT NULL,
  `item_ancient` tinyint(3) unsigned NOT NULL,
  `count` int(11) NOT NULL,
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
  `strength` int(10) unsigned NOT NULL,
  `agility` int(10) unsigned NOT NULL,
  `vitality` int(10) unsigned NOT NULL,
  `energy` int(10) unsigned NOT NULL,
  `leadership` int(10) unsigned NOT NULL,
  `life` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `life_per_level` float NOT NULL,
  `mana_per_level` float NOT NULL,
  `life_per_vitality` float NOT NULL,
  `mana_per_energy` float NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `level` smallint(6) NOT NULL,
  `points` int(11) NOT NULL,
  `recovery_life` float NOT NULL,
  `recovery_mana` float NOT NULL,
  `recovery_shield` float NOT NULL,
  `recovery_stamina` float NOT NULL,
  `points_levelup` int(10) unsigned NOT NULL,
  `points_levelup_plus` int(10) unsigned NOT NULL,
  `points_levelup_master` int(10) unsigned NOT NULL,
  `points_levelup_majestic` int(10) unsigned NOT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_base`
--

LOCK TABLES `character_base` WRITE;
/*!40000 ALTER TABLE `character_base` DISABLE KEYS */;
INSERT INTO `character_base` VALUES (0,18,18,15,30,0,60,60,1,2,2,2,0,1,0,15,15,15,15,5,6,6,6),(1,28,20,25,10,0,110,20,2,0.5,3,1.5,0,1,0,15,15,15,15,5,6,6,6),(2,22,25,20,15,0,80,30,1,1.5,2,1.5,3,1,0,15,15,15,15,5,6,6,6),(3,26,26,26,26,0,110,60,1,1,2,2,0,1,0,15,15,15,15,7,7,7,7),(4,26,20,20,15,25,90,40,1,1,2,1.5,0,1,0,15,15,15,15,7,7,7,7),(5,21,21,18,23,0,70,40,1,1.5,2,1.7,51,1,0,15,15,15,15,5,6,6,6),(6,32,27,25,20,0,100,40,1.3,1,1,1.3,0,1,0,15,15,15,15,7,7,7,7),(7,30,30,25,24,0,110,40,2,1,2,1,0,1,0,15,15,15,15,7,7,7,7),(8,13,18,14,40,0,60,60,1.2,1.8,2,1.5,3,1,0,15,15,15,15,5,6,6,6),(9,28,30,15,10,0,130,10,1.5,1,3,1,0,1,0,15,15,15,15,5,6,6,6),(10,20,18,20,25,0,100,80,1.5,1.5,2,2,0,1,0,15,15,15,15,5,6,6,6);
/*!40000 ALTER TABLE `character_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_bonus`
--

DROP TABLE IF EXISTS `character_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_bonus` (
  `server` smallint(5) unsigned NOT NULL,
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  `experience_rate` smallint(6) NOT NULL,
  `drop_rate` smallint(6) NOT NULL,
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
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  `experience_rate` smallint(6) NOT NULL
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
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  `experience_rate` int(11) NOT NULL
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
  `level_mul` float NOT NULL,
  `level_div` float NOT NULL,
  `strength_mul` float NOT NULL,
  `strength_div` float NOT NULL,
  `agility_mul` float NOT NULL,
  `agility_div` float NOT NULL,
  `vitality_mul` float NOT NULL,
  `vitality_div` float NOT NULL,
  `energy_mul` float NOT NULL,
  `energy_div` float NOT NULL,
  `leadership_mul` float NOT NULL,
  `leadership_div` float NOT NULL,
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
  `duration` int(10) unsigned NOT NULL,
  `cost` int(10) unsigned NOT NULL,
  `cost_interval` int(10) unsigned NOT NULL,
  `next_stage` int(11) NOT NULL,
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
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `duration` bigint(20) NOT NULL,
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
  `race` tinyint(3) unsigned NOT NULL,
  `max_level` smallint(6) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `harmony` tinyint(3) unsigned NOT NULL,
  `option_380` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `socket_bonus` tinyint(3) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL
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
  `required_stat` tinyint(3) unsigned NOT NULL,
  `required_stat_min` int(11) NOT NULL,
  `required_stat_max` int(11) NOT NULL,
  `percent_min` tinyint(3) unsigned NOT NULL,
  `percent_max` tinyint(3) unsigned NOT NULL,
  `required_stat_limit` int(11) NOT NULL,
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
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  `total_point_add` smallint(5) unsigned NOT NULL,
  `total_point_minus` smallint(5) unsigned NOT NULL,
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
-- Table structure for table `event_contribution_reward`
--

DROP TABLE IF EXISTS `event_contribution_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_contribution_reward` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned NOT NULL,
  `contribution_min` int(11) NOT NULL,
  `contribution_max` int(11) NOT NULL,
  `reward_box` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_contribution_reward`
--

LOCK TABLES `event_contribution_reward` WRITE;
/*!40000 ALTER TABLE `event_contribution_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_contribution_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_devil_square_ranking`
--

DROP TABLE IF EXISTS `event_devil_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_devil_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL,
  `exprience_1` int(10) unsigned NOT NULL,
  `zen_1` int(10) unsigned NOT NULL,
  `exprience_2` int(10) unsigned NOT NULL,
  `zen_2` int(10) unsigned NOT NULL,
  `exprience_3` int(10) unsigned NOT NULL,
  `zen_3` int(10) unsigned NOT NULL,
  `exprience_4` int(10) unsigned NOT NULL,
  `zen_4` int(10) unsigned NOT NULL,
  `exprience_5` int(10) unsigned NOT NULL,
  `zen_5` int(10) unsigned NOT NULL,
  `exprience_6` int(10) unsigned NOT NULL,
  `zen_6` int(10) unsigned NOT NULL,
  `exprience_7` int(10) unsigned NOT NULL,
  `zen_7` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ground`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_devil_square_ranking`
--

LOCK TABLES `event_devil_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_devil_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_devil_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_level`
--

DROP TABLE IF EXISTS `event_doppelganger_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_level` (
  `guid` int(10) unsigned NOT NULL,
  `level_min` tinyint(4) NOT NULL,
  `level_max` tinyint(4) NOT NULL,
  `experience` int(11) NOT NULL,
  `larva_rate` tinyint(3) unsigned NOT NULL,
  `larva_count` int(11) NOT NULL,
  `silver_chest_item_bag` varchar(255) DEFAULT NULL,
  `golden_chest_item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_level`
--

LOCK TABLES `event_doppelganger_level` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_monster_settings`
--

DROP TABLE IF EXISTS `event_doppelganger_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_monster_settings` (
  `monster` smallint(5) unsigned NOT NULL,
  `level` smallint(6) NOT NULL,
  `life` int(11) NOT NULL,
  `attack_min` int(11) NOT NULL,
  `attack_max` int(11) NOT NULL,
  `attack_rate` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `defense_rate` int(11) NOT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_monster_settings`
--

LOCK TABLES `event_doppelganger_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon`
--

DROP TABLE IF EXISTS `event_dungeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon` (
  `id` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `gate` smallint(5) unsigned NOT NULL,
  `main_chest_x` smallint(6) NOT NULL,
  `main_chest_y` smallint(6) NOT NULL,
  `secondary_chest_x_1` smallint(6) NOT NULL,
  `secondary_chest_y_1` smallint(6) NOT NULL,
  `secondary_chest_x_2` smallint(6) NOT NULL,
  `secondary_chest_y_2` smallint(6) NOT NULL,
  `secondary_chest_x_3` smallint(6) NOT NULL,
  `secondary_chest_y_3` smallint(6) NOT NULL,
  `secondary_chest_x_4` smallint(6) NOT NULL,
  `secondary_chest_y_4` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon`
--

LOCK TABLES `event_dungeon` WRITE;
/*!40000 ALTER TABLE `event_dungeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon_level`
--

DROP TABLE IF EXISTS `event_dungeon_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon_level` (
  `id` smallint(5) unsigned NOT NULL,
  `min_level` smallint(6) NOT NULL,
  `max_level` smallint(6) NOT NULL,
  `level` float NOT NULL,
  `hp` float NOT NULL,
  `damage` float NOT NULL,
  `defense` float NOT NULL,
  `attack_success` float NOT NULL,
  `defense_success` float NOT NULL,
  `elemental_damage` float NOT NULL,
  `elemental_defense` float NOT NULL,
  `elemental_attack_success` float NOT NULL,
  `elemental_defense_success` float NOT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `item_bag_boss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon_level`
--

LOCK TABLES `event_dungeon_level` WRITE;
/*!40000 ALTER TABLE `event_dungeon_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_enter_count`
--

DROP TABLE IF EXISTS `event_enter_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_enter_count` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_enter_count`
--

LOCK TABLES `event_enter_count` WRITE;
/*!40000 ALTER TABLE `event_enter_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_enter_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_level`
--

DROP TABLE IF EXISTS `event_imperial_fortress_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_level` (
  `quid` int(10) unsigned NOT NULL,
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`quid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_level`
--

LOCK TABLES `event_imperial_fortress_level` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_monster_settings`
--

DROP TABLE IF EXISTS `event_imperial_fortress_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_monster_settings` (
  `something` int(10) unsigned NOT NULL,
  `monster` smallint(5) unsigned NOT NULL,
  `level` smallint(6) NOT NULL,
  `power_1` int(11) NOT NULL,
  `power_2` int(11) NOT NULL,
  `power_3` int(11) NOT NULL,
  `power_4` int(11) NOT NULL,
  `attack_min` int(11) NOT NULL,
  `attack_max` int(11) NOT NULL,
  `attack_rate` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `defense_rate` int(11) NOT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`something`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_monster_settings`
--

LOCK TABLES `event_imperial_fortress_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_trap`
--

DROP TABLE IF EXISTS `event_imperial_fortress_trap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_trap` (
  `day` tinyint(3) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `damage` float NOT NULL,
  `element` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_trap`
--

LOCK TABLES `event_imperial_fortress_trap` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_data`
--

DROP TABLE IF EXISTS `event_invasion_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_data` (
  `invasion` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `on_notify` varchar(255) DEFAULT NULL,
  `on_start` varchar(255) DEFAULT NULL,
  `on_end` varchar(255) DEFAULT NULL,
  `on_timeout` varchar(255) DEFAULT NULL,
  `on_kill_boss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_data`
--

LOCK TABLES `event_invasion_data` WRITE;
/*!40000 ALTER TABLE `event_invasion_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_group`
--

DROP TABLE IF EXISTS `event_invasion_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_group` (
  `invasion` int(10) unsigned NOT NULL,
  `group` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `flag` int(10) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_group`
--

LOCK TABLES `event_invasion_group` WRITE;
/*!40000 ALTER TABLE `event_invasion_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_jewel_bingo_reward`
--

DROP TABLE IF EXISTS `event_jewel_bingo_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_jewel_bingo_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` int(11) NOT NULL,
  `score_max` int(11) NOT NULL,
  `item` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_jewel_bingo_reward`
--

LOCK TABLES `event_jewel_bingo_reward` WRITE;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area`
--

DROP TABLE IF EXISTS `event_labyrinth_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area` (
  `index` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned NOT NULL,
  `row_count` tinyint(3) unsigned NOT NULL,
  `column_count` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area`
--

LOCK TABLES `event_labyrinth_area` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area_data`
--

DROP TABLE IF EXISTS `event_labyrinth_area_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area_data` (
  `sub_index` tinyint(3) unsigned NOT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `world_index` smallint(5) unsigned NOT NULL,
  `area_type` tinyint(3) unsigned NOT NULL,
  `mission_id` tinyint(3) unsigned NOT NULL,
  `gate_1` tinyint(3) unsigned NOT NULL,
  `gate_2` tinyint(3) unsigned NOT NULL,
  `gate_3` tinyint(3) unsigned NOT NULL,
  `gate_4` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`sub_index`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area_data`
--

LOCK TABLES `event_labyrinth_area_data` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_info`
--

DROP TABLE IF EXISTS `event_labyrinth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_info` (
  `index` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_info`
--

LOCK TABLES `event_labyrinth_info` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_level`
--

DROP TABLE IF EXISTS `event_labyrinth_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_level` (
  `id` smallint(5) unsigned NOT NULL,
  `level` int(11) NOT NULL,
  `first_score` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_level`
--

LOCK TABLES `event_labyrinth_level` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_mission`
--

DROP TABLE IF EXISTS `event_labyrinth_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_mission` (
  `area_type` tinyint(3) unsigned NOT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `type_1` tinyint(3) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `type_2` tinyint(3) unsigned NOT NULL,
  `value_2` int(11) NOT NULL,
  `type_3` tinyint(3) unsigned NOT NULL,
  `value_3` int(11) NOT NULL,
  `type_4` tinyint(3) unsigned NOT NULL,
  `value_4` int(11) NOT NULL,
  `type_5` tinyint(3) unsigned NOT NULL,
  `value_5` int(11) NOT NULL,
  `type_6` tinyint(3) unsigned NOT NULL,
  `value_6` int(11) NOT NULL,
  `monster_1` smallint(5) unsigned NOT NULL,
  `count_1` int(11) NOT NULL,
  `monster_2` smallint(5) unsigned NOT NULL,
  `count_2` int(11) NOT NULL,
  `monster_3` smallint(5) unsigned NOT NULL,
  `count_3` int(11) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_mission`
--

LOCK TABLES `event_labyrinth_mission` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_monster`
--

DROP TABLE IF EXISTS `event_labyrinth_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_monster` (
  `id` smallint(5) unsigned NOT NULL,
  `level` float NOT NULL,
  `life` float NOT NULL,
  `damage` float NOT NULL,
  `defense` float NOT NULL,
  `attack_success_rate` float NOT NULL,
  `defense_success_rate` float NOT NULL,
  `elemental_damage` float NOT NULL,
  `elemental_defense` float NOT NULL,
  `elemental_attack_success_rate` float NOT NULL,
  `elemental_defense_success_rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_monster`
--

LOCK TABLES `event_labyrinth_monster` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_reward`
--

DROP TABLE IF EXISTS `event_labyrinth_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_reward` (
  `category` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `race` tinyint(3) unsigned NOT NULL,
  `item_type` tinyint(3) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_reward`
--

LOCK TABLES `event_labyrinth_reward` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_level`
--

DROP TABLE IF EXISTS `event_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_level` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned NOT NULL,
  `normal_level_min` smallint(6) NOT NULL,
  `normal_level_max` smallint(6) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_level`
--

LOCK TABLES `event_level` WRITE;
/*!40000 ALTER TABLE `event_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_manager`
--

DROP TABLE IF EXISTS `event_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_manager` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `invasion` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `notify_time` int(11) NOT NULL,
  `hour` tinyint(3) unsigned NOT NULL,
  `minute` tinyint(3) unsigned NOT NULL,
  `day_of_week` tinyint(3) unsigned NOT NULL,
  `day_of_month` tinyint(3) unsigned NOT NULL,
  `season_event` tinyint(3) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `exclusive_server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_manager`
--

LOCK TABLES `event_manager` WRITE;
/*!40000 ALTER TABLE `event_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mini_bomb_reward`
--

DROP TABLE IF EXISTS `event_mini_bomb_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mini_bomb_reward` (
  `score_min` smallint(5) unsigned NOT NULL,
  `score_max` smallint(5) unsigned NOT NULL,
  `item` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mini_bomb_reward`
--

LOCK TABLES `event_mini_bomb_reward` WRITE;
/*!40000 ALTER TABLE `event_mini_bomb_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mini_bomb_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mu_roomy_reward`
--

DROP TABLE IF EXISTS `event_mu_roomy_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mu_roomy_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` smallint(5) unsigned NOT NULL,
  `score_max` smallint(5) unsigned NOT NULL,
  `item` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mu_roomy_reward`
--

LOCK TABLES `event_mu_roomy_reward` WRITE;
/*!40000 ALTER TABLE `event_mu_roomy_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mu_roomy_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_numeric_baseball_reward`
--

DROP TABLE IF EXISTS `event_numeric_baseball_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_numeric_baseball_reward` (
  `score_min` int(11) NOT NULL,
  `score_max` int(11) NOT NULL,
  `item` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_numeric_baseball_reward`
--

LOCK TABLES `event_numeric_baseball_reward` WRITE;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_season_manager`
--

DROP TABLE IF EXISTS `event_season_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_season_manager` (
  `event` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` bigint(20) unsigned NOT NULL,
  `end_date` bigint(20) unsigned NOT NULL,
  `ocurrence` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `start_message` varchar(255) DEFAULT NULL,
  `end_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_season_manager`
--

LOCK TABLES `event_season_manager` WRITE;
/*!40000 ALTER TABLE `event_season_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_season_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_ranking`
--

DROP TABLE IF EXISTS `event_tormented_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `reward` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ground`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_ranking`
--

LOCK TABLES `event_tormented_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_stage`
--

DROP TABLE IF EXISTS `event_tormented_square_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_stage` (
  `ground` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned NOT NULL,
  `stand_by` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`ground`,`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_stage`
--

LOCK TABLES `event_tormented_square_stage` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon`
--

DROP TABLE IF EXISTS `evomon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon` (
  `id` tinyint(3) unsigned NOT NULL,
  `monster` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `life` int(11) NOT NULL,
  `attack_damage_min` int(11) NOT NULL,
  `attack_damage_max` int(11) NOT NULL,
  `attack_success_rate` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `degense_success_rate` int(11) NOT NULL,
  `next_id` tinyint(3) unsigned NOT NULL,
  `next_id_rate` smallint(5) unsigned NOT NULL,
  `special_rate` smallint(5) unsigned NOT NULL,
  `special_monster` smallint(5) unsigned NOT NULL,
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
  `score_min` int(11) NOT NULL,
  `score_max` int(11) NOT NULL,
  `reward_type` tinyint(3) unsigned NOT NULL,
  `reward_index` smallint(5) unsigned NOT NULL,
  `reward_count` int(11) NOT NULL
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
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
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
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
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
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
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
-- Table structure for table `filter_text`
--

DROP TABLE IF EXISTS `filter_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_text` (
  `word` varchar(255) NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `action` tinyint(3) unsigned NOT NULL,
  `replace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_text`
--

LOCK TABLES `filter_text` WRITE;
/*!40000 ALTER TABLE `filter_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formula_data`
--

DROP TABLE IF EXISTS `formula_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formula_data` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `formula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula_data`
--

LOCK TABLES `formula_data` WRITE;
/*!40000 ALTER TABLE `formula_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `formula_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gate_template`
--

DROP TABLE IF EXISTS `gate_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gate_template` (
  `id` smallint(5) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `target_id` smallint(5) unsigned NOT NULL,
  `direction` tinyint(3) unsigned NOT NULL,
  `min_level` smallint(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_template`
--

LOCK TABLES `gate_template` WRITE;
/*!40000 ALTER TABLE `gate_template` DISABLE KEYS */;
INSERT INTO `gate_template` VALUES (0,0,0,0,0,0,0,0,0,0,NULL),(1,1,0,121,232,123,233,2,0,20,NULL),(2,2,1,107,247,110,247,0,1,20,NULL),(3,1,1,108,248,109,248,4,0,0,NULL),(4,2,0,121,231,123,231,0,1,0,NULL),(5,1,1,239,149,239,150,6,0,20,NULL),(6,2,1,231,126,234,127,0,1,20,NULL),(7,1,1,232,127,233,128,8,0,20,NULL),(8,2,1,240,148,241,151,0,3,20,NULL),(9,1,1,2,17,2,18,10,0,20,NULL),(10,2,1,3,83,4,86,0,3,20,NULL),(11,1,1,2,84,2,85,12,0,20,NULL),(12,2,1,3,16,6,17,0,3,20,NULL),(13,1,1,5,34,6,34,14,0,20,NULL),(14,2,1,29,125,30,126,0,1,20,NULL),(15,1,1,29,127,30,127,16,0,20,NULL),(16,2,1,5,32,7,33,0,1,20,NULL),(17,1,0,133,118,151,135,0,0,0,NULL),(18,2,0,5,38,6,41,19,0,10,NULL),(19,1,2,242,34,243,37,0,7,10,NULL),(20,2,2,244,34,245,37,21,0,0,NULL),(21,1,0,7,38,8,41,0,3,0,NULL),(22,2,2,197,35,218,50,0,0,10,NULL),(23,1,0,213,246,217,247,24,0,10,NULL),(24,2,3,150,9,153,10,0,5,10,NULL),(25,1,3,150,6,153,7,26,0,10,NULL),(26,2,0,213,244,217,245,0,1,10,NULL),(27,1,3,171,108,177,117,0,0,0,NULL),(28,2,2,4,247,5,248,29,0,40,NULL),(29,1,4,162,2,166,3,0,5,40,NULL),(30,2,4,190,6,191,8,31,0,40,NULL),(31,1,4,241,237,244,238,0,1,40,NULL),(32,2,4,166,163,167,166,33,0,40,NULL),(33,1,4,86,166,87,168,0,3,40,NULL),(34,2,4,132,245,135,246,35,0,50,NULL),(35,1,4,87,86,88,89,0,3,50,NULL),(36,2,4,132,135,135,136,37,0,50,NULL),(37,1,4,128,53,131,54,0,1,50,NULL),(38,2,4,131,15,132,18,39,0,50,NULL),(39,1,4,52,53,55,54,0,1,50,NULL),(40,2,4,6,5,7,8,41,0,50,NULL),(41,1,4,8,85,9,87,0,1,50,NULL),(42,2,4,203,70,213,81,0,0,40,NULL),(43,1,4,162,0,166,1,44,0,10,NULL),(44,2,2,5,244,7,246,0,2,10,NULL),(45,0,3,242,240,245,243,46,0,50,NULL),(46,0,7,14,12,15,13,0,3,50,NULL),(47,0,7,9,9,11,12,48,0,50,NULL),(48,0,3,240,240,241,243,0,7,50,NULL),(49,0,7,15,11,27,23,0,0,50,NULL),(50,0,6,72,140,73,181,0,0,0,NULL),(51,0,6,59,153,59,153,0,0,0,NULL),(52,0,6,59,164,59,165,0,0,0,NULL),(53,0,7,14,225,15,230,54,0,130,NULL),(54,0,8,248,40,251,44,0,7,0,NULL),(55,0,8,246,40,247,44,56,0,130,NULL),(56,0,7,16,225,17,230,0,3,0,NULL),(57,0,8,189,63,205,72,0,0,60,NULL),(58,0,9,133,91,141,99,0,0,10,NULL),(59,0,9,135,162,142,170,0,0,10,NULL),(60,0,9,62,150,70,158,0,0,10,NULL),(61,0,9,66,84,74,92,0,0,10,NULL),(62,0,4,17,250,19,250,63,0,150,NULL),(63,0,10,14,13,16,13,0,5,150,NULL),(64,0,10,14,12,16,12,65,0,50,NULL),(65,0,4,17,249,19,249,0,1,50,NULL),(66,0,11,12,5,14,10,0,0,0,NULL),(67,0,12,12,5,14,10,0,0,0,NULL),(68,0,13,12,5,14,10,0,0,0,NULL),(69,0,14,12,5,14,10,0,0,0,NULL),(70,0,15,12,5,14,10,0,0,0,NULL),(71,0,16,12,5,14,10,0,0,0,NULL),(72,0,2,23,27,27,24,0,0,10,NULL),(73,0,2,224,231,227,227,0,0,10,NULL),(74,0,2,69,181,72,178,0,0,10,NULL),(75,0,7,225,53,228,50,0,0,80,NULL),(76,0,7,62,163,68,157,0,0,90,NULL),(77,0,8,96,143,100,146,0,0,130,NULL),(80,0,17,12,5,14,10,0,0,0,NULL),(82,0,18,31,88,36,95,0,0,0,NULL),(83,0,19,31,88,36,95,0,0,0,NULL),(84,0,20,31,88,36,95,0,0,0,NULL),(85,0,21,31,88,36,95,0,0,0,NULL),(86,0,22,31,88,36,95,0,0,0,NULL),(87,0,23,31,88,36,95,0,0,0,NULL),(88,0,24,10,16,17,22,0,0,0,NULL),(89,0,25,10,16,17,22,0,0,0,NULL),(90,0,26,10,16,17,22,0,0,0,NULL),(91,0,27,10,16,17,22,0,0,0,NULL),(92,0,28,10,16,17,22,0,0,0,NULL),(93,0,29,10,16,17,22,0,0,0,NULL),(94,0,30,88,31,102,46,0,0,0,NULL),(95,0,31,60,10,69,19,0,0,0,NULL),(96,0,30,93,242,95,243,97,0,0,NULL),(97,0,30,164,198,187,209,0,0,0,NULL),(98,0,30,160,203,161,205,99,0,0,NULL),(99,0,30,90,236,99,239,0,0,0,NULL),(100,0,30,39,14,142,50,0,0,0,NULL),(101,0,30,84,180,100,222,0,0,0,NULL),(102,0,0,239,14,240,15,103,0,10,NULL),(103,0,30,29,42,30,37,0,0,10,NULL),(104,0,30,87,209,100,232,0,0,0,NULL),(105,0,30,72,10,104,199,0,0,0,NULL),(106,0,30,131,94,138,92,0,0,0,NULL),(107,0,30,28,40,28,41,108,0,0,NULL),(108,0,0,235,13,239,13,0,0,0,NULL),(109,0,31,59,7,63,8,110,0,0,NULL),(110,0,30,131,94,138,92,0,0,0,NULL),(111,0,32,133,91,141,99,0,0,10,NULL),(112,0,32,135,162,142,170,0,0,10,NULL),(113,0,33,76,9,78,16,0,0,10,NULL),(114,0,34,231,37,234,45,0,0,10,NULL),(116,0,36,10,16,17,22,0,0,0,NULL),(117,0,30,161,37,165,45,114,0,10,NULL),(118,0,34,229,37,239,46,0,0,10,NULL),(119,0,33,82,8,87,14,0,0,130,NULL),(120,0,3,220,30,226,30,113,0,130,NULL),(121,0,33,74,9,74,13,122,0,10,NULL),(122,0,3,220,31,226,34,0,0,10,NULL),(123,0,34,239,40,240,44,124,0,10,NULL),(124,0,30,155,37,158,43,0,0,10,NULL),(125,0,8,6,199,6,201,126,0,150,NULL),(126,0,37,17,219,21,220,0,0,150,NULL),(127,0,37,17,220,19,222,128,0,130,NULL),(128,0,8,7,199,7,201,0,0,130,NULL),(129,0,37,89,89,89,92,130,0,290,NULL),(130,0,38,70,104,70,107,0,0,290,NULL),(131,0,38,69,104,69,107,132,0,150,NULL),(132,0,37,85,89,86,92,0,0,150,NULL),(133,0,39,196,56,201,57,0,0,290,NULL),(134,0,39,78,93,82,95,0,0,290,NULL),(135,0,39,78,93,82,95,0,0,290,NULL),(136,0,38,137,162,143,163,0,0,290,NULL),(137,0,38,71,104,72,107,0,0,290,NULL),(138,0,37,19,217,21,219,0,0,150,NULL),(139,0,38,71,104,72,107,0,0,290,NULL),(140,0,33,186,173,190,177,0,0,130,NULL),(141,0,37,205,36,208,41,0,0,160,NULL),(142,0,45,98,128,108,137,0,0,0,NULL),(143,0,46,98,128,108,137,0,0,0,NULL),(144,0,47,98,128,108,137,0,0,0,NULL),(145,0,48,98,128,108,137,0,0,0,NULL),(146,0,49,98,128,108,137,0,0,0,NULL),(147,0,50,98,128,108,137,0,0,0,NULL),(148,0,45,141,41,146,45,0,0,0,NULL),(149,0,46,141,41,146,45,0,0,0,NULL),(150,0,47,141,41,146,45,0,0,0,NULL),(151,0,48,141,41,146,45,0,0,0,NULL),(152,0,49,141,41,146,45,0,0,0,NULL),(153,0,50,141,41,146,45,0,0,0,NULL),(154,0,45,194,124,198,127,0,0,0,NULL),(155,0,46,194,124,198,127,0,0,0,NULL),(156,0,47,194,124,198,127,0,0,0,NULL),(157,0,48,194,124,198,127,0,0,0,NULL),(158,0,49,194,124,198,127,0,0,0,NULL),(159,0,50,194,124,198,127,0,0,0,NULL),(256,0,41,29,79,31,82,0,0,0,NULL),(257,0,42,104,178,107,181,0,0,0,NULL),(258,0,34,227,41,229,43,0,0,0,NULL),(259,0,2,161,245,166,246,260,0,10,NULL),(260,0,51,26,29,27,30,0,0,10,NULL),(261,0,51,24,29,25,30,262,0,10,NULL),(262,0,2,161,241,163,242,0,0,10,NULL),(263,0,7,13,19,14,20,264,0,10,NULL),(264,0,51,243,149,244,150,0,0,10,NULL),(265,0,51,247,149,248,150,266,0,50,NULL),(266,0,7,16,19,17,20,0,0,50,NULL),(267,0,51,51,224,54,227,0,0,0,NULL),(268,0,51,99,55,100,57,0,0,10,NULL),(269,0,51,191,148,193,150,0,0,10,NULL),(270,0,32,62,150,70,158,0,0,10,NULL),(271,0,52,12,5,14,10,0,0,0,NULL),(272,0,53,31,88,36,95,0,0,0,NULL),(273,0,56,135,105,142,111,0,0,380,NULL),(274,0,56,139,125,139,126,275,0,380,NULL),(275,0,56,189,190,191,193,0,0,380,NULL),(276,0,56,185,187,186,188,273,0,380,NULL),(277,0,56,149,109,150,109,278,0,380,NULL),(278,0,56,204,10,206,14,0,0,380,NULL),(279,0,56,197,12,197,14,273,0,380,NULL),(280,0,56,139,95,140,95,281,0,380,NULL),(281,0,56,65,47,67,48,0,0,380,NULL),(282,0,56,68,52,69,53,273,0,380,NULL),(283,0,56,124,109,124,110,284,0,380,NULL),(284,0,56,62,174,63,179,0,0,380,NULL),(285,0,56,57,176,57,177,273,0,380,NULL),(286,0,2,52,90,54,91,287,0,380,NULL),(287,0,57,222,211,225,212,0,0,380,NULL),(288,0,57,223,215,225,215,289,0,380,NULL),(289,0,2,51,85,55,86,0,0,380,NULL),(290,0,57,171,23,171,25,291,0,380,NULL),(291,0,58,160,24,161,27,0,0,380,NULL),(292,0,58,167,24,167,25,293,0,380,NULL),(293,0,57,174,23,175,25,0,0,380,NULL),(294,0,63,120,129,126,134,0,0,300,NULL),(295,0,64,101,64,0,0,0,0,30,NULL),(296,0,64,101,75,0,0,0,0,30,NULL),(297,0,64,101,113,0,0,0,0,30,NULL),(298,0,64,101,124,0,0,0,0,30,NULL),(299,0,64,154,64,0,0,0,0,30,NULL),(300,0,64,154,75,0,0,0,0,30,NULL),(301,0,64,154,113,0,0,0,0,30,NULL),(302,0,64,154,124,0,0,0,0,30,NULL),(303,0,64,100,70,0,0,0,0,30,NULL),(304,0,64,100,120,0,0,0,0,30,NULL),(305,0,64,150,70,0,0,0,0,30,NULL),(306,0,64,150,120,0,0,0,0,30,NULL),(307,0,69,231,15,233,17,0,0,0,NULL),(308,0,69,209,80,211,82,309,0,0,NULL),(309,0,69,202,24,203,27,0,0,0,NULL),(310,0,69,153,60,155,62,311,0,0,NULL),(311,0,69,179,65,181,67,0,0,0,NULL),(312,0,70,86,63,87,66,0,0,0,NULL),(313,0,70,10,64,12,66,314,0,0,NULL),(314,0,70,35,84,38,85,0,0,0,NULL),(315,0,70,54,161,56,163,316,0,0,NULL),(316,0,70,121,110,123,112,0,0,0,NULL),(317,0,71,154,187,155,189,0,0,0,NULL),(318,0,71,82,194,84,196,319,0,0,NULL),(319,0,71,222,121,224,123,0,0,0,NULL),(320,0,71,222,201,224,203,321,0,0,NULL),(321,0,71,165,206,168,207,0,0,0,NULL),(322,0,72,93,66,94,69,0,0,0,NULL),(323,0,72,30,95,32,97,324,0,0,NULL),(324,0,72,32,162,34,164,0,0,0,NULL),(325,0,72,68,160,70,162,326,0,0,NULL),(326,0,72,145,155,147,157,0,0,0,NULL),(327,0,72,223,165,225,167,328,0,0,NULL),(328,0,72,241,23,243,25,0,0,0,NULL),(329,0,65,193,26,200,32,0,0,0,NULL),(330,0,66,133,68,139,74,0,0,0,NULL),(331,0,67,106,58,111,62,0,0,0,NULL),(332,0,68,90,10,97,17,0,0,0,NULL),(333,0,79,56,74,58,77,0,0,0,NULL),(334,0,37,66,183,74,191,0,0,300,NULL),(335,0,80,124,123,127,125,0,0,270,NULL),(336,0,33,237,167,240,168,337,0,270,NULL),(337,0,80,118,44,119,46,0,3,270,NULL),(338,0,80,116,44,117,47,339,0,150,NULL),(339,0,33,237,166,240,166,0,1,150,NULL),(340,0,80,186,210,190,212,341,0,270,NULL),(341,0,81,162,12,164,14,0,5,270,NULL),(342,0,81,161,8,165,9,343,0,270,NULL),(343,0,80,188,207,189,208,0,1,270,NULL),(344,0,81,162,16,163,17,0,5,270,NULL),(345,0,82,60,66,63,69,0,0,0,NULL),(346,0,82,69,195,72,198,0,0,0,NULL),(347,0,82,196,187,199,190,0,0,0,NULL),(348,0,82,187,61,190,64,0,0,0,NULL),(349,0,83,60,66,63,69,0,0,0,NULL),(350,0,83,69,195,72,198,0,0,0,NULL),(351,0,83,196,187,199,190,0,0,0,NULL),(352,0,83,187,61,190,64,0,0,0,NULL),(353,0,84,60,66,63,69,0,0,0,NULL),(354,0,84,69,195,72,198,0,0,0,NULL),(355,0,84,196,187,199,190,0,0,0,NULL),(356,0,84,187,61,190,64,0,0,0,NULL),(357,0,85,60,66,63,69,0,0,0,NULL),(358,0,85,69,195,72,198,0,0,0,NULL),(359,0,85,196,187,199,190,0,0,0,NULL),(360,0,85,187,61,190,64,0,0,0,NULL),(361,0,86,60,66,63,69,0,0,0,NULL),(362,0,86,69,195,72,198,0,0,0,NULL),(363,0,86,196,187,199,190,0,0,0,NULL),(364,0,86,187,61,190,64,0,0,0,NULL),(365,0,87,60,66,63,69,0,0,0,NULL),(366,0,87,69,195,72,198,0,0,0,NULL),(367,0,87,196,187,199,190,0,0,0,NULL),(368,0,87,187,61,190,64,0,0,0,NULL),(369,0,88,60,66,63,69,0,0,0,NULL),(370,0,88,69,195,72,198,0,0,0,NULL),(371,0,88,196,187,199,190,0,0,0,NULL),(372,0,88,187,61,190,64,0,0,0,NULL),(373,0,89,60,66,63,69,0,0,0,NULL),(374,0,89,69,195,72,198,0,0,0,NULL),(375,0,89,196,187,199,190,0,0,0,NULL),(376,0,89,187,61,190,64,0,0,0,NULL),(377,0,90,60,66,63,69,0,0,0,NULL),(378,0,90,69,195,72,198,0,0,0,NULL),(379,0,90,196,187,199,190,0,0,0,NULL),(380,0,90,187,61,190,64,0,0,0,NULL),(381,0,82,123,120,129,134,0,0,0,NULL),(382,0,82,123,126,134,132,0,0,0,NULL),(383,0,82,127,121,133,133,0,0,0,NULL),(384,0,82,123,121,133,128,0,0,0,NULL),(385,0,83,123,120,129,134,0,0,0,NULL),(386,0,83,123,126,134,132,0,0,0,NULL),(387,0,83,127,121,133,133,0,0,0,NULL),(388,0,83,123,121,133,128,0,0,0,NULL),(389,0,84,123,120,129,134,0,0,0,NULL),(390,0,84,123,126,134,132,0,0,0,NULL),(391,0,84,127,121,133,133,0,0,0,NULL),(392,0,84,123,121,133,128,0,0,0,NULL),(393,0,85,123,120,129,134,0,0,0,NULL),(394,0,85,123,126,134,132,0,0,0,NULL),(395,0,85,127,121,133,133,0,0,0,NULL),(396,0,85,123,121,133,128,0,0,0,NULL),(397,0,86,123,120,129,134,0,0,0,NULL),(398,0,86,123,126,134,132,0,0,0,NULL),(399,0,86,127,121,133,133,0,0,0,NULL),(400,0,86,123,121,133,128,0,0,0,NULL),(401,0,87,123,120,129,134,0,0,0,NULL),(402,0,87,123,126,134,132,0,0,0,NULL),(403,0,87,127,121,133,133,0,0,0,NULL),(404,0,87,123,121,133,128,0,0,0,NULL),(405,0,88,123,120,129,134,0,0,0,NULL),(406,0,88,123,126,134,132,0,0,0,NULL),(407,0,88,127,121,133,133,0,0,0,NULL),(408,0,88,123,121,133,128,0,0,0,NULL),(409,0,89,123,120,129,134,0,0,0,NULL),(410,0,89,123,126,134,132,0,0,0,NULL),(411,0,89,127,121,133,133,0,0,0,NULL),(412,0,89,123,121,133,128,0,0,0,NULL),(413,0,90,123,120,129,134,0,0,0,NULL),(414,0,90,123,126,134,132,0,0,0,NULL),(415,0,90,127,121,133,133,0,0,0,NULL),(416,0,90,123,121,133,128,0,0,0,NULL),(417,0,91,51,190,60,197,0,0,300,NULL),(418,0,91,26,168,28,172,419,0,300,NULL),(419,0,91,112,161,114,166,0,0,300,NULL),(420,0,91,115,168,118,170,421,0,300,NULL),(421,0,91,33,167,37,170,0,0,300,NULL),(422,0,91,82,204,86,205,423,0,300,NULL),(423,0,91,151,198,156,200,0,0,300,NULL),(424,0,91,147,202,148,206,425,0,300,NULL),(425,0,91,81,197,83,199,0,0,300,NULL),(426,0,92,51,190,60,197,0,0,0,NULL),(427,0,92,26,168,28,172,428,0,0,NULL),(428,0,92,112,161,114,166,0,0,0,NULL),(429,0,92,115,168,118,170,430,0,0,NULL),(430,0,92,33,167,37,170,0,0,0,NULL),(431,0,92,82,204,86,205,432,0,0,NULL),(432,0,92,151,198,156,200,0,0,0,NULL),(433,0,92,147,202,148,206,434,0,0,NULL),(434,0,92,81,197,83,199,0,0,0,NULL),(435,0,91,52,161,53,163,436,0,300,NULL),(436,0,95,19,104,20,105,0,1,300,NULL),(437,0,95,17,106,18,107,438,0,300,NULL),(438,0,91,54,163,55,164,0,5,300,NULL),(439,0,92,52,161,53,163,440,0,300,NULL),(440,0,96,19,104,20,105,0,1,300,NULL),(441,0,96,17,106,18,107,442,0,300,NULL),(442,0,92,54,163,55,164,0,5,300,NULL),(443,0,97,31,88,36,95,0,0,0,NULL),(444,0,98,98,128,108,137,0,0,0,NULL),(445,0,99,98,128,108,137,0,0,0,NULL),(446,0,98,141,41,146,45,0,0,0,NULL),(447,0,99,141,41,146,45,0,0,0,NULL),(448,0,98,194,124,198,127,0,0,0,NULL),(449,0,99,194,124,198,127,0,0,0,NULL),(450,0,91,65,218,67,219,451,3,300,NULL),(451,0,100,24,90,25,86,0,5,300,NULL),(452,0,100,19,87,20,88,453,5,300,NULL),(453,0,91,62,213,64,214,0,3,300,NULL),(454,0,100,42,80,44,81,455,0,300,NULL),(455,0,100,212,31,213,32,0,0,300,NULL),(456,0,100,215,33,217,34,457,0,300,NULL),(457,0,100,40,82,41,84,0,0,300,NULL),(458,0,100,40,97,42,98,459,0,300,NULL),(459,0,100,107,225,109,226,0,0,300,NULL),(460,0,100,108,229,110,230,461,0,300,NULL),(461,0,100,39,94,40,95,0,0,300,NULL),(474,0,102,125,126,130,130,0,0,10,NULL),(475,0,1,115,231,117,233,476,0,0,NULL),(476,0,1,45,152,48,155,0,0,0,NULL),(477,0,1,45,148,47,150,478,0,0,NULL),(478,0,1,112,232,113,234,0,0,0,NULL),(479,0,1,233,106,237,108,480,0,0,NULL),(480,0,1,241,85,242,89,0,0,0,NULL),(481,0,1,244,86,245,89,482,0,0,NULL),(482,0,1,229,108,231,110,0,0,0,NULL),(483,0,103,125,126,130,130,0,0,10,NULL),(484,0,104,125,126,130,130,0,0,10,NULL),(485,0,105,125,126,130,130,0,0,10,NULL),(486,0,106,125,126,130,130,0,0,10,NULL),(487,0,91,90,181,91,184,488,3,300,NULL),(488,0,110,213,193,214,196,0,5,300,NULL),(489,0,110,211,190,212,191,490,5,300,NULL),(490,0,91,94,184,95,187,0,3,300,NULL),(491,0,110,179,148,180,149,492,0,300,NULL),(492,0,110,133,166,136,167,0,0,300,NULL),(493,0,110,131,170,133,171,494,0,300,NULL),(494,0,110,213,193,214,196,0,0,300,NULL),(495,0,110,179,185,180,187,496,0,300,NULL),(496,0,110,127,29,128,30,0,0,300,NULL),(497,0,110,126,33,127,34,498,0,300,NULL),(498,0,110,181,188,183,188,0,0,300,NULL),(499,0,110,179,210,180,211,500,0,300,NULL),(500,0,110,34,198,35,199,0,0,300,NULL),(501,0,110,36,195,37,196,502,0,300,NULL),(502,0,110,181,208,183,209,0,0,300,NULL),(503,0,79,203,56,207,59,0,0,0,NULL),(504,0,79,188,90,192,91,0,0,0,NULL),(505,0,79,221,91,227,92,0,0,0,NULL),(506,0,79,191,20,194,23,0,0,0,NULL),(507,0,79,170,55,173,59,0,0,0,NULL),(508,0,79,230,28,236,29,0,0,0,NULL),(509,0,112,236,152,237,153,0,0,400,NULL),(510,0,8,176,38,178,40,511,0,400,NULL),(511,0,112,236,152,237,153,0,0,400,NULL),(512,0,112,198,173,199,175,513,0,400,NULL),(513,0,112,107,67,108,68,0,0,400,NULL),(514,0,112,80,233,81,235,515,0,400,NULL),(515,0,112,201,155,202,156,0,0,400,NULL),(516,0,112,199,137,200,138,517,0,400,NULL),(517,0,112,82,226,83,227,0,0,400,NULL),(518,0,112,100,66,101,68,519,0,400,NULL),(519,0,112,201,155,202,156,0,0,400,NULL),(520,0,112,236,175,239,176,521,0,400,NULL),(521,0,8,187,54,189,55,0,0,400,NULL),(522,0,113,24,118,27,121,0,0,700,NULL),(523,0,57,208,219,211,221,524,3,700,NULL),(524,0,113,24,118,27,121,0,1,700,NULL),(525,0,113,17,118,19,121,526,1,700,NULL),(526,0,57,214,203,218,206,0,3,700,NULL),(527,0,113,62,108,67,112,528,0,700,NULL),(528,0,113,149,85,152,88,0,0,700,NULL),(529,0,113,143,89,149,91,530,0,700,NULL),(530,0,113,60,108,62,112,0,0,700,NULL),(531,0,113,22,228,27,229,0,0,700,NULL),(532,0,79,227,55,227,60,533,0,0,NULL),(533,0,114,232,56,234,59,0,0,0,NULL),(534,0,114,228,56,229,59,535,0,0,NULL),(535,0,79,223,56,224,59,0,0,0,NULL),(537,0,114,238,237,239,238,0,0,750,NULL),(540,0,121,147,27,148,28,0,0,0,NULL),(541,0,0,176,29,178,32,542,0,770,NULL),(542,0,116,120,125,121,128,0,0,770,NULL),(543,0,116,117,124,118,125,544,0,770,NULL),(544,0,0,179,30,181,31,0,0,770,NULL),(545,0,116,130,130,131,131,546,0,770,NULL),(546,0,117,131,128,132,129,0,0,770,NULL),(547,0,117,129,131,132,132,548,0,770,NULL),(548,0,116,128,127,129,130,0,0,770,NULL),(549,0,117,116,124,117,127,550,0,770,NULL),(550,0,118,123,123,124,124,0,0,770,NULL),(551,0,118,121,118,122,120,552,0,770,NULL),(552,0,117,131,127,132,128,0,0,770,NULL),(553,0,118,135,130,136,131,554,0,770,NULL),(554,0,119,125,119,126,120,0,0,770,NULL),(555,0,119,122,117,123,119,556,0,770,NULL),(556,0,118,135,127,136,128,0,0,770,NULL),(557,0,119,136,131,137,132,558,0,770,NULL),(558,0,120,126,119,127,120,0,0,770,NULL),(559,0,120,121,118,122,120,560,0,770,NULL),(560,0,119,136,127,137,128,0,0,770,NULL),(561,0,116,120,125,121,128,0,0,770,NULL),(562,0,117,131,128,132,129,0,0,770,NULL),(563,0,118,123,123,124,124,0,0,770,NULL),(564,0,119,125,119,126,120,0,0,770,NULL),(565,0,120,126,119,127,120,0,0,770,NULL),(566,0,0,138,120,139,121,0,0,0,NULL),(567,0,122,128,110,140,125,0,0,800,NULL),(568,0,122,126,128,127,129,569,0,800,NULL),(569,0,122,103,159,104,160,0,0,800,NULL),(570,0,122,107,154,108,155,571,0,800,NULL),(571,0,122,128,125,129,126,0,0,800,NULL),(572,0,122,148,111,148,113,573,0,800,NULL),(573,0,122,182,102,183,103,0,0,800,NULL),(574,0,122,177,102,177,104,575,0,800,NULL),(575,0,122,142,112,143,113,0,0,800,NULL),(576,0,122,132,102,133,103,577,0,800,NULL),(577,0,122,132,68,133,69,0,0,800,NULL),(578,0,122,133,73,135,73,579,0,800,NULL),(579,0,122,133,107,134,108,0,0,800,NULL),(580,0,122,120,113,121,114,581,0,800,NULL),(581,0,122,88,104,89,105,0,0,800,NULL),(582,0,122,92,105,92,107,583,0,800,NULL),(583,0,122,125,114,126,115,0,0,800,NULL),(584,0,122,142,128,144,129,585,0,800,NULL),(585,0,122,160,152,161,153,0,0,800,NULL),(586,0,122,158,150,160,151,587,0,800,NULL),(587,0,122,139,125,140,126,0,0,800,NULL),(588,0,122,241,91,242,92,590,0,800,NULL),(589,0,122,12,158,13,158,590,0,800,NULL),(590,0,122,192,9,193,11,0,0,800,NULL),(591,0,123,236,87,239,91,0,0,850,NULL),(592,0,123,215,109,216,111,593,0,850,NULL),(593,0,123,204,64,208,67,0,0,850,NULL),(594,0,123,207,67,210,68,595,0,850,NULL),(595,0,123,220,107,221,111,0,0,850,NULL),(596,0,123,217,116,220,117,597,0,850,NULL),(597,0,126,204,64,208,67,0,0,850,NULL),(598,0,126,207,67,210,68,599,0,850,NULL),(599,0,123,222,111,225,113,0,0,850,NULL),(600,0,123,223,122,226,122,601,0,850,NULL),(601,0,124,204,64,208,67,0,0,850,NULL),(602,0,124,207,67,210,68,603,0,850,NULL),(603,0,123,226,117,230,119,0,0,850,NULL),(604,0,123,228,127,231,128,605,0,850,NULL),(605,0,127,204,64,208,67,0,0,850,NULL),(606,0,127,207,67,210,68,607,0,850,NULL),(607,0,123,233,112,236,124,0,0,850,NULL),(608,0,123,235,129,237,130,609,0,850,NULL),(609,0,125,204,64,208,67,0,0,850,NULL),(610,0,125,207,67,210,68,611,0,850,NULL),(611,0,123,236,124,239,125,0,0,850,NULL),(612,0,2,159,55,160,59,613,3,850,NULL),(613,0,123,236,87,239,91,0,3,850,NULL),(614,0,123,232,86,234,89,615,7,850,NULL),(615,0,2,163,54,165,59,0,3,850,NULL),(616,0,123,224,111,231,115,0,0,850,NULL),(617,0,128,129,126,132,129,0,0,1000,NULL),(618,0,129,128,124,131,127,0,0,1020,NULL),(619,0,130,128,122,131,126,0,0,1030,NULL),(620,0,131,236,13,242,16,0,0,1050,NULL),(621,0,131,196,25,198,27,622,0,1050,NULL),(622,0,131,80,74,82,77,0,0,1050,NULL),(623,0,131,75,74,77,76,624,0,1050,NULL),(624,0,131,197,30,200,29,0,0,1050,NULL),(625,0,131,206,42,211,43,626,0,1050,NULL),(626,0,131,141,204,145,203,0,0,1050,NULL),(627,0,131,143,208,144,210,628,0,1050,NULL),(628,0,131,207,38,210,38,0,0,1050,NULL),(629,0,8,188,74,190,76,630,0,1050,NULL),(630,0,131,240,19,244,21,0,0,1050,NULL),(631,0,132,123,114,132,128,0,0,1070,NULL),(632,0,4,3,238,4,242,633,0,1070,NULL),(633,0,132,123,114,132,128,0,0,1070,NULL);
/*!40000 ALTER TABLE `gate_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_kill_point`
--

DROP TABLE IF EXISTS `gen_kill_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_kill_point` (
  `type` tinyint(3) unsigned NOT NULL,
  `min` smallint(6) NOT NULL,
  `max` smallint(6) NOT NULL,
  `points_add_1` int(11) NOT NULL,
  `points_add_2` int(11) NOT NULL,
  `points_add_3` int(11) NOT NULL,
  `points_add_4` int(11) NOT NULL,
  `points_add_5` int(11) NOT NULL,
  `points_dec_1` int(11) NOT NULL,
  `points_dec_2` int(11) NOT NULL,
  `points_dec_3` int(11) NOT NULL,
  `points_dec_4` int(11) NOT NULL,
  `points_dec_5` int(11) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_kill_point`
--

LOCK TABLES `gen_kill_point` WRITE;
/*!40000 ALTER TABLE `gen_kill_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_kill_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_ranking` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_ranking`
--

LOCK TABLES `gen_ranking` WRITE;
/*!40000 ALTER TABLE `gen_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_reward`
--

DROP TABLE IF EXISTS `gen_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_reward` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `data_1` int(10) unsigned NOT NULL,
  `data_2` int(10) unsigned NOT NULL,
  `data_3` int(10) unsigned NOT NULL,
  `data_4` int(10) unsigned NOT NULL,
  PRIMARY KEY (`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_reward`
--

LOCK TABLES `gen_reward` WRITE;
/*!40000 ALTER TABLE `gen_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goblin_points_data`
--

DROP TABLE IF EXISTS `goblin_points_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goblin_points_data` (
  `monster_level_min` smallint(6) NOT NULL,
  `mosnter_level_max` smallint(6) NOT NULL,
  `player_level_min` smallint(6) NOT NULL,
  `player_level_max` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goblin_points_data`
--

LOCK TABLES `goblin_points_data` WRITE;
/*!40000 ALTER TABLE `goblin_points_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `goblin_points_data` ENABLE KEYS */;
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
  `effect_1` smallint(5) unsigned NOT NULL,
  `value_1` smallint(5) unsigned NOT NULL,
  `effect_2` smallint(5) unsigned NOT NULL,
  `value_2` smallint(5) unsigned NOT NULL,
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
  `id` int(10) unsigned NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level_min` tinyint(3) unsigned NOT NULL,
  `level_max` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill_rate` smallint(5) unsigned NOT NULL,
  `luck_rate` smallint(5) unsigned NOT NULL,
  `option_min` tinyint(3) unsigned NOT NULL,
  `option_max` tinyint(3) unsigned NOT NULL,
  `excellent_min` tinyint(3) unsigned NOT NULL,
  `excellent_max` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `ancient_option_min` tinyint(3) unsigned NOT NULL,
  `ancient_option_max` tinyint(3) unsigned NOT NULL,
  `socket_1_rate` smallint(5) unsigned NOT NULL,
  `socket_2_rate` smallint(5) unsigned NOT NULL,
  `socket_3_rate` smallint(5) unsigned NOT NULL,
  `socket_4_rate` smallint(5) unsigned NOT NULL,
  `socket_5_rate` smallint(5) unsigned NOT NULL,
  `rate` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `group` int(11) NOT NULL,
  `duration` bigint(20) NOT NULL
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
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL,
  `required_level` smallint(6) NOT NULL,
  `money_rate` smallint(5) unsigned NOT NULL,
  `money_min` int(10) unsigned NOT NULL,
  `money_max` int(10) unsigned NOT NULL,
  `ruud_rate` smallint(5) unsigned NOT NULL,
  `ruud_min` int(10) unsigned NOT NULL,
  `ruud_max` int(10) unsigned NOT NULL,
  `drop_min` int(10) unsigned NOT NULL,
  `drop_max` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
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
  `level` tinyint(3) unsigned NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level_min` tinyint(3) unsigned NOT NULL,
  `level_max` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option_min` tinyint(3) unsigned NOT NULL,
  `option_max` tinyint(3) unsigned NOT NULL,
  `excellent_min` tinyint(3) unsigned NOT NULL,
  `excellent_max` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `monster` smallint(5) unsigned NOT NULL,
  `monster_level_min` smallint(6) NOT NULL,
  `monster_level_max` smallint(6) NOT NULL,
  `event_id` tinyint(3) unsigned NOT NULL,
  `invasion_id` int(10) unsigned NOT NULL,
  `season_event` tinyint(3) unsigned NOT NULL,
  `rate` smallint(5) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL
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
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `link` tinyint(3) unsigned NOT NULL,
  `option_1` tinyint(3) unsigned NOT NULL,
  `value_1` tinyint(3) unsigned NOT NULL,
  `option_2` tinyint(3) unsigned NOT NULL,
  `value_2` tinyint(3) unsigned NOT NULL,
  `option_3` tinyint(3) unsigned NOT NULL,
  `value_3` tinyint(3) unsigned NOT NULL,
  `option_4` tinyint(3) unsigned NOT NULL,
  `value_4` tinyint(3) unsigned NOT NULL,
  `option_5` tinyint(3) unsigned NOT NULL,
  `value_5` tinyint(3) unsigned NOT NULL,
  `socket_1_rate` tinyint(3) unsigned NOT NULL,
  `socket_2_rate` tinyint(3) unsigned NOT NULL,
  `socket_3_rate` tinyint(3) unsigned NOT NULL,
  `socket_4_rate` tinyint(3) unsigned NOT NULL,
  `socket_5_rate` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`index`)
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
  `link_1` tinyint(3) unsigned NOT NULL,
  `link_2` tinyint(3) unsigned NOT NULL,
  `option_1` tinyint(3) unsigned NOT NULL,
  `value_1` tinyint(3) unsigned NOT NULL,
  `option_2` tinyint(3) unsigned NOT NULL,
  `value_2` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_bonus`
--

LOCK TABLES `item_earring_bonus` WRITE;
/*!40000 ALTER TABLE `item_earring_bonus` DISABLE KEYS */;
INSERT INTO `item_earring_bonus` VALUES (0,1,1,21,7,24,2),(1,1,1,21,7,24,2),(2,1,1,21,7,24,2);
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
  `type` tinyint(3) unsigned NOT NULL,
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
  `group` tinyint(3) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_option_value`
--

LOCK TABLES `item_earring_option_value` WRITE;
/*!40000 ALTER TABLE `item_earring_option_value` DISABLE KEYS */;
INSERT INTO `item_earring_option_value` VALUES (0,0,200),(0,1,400),(0,2,600),(1,0,17),(1,1,19),(1,2,21),(2,0,4),(2,1,5),(2,2,6),(3,0,10),(3,1,10),(3,2,10),(4,0,20),(4,1,0),(4,2,2),(5,0,7),(5,1,7),(5,2,7),(6,0,35),(6,1,1),(6,2,3),(7,0,1),(7,1,2),(7,2,3);
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
  `rate` int(11) NOT NULL,
  `type_1` tinyint(3) unsigned NOT NULL,
  `index_1` smallint(5) unsigned NOT NULL,
  `amount_1` int(11) NOT NULL,
  `type_2` tinyint(3) unsigned NOT NULL,
  `index_2` smallint(5) unsigned NOT NULL,
  `amount_2` int(11) NOT NULL,
  `type_3` tinyint(3) unsigned NOT NULL,
  `index_3` smallint(5) unsigned NOT NULL,
  `amount_3` int(11) NOT NULL,
  `price` int(11) NOT NULL,
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
  `flag` int(10) unsigned NOT NULL,
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
INSERT INTO `item_guardian_elite_option` VALUES (0,'Bleeding Damage Resistance +%d'),(1,'Poison Damage Resistance +%d'),(2,'Attack Reduction Resistance +%d'),(3,'Attack Speed Reduction Resistance +%d'),(4,'Defense Reduction Resistance +%d');
/*!40000 ALTER TABLE `item_guardian_elite_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_elite_option_value`
--

DROP TABLE IF EXISTS `item_guardian_elite_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_elite_option_value` (
  `type` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `id_1` tinyint(3) unsigned NOT NULL,
  `formula_data_1` tinyint(3) unsigned NOT NULL,
  `value_type_1` tinyint(3) unsigned NOT NULL,
  `id_2` tinyint(3) unsigned NOT NULL,
  `formula_data_2` tinyint(3) unsigned NOT NULL,
  `value_type_2` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`type`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_elite_option_value`
--

LOCK TABLES `item_guardian_elite_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_elite_option_value` DISABLE KEYS */;
INSERT INTO `item_guardian_elite_option_value` VALUES (1,0,0,5,0,2,7,0),(1,1,1,6,0,2,7,0),(1,2,0,5,0,3,8,0),(1,3,1,6,0,4,9,0),(1,4,0,5,0,4,9,0),(2,0,0,15,0,2,17,0),(2,1,1,16,0,2,17,0),(2,2,0,15,0,3,18,0),(2,3,1,16,0,4,19,0),(2,4,0,15,0,4,19,0);
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
INSERT INTO `item_guardian_option` VALUES (0,'Elemental Damage Increase +%d'),(1,'Elemental Defense Increase +%d'),(2,'(up to %d Lvl) Defense increase by %0.1f every 20 Lv'),(3,'(up to %d Lvl) Attack/Wizardry/Curse damage increase by 0.1f every 20 Lv'),(4,'A 3%% chance of health recovery by %d');
/*!40000 ALTER TABLE `item_guardian_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_option_value`
--

DROP TABLE IF EXISTS `item_guardian_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_option_value` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `formula_data` tinyint(3) unsigned NOT NULL,
  `value_type` tinyint(3) unsigned NOT NULL,
  `condition` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_option_value`
--

LOCK TABLES `item_guardian_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_option_value` DISABLE KEYS */;
INSERT INTO `item_guardian_option_value` VALUES (1,0,0,0,0),(2,0,10,0,0),(1,1,1,0,0),(2,1,11,0,0),(1,2,2,0,1100),(2,2,12,0,1100),(1,3,3,0,1100),(2,3,13,0,1100),(1,4,4,0,0),(2,4,14,0,0);
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
  `rate` tinyint(3) unsigned NOT NULL,
  `min_level` tinyint(3) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `required_zen_1` int(11) NOT NULL,
  `value_2` int(11) NOT NULL,
  `required_zen_2` int(11) NOT NULL,
  `value_3` int(11) NOT NULL,
  `required_zen_3` int(11) NOT NULL,
  `value_4` int(11) NOT NULL,
  `required_zen_4` int(11) NOT NULL,
  `value_5` int(11) NOT NULL,
  `required_zen_5` int(11) NOT NULL,
  `value_6` int(11) NOT NULL,
  `required_zen_6` int(11) NOT NULL,
  `value_7` int(11) NOT NULL,
  `required_zen_7` int(11) NOT NULL,
  `value_8` int(11) NOT NULL,
  `required_zen_8` int(11) NOT NULL,
  `value_9` int(11) NOT NULL,
  `required_zen_9` int(11) NOT NULL,
  `value_10` int(11) NOT NULL,
  `required_zen_10` int(11) NOT NULL,
  `value_11` int(11) NOT NULL,
  `required_zen_11` int(11) NOT NULL,
  `value_12` int(11) NOT NULL,
  `required_zen_12` int(11) NOT NULL,
  `value_13` int(11) NOT NULL,
  `required_zen_13` int(11) NOT NULL,
  `value_14` int(11) NOT NULL,
  `required_zen_14` int(11) NOT NULL,
  `value_15` int(11) NOT NULL,
  `required_zen_15` int(11) NOT NULL,
  `value_16` int(11) NOT NULL,
  `required_zen_16` int(11) NOT NULL,
  PRIMARY KEY (`type`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_harmony`
--

LOCK TABLES `item_harmony` WRITE;
/*!40000 ALTER TABLE `item_harmony` DISABLE KEYS */;
INSERT INTO `item_harmony` VALUES (1,1,'Add Min Physi Damage',50,0,2,100000,3,110000,4,120000,5,130000,6,140000,7,150000,9,200000,11,220000,12,240000,14,280000,15,320000,16,360000,17,400000,20,500000,20,500000,20,500000),(1,2,'Add Max Physi Damage',50,0,3,100000,4,110000,5,120000,6,130000,7,140000,8,150000,10,200000,12,220000,14,240000,17,280000,20,320000,23,360000,26,400000,29,500000,29,500000,29,500000),(1,3,'Sub Require Strength',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(1,4,'Sub Require Dexterity',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(1,5,'Add Physi Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,7,200000,8,220000,9,240000,11,280000,12,320000,14,360000,16,400000,19,500000,19,500000,19,500000),(1,6,'Add Critical Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,12,200000,14,220000,16,240000,18,280000,20,320000,22,360000,24,400000,30,500000,30,500000,30,500000),(1,7,'Add Skill Damage',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,280000,14,320000,16,360000,18,400000,22,500000,22,500000,22,500000),(1,8,'Add Attack Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,280000,7,320000,9,360000,11,400000,14,500000,14,500000,14,500000),(1,9,'Sub SD Rate',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,5,320000,7,360000,9,400000,10,500000,10,500000,10,500000),(1,10,'Add SD Ignore Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,500000,10,500000,10,500000),(2,1,'Add Magic Damage',50,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,17,200000,18,220000,19,240000,21,280000,23,320000,25,360000,27,400000,31,500000,31,500000,31,500000),(2,2,'Sub Require Strength',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(2,3,'Sub Require Dexterity',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(2,4,'Add Skill Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,7,200000,10,220000,13,240000,16,280000,19,320000,22,360000,25,400000,30,500000,30,500000,30,500000),(2,5,'Add Critical Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,28,500000,28,500000,28,500000),(2,6,'Sub SD Rate',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,280000,6,320000,8,360000,10,400000,13,500000,13,500000,13,500000),(2,7,'Add Attack Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,280000,7,320000,9,360000,11,400000,14,500000,14,500000,14,500000),(2,8,'Add SD Ignore Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,500000,15,500000,15,500000),(3,1,'Add Defense',50,0,3,100000,4,110000,5,120000,6,130000,7,140000,8,150000,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,25,500000,25,500000,25,500000),(3,2,'Add Max BP',40,3,0,0,0,0,0,0,4,130000,6,140000,8,150000,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,25,500000,25,500000,25,500000),(3,3,'Add Max HP',40,3,0,0,0,0,0,0,7,130000,9,140000,11,150000,13,200000,15,220000,17,240000,19,280000,21,320000,23,360000,25,400000,30,500000,30,500000,30,500000),(3,4,'Add HP Recovery',30,6,0,0,0,0,0,0,0,0,0,0,0,0,1,200000,2,220000,3,240000,4,280000,5,320000,6,360000,7,400000,8,500000,8,500000,8,500000),(3,5,'Add MP Recovery',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,280000,2,320000,3,360000,4,400000,5,500000,5,500000,5,500000),(3,6,'Add Defense Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,4,320000,5,360000,6,400000,8,500000,8,500000,8,500000),(3,7,'Add Damage Reduction',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,4,320000,5,360000,6,400000,7,500000,7,500000,7,500000),(3,8,'Add SD Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,500000,5,500000,5,500000);
/*!40000 ALTER TABLE `item_harmony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_harmony_enhancement`
--

DROP TABLE IF EXISTS `item_harmony_enhancement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_harmony_enhancement` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_1` int(11) NOT NULL,
  `value_2` int(11) NOT NULL,
  `value_3` int(11) NOT NULL,
  `value_4` int(11) NOT NULL,
  `separation_value` tinyint(3) unsigned NOT NULL,
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
  `level` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `price_flag` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
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
  `value` int(11) NOT NULL,
  `rate` smallint(5) unsigned NOT NULL,
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
  `luck` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `rate` smallint(5) unsigned NOT NULL,
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
  `level` tinyint(3) unsigned NOT NULL,
  `buy_price` bigint(20) NOT NULL,
  `sell_price` bigint(20) NOT NULL,
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
  `ruud_price` int(10) unsigned NOT NULL,
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
  `quest_type` smallint(5) unsigned NOT NULL,
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
  `level` tinyint(3) unsigned NOT NULL,
  `rate` int(10) unsigned NOT NULL,
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
  `ancient_option_1_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_1_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_2_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_2_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_3_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_3_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_4_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_4_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_5_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_5_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_6_0` tinyint(3) unsigned NOT NULL,
  `ancient_option_6_1` tinyint(3) unsigned NOT NULL,
  `ancient_option_value_1_0` int(11) NOT NULL,
  `ancient_option_value_1_1` int(11) NOT NULL,
  `ancient_option_value_2_0` int(11) NOT NULL,
  `ancient_option_value_2_1` int(11) NOT NULL,
  `ancient_option_value_3_0` int(11) NOT NULL,
  `ancient_option_value_3_1` int(11) NOT NULL,
  `ancient_option_value_4_0` int(11) NOT NULL,
  `ancient_option_value_4_1` int(11) NOT NULL,
  `ancient_option_value_5_0` int(11) NOT NULL,
  `ancient_option_value_5_1` int(11) NOT NULL,
  `ancient_option_value_6_0` int(11) NOT NULL,
  `ancient_option_value_6_1` int(11) NOT NULL,
  `extra_option_1` tinyint(3) unsigned NOT NULL,
  `extra_option_2` tinyint(3) unsigned NOT NULL,
  `extra_option_value_1` int(11) NOT NULL,
  `extra_option_value_2` int(11) NOT NULL,
  `full_option_1` tinyint(3) unsigned NOT NULL,
  `full_option_2` tinyint(3) unsigned NOT NULL,
  `full_option_3` tinyint(3) unsigned NOT NULL,
  `full_option_4` tinyint(3) unsigned NOT NULL,
  `full_option_5` tinyint(3) unsigned NOT NULL,
  `full_option_6` tinyint(3) unsigned NOT NULL,
  `full_option_7` tinyint(3) unsigned NOT NULL,
  `full_option_8` tinyint(3) unsigned NOT NULL,
  `full_option_9` tinyint(3) unsigned NOT NULL,
  `full_option_value_1` int(11) NOT NULL,
  `full_option_value_2` int(11) NOT NULL,
  `full_option_value_3` int(11) NOT NULL,
  `full_option_value_4` int(11) NOT NULL,
  `full_option_value_5` int(11) NOT NULL,
  `full_option_value_6` int(11) NOT NULL,
  `full_option_value_7` int(11) NOT NULL,
  `full_option_value_8` int(11) NOT NULL,
  `full_option_value_9` int(11) NOT NULL,
  `ancient_hero_soul` tinyint(4) NOT NULL,
  `disassemble` tinyint(4) NOT NULL,
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
  `ancient_id_1` tinyint(3) unsigned NOT NULL,
  `ancient_id_2` tinyint(3) unsigned NOT NULL,
  `ancient_id_3` tinyint(3) unsigned NOT NULL,
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
  `socket_slot` tinyint(3) unsigned NOT NULL,
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
  `start_item_type` tinyint(4) NOT NULL,
  `end_item_type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  `success_rate` tinyint(3) unsigned NOT NULL,
  `required_socket_1` tinyint(3) unsigned NOT NULL,
  `required_socket_2` tinyint(3) unsigned NOT NULL,
  `required_socket_3` tinyint(3) unsigned NOT NULL,
  `required_socket_4` tinyint(3) unsigned NOT NULL,
  `required_socket_5` tinyint(3) unsigned NOT NULL,
  `seed_level_min` tinyint(3) unsigned NOT NULL,
  `seed_level_max` tinyint(3) unsigned NOT NULL,
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
  `price` int(10) unsigned NOT NULL,
  `success_rate` tinyint(3) unsigned NOT NULL,
  `required_rune` int(10) unsigned NOT NULL,
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
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  `required_type_1` tinyint(3) unsigned NOT NULL,
  `required_type_2` tinyint(3) unsigned NOT NULL,
  `required_type_3` tinyint(3) unsigned NOT NULL,
  `required_type_4` tinyint(3) unsigned NOT NULL,
  `required_type_5` tinyint(3) unsigned NOT NULL,
  `required_type_6` tinyint(3) unsigned NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL,
  `sub_type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned NOT NULL,
  `level_1` int(10) unsigned NOT NULL,
  `level_2` int(10) unsigned NOT NULL,
  `level_3` int(10) unsigned NOT NULL,
  `level_4` int(10) unsigned NOT NULL,
  `level_5` int(10) unsigned NOT NULL,
  `level_6` int(10) unsigned NOT NULL,
  `level_7` int(10) unsigned NOT NULL,
  `level_8` int(10) unsigned NOT NULL,
  `level_9` int(10) unsigned NOT NULL,
  `level_10` int(10) unsigned NOT NULL,
  `level_11` int(10) unsigned NOT NULL,
  `level_12` int(10) unsigned NOT NULL,
  `level_13` int(10) unsigned NOT NULL,
  `level_14` int(10) unsigned NOT NULL,
  `level_15` int(10) unsigned NOT NULL,
  `level_16` int(10) unsigned NOT NULL,
  `level_17` int(10) unsigned NOT NULL,
  `level_18` int(10) unsigned NOT NULL,
  `level_19` int(10) unsigned NOT NULL,
  `level_20` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_seed`
--

LOCK TABLES `item_socket_seed` WRITE;
/*!40000 ALTER TABLE `item_socket_seed` DISABLE KEYS */;
INSERT INTO `item_socket_seed` VALUES (0,1,0,'Add Damage By Level',30,11,12,13,14,15,16,17,18,19,20,0,0,0,0,0,0,0,0,0,0),(1,1,1,'Add Speed',20,7,8,9,10,11,12,13,14,15,16,0,0,0,0,0,0,0,0,0,0),(2,1,2,'Add Min Damage',30,30,32,35,40,50,55,61,67,73,83,0,0,0,0,0,0,0,0,0,0),(3,1,3,'Add Max Damage',40,20,22,25,30,35,40,45,51,57,63,0,0,0,0,0,0,0,0,0,0),(4,1,4,'Add Damage',20,20,22,25,30,35,40,45,51,57,63,0,0,0,0,0,0,0,0,0,0),(5,1,5,'Sub BP Consumption Rate',30,40,41,42,43,44,45,46,47,48,49,0,0,0,0,0,0,0,0,0,0),(10,2,0,'Mul Defense Success Rate',10,10,11,12,13,14,15,16,17,18,19,0,0,0,0,0,0,0,0,0,0),(11,2,1,'Add Defense',30,30,33,36,39,41,44,47,51,55,60,0,0,0,0,0,0,0,0,0,0),(12,2,2,'Add Shield Damage Reduction',50,100,150,250,300,350,400,450,500,550,600,0,0,0,0,0,0,0,0,0,0),(13,2,3,'Add Damage Reduction',20,4,5,6,7,8,9,10,11,12,13,0,0,0,0,0,0,0,0,0,0),(14,2,4,'Add Damage Reflect',40,5,6,7,8,9,10,11,12,13,14,0,0,0,0,0,0,0,0,0,0),(16,3,0,'Add Hunt HP',30,250,280,310,340,372,404,436,471,506,541,0,0,0,0,0,0,0,0,0,0),(17,3,1,'Add Hunt MP',20,400,450,500,550,601,652,703,755,807,859,0,0,0,0,0,0,0,0,0,0),(18,3,2,'Add Skill Damage',10,37,40,45,50,57,64,71,80,89,100,0,0,0,0,0,0,0,0,0,0),(19,3,3,'Add Attack Success Rate',50,25,27,30,35,42,49,56,65,74,83,0,0,0,0,0,0,0,0,0,0),(20,3,4,'Add Item Durability Rate',30,30,32,34,36,40,44,49,54,60,66,0,0,0,0,0,0,0,0,0,0),(21,4,0,'Add HP Recovery',40,8,10,13,16,21,26,31,38,45,52,0,0,0,0,0,0,0,0,0,0),(22,4,1,'Add Max HP',30,100,115,130,145,165,185,205,235,265,295,0,0,0,0,0,0,0,0,0,0),(23,4,2,'Add Max MP',40,150,165,180,195,215,235,255,285,315,345,0,0,0,0,0,0,0,0,0,0),(24,4,3,'Add MP Recovery',50,7,14,21,28,37,46,55,66,77,88,0,0,0,0,0,0,0,0,0,0),(25,4,4,'Add Max BP',40,70,82,95,110,126,143,162,182,203,226,0,0,0,0,0,0,0,0,0,0),(26,4,5,'Add BP Recovery',50,5,7,9,11,13,15,17,19,21,23,0,0,0,0,0,0,0,0,0,0),(29,5,0,'Add Excellent Damage',20,15,20,25,30,36,43,51,60,70,81,0,0,0,0,0,0,0,0,0,0),(30,5,1,'Add Excellent Damage Rate',10,10,11,12,13,14,15,16,17,18,19,0,0,0,0,0,0,0,0,0,0),(31,5,2,'Add Critical Damage',30,30,32,35,40,47,56,66,77,89,102,0,0,0,0,0,0,0,0,0,0),(32,5,3,'Add Critical Damage Rate',10,8,9,10,11,12,13,14,15,16,17,0,0,0,0,0,0,0,0,0,0),(34,6,0,'Add Strength',10,6,8,9,10,11,13,15,18,20,24,0,0,0,0,0,0,0,0,0,0),(35,6,1,'Add Dexterity',10,1,2,3,4,5,7,9,12,15,18,0,0,0,0,0,0,0,0,0,0),(36,6,2,'Add Vitality',10,30,32,34,36,38,41,44,48,52,57,0,0,0,0,0,0,0,0,0,0),(37,6,3,'Add Energy',10,10,12,13,15,17,20,23,27,31,36,0,0,0,0,0,0,0,0,0,0);
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
  `attribute` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `next_id` smallint(5) unsigned NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level_min` tinyint(3) unsigned NOT NULL,
  `level_max` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `seed_sphere` tinyint(3) unsigned NOT NULL,
  `socket_min` tinyint(3) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `rate` smallint(5) unsigned NOT NULL,
  `upgrade_type` tinyint(3) unsigned NOT NULL,
  `upgrade_index` smallint(5) unsigned NOT NULL,
  `upgrade_level` tinyint(3) unsigned NOT NULL,
  `upgrade_skill_rate` smallint(5) unsigned NOT NULL,
  `upgrade_luck_rate` smallint(5) unsigned NOT NULL,
  `upgrade_socket_1_rate` smallint(5) unsigned NOT NULL,
  `upgrade_socket_2_rate` smallint(5) unsigned NOT NULL,
  `upgrade_socket_3_rate` smallint(5) unsigned NOT NULL,
  `upgrade_socket_4_rate` smallint(5) unsigned NOT NULL,
  `upgrade_socket_5_rate` smallint(5) unsigned NOT NULL,
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
  `max_stack` tinyint(3) unsigned NOT NULL,
  `stack_on_loot` tinyint(4) NOT NULL,
  `stack_convert_type` tinyint(3) unsigned NOT NULL,
  `stack_convert_index` smallint(5) unsigned NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slot` smallint(6) NOT NULL DEFAULT '-1',
  `x` tinyint(3) unsigned NOT NULL,
  `y` tinyint(3) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `drop_rate` smallint(5) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_count` smallint(6) NOT NULL DEFAULT '-1' COMMENT 'Max item count that can be stored at same time, -1 means no limit',
  `ancient_attribute` tinyint(3) NOT NULL DEFAULT '-1',
  `kind_1` tinyint(3) unsigned NOT NULL,
  `kind_2` tinyint(3) NOT NULL DEFAULT '-1' COMMENT 'Item Class, Example Sword, Fist, Bow, Crossbow, Book',
  `kind_3` tinyint(3) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `buy_price` int(10) unsigned NOT NULL,
  `price_flags` int(10) unsigned NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `durability` tinyint(3) unsigned NOT NULL,
  `durability_magic` tinyint(3) unsigned NOT NULL,
  `durability_resistance` int(11) NOT NULL DEFAULT '0',
  `durability_time` int(11) NOT NULL DEFAULT '0',
  `durability_time_safe` int(11) NOT NULL DEFAULT '0',
  `durability_reduction` tinyint(3) unsigned NOT NULL,
  `required_level` smallint(6) NOT NULL,
  `required_strength` int(11) NOT NULL,
  `required_agility` int(11) NOT NULL,
  `required_vitality` int(11) NOT NULL,
  `required_energy` int(11) NOT NULL,
  `required_leadership` int(11) NOT NULL,
  `min_damage` int(10) unsigned NOT NULL,
  `max_damage` int(10) unsigned NOT NULL,
  `power` int(10) unsigned NOT NULL,
  `attack_speed` int(10) unsigned NOT NULL,
  `walk_speed` int(10) unsigned NOT NULL,
  `defence` int(10) unsigned NOT NULL,
  `defence_magic` int(10) unsigned NOT NULL,
  `defence_success_rate` int(10) unsigned NOT NULL,
  `resistance_ice` tinyint(3) unsigned NOT NULL,
  `resistance_poison` tinyint(3) unsigned NOT NULL,
  `resistance_lightning` tinyint(3) unsigned NOT NULL,
  `resistance_fire` tinyint(3) unsigned NOT NULL,
  `resistance_earth` tinyint(3) unsigned NOT NULL,
  `resistance_wind` tinyint(3) unsigned NOT NULL,
  `resistance_water` tinyint(3) unsigned NOT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_dark_knight` tinyint(3) unsigned NOT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned NOT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned NOT NULL,
  `required_class_dark_lord` tinyint(3) unsigned NOT NULL,
  `required_class_summoner` tinyint(3) unsigned NOT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned NOT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned NOT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_slayer` tinyint(3) unsigned NOT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned NOT NULL,
  `harmony_smelt_level` smallint(6) NOT NULL DEFAULT '-1',
  `use_delay` int(10) unsigned NOT NULL,
  `duration_time` int(10) unsigned NOT NULL,
  `looting_time` int(10) unsigned NOT NULL,
  `inventory_type` tinyint(3) unsigned NOT NULL,
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_template`
--

LOCK TABLES `item_template` WRITE;
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
INSERT INTO `item_template` VALUES (0,0,'Kris',0,1,2,143162303,10000,0,-1,0,1,1,1,0,0,0,6,20,0,1128,0,0,1,0,40,40,0,0,0,6,11,0,50,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,4,0,0,0,0,0),(0,1,'Short Sword',0,1,3,143162303,10000,0,-1,0,1,1,1,0,0,0,3,22,0,1128,0,0,1,0,60,0,0,0,0,3,7,0,20,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,4,0,0,0,0,0),(0,2,'Rapier',0,1,3,143162303,10000,0,-1,0,1,1,1,0,0,0,9,23,0,1128,0,0,1,0,50,40,0,0,0,9,15,0,40,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,1,1,0,4,0,0,0,0,0),(0,3,'Katana',0,1,3,143162303,10000,20,-1,0,1,1,1,0,0,0,16,27,0,1128,0,0,1,0,80,40,0,0,0,16,26,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,-1,0,0,0,0,0),(0,4,'Sword of Assassin',0,1,3,143162303,10000,21,-1,0,1,1,1,0,0,0,12,24,0,1128,0,0,1,0,60,40,0,0,0,12,18,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,4,0,0,0,0,0),(0,5,'Blade',0,1,3,143162303,10000,22,-1,0,1,1,1,0,0,0,36,39,0,1128,0,0,1,0,80,50,0,0,0,36,47,0,30,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0),(0,6,'Gladius',0,1,3,143162303,10000,20,-1,0,1,1,1,0,0,0,20,30,0,1128,0,0,1,0,110,0,0,0,0,20,30,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0),(0,7,'Falchion',0,1,3,143162303,10000,21,-1,0,1,1,1,0,0,0,24,34,0,1128,0,0,1,0,120,0,0,0,0,24,34,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,-1,0,0,0,0,0),(0,8,'Serpent Sword',0,1,3,143162303,10000,21,-1,0,1,1,1,0,0,0,30,36,0,1128,0,0,1,0,130,0,0,0,0,30,40,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,-1,0,0,0,0,0),(0,9,'Sword of Salamander',0,2,3,143162303,10000,20,-1,0,1,1,1,0,0,0,32,40,0,1128,0,0,1,0,103,0,0,0,0,32,46,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,10,'Light Saber',0,2,4,143162303,10000,22,-1,0,1,1,1,0,0,0,40,50,0,1128,0,0,1,0,80,60,0,0,0,47,61,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,11,'Legendary Sword',0,2,3,143162303,10000,20,-1,0,1,1,1,0,0,0,44,54,0,1128,0,0,1,0,120,0,0,0,0,56,72,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,12,'Heliacal Sword',0,2,3,143162303,10000,19,-1,0,1,1,1,0,0,0,56,66,0,1128,0,0,1,0,140,0,0,0,0,73,98,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,13,'Double Blade',0,1,3,143162303,10000,22,-1,0,1,1,1,0,0,0,48,43,0,1128,0,0,1,0,70,70,0,0,0,48,56,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,-1,0,0,0,0,0),(0,14,'Lighting Sword',0,1,3,143162303,10000,22,-1,0,1,1,1,0,0,0,59,50,0,1128,0,0,1,0,90,50,0,0,0,59,67,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,15,'Giant Sword',0,2,3,143162303,10000,23,-1,0,1,1,1,0,0,0,52,60,0,1128,0,0,1,0,140,0,0,0,0,60,85,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,16,'Sword of Destruction',0,1,4,143162303,10000,22,-1,0,1,1,1,0,0,0,82,84,0,1128,0,0,1,0,160,60,0,0,0,82,90,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,17,'Dark Breaker',0,2,4,143162303,10000,23,-1,0,1,1,1,0,0,0,104,89,0,1128,0,0,1,0,180,50,0,0,0,128,153,0,40,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,18,'Thunder Blade',0,2,3,143162303,10000,23,-1,0,1,2,1,0,0,0,105,86,0,1128,0,0,1,0,180,50,0,0,0,140,168,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,19,'Divine Sword of the Archangel',0,1,4,143145919,0,22,-1,-1,1,1,6,0,0,0,86,168,0,1128,0,0,1,0,140,50,0,0,0,220,230,0,45,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,-1,0,0,0,0,0),(0,20,'Knights Blade',0,1,4,143162303,10000,22,-1,0,1,1,1,0,0,0,140,90,0,1128,0,0,1,0,116,38,0,0,0,107,115,0,35,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,21,'Dark Reign Blade',0,2,4,143162303,10000,56,-1,0,1,2,1,0,0,0,140,100,0,1128,0,0,1,0,116,53,0,9,0,115,142,115,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,22,'Bone Blade',0,1,4,8928191,0,22,-1,-1,1,1,3,0,0,0,147,95,0,1128,0,0,1,380,100,35,0,0,0,122,135,0,40,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,23,'Explosion Blade',0,2,4,8928191,0,56,-1,-1,1,2,3,0,0,0,147,110,0,1128,0,0,1,380,98,48,0,7,0,127,155,134,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,24,'Daybreak',0,2,4,143162303,10000,22,-1,-1,1,1,1,0,0,0,115,90,0,1128,0,0,1,0,192,30,0,0,0,182,218,0,40,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,25,'Sword Dancer',0,2,4,143162303,10000,56,-1,-1,1,2,1,0,0,0,115,90,0,1128,0,0,1,0,136,57,0,9,0,109,136,108,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,26,'Flameberge',0,1,4,8944543,10000,22,-1,-1,1,1,2,0,0,0,137,90,0,1128,0,0,1,380,193,53,0,0,0,115,126,0,40,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,27,'Sword Breaker',0,1,4,8944543,10000,22,-1,-1,1,1,2,0,0,0,133,90,0,1128,0,0,1,380,53,176,0,0,0,91,99,0,35,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,28,'Rune Bastard Sword',0,1,4,8944543,10000,56,-1,-1,1,2,2,0,0,0,139,90,0,1128,0,0,1,380,91,73,0,17,0,98,122,109,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,29,'Sonic Blade',0,1,4,8928159,0,22,-1,-1,1,1,2,0,0,0,149,80,0,1128,0,0,1,400,49,162,0,0,0,109,116,0,35,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,30,'Asura',0,1,4,8928159,0,56,-1,-1,1,2,2,0,0,0,149,90,0,1128,0,0,1,400,86,70,0,16,0,115,140,112,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,31,'Rune Blade',0,2,4,143162303,10000,56,-1,2,1,2,1,0,0,0,100,93,0,1128,0,0,1,0,135,62,0,9,0,104,130,104,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,32,'Sacred Glove',0,1,2,143162303,10000,260,-1,0,1,3,1,0,0,0,52,65,0,1128,0,0,1,0,85,35,0,0,0,52,58,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,33,'Holy Storm Claw',0,1,2,143162303,10000,261,-1,-1,1,3,1,0,0,0,82,77,0,1128,0,0,1,0,100,50,0,0,0,82,88,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,34,'Piercing Blade Glove',0,1,2,143162303,10000,260,-1,-1,1,3,1,0,0,0,105,86,0,1128,0,0,1,0,120,60,0,0,0,95,101,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,35,'Phoenix Soul Star',0,1,2,8928191,0,270,-1,-1,1,3,3,0,0,0,147,98,0,1128,0,0,1,380,101,51,0,0,0,122,128,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,36,'Cyclone Sword',0,1,4,8928159,0,22,-1,-1,1,1,2,0,0,0,149,90,0,1128,0,0,1,400,182,50,0,0,0,129,144,0,40,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,37,'Blast Break',0,2,4,8928159,0,23,-1,-1,1,1,2,0,0,0,149,130,0,1128,0,0,1,400,182,50,0,0,0,163,216,0,30,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,39,'Lighting Sword-J',0,1,3,143145919,0,22,-1,-1,0,1,0,0,0,0,59,50,0,1128,0,0,1,0,90,50,0,0,0,59,67,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(0,40,'Sacred Glove-J',0,1,2,143145919,0,260,-1,-1,0,3,0,0,0,0,52,65,0,1128,0,0,1,0,85,35,0,0,0,52,58,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),(0,41,'Pandora Pick',0,2,2,143141823,0,0,-1,-1,0,0,0,0,0,0,0,255,0,1128,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(0,42,'Bloodangel Sword',0,1,4,76034751,0,22,-1,-1,14,1,1,0,0,0,150,100,0,1128,0,0,1,400,165,51,0,125,0,252,263,0,40,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,44,'Bloodangel Magic Sword',0,1,4,76034751,0,56,-1,-1,14,2,1,0,0,0,150,100,0,1128,0,0,1,400,120,72,0,17,0,246,257,112,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(0,46,'Bloodangel Claw',0,1,2,76034751,0,270,-1,-1,14,3,1,0,0,0,150,100,0,1128,0,0,1,400,95,30,0,0,0,147,157,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(0,48,'Sword of Destruction (Bound)',0,1,4,4611,0,22,-1,0,1,1,5,0,0,0,82,84,0,1128,0,0,1,0,50,50,0,0,0,101,115,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,49,'Thunder Blade (Bound)',0,2,3,4611,0,23,-1,0,1,2,5,0,0,0,105,86,0,1128,0,0,1,0,50,50,0,0,0,162,190,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,50,'Holy Storm Claw (Bound)',0,1,2,4611,0,261,-1,0,1,3,5,0,0,0,82,77,0,1128,0,0,1,0,50,50,0,0,0,87,95,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,51,'Blessed Divine Sword of Archangel',0,1,4,8926143,0,22,-1,-1,1,1,8,0,0,0,200,170,0,1128,0,0,1,0,60,30,0,0,0,265,275,0,45,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0),(0,52,'Panthera Claw',0,1,2,8944543,10000,270,-1,-1,1,3,2,0,0,0,139,95,0,1128,0,0,1,380,78,25,0,0,0,26,34,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,53,'Devaste Claw',0,1,2,8928159,1000,270,-1,-1,1,3,2,0,0,0,149,95,0,1128,0,0,1,400,82,28,0,0,0,35,46,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(0,54,'Darkangel Sword',0,1,4,76034751,0,22,-1,0,14,1,1,0,0,0,160,100,0,1128,0,0,1,600,165,51,0,120,0,302,313,0,40,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,55,'Darkangel Magic Sword',0,1,4,76034751,0,56,-1,0,14,2,1,0,0,0,160,100,0,1128,0,0,1,600,120,72,0,17,0,300,311,118,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,56,'Darkangel Claw',0,1,2,76034751,0,270,-1,0,14,3,1,0,0,0,160,100,0,1128,0,0,1,600,95,30,0,0,0,214,224,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(0,57,'Holyangel Sword',0,1,4,76034751,0,22,-1,0,14,1,1,0,0,0,180,100,0,1128,0,0,1,800,152,47,0,111,0,365,376,0,40,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,58,'Holyangel MagicSword',0,1,4,76034751,0,56,-1,0,14,2,1,0,0,0,180,100,0,1128,0,0,1,800,111,67,0,16,0,364,375,125,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,59,'Holyangel Claw',0,1,2,76034751,0,270,-1,0,14,3,1,0,0,0,180,100,0,1128,0,0,1,800,88,28,0,0,0,277,287,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(0,60,'Divine Claw of Archangel',0,1,3,143145919,0,270,-1,0,1,3,6,0,0,0,100,160,0,1128,0,0,1,0,68,23,0,0,0,121,130,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,61,'Blessed Divine Claw of Archangel',0,1,3,8926143,0,270,-1,0,1,3,8,0,0,0,200,160,0,1128,0,0,1,0,60,22,0,0,0,136,147,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(0,62,'Soul Sword',0,1,4,76034751,0,22,-1,0,14,1,1,0,0,0,200,100,0,1128,0,0,1,900,141,44,0,103,0,428,439,0,40,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,63,'Soul Magic Sword',0,1,4,76034751,0,56,-1,0,14,2,1,0,0,0,200,100,0,1128,0,0,1,900,103,62,0,15,0,427,438,133,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,64,'Soul Claw',0,1,2,76034751,0,270,-1,0,14,3,1,0,0,0,200,100,0,1128,0,0,1,900,82,26,0,0,0,340,350,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(0,65,'Kukri Short Sword (Bound)',0,1,3,4611,0,22,-1,0,1,81,5,0,0,0,82,85,0,1128,0,0,1,0,47,47,0,0,0,100,110,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(0,66,'Flat Short Sword',0,1,3,143162303,10000,22,-1,0,1,81,1,0,0,0,1,20,0,1128,0,0,1,0,50,0,0,0,0,1,6,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(0,67,'Dacia Short Sword',0,1,3,143162303,10000,22,-1,0,1,81,1,0,0,0,55,45,0,1128,0,0,1,0,40,85,0,0,0,50,60,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(0,68,'Kukri Short Sword',0,1,3,143162303,10000,22,-1,0,1,81,1,0,0,0,80,80,0,1128,0,0,1,0,55,155,0,0,0,80,90,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(0,69,'Parrying Short Sword',0,1,3,8944543,10000,22,-1,-1,1,81,2,0,0,0,135,100,0,1128,0,0,1,380,55,190,0,0,0,110,130,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(0,70,'Novacula Short Sword',0,1,3,8928159,0,22,-1,-1,1,81,2,0,0,0,148,100,0,1128,0,0,1,400,53,185,0,0,0,130,140,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(0,71,'Bloodangel Short Sword',0,1,3,76034751,0,22,-1,0,14,81,1,0,0,0,150,100,0,1128,0,0,1,400,53,175,0,0,0,250,260,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(0,72,'Darkangel Short Sword',0,1,3,76034751,0,22,-1,0,14,81,1,0,0,0,160,100,0,1128,0,0,1,600,53,175,0,0,0,300,310,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(0,73,'Holyangel Short Sword',0,1,3,76034751,0,22,-1,0,14,81,1,0,0,0,180,100,0,1128,0,0,1,800,49,162,0,0,0,360,370,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(0,74,'Soul Short Sword',0,1,3,76034751,0,22,-1,0,14,81,1,0,0,0,200,100,0,1128,0,0,1,900,46,151,0,0,0,420,440,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(0,75,'Blue Eye Short Sword',0,1,3,76034751,0,22,-1,0,14,81,1,0,0,0,220,100,0,1128,0,0,1,1000,192,610,0,0,0,480,511,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(0,76,'Divine Short Sword of Archangel',0,1,3,143145919,0,22,-1,-1,1,81,6,0,0,0,86,160,0,1128,0,0,1,0,50,145,0,0,0,220,230,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(0,77,'Blessed Divine Short Sword of Archangel',0,1,3,8926143,0,22,-1,-1,1,81,8,0,0,0,200,170,0,1128,0,0,1,0,25,55,0,0,0,260,270,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(0,78,'Blue Eye Sword',0,1,4,76034751,0,22,-1,0,14,1,1,0,0,0,220,100,0,1128,0,0,1,1000,568,184,0,460,0,492,502,0,40,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,79,'Blue Eye Magic Sword',0,1,4,76034751,0,56,-1,0,14,2,1,0,0,0,220,100,0,1128,0,0,1,1000,418,256,0,78,0,491,501,140,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(0,80,'Blue Eye Claw',0,1,2,76034751,0,270,-1,0,14,3,1,0,0,0,220,100,0,1128,0,0,1,1000,335,113,0,0,0,404,414,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(1,0,'Small Axe',0,1,3,143162303,10000,0,-1,0,1,4,1,0,0,0,1,18,0,1128,0,0,1,0,50,0,0,0,0,1,6,0,20,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,4,0,0,0,0,0),(1,1,'Hand Axe',0,1,3,143162303,10000,0,-1,0,1,4,1,0,0,0,4,20,0,1128,0,0,1,0,70,0,0,0,0,4,9,0,30,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,4,0,0,0,0,0),(1,2,'Double Axe',0,1,3,143162303,10000,19,-1,0,1,4,1,0,0,0,14,26,0,1128,0,0,1,0,90,0,0,0,0,14,24,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(1,3,'Tomahawk',0,1,3,143162303,10000,19,-1,0,1,4,1,0,0,0,18,28,0,1128,0,0,1,0,100,0,0,0,0,18,28,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,-1,0,0,0,0,0),(1,4,'Elven Axe',0,1,3,143162303,10000,0,-1,0,1,4,1,0,0,0,26,32,0,1128,0,0,1,0,50,70,0,0,0,26,38,0,40,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,-1,0,0,0,0,0),(1,5,'Battle Axe',0,2,3,143162303,10000,19,-1,0,1,4,1,0,0,0,30,36,0,1128,0,0,1,0,120,0,0,0,0,36,44,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(1,6,'Nikea Axe',0,2,3,143162303,10000,19,-1,0,1,4,1,0,0,0,34,44,0,1128,0,0,1,0,130,0,0,0,0,38,50,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(1,7,'Larkan Axe',0,2,3,143162303,10000,19,-1,0,1,4,1,0,0,0,46,55,0,1128,0,0,1,0,140,0,0,0,0,54,67,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(1,8,'Crescent Axe',0,2,3,143162303,10000,19,-1,0,1,4,1,0,0,0,54,65,0,1128,0,0,1,0,100,40,0,0,0,69,89,0,30,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(2,0,'Mace',0,1,3,143162303,10000,0,-1,0,1,5,1,0,0,0,7,21,0,1128,0,0,1,0,100,0,0,0,0,7,13,0,15,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(2,1,'Morning Star',0,1,3,143162303,10000,19,-1,0,1,5,1,0,0,0,13,25,0,1128,0,0,1,0,100,0,0,0,0,13,22,0,15,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(2,2,'Flail',0,1,3,143162303,10000,0,-1,0,1,5,1,0,0,0,22,32,0,1128,0,0,1,0,80,50,0,0,0,22,32,0,15,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(2,3,'Great Hammer',0,2,3,143162303,10000,19,-1,0,1,5,1,0,0,0,38,50,0,1128,0,0,1,0,150,0,0,0,0,45,56,0,15,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,-1,0,0,0,0,0),(2,4,'Crystal Morning Star',0,2,3,143162303,10000,19,-1,0,1,5,1,0,0,0,66,72,0,1128,0,0,1,0,130,0,0,0,0,78,107,0,30,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,1,0,1,0,0,-1,0,0,0,0,0),(2,5,'Crystal Sword',0,2,4,143162303,10000,23,-1,0,1,5,1,0,0,0,72,76,0,1128,0,0,1,0,130,70,0,0,0,89,120,0,40,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,6,'Chaos Dragon Axe',0,2,4,143145919,0,23,-1,-1,1,5,7,0,0,0,75,80,0,1128,0,0,1,0,140,50,0,0,0,102,130,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(2,7,'Elemental Mace',0,1,3,143162303,10000,0,-1,0,1,5,1,0,0,0,90,50,0,1128,0,0,1,0,15,42,0,0,0,62,80,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(2,8,'Battle Scepter',0,1,3,143162303,10000,66,-1,0,1,6,1,0,0,0,54,40,0,1128,0,0,1,0,80,17,0,0,0,41,52,3,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,9,'Master Scepter',0,1,3,143162303,10000,66,-1,0,1,6,1,0,0,0,72,45,0,1128,0,0,1,0,87,18,0,0,0,57,68,20,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,10,'Great Scepter',0,1,4,143162303,10000,66,-1,0,1,6,1,0,0,0,82,65,0,1128,0,0,1,0,100,21,0,0,0,74,85,35,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,11,'Lords Scepter',0,1,4,143162303,10000,66,-1,0,1,6,1,0,0,0,98,72,0,1128,0,0,1,0,105,23,0,0,0,91,102,52,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,12,'Great Lords Scepter',0,1,4,143162303,10000,66,-1,0,1,6,1,0,0,0,140,84,0,1128,0,0,1,0,90,20,0,0,0,108,120,67,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,13,'Divine Scepter of the Archangel',0,1,4,143145919,0,66,-1,0,1,6,6,0,0,0,150,90,0,1128,0,0,1,0,75,16,0,0,0,200,223,138,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,14,'Soleil Scepter',0,1,4,8928191,0,66,-1,-1,1,6,3,0,0,0,146,95,0,1128,0,0,1,380,80,15,0,0,0,130,153,84,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,15,'Shining Scepter',0,1,4,143162303,10000,66,-1,-1,1,6,1,0,0,0,110,78,0,1128,0,0,1,0,108,22,0,0,0,99,111,60,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,16,'Frost Mace',0,1,3,8944543,10000,0,-1,0,1,5,2,0,0,0,121,80,0,1128,0,0,1,380,27,19,0,0,0,106,146,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(2,17,'Absolute Scepter',0,1,4,8944543,10000,66,-1,-1,1,6,2,0,0,0,135,90,0,1128,0,0,1,380,119,24,0,0,0,114,132,72,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,18,'Striker Scepter',0,1,4,143145919,0,66,-1,-1,1,6,1,0,0,0,147,86,0,1128,0,0,1,0,87,20,0,0,0,112,124,70,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,19,'Thunderbolt',0,1,4,8928159,0,66,-1,-1,1,6,2,0,0,0,149,78,0,1128,0,0,1,400,111,22,0,0,0,127,154,76,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(2,20,'Horn of Steal',0,2,4,8928159,0,19,-1,-1,1,5,2,0,0,0,149,120,0,1128,0,0,1,400,182,50,0,0,0,177,206,0,25,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,21,'Master Scepter-J',0,1,3,143145919,0,66,-1,-1,0,6,0,0,0,0,72,45,0,1128,0,0,1,0,87,18,0,0,0,57,68,20,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(2,22,'Bloodangel Scepter',0,1,4,76034751,0,66,-1,-1,14,6,1,0,0,0,150,100,0,1128,0,0,1,400,114,23,0,0,0,188,200,104,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(2,24,'Lord\'s Scepter (Bound)',0,1,4,4611,0,66,-1,0,1,6,5,0,0,0,98,72,0,1128,0,0,1,0,50,50,0,0,0,113,119,60,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(2,25,'Blessed Divine Scepter of Archangel',0,1,4,8926143,0,66,-1,-1,1,6,8,0,0,0,200,170,0,1128,0,0,1,0,75,16,0,0,0,331,341,175,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(2,26,'Darkangel Scepter',0,1,4,76034751,0,66,-1,0,14,6,1,0,0,0,160,100,0,1128,0,0,1,600,114,23,0,0,0,223,233,114,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(2,27,'Holyangel Scepter',0,1,4,76034751,0,66,-1,0,14,6,1,0,0,0,180,100,0,1128,0,0,1,800,105,22,0,0,0,318,330,134,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(2,28,'Elemental Runic Mace',0,1,3,143162303,10000,0,-1,3,1,78,1,0,0,0,52,50,50,1128,0,0,1,0,10,6,0,0,0,22,23,58,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,29,'Elhaz Runic Mace',0,1,3,143162303,10000,0,-1,3,1,78,1,0,0,0,90,85,85,1128,0,0,1,0,32,17,0,27,0,55,59,103,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,30,'Frost Runic Mace',0,1,3,8944543,10000,0,-1,3,1,78,2,0,0,0,122,182,80,1128,0,0,1,380,32,12,0,90,0,62,66,100,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,31,'Light Lord Runic Mace',0,1,3,8944543,0,0,-1,3,1,78,2,0,0,0,148,80,95,1128,0,0,1,400,35,14,0,110,0,72,74,108,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(2,32,'Bloodangel Runic Mace',0,1,3,76034751,0,0,-1,3,14,78,1,0,0,0,150,100,100,1128,0,0,1,400,42,14,0,129,0,95,101,122,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(2,33,'Darkangel Runic Mace',0,1,3,76034751,0,0,-1,3,14,78,1,0,0,0,160,100,100,1128,0,0,1,600,42,14,0,129,0,125,131,136,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(2,34,'Divine Runic Mace of Archangel',0,1,3,143145919,0,0,-1,3,1,78,6,0,0,0,104,182,182,1128,0,0,1,0,32,4,0,64,0,158,170,142,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,35,'Blessed Divine Runic Mace of Archangel',0,1,3,8926143,0,0,-1,3,1,78,8,0,0,0,200,182,182,1128,0,0,1,0,28,4,0,79,0,158,170,160,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,36,'Soul Scepter',0,1,4,76034751,0,66,-1,0,14,6,1,0,0,0,200,100,0,1128,0,0,1,900,98,21,0,0,0,403,416,154,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(2,37,'Elemental Runic Mace (Bound)',0,1,3,4611,0,0,-1,3,1,78,5,0,0,0,52,50,50,1128,0,0,1,0,50,50,0,0,0,22,23,47,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(2,38,'Holyangel Runic Mace',0,1,3,76034751,0,0,-1,3,14,78,1,0,0,0,180,100,100,1128,0,0,1,800,42,14,0,129,0,135,141,152,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(2,39,'Soul Runic Mace',0,1,3,76034751,0,0,-1,3,14,78,1,0,0,0,200,100,100,1128,0,0,1,900,39,13,0,120,0,145,151,174,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(2,40,'Blue Eye Scepter',0,1,4,76034751,0,66,-1,0,14,6,1,0,0,0,220,100,0,1128,0,0,1,1000,398,94,0,0,0,490,504,154,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(2,41,'Blue Eye Runic Mace',0,1,3,76034751,0,0,-1,3,14,78,1,0,0,0,220,100,100,1128,0,0,1,1000,165,62,0,551,0,156,161,196,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(3,0,'Light Spear',0,2,4,143162303,10000,22,-1,0,1,7,1,0,0,0,42,56,0,1128,0,0,1,0,60,70,0,0,0,50,63,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,1,'Spear',0,2,4,143162303,10000,0,-1,0,1,7,1,0,0,0,23,42,0,1128,0,0,1,0,70,50,0,0,0,30,41,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(3,2,'Dragon Lance',0,2,4,143162303,10000,0,-1,0,1,7,1,0,0,0,15,34,0,1128,0,0,1,0,70,50,0,0,0,21,33,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(3,3,'Giant Trident',0,2,4,143162303,10000,0,-1,0,1,7,1,0,0,0,29,44,0,1128,0,0,1,0,90,30,0,0,0,35,43,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(3,4,'Serpent Spear',0,2,4,143162303,10000,20,-1,0,1,7,1,0,0,0,46,58,0,1128,0,0,1,0,90,30,0,0,0,58,80,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,5,'Double Poleaxe',0,2,4,143162303,10000,0,-1,0,1,7,1,0,0,0,13,38,0,1128,0,0,1,0,70,50,0,0,0,19,31,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(3,6,'Halberd',0,2,4,143162303,10000,0,-1,0,1,7,1,0,0,0,19,40,0,1128,0,0,1,0,70,50,0,0,0,25,35,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(3,7,'Berdysh',0,2,4,143162303,10000,22,-1,0,1,7,1,0,0,0,37,54,0,1128,0,0,1,0,80,50,0,0,0,42,54,0,30,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,8,'Great Scythe',0,2,4,143162303,10000,22,-1,0,1,7,1,0,0,0,54,68,0,1128,0,0,1,0,90,50,0,0,0,71,92,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,9,'Bill of Balrog',0,2,4,143162303,10000,22,-1,0,1,7,1,0,0,0,63,74,0,1128,0,0,1,0,80,50,0,0,0,76,102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,10,'Dragon Spear',0,2,4,143162303,10000,22,-1,0,1,7,1,0,0,0,92,85,0,1128,0,0,1,0,170,60,0,0,0,112,140,0,35,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,11,'Beuroba Spear',0,2,4,143145919,0,22,-1,0,1,7,1,0,0,0,147,90,0,1128,0,0,1,0,152,25,0,0,0,190,226,0,40,0,0,0,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(3,12,'Magmus Peer',0,2,4,8944543,10000,20,-1,-1,1,7,2,0,0,0,149,85,0,1128,0,0,1,400,49,162,0,0,0,135,236,0,35,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,13,'Lapid Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,15,34,0,1128,0,0,1,0,65,77,0,0,0,32,41,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,14,'Conmocion Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,65,58,0,1128,0,0,1,0,100,120,0,0,0,65,72,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,15,'Pluma Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,85,74,0,1128,0,0,1,0,110,130,0,0,0,86,93,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,16,'Vis Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,87,75,0,1128,0,0,1,0,230,0,0,0,0,94,101,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,17,'Prickle Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,22,31,0,1128,0,0,1,0,110,0,0,0,0,27,35,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,18,'Alacran Lance',0,1,4,143162303,10000,20,-1,-1,1,7,1,0,0,0,67,61,0,1128,0,0,1,0,180,0,0,0,0,73,80,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(3,19,'Bloodangel Lance',0,1,4,76034751,0,20,-1,-1,14,7,1,0,0,0,150,100,0,1128,0,0,1,400,70,50,0,0,0,134,145,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(3,21,'Pluma Lance (Bound)',0,1,4,4611,0,20,-1,1,1,7,5,0,0,0,85,74,0,1128,0,0,1,0,50,50,0,0,0,95,107,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(3,22,'Rectus Lance',0,1,4,8944543,10000,20,-1,-1,1,7,2,0,0,0,139,95,0,1128,0,0,1,380,70,51,0,0,0,78,89,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(3,23,'Russellite Lance',0,1,4,8928159,0,20,-1,-1,1,7,2,0,0,0,149,95,0,1128,0,0,1,400,74,55,0,0,0,99,110,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(3,24,'Darkangel Lance',0,1,4,76034751,0,20,-1,0,14,7,1,0,0,0,160,100,0,1128,0,0,1,600,70,50,0,0,0,150,160,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(3,25,'Holyangel Lance',0,1,4,76034751,0,20,-1,0,14,7,1,0,0,0,180,100,0,1128,0,0,1,800,65,46,0,0,0,202,212,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(3,26,'Divine Lance of Archangel',0,1,4,143145919,0,20,-1,0,1,7,6,0,0,0,100,100,0,1128,0,0,1,0,65,46,0,0,0,115,126,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(3,27,'Blessed Divine Lance of Archangel',0,1,4,8926143,0,20,-1,0,1,7,8,0,0,0,200,100,0,1128,0,0,1,0,62,43,0,0,0,173,184,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(3,28,'Soul Lance',0,1,4,76034751,0,20,-1,0,14,7,1,0,0,0,200,100,0,1128,0,0,1,900,61,43,0,0,0,254,264,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(3,29,'Blue Eye Lance',0,1,4,76034751,0,20,-1,0,14,7,1,0,0,0,220,100,0,1128,0,0,1,1000,252,180,0,0,0,306,318,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(4,0,'Short Bow',0,1,3,143162303,10000,24,-1,1,1,8,1,0,0,0,2,20,0,1128,0,0,1,0,20,80,0,0,0,3,5,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,1,'Bow',0,1,3,143162303,10000,24,-1,1,1,8,1,0,0,0,8,24,0,1128,0,0,1,0,30,90,0,0,0,9,13,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,2,'Elven Bow',0,1,3,143162303,10000,24,-1,1,1,8,1,0,0,0,16,28,0,1128,0,0,1,0,30,90,0,0,0,17,24,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,3,'Battle Bow',0,1,3,143162303,10000,24,-1,1,1,8,1,0,0,0,26,36,0,1128,0,0,1,0,30,90,0,0,0,28,37,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,4,'Tiger Bow',0,1,4,143162303,10000,24,-1,1,1,8,1,0,0,0,40,43,0,1128,0,0,1,0,30,100,0,0,0,42,52,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,5,'Silver Bow',0,1,4,143162303,10000,24,-1,1,1,8,1,0,0,0,56,48,0,1128,0,0,1,0,30,100,0,0,0,59,71,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,6,'Chaos Nature Bow',0,1,4,143145919,0,24,-1,-1,1,8,7,0,0,0,75,68,0,1128,0,0,1,0,40,150,0,0,0,88,106,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,7,'Bolts',1,1,1,142617472,0,0,-1,-1,1,11,0,0,0,0,0,255,0,1128,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,8,'Crossbow',0,1,2,143162303,10000,24,-1,1,1,9,1,0,0,0,4,22,0,1128,0,0,1,0,20,90,0,0,0,5,8,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,9,'Golden Crossbow',0,1,2,143162303,10000,24,-1,1,1,9,1,0,0,0,12,26,0,1128,0,0,1,0,30,90,0,0,0,13,19,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,10,'Arquebus',0,1,2,143162303,10000,24,-1,1,1,9,1,0,0,0,20,31,0,1128,0,0,1,0,30,90,0,0,0,22,30,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,11,'Light Crossbow',0,1,3,143162303,10000,24,-1,1,1,9,1,0,0,0,32,40,0,1128,0,0,1,0,30,90,0,0,0,35,44,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(4,12,'Serpent Crossbow',0,1,3,143162303,10000,24,-1,1,1,9,1,0,0,0,48,45,0,1128,0,0,1,0,30,100,0,0,0,50,61,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,13,'Bluewing Crossbow',0,1,3,143162303,10000,24,-1,1,1,9,1,0,0,0,68,56,0,1128,0,0,1,0,40,110,0,0,0,68,82,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,14,'Aquagold Crossbow',0,1,3,143162303,10000,24,-1,1,1,9,1,0,0,0,72,60,0,1128,0,0,1,0,50,130,0,0,0,78,92,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,15,'Arrows',1,1,1,142617472,0,0,-1,-1,1,10,0,0,0,0,0,255,0,1128,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,16,'Saints Crossbow',0,1,4,143162303,10000,24,-1,1,1,9,1,0,0,0,84,72,0,1128,0,0,1,0,50,160,0,0,0,102,127,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,17,'Celestial Bow',0,1,4,143162303,10000,24,-1,1,1,8,1,0,0,0,92,76,0,1128,0,0,1,0,54,198,0,0,0,127,155,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,18,'Divine Crossbow of the Archangel',0,1,3,143145919,0,24,-1,-1,1,9,6,0,0,0,100,200,0,1128,0,0,1,0,40,110,0,0,0,224,246,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,19,'Great Reign Crossbow',0,1,3,143162303,10000,24,-1,1,1,9,1,0,0,0,100,80,0,1128,0,0,1,0,61,285,0,0,0,150,172,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,20,'Arrow Viper Bow',0,1,4,143162303,10000,24,-1,1,1,8,1,0,0,0,135,86,0,1128,0,0,1,0,52,245,0,0,0,166,190,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,21,'Sylph Wind Bow',0,1,4,8928191,0,24,-1,-1,1,8,3,0,0,0,147,93,0,1128,0,0,1,380,46,210,0,0,0,177,200,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,22,'Albatross Bow',0,1,4,143162303,10000,24,-1,-1,1,8,1,0,0,0,110,70,0,1128,0,0,1,0,60,265,0,0,0,155,177,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,23,'Dark Stinger Bow',0,1,4,8944543,10000,24,-1,1,1,8,2,0,0,0,134,80,0,1128,0,0,1,380,32,209,0,0,0,162,184,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,24,'Aileen Bow',0,1,4,143145919,0,24,-1,1,1,8,1,0,0,0,147,88,0,1128,0,0,1,0,49,226,0,0,0,170,194,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,25,'Angelic Bow',0,1,4,8928159,0,24,-1,-1,1,8,2,0,0,0,149,70,0,1128,0,0,1,400,30,193,0,0,0,179,202,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,26,'Devil Crossbow',0,1,3,8928159,0,24,-1,-1,1,9,2,0,0,0,149,90,0,1128,0,0,1,400,30,193,0,0,0,167,218,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,27,'Silver Bow-J',0,1,4,143145919,0,24,-1,-1,0,8,0,0,0,0,56,48,0,1128,0,0,1,0,30,100,0,0,0,59,71,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(4,28,'Bloodangel Bow',0,1,4,76034751,0,24,-1,-1,14,8,1,0,0,0,150,100,0,1128,0,0,1,400,31,198,0,0,0,290,310,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,29,'Celestial Bow (Bound)',0,1,4,4611,0,24,-1,1,1,8,5,0,0,0,92,76,0,1128,0,0,1,0,50,50,0,0,0,149,170,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,30,'Blessed Divine Crossbow of Archangel',0,1,3,8926143,0,24,-1,-1,1,9,8,0,0,0,200,200,0,1128,0,0,1,0,40,70,0,0,0,345,380,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,31,'Darkangel Bow',0,1,4,76034751,0,24,-1,1,14,8,1,0,0,0,160,100,0,1128,0,0,1,600,31,198,0,0,0,320,340,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,32,'Combat Quiver',1,1,3,143162303,10000,0,-1,1,1,75,1,0,0,0,52,90,0,1,0,0,1,0,27,98,0,0,0,111,137,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,33,'Devilwood Quiver',1,1,3,8928159,0,0,-1,1,1,75,2,0,0,0,149,95,0,1,0,0,1,400,29,186,0,0,0,181,207,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,34,'Bloodangel Quiver',1,1,3,76034751,0,0,-1,1,14,75,1,0,0,0,150,100,0,1,0,0,1,400,30,196,0,0,0,239,266,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,35,'Darkangel Quiver',1,1,3,76034751,0,0,-1,1,14,75,1,0,0,0,160,100,0,1,0,0,1,600,30,196,0,0,0,291,316,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,36,'Holyangel Bow',0,1,4,76034751,0,24,-1,1,14,8,1,0,0,0,180,100,0,1128,0,0,1,800,29,183,0,0,0,375,392,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,37,'Holyangel Quiver',1,1,3,76034751,0,0,-1,1,14,75,1,0,0,0,180,100,0,1128,0,0,1,800,28,181,0,0,0,345,369,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,38,'Soul Bow',0,1,4,76034751,0,24,-1,1,14,8,1,0,0,0,200,100,0,1128,0,0,1,900,27,170,0,0,0,501,518,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,39,'Soul Quiver',1,1,3,76034751,0,0,-1,1,14,75,1,0,0,0,200,100,0,1128,0,0,1,900,26,168,0,0,0,398,422,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,40,'Blue Eye Bow',0,1,4,76034751,0,24,-1,1,14,8,1,0,0,0,220,100,0,1128,0,0,1,1000,117,682,0,0,0,628,646,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,41,'Blue Eye Quiver',1,1,3,76034751,0,0,-1,1,14,75,1,0,0,0,220,100,0,1128,0,0,1,1000,113,674,0,0,0,451,475,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(4,42,'Entro Magic Gun',0,1,3,143162303,10000,0,-1,1,1,84,1,0,0,0,33,70,70,1128,0,0,1,0,1,0,0,0,0,75,86,40,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(4,43,'Fray Magic Gun',0,1,3,143162303,10000,0,-1,1,1,84,1,0,0,0,110,95,95,1128,0,0,1,0,87,53,0,99,0,116,118,75,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(4,46,'Divine Magic Gun of the Archangel',0,1,3,143145919,0,0,-1,1,1,84,6,0,0,0,104,142,142,1128,0,0,1,0,35,11,0,48,0,223,235,130,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(4,55,'Fray Magic Gun (Bound)',0,1,3,4611,0,0,-1,0,1,84,5,0,0,0,110,100,100,1128,0,0,1,0,87,53,0,99,0,116,118,75,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(5,0,'Skull Staff',0,1,3,143162303,10000,0,-1,3,1,12,1,0,0,0,6,20,20,1128,0,0,1,0,40,0,0,0,0,3,4,6,20,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,4,0,0,0,0,0),(5,1,'Angelic Staff',0,2,3,143162303,10000,0,-1,3,1,12,1,0,0,0,18,38,38,1128,0,0,1,0,50,0,0,0,0,10,12,20,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(5,2,'Serpent Staff',0,2,3,143162303,10000,0,-1,3,1,12,1,0,0,0,30,50,50,1128,0,0,1,0,50,0,0,0,0,17,18,34,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(5,3,'Thunder Staff',0,2,4,143162303,10000,0,-1,3,1,12,1,0,0,0,42,60,60,1128,0,0,1,0,40,10,0,0,0,23,25,46,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,4,'Gorgon Staff',0,2,4,143162303,10000,0,-1,3,1,12,1,0,0,0,52,65,65,1128,0,0,1,0,50,0,0,0,0,29,32,58,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,5,'Legendary Staff',0,1,4,143162303,10000,0,-1,3,1,12,1,0,0,0,59,66,66,1128,0,0,1,0,50,0,0,0,0,29,31,59,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,6,'Staff of Resurrection',0,1,4,143162303,10000,0,-1,3,1,12,1,0,0,0,70,70,70,1128,0,0,1,0,60,10,0,0,0,35,39,70,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,7,'Chaos Lighting Staff',0,2,4,143145919,0,0,-1,-1,1,12,7,0,0,0,75,70,70,1128,0,0,1,0,60,10,0,0,0,47,48,94,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,8,'Staff of Destruction',0,2,4,143162303,10000,0,-1,3,1,12,1,0,0,0,90,85,85,1128,0,0,1,0,60,10,0,0,0,50,54,101,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,9,'Dragon Soul Staff',0,1,4,143162303,10000,0,-1,3,1,12,1,0,0,0,100,91,91,1128,0,0,1,0,52,16,0,0,0,46,48,92,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,10,'Divine Staff of the Archangel',0,1,4,143145919,0,0,-1,-1,1,12,6,0,0,0,104,182,182,1128,0,0,1,0,36,4,0,0,0,153,165,156,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,11,'Staff of Kundun',0,1,4,143162303,10000,0,-1,-1,1,12,1,0,0,0,140,95,95,1128,0,0,1,0,45,16,0,0,0,55,61,110,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,12,'Grand Viper Staff',0,1,4,8928191,0,0,-1,-1,1,12,3,0,0,0,147,100,100,1128,0,0,1,380,39,13,0,0,0,66,74,130,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,13,'Platina Staff',0,1,4,143162303,10000,0,-1,-1,1,12,1,0,0,0,110,78,78,1128,0,0,1,0,50,16,0,0,0,51,53,120,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,14,'Mystery Stick',0,1,4,143162303,10000,0,-1,-1,1,13,1,0,0,0,28,50,50,1128,0,0,1,0,34,14,0,0,0,17,18,34,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,15,'Violent Wind Stick',0,1,4,143162303,10000,0,-1,-1,1,13,1,0,0,0,42,60,60,1128,0,0,1,0,33,17,0,0,0,23,25,46,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,16,'Red Wing Stick',0,1,4,143162303,10000,0,-1,-1,1,13,1,0,0,0,59,65,65,1128,0,0,1,0,36,14,0,0,0,29,31,59,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,17,'Ancient Stick',0,1,4,143162303,10000,0,-1,-1,1,13,1,0,0,0,78,81,81,1128,0,0,1,0,50,19,0,0,0,38,40,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,18,'Demonic Stick',0,1,4,143162303,10000,0,-1,-1,1,13,1,0,0,0,100,91,91,1128,0,0,1,0,54,15,0,0,0,46,48,92,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(5,19,'Storm Blitz Stick',0,1,4,8928191,0,0,-1,-1,1,13,3,0,0,0,110,95,95,1128,0,0,1,380,64,15,0,0,0,51,53,110,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(5,20,'Eternal Wing Stick',0,1,4,8944543,10000,0,-1,-1,1,13,2,0,0,0,147,100,100,1128,0,0,1,380,57,13,0,0,0,66,74,106,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(5,21,'Book of Samut',1,1,2,143162303,10000,0,-1,-1,1,14,1,0,0,0,52,60,60,1128,0,0,1,0,0,20,0,135,0,0,0,46,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,22,'Book of Neil',1,1,2,143162303,10000,0,-1,-1,1,14,1,0,0,0,59,65,65,1128,0,0,1,0,0,25,0,168,0,0,0,59,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,23,'Book of Lagle',1,1,2,143162303,10000,0,-1,-1,1,14,1,0,0,0,65,50,50,1128,0,0,1,0,0,30,0,201,0,0,0,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,30,'Deadly Staff',0,1,4,8944543,10000,0,-1,3,1,12,2,0,0,0,138,91,91,1128,0,0,1,380,47,18,0,0,0,57,59,126,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,31,'Inberial Staff',0,1,4,8944543,10000,0,-1,-1,1,12,2,0,0,0,137,182,182,1128,0,0,1,380,48,14,0,0,0,57,61,124,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,32,'Summon Spirit Stick',0,1,4,8928159,0,0,-1,-1,1,13,2,0,0,0,149,130,130,1128,0,0,1,400,56,14,0,0,0,59,61,110,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(5,33,'Chromatic Staff',0,1,4,143145919,0,0,-1,-1,1,12,1,0,0,0,147,78,78,1128,0,0,1,0,50,12,0,0,0,55,57,124,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,34,'Raven Stick',0,1,4,143145919,0,0,-1,-1,1,13,1,0,0,0,147,98,98,1128,0,0,1,0,50,14,0,0,0,70,78,130,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(5,35,'Miracle Staff',0,1,4,8928159,0,0,-1,-1,1,12,2,0,0,0,149,80,80,1128,0,0,1,400,46,13,0,0,0,67,69,130,30,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,36,'Divine Stick of the Archangel',0,1,4,143145919,0,0,-1,-1,1,13,6,0,0,0,104,182,182,1128,0,0,1,0,55,13,0,0,0,153,165,146,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,37,'Spite Staff',0,2,4,8928159,0,0,-1,-1,1,12,2,0,0,0,149,110,110,1128,0,0,1,400,48,11,0,0,0,69,71,136,25,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,38,'Legendary Staff-J',0,1,4,143145919,0,0,-1,-1,0,12,0,0,0,0,59,66,66,1128,0,0,1,0,50,0,0,0,0,29,31,59,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(5,39,'Red Wing Stick-J',0,1,4,143145919,0,0,-1,-1,0,13,0,0,0,0,59,65,65,1128,0,0,1,0,36,14,0,0,0,29,31,59,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(5,40,'Book of Neil-J',1,1,2,143145919,0,0,-1,-1,0,14,0,0,0,0,59,65,65,1128,0,0,1,0,0,25,0,168,0,0,0,59,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(5,41,'Bloodangel Staff',0,1,4,76034751,0,0,-1,-1,14,12,1,0,0,0,150,100,100,1128,0,0,1,400,47,14,0,0,0,90,96,155,30,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,43,'Bloodangel Stick',0,1,4,76034751,0,0,-1,-1,14,13,1,0,0,0,150,150,150,1128,0,0,1,400,42,15,0,0,0,81,87,150,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(5,45,'Legendary Staff (Bound)',0,1,4,4611,0,0,-1,3,1,12,5,0,0,0,59,66,66,1128,0,0,1,0,50,50,0,0,0,29,31,74,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,46,'Red Winged Stick (Bound)',0,1,4,4611,0,0,-1,-1,1,13,5,0,0,0,59,65,65,1128,0,0,1,0,50,50,0,0,0,29,31,74,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,47,'Book of Lagle (Bound)',1,1,2,4611,0,0,-1,-1,1,14,5,0,0,0,65,50,50,1128,0,0,1,0,50,50,0,0,0,0,0,75,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(5,48,'Staff of Destruction (Bound)',0,2,4,4611,0,0,-1,3,1,12,5,0,0,0,90,85,85,1128,0,0,1,0,50,50,0,0,0,50,54,121,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,49,'Blessed Divine Staff of Archangel',0,1,4,8926143,0,0,-1,-1,1,12,8,0,0,0,200,182,182,1128,0,0,1,0,30,4,0,0,0,153,165,189,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,50,'Blessed Divine Stick of Archangel',0,1,4,8926143,0,0,-1,-1,1,13,8,0,0,0,200,182,182,1128,0,0,1,0,30,13,0,0,0,153,165,184,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(5,51,'Darkangel Staff',0,1,4,76034751,0,0,-1,3,14,12,1,0,0,0,160,100,100,1128,0,0,1,600,47,14,0,0,0,120,126,173,30,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,52,'Darkangel Stick',0,1,4,76034751,0,0,-1,3,14,13,1,0,0,0,160,100,100,1128,0,0,1,600,42,15,0,0,0,111,117,169,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(5,53,'Holyangel Staff',0,1,4,76034751,0,0,-1,3,14,12,1,0,0,0,180,100,100,1128,0,0,1,800,44,13,0,0,0,135,148,196,30,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,54,'Holyangel Stick',0,1,4,76034751,0,0,-1,3,14,13,1,0,0,0,180,100,100,1128,0,0,1,800,39,14,0,0,0,127,135,196,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(5,55,'Soul Staff',0,1,4,76034751,0,0,-1,3,14,12,1,0,0,0,200,100,100,1128,0,0,1,900,41,12,0,0,0,157,170,219,30,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,56,'Soul Stick',0,1,4,76034751,0,0,-1,3,14,13,1,0,0,0,200,100,100,1128,0,0,1,900,37,13,0,0,0,145,153,223,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(5,57,'Bloodangel Book',1,1,2,76034751,0,0,-1,3,14,14,1,0,0,0,150,150,150,1128,0,0,1,400,0,30,0,130,0,0,0,149,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,4,0,0,0,0,0),(5,58,'Darkangel Book',1,1,2,76034751,0,0,-1,3,14,14,1,0,0,0,160,150,150,1128,0,0,1,600,0,29,0,125,0,0,0,170,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,4,0,0,0,0,0),(5,59,'Holyangel Book',1,1,2,76034751,0,0,-1,3,14,14,1,0,0,0,180,150,150,1128,0,0,1,800,0,27,0,115,0,0,0,192,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,4,0,0,0,0,0),(5,60,'Soul Book',1,1,2,76034751,0,0,-1,3,14,14,1,0,0,0,200,150,150,1128,0,0,1,900,0,25,0,107,0,0,0,215,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,4,0,0,0,0,0),(5,61,'Blue Eye Staff',0,1,4,76034751,0,0,-1,3,14,12,1,0,0,0,220,100,100,1128,0,0,1,1000,173,59,0,0,0,179,193,240,30,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(5,62,'Blue Eye Stick',0,1,4,76034751,0,0,-1,3,14,13,1,0,0,0,220,100,100,1128,0,0,1,1000,157,62,0,0,0,164,172,244,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(5,63,'Blue Eye Book',1,1,2,76034751,0,0,-1,3,14,14,1,0,0,0,220,150,150,1128,0,0,1,1000,0,110,0,372,0,0,0,238,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(6,0,'Small Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,3,22,0,1128,0,0,1,0,70,0,0,0,0,0,0,0,0,0,1,0,3,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,1,0,0,4,0,0,0,0,0),(6,1,'Horn Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,9,28,0,1128,0,0,1,0,100,0,0,0,0,0,0,0,0,0,3,0,9,0,0,0,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,4,0,0,0,0,0),(6,2,'Kite Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,12,32,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,0,4,0,12,0,0,0,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,4,0,0,0,0,0),(6,3,'Elven Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,21,36,0,1128,0,0,1,0,30,100,0,0,0,0,0,0,0,0,8,0,21,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,4,0,0,0,0,0),(6,4,'Buckler',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,6,24,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,0,0,2,0,6,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,1,0,0,4,0,0,0,0,0),(6,5,'Dragon Slayer Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,35,44,0,1128,0,0,1,0,100,40,0,0,0,0,0,0,0,0,10,0,36,0,0,0,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,-1,0,0,0,0,0),(6,6,'Skull Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,15,34,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,0,5,0,15,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,4,0,0,0,0,0),(6,7,'Spiked Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,30,40,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,9,0,30,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(6,8,'Tower Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,40,46,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,11,0,40,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,-1,0,0,0,0,0),(6,9,'Plate Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,25,38,0,1128,0,0,1,0,120,0,0,0,0,0,0,0,0,0,8,0,25,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(6,10,'Large Round Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,18,35,0,1128,0,0,1,0,120,0,0,0,0,0,0,0,0,0,6,0,18,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(6,11,'Serpent Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,45,48,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,12,0,45,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,-1,0,0,0,0,0),(6,12,'Bronze Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,54,52,0,1128,0,0,1,0,140,0,0,0,0,0,0,0,0,0,13,0,54,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,13,'Chaos Dragon Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,60,60,0,1128,0,0,1,0,120,40,0,0,0,0,0,0,0,0,14,0,60,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,14,'Legendary Shield',1,2,3,143162303,10000,0,-1,2,3,15,1,0,0,0,48,50,0,1128,0,0,1,0,90,25,0,0,0,0,0,0,0,0,7,0,48,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,15,'Grand Soul Shield',1,2,3,143162303,10000,0,-1,2,3,15,1,0,0,0,74,55,0,1128,0,0,1,0,70,23,0,0,0,0,0,0,0,0,12,0,55,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,16,'Elemental Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,66,51,0,1128,0,0,1,0,30,60,0,30,0,0,0,0,0,0,11,0,28,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(6,17,'Crimson Glory Shield',1,2,2,8944543,10000,18,-1,2,3,15,2,0,0,0,104,51,0,1128,0,0,1,380,95,48,0,0,0,0,0,0,0,0,19,0,90,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,18,'Salamander Shield',1,2,2,8944543,10000,18,-1,2,3,15,2,0,0,0,102,51,0,1128,0,0,1,380,80,61,0,0,0,0,0,0,0,0,20,0,96,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,19,'Frost Barrier Shield',1,2,2,8944543,10000,0,-1,2,3,15,2,0,0,0,99,51,0,1128,0,0,1,380,26,53,0,26,0,0,0,0,0,0,14,0,58,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(6,20,'Guardian Shield',1,2,2,8944543,10000,0,-1,2,3,15,2,0,0,0,106,51,0,1128,0,0,1,380,54,18,0,0,0,0,0,0,0,0,12,0,30,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,21,'Cross Shield',1,2,2,143162303,10000,18,-1,2,3,15,1,0,0,0,70,65,0,1128,0,0,1,0,140,55,0,0,0,0,0,0,0,0,16,0,75,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(6,22,'Lazy Wind Shield',1,2,2,8928159,0,18,-1,-1,3,15,2,0,0,0,129,90,0,1128,0,0,1,400,67,56,0,0,0,0,0,0,0,0,36,0,108,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,23,'Light Lord Shield',1,2,2,8928159,0,0,-1,-1,3,15,2,0,0,0,124,90,0,1128,0,0,1,400,16,35,0,35,0,0,0,0,0,0,27,0,81,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,3,0,0,0,0,0,0,0,0),(6,24,'Dark Devil Shield',1,2,2,8928159,0,0,-1,-1,3,15,2,0,0,0,122,90,0,1128,0,0,1,400,52,15,0,0,0,0,0,0,0,0,25,0,75,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,25,'Magic Knight Shield',1,2,2,8928159,0,18,-1,-1,3,15,2,0,0,0,128,90,0,1128,0,0,1,400,53,18,0,0,0,0,0,0,0,0,29,0,87,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,26,'Ambition Shield',1,2,2,8928159,0,18,-1,-1,3,15,2,0,0,0,131,90,0,1128,0,0,1,400,104,24,0,0,0,0,0,0,0,0,27,0,81,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(6,27,'Legendary Shield-J',1,2,3,143145919,0,0,-1,2,0,15,0,0,0,0,48,50,0,1128,0,0,1,0,90,25,0,0,0,0,0,0,0,0,9,0,48,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(6,28,'Serpent Shield-J',1,2,2,143145919,0,18,-1,2,0,15,0,0,0,0,45,48,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,14,0,45,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1),(6,29,'Lapid Shield',1,2,2,143162303,10000,18,-1,-1,3,15,1,0,0,0,13,31,0,1128,0,0,1,0,70,80,0,0,0,0,0,0,0,0,11,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(6,30,'Pluma Shield',1,2,2,143162303,10000,18,-1,-1,3,15,1,0,0,0,70,52,0,1128,0,0,1,0,110,125,0,0,0,0,0,0,0,0,25,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(6,31,'Alacran Shield',1,2,2,143162303,10000,18,-1,-1,3,15,1,0,0,0,40,31,0,1128,0,0,1,0,120,100,0,0,0,0,0,0,0,0,5,0,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(6,32,'Vis Shield',1,2,2,143162303,10000,18,-1,-1,3,15,1,0,0,0,75,52,0,1128,0,0,1,0,169,112,0,0,0,0,0,0,0,0,30,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(6,37,'Legendary Shield (Bound)',1,2,3,4611,0,0,-1,2,3,15,5,0,0,0,48,70,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,19,0,48,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(6,38,'Cross Shield (Bound)',1,2,2,4611,0,18,-1,2,3,15,5,0,0,0,70,75,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,29,0,75,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(6,39,'Pluma Shield (Bound)',1,2,2,4611,0,18,-1,2,3,15,5,0,0,0,70,70,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,31,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(6,40,'Grace Shield',1,2,2,8944543,10000,18,-1,-1,3,15,2,0,0,0,70,85,0,564,0,0,1,380,48,39,0,0,0,0,0,0,0,0,14,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(6,41,'Constant Shield',1,2,2,8928159,0,18,-1,-1,3,15,2,0,0,0,131,90,0,564,0,0,1,400,61,43,0,0,0,0,0,0,0,0,23,0,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(6,42,'Elhaz Runic Shield',1,2,2,143162303,10000,0,-1,2,3,15,1,0,0,0,70,65,0,1128,0,0,1,0,30,10,0,0,0,0,0,0,0,0,15,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(6,43,'Elemental Shield (Bound)',1,2,2,4611,0,0,-1,2,3,15,5,0,0,0,48,70,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,20,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(6,44,'Bloodangel Shield',1,2,3,76034751,0,0,-1,2,18,15,1,0,0,0,150,100,0,1128,0,0,1,400,35,25,0,120,0,0,0,0,0,0,45,0,90,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,45,'Darkangel Shield',1,2,3,76034751,0,0,-1,2,18,15,1,0,0,0,160,100,0,1128,0,0,1,600,35,24,0,117,0,0,0,0,0,0,54,0,93,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,46,'Holyangel Shield',1,2,3,76034751,0,0,-1,2,18,15,1,0,0,0,180,100,0,1128,0,0,1,800,33,22,0,111,0,0,0,0,0,0,63,0,96,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,47,'Soul Shield',1,2,3,76034751,0,0,-1,2,18,15,1,0,0,0,200,100,0,1128,0,0,1,900,32,21,0,105,0,0,0,0,0,0,72,0,99,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,48,'Blue Eye Shield',1,2,3,76034751,0,0,-1,2,18,15,1,0,0,0,220,100,0,1128,0,0,1,1000,137,100,0,470,0,0,0,0,0,0,81,0,102,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,0,'Bronze Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,16,34,0,1128,0,0,1,0,80,20,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,4,0,0,0,0,0),(7,1,'Dragon Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,57,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,2,'Pad Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,5,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,3,'Legendary Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,50,42,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,4,'Bone Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,18,30,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,5,'Leather Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,6,30,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,4,0,0,0,0,0),(7,6,'Scale Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,26,40,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,4,0,0,0,0,0),(7,7,'Sphinx Mask',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,32,36,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,8,'Brass Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,36,44,0,1128,0,0,1,0,100,30,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,4,0,0,0,0,0),(7,9,'Plate Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,46,50,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,10,'Vine Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,6,22,0,1128,0,0,1,0,30,60,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,11,'Silk Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,16,26,0,1128,0,0,1,0,30,70,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,12,'Wind Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,28,32,0,1128,0,0,1,0,30,80,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(7,13,'Spirit Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,40,38,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,14,'Guardian Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,53,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,16,'Black Dragon Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,82,74,0,1128,0,0,1,0,170,60,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,17,'Dark Phoenix Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,92,80,0,1128,0,0,1,0,205,62,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,18,'Grand Soul Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,81,67,0,1128,0,0,1,0,59,20,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,19,'Divine Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,85,74,0,1128,0,0,1,0,50,110,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,21,'Great Dragon Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,104,86,0,1128,0,0,1,0,200,58,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,22,'Dark Soul Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,110,75,0,1128,0,0,1,0,55,18,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,24,'Red Spirit Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,93,80,0,1128,0,0,1,0,52,115,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,25,'Light Plate Mask',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,46,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,26,'Adamantine Mask',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,66,56,0,1128,0,0,1,0,77,21,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,27,'Dark Steel Mask',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,86,70,0,1128,0,0,1,0,84,22,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,28,'Dark Master Mask',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,106,78,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,29,'Dragon Knight Helm',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,130,90,0,1128,0,0,1,380,170,60,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,30,'Venom Mist Helm',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,126,86,0,1128,0,0,1,380,44,15,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,31,'Sylphid Ray Helm',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,126,86,0,1128,0,0,1,380,38,80,0,0,0,0,0,0,0,0,57,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,33,'Sunlight Mask',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,130,82,0,1128,0,0,1,380,62,16,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,34,'Ashcrow Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,67,72,0,1128,0,0,1,0,160,50,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,35,'Eclipse Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,67,54,0,1128,0,0,1,0,53,12,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,36,'Iris Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,67,59,0,1128,0,0,1,0,50,70,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,38,'Glorious Mask',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,97,74,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,39,'Violent Wind Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,28,36,0,1128,0,0,1,0,31,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,40,'Red Wing Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,50,42,0,1128,0,0,1,0,26,4,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,41,'Ancient Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,68,54,0,1128,0,0,1,0,52,16,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,42,'Demonic Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,81,67,0,1128,0,0,1,0,60,20,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(7,43,'Storm Blitz Helm',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,110,75,0,1128,0,0,1,380,56,20,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(7,44,'Eternal Wing Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,116,86,0,1128,0,0,1,380,62,20,0,170,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(7,45,'Titan Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,111,86,0,1128,0,0,1,380,222,32,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,46,'Brave Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,107,86,0,1128,0,0,1,380,74,162,0,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,49,'Seraphim Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,111,86,0,1128,0,0,1,380,55,197,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,50,'Faith Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,104,86,0,1128,0,0,1,380,32,29,0,138,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,51,'Royal Mask',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,111,86,0,1128,0,0,1,380,105,38,0,0,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,52,'Hades Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,109,86,0,1128,0,0,1,380,60,15,0,181,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,53,'Succubus Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,56,19,0,157,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(7,54,'Lazy Wind Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,67,151,0,0,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,55,'Dark Devil Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,45,13,0,171,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,56,'Sticky Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,48,180,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,58,'Ambition Mask',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,112,22,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(7,59,'Sacred Fire Helm',2,2,2,143162303,10000,0,-1,1,3,16,1,0,0,0,54,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,60,'Storm Zahard Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,70,68,0,1128,0,0,1,0,100,0,90,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,61,'Piercing Grove Helm',2,2,2,143162303,10000,0,-1,-1,3,16,1,0,0,0,90,82,0,1128,0,0,1,0,115,0,100,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,62,'Scale Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,26,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,-1,0,0,0,0,0),(7,63,'Silk Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,16,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,64,'Sphinx Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,65,'Violent Wind Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,66,'Adamantine Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,66,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,67,'Dragon Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,57,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,68,'Guardian Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,53,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,69,'Legendary Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,70,'Red Wing Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,72,'Storm Zahard Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,70,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,73,'Phoenix Soul Helmet',2,2,2,8928191,0,0,-1,-1,3,16,3,0,0,0,128,88,0,1128,0,0,1,380,97,0,85,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,74,'Stormwing Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,200,33,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,75,'Light Lord Helmet',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,1128,0,0,1,400,14,31,0,127,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,78,'Dragon Helm-J',2,2,2,143145919,0,0,-1,2,0,16,0,0,0,0,57,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(7,79,'Legendary Helm-J',2,2,2,143145919,0,0,-1,2,0,16,0,0,0,0,50,42,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(7,80,'Guardian Helm-J',2,2,2,143145919,0,0,-1,2,0,16,0,0,0,0,53,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(7,81,'Light Plate Mask-J',2,2,2,143145919,0,0,-1,2,0,16,0,0,0,0,46,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(7,82,'Red Wing Helm-J',2,2,2,143145919,0,0,-1,2,0,16,0,0,0,0,50,42,0,1128,0,0,1,0,26,4,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(7,83,'Sacred Fire Helm-J',2,2,2,143145919,0,0,-1,3,0,16,0,0,0,0,54,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),(7,91,'Robust Helmet',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,20,28,0,1128,0,0,1,0,88,60,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,92,'Gru hill Helmet',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,50,44,0,1128,0,0,1,0,180,140,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,93,'Princie Helmet',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,70,64,0,1128,0,0,1,0,155,130,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,94,'Hirat Helmet',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,91,74,0,1128,0,0,1,0,342,96,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,95,'Sate Helmet',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,91,74,0,1128,0,0,1,0,96,342,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,96,'Robust Helmet',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,20,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,97,'Princie Helmet',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,70,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(7,98,'Bloodangel Knight Helm (S)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,145,42,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,99,'Bloodangel Wizard Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,42,14,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,100,'Bloodangel Elf Helm (A)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,34,75,0,0,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,101,'Bloodangel Summoner Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,34,11,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(7,103,'Bloodangel Lord Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,59,15,0,0,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(7,104,'Bloodangel Fighter Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,71,0,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(7,105,'Bloodangel Lancer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,61,61,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(7,106,'Soul Knight Helm (S)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,145,42,0,0,0,0,0,0,0,0,183,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,107,'Soul Wizard Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,42,14,0,0,0,0,0,0,0,0,164,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,108,'Soul Elf Helm (A)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,34,75,0,0,0,0,0,0,0,0,178,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,109,'Soul Summoner Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,34,11,0,0,0,0,0,0,0,0,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(7,111,'Soul Lord Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,59,15,0,0,0,0,0,0,0,0,162,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(7,112,'Soul Fighter Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,71,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(7,113,'Soul Lancer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,61,61,0,0,0,0,0,0,0,0,156,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(7,114,'Soul Elf Helm (E)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,12,27,0,149,0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,116,'Runic Pad Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,4,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,117,'Runic Sphinx Mask',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,31,36,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,118,'Runic Legendary Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,49,42,0,1128,0,0,1,0,30,5,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,119,'Kenazu Hood',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,80,67,0,1128,0,0,1,0,36,14,0,24,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,120,'Runic Divine Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,108,86,0,1128,0,0,1,380,40,13,0,116,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,121,'Runic Light Lord Helm',2,2,2,8944543,0,0,-1,-1,3,16,2,0,0,0,142,90,0,1128,0,0,1,400,39,12,0,117,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(7,122,'Bloodangel Runic Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,36,13,0,121,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(7,123,'Darkangel Runic Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,36,13,0,121,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(7,124,'Runic Sphinx Mask',2,2,2,137365507,0,0,-1,3,3,16,4,0,0,0,32,255,0,1128,0,0,1,1,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,125,'Runic Legendary Helm',2,2,2,137365507,0,0,-1,3,3,16,4,0,0,0,50,255,0,1128,0,0,1,150,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,126,'Runic Legendary Helm (Bound)',2,2,2,4611,0,0,-1,3,3,16,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(7,127,'Holyangel Runic Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,800,36,13,0,121,0,0,0,0,0,0,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(7,128,'Soul Runic Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,36,13,0,121,0,0,0,0,0,0,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(7,129,'Blue Eye Runic Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,36,13,0,121,0,0,0,0,0,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(7,130,'Dragon Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,131,'Legendary Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,132,'Guardian Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,134,'Adamantine Mask (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(7,135,'Red Winged Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(7,136,'Storm Zahard Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,137,'Princie Helmet (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(7,138,'Darkangel Knight Helm (S)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,145,42,0,0,0,0,0,0,0,0,88,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,139,'Darkangel Wizard Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,42,14,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,140,'Darkangel Elf Helm (A)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,34,75,0,0,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,141,'Darkangel Summoner Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,34,11,0,0,0,0,0,0,0,0,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(7,143,'Darkangel Lord Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,59,15,0,0,0,0,0,0,0,0,69,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(7,144,'Darkangel Fighter Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,71,0,0,0,0,0,0,0,0,0,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(7,145,'Darkangel Lancer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,61,61,0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(7,146,'Tigris Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,111,86,0,564,0,0,1,380,66,18,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(7,147,'Crimson Skull Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,564,0,0,1,400,76,23,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(7,148,'Grace Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,111,86,0,564,0,0,1,380,64,46,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(7,149,'Constant Helm',2,2,2,8944543,1000,0,-1,-1,3,16,2,0,0,0,143,90,0,564,0,0,1,400,70,51,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(7,150,'Holyangel Knight Helm (S)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,145,42,0,0,0,0,0,0,0,0,138,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,151,'Holyangel Wizard Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,42,14,0,0,0,0,0,0,0,0,121,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,152,'Holyangel Elf Helm (A)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,34,75,0,0,0,0,0,0,0,0,131,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,153,'Holyangel Summoner Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,34,11,0,0,0,0,0,0,0,0,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(7,155,'Holyangel Lord Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,59,15,0,0,0,0,0,0,0,0,119,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(7,156,'Holyangel Fighter Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,71,0,0,0,0,0,0,0,0,0,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(7,157,'Holyangel Lancer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,564,0,0,1,800,61,61,0,0,0,0,0,0,0,0,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(7,158,'Bloodangel Elf Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1,0,0,1,400,12,27,0,149,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,159,'Darkangel Elf Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1,0,0,1,600,12,27,0,149,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,160,'Holyangel Elf Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1,0,0,1,800,12,27,0,149,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,164,'Blue Eye Knight Helm (S)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,145,42,0,0,0,0,0,0,0,0,228,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,165,'Blue Eye Wizard Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,42,14,0,0,0,0,0,0,0,0,209,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,166,'Blue Eye Elf Helm (A)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,34,75,0,0,0,0,0,0,0,0,223,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,167,'Blue Eye Summoner Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,34,11,0,0,0,0,0,0,0,0,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(7,169,'Blue Eye Lord Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,59,15,0,0,0,0,0,0,0,0,207,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(7,170,'Blue Eye Fighter Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,71,0,0,0,0,0,0,0,0,0,205,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(7,171,'Blue Eye Lancer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,61,61,0,0,0,0,0,0,0,0,201,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(7,172,'Blue Eye Elf Helm (E)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,12,27,0,149,0,0,0,0,0,0,148,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,174,'Slayer Red Wing Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,5,30,0,1128,0,0,1,0,0,80,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,175,'Slayer Ancient Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,25,40,0,1128,0,0,1,0,0,110,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,176,'Slayer Demonic Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,58,60,0,1128,0,0,1,0,30,120,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,177,'Night Wing Helm',2,2,2,143162303,10000,0,-1,3,3,16,1,0,0,0,100,70,0,1128,0,0,1,0,30,125,0,0,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,178,'Fidelity Helm',2,2,2,8944543,10000,0,-1,-1,3,16,2,0,0,0,110,86,0,1128,0,0,1,380,32,130,0,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(7,179,'Trace Helm',2,2,2,8944543,0,0,-1,-1,3,16,2,0,0,0,140,90,0,1128,0,0,1,400,33,135,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(7,180,'Bloodangel Slayer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,42,145,0,0,0,0,0,0,0,0,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0),(7,181,'Darkangel Slayer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,42,145,0,0,0,0,0,0,0,0,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(7,182,'Holyangel Slayer Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,800,42,145,0,0,0,0,0,0,0,0,142,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(7,183,'Soul Slayer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,42,145,0,0,0,0,0,0,0,0,187,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(7,184,'Blue Eye Slayer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,42,145,0,0,0,0,0,0,0,0,232,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(7,185,'Silver Heart Slayer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,42,145,0,0,0,0,0,0,0,0,277,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0),(7,186,'Slayer Ancient Helm',2,2,2,137365507,0,0,-1,3,3,16,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,187,'Slayer Demonic Helm',2,2,2,137365507,0,0,-1,3,3,16,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,188,'Slayer Demonic Helm (Bound)',2,2,2,4611,0,0,-1,3,3,16,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(7,189,'Silver Heart Knight Helm (S)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,145,42,0,0,0,0,0,0,0,0,273,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,190,'Silver Heart Wizard Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,42,14,0,0,0,0,0,0,0,0,254,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,191,'Silver Heart Elf Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,34,75,0,0,0,0,0,0,0,0,268,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,192,'Silver Heart Summoner Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,34,11,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(7,194,'Silver Heart Lord Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,59,15,0,0,0,0,0,0,0,0,252,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(7,195,'Silver Heart Fighter Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,71,0,0,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(7,196,'Silver Heart Lancer Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,61,61,0,0,0,0,0,0,0,0,246,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(7,197,'Silver Heart Elf Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,12,27,0,149,0,0,0,0,0,0,193,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(7,199,'Silver Heart Runic Helm',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,36,13,0,121,0,0,0,0,0,0,259,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(7,200,'Bloodangel Knight Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,0,20,0,105,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,201,'Darkangel Knight Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,600,0,20,0,105,0,0,0,0,0,0,106,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,202,'Holyangel Knight Helm (E)',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,800,0,20,0,105,0,0,0,0,0,0,156,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,203,'Soul Knight Helm (E)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,900,0,20,0,105,0,0,0,0,0,0,201,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,204,'Blue Eye Knight Helm (E)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1000,0,20,0,105,0,0,0,0,0,0,246,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,205,'Silver Heart Knight Helm (E)',2,2,2,76034751,0,0,-1,5,18,16,1,0,0,0,150,100,0,1128,0,0,1,1100,0,20,0,105,0,0,0,0,0,0,291,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,206,'Leather Gunner Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,10,30,0,1128,0,0,1,0,42,16,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,207,'Scale Gunner Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,25,40,0,1128,0,0,1,0,35,18,0,44,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,208,'Round Gunner Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,40,42,0,1128,0,0,1,0,63,36,0,74,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,209,'Fray Helm',2,2,2,143162303,10000,0,-1,2,3,16,1,0,0,0,100,68,0,1128,0,0,1,0,64,38,0,74,0,0,0,0,0,0,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,212,'Bloodangel Gun Crusher Helm',2,2,2,76034751,0,0,-1,5,15,16,1,0,0,0,150,100,0,1128,0,0,1,400,58,48,0,112,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(7,218,'Scale Gunner Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,219,'Fray Helm',2,2,2,137365507,0,0,-1,2,3,16,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(7,220,'Fray Helm (Bound)',2,2,2,4611,0,0,-1,2,3,16,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,0,'Bronze Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,18,34,0,1128,0,0,1,0,80,20,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(8,1,'Dragon Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,59,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,2,'Pad Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,10,28,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,3,'Legendary Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,56,42,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,4,'Bone Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,22,30,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,5,'Leather Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,10,30,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(8,6,'Scale Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,28,40,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(8,7,'Sphinx Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,38,36,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,8,'Brass Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,38,44,0,1128,0,0,1,0,100,30,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,4,0,0,0,0,0),(8,9,'Plate Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,48,50,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,10,'Vine Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,10,22,0,1128,0,0,1,0,30,60,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,11,'Silk Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,20,26,0,1128,0,0,1,0,30,70,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,12,'Wind Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,32,32,0,1128,0,0,1,0,30,80,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(8,13,'Spirit Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,44,38,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,14,'Guardian Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,57,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,15,'Storm Crow Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,80,80,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,16,'Black Dragon Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,90,74,0,1128,0,0,1,0,170,60,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,17,'Dark Phoenix Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,100,80,0,1128,0,0,1,0,214,65,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,18,'Grand Soul Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,91,67,0,1128,0,0,1,0,59,20,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,19,'Divine Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,92,74,0,1128,0,0,1,0,50,110,0,0,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,20,'Thunder Hawk Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,107,82,0,1128,0,0,1,0,170,70,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,21,'Great Dragon Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,126,86,0,1128,0,0,1,0,200,58,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,22,'Dark Soul Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,122,75,0,1128,0,0,1,0,55,18,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,23,'Hurricane Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,128,90,0,1128,0,0,1,0,162,66,0,0,0,0,0,0,0,0,73,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,24,'Red Spirit Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,109,80,0,1128,0,0,1,0,52,115,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,25,'Light Plate Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,62,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,26,'Adamantine Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,78,56,0,1128,0,0,1,0,77,21,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,27,'Dark Steel Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,96,70,0,1128,0,0,1,0,84,22,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,28,'Dark Master Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,117,78,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,29,'Dragon Knight Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,140,90,0,1128,0,0,1,380,170,60,0,0,0,0,0,0,0,0,88,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,30,'Venom Mist Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,146,86,0,1128,0,0,1,380,44,15,0,0,0,0,0,0,0,0,57,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,31,'Sylphid Ray Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,146,86,0,1128,0,0,1,380,38,80,0,0,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,32,'Volcano Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,147,95,0,1128,0,0,1,380,145,60,0,0,0,0,0,0,0,0,86,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,33,'Sunlight Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,147,82,0,1128,0,0,1,380,62,16,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,34,'Ashcrow Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,75,72,0,1128,0,0,1,0,160,50,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,35,'Eclipse Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,75,54,0,1128,0,0,1,0,53,12,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,36,'Iris Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,75,59,0,1128,0,0,1,0,50,70,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,37,'Valiant Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,105,81,0,1128,0,0,1,0,155,50,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,38,'Glorious Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,105,74,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,39,'Violent Wind Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,34,36,0,1128,0,0,1,0,39,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,40,'Red Wing Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,56,42,0,1128,0,0,1,0,35,8,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,41,'Ancient Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,75,54,0,1128,0,0,1,0,52,16,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,42,'Demonic Armor',3,2,2,143162303,10000,0,-1,-1,3,17,1,0,0,0,91,67,0,1128,0,0,1,0,60,20,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(8,43,'Storm Blitz Armor',3,2,2,8928191,0,0,-1,-1,3,17,3,0,0,0,122,75,0,1128,0,0,1,380,57,19,0,0,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(8,44,'Eternal Wing Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,131,86,0,1128,0,0,1,380,62,20,0,170,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(8,45,'Titan Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,132,86,0,1128,0,0,1,380,222,32,0,0,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,46,'Brave Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,128,86,0,1128,0,0,1,380,74,162,0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,47,'Phantom Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,131,86,0,1128,0,0,1,380,212,57,0,0,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,48,'Destroy Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,125,86,0,1128,0,0,1,380,62,19,0,165,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,49,'Seraphim Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,129,86,0,1128,0,0,1,380,55,197,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,50,'Faith Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,122,86,0,1128,0,0,1,380,32,29,0,138,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,51,'Royal Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,132,86,0,1128,0,0,1,380,105,38,0,0,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,52,'Hades Armor',3,2,3,8944543,10000,0,-1,-1,3,17,2,0,0,0,129,86,0,1128,0,0,1,380,60,15,0,181,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,53,'Succubus Armor',3,2,2,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,56,19,0,157,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(8,54,'Lazy Wind Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,67,151,0,0,0,0,0,0,0,0,79,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,55,'Dark Devil Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,45,13,0,171,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,56,'Sticky Armor',3,2,2,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,48,180,0,0,0,0,0,0,0,0,69,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,57,'Hell Night Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,194,52,0,0,0,0,0,0,0,0,89,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,58,'Ambition Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,112,22,0,0,0,0,0,0,0,0,67,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(8,59,'Sacred Fire Armor',3,2,3,143162303,10000,0,-1,0,3,17,1,0,0,0,66,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,60,'Storm Zahard Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,82,68,0,1128,0,0,1,0,100,0,90,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,61,'Piercing Grove Armor',3,2,3,143162303,10000,0,-1,-1,3,17,1,0,0,0,101,82,0,1128,0,0,1,0,115,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,62,'Scale Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,-1,0,0,0,0,0),(8,63,'Silk Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,20,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,64,'Sphinx Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,38,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,65,'Violent Wind Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,34,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,66,'Adamantine Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,78,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,67,'Dragon Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,68,'Guardian Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,57,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,69,'Legendary Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,56,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,70,'Red Wing Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,56,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,71,'Storm Crow Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,80,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,72,'Storm Zahard Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,82,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,73,'Phoenix Soul Armor',3,2,3,8928191,0,0,-1,-1,3,17,3,0,0,0,143,88,0,1128,0,0,1,380,97,0,85,0,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,74,'Stormwing Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,200,33,0,0,0,0,0,0,0,0,90,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,75,'Light Lord Armor',3,2,2,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,14,31,0,127,0,0,0,0,0,0,61,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,76,'Magic Knight Armor',3,2,3,8944543,1000,0,-1,-1,3,17,2,0,0,0,148,90,0,1128,0,0,1,400,48,17,0,142,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,78,'Dragon Armor-J',3,2,3,143145919,0,0,-1,2,0,17,0,0,0,0,59,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(8,79,'Legendary Armor-J',3,2,2,143145919,0,0,-1,2,0,17,0,0,0,0,56,42,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(8,80,'Guardian Armor-J',3,2,2,143145919,0,0,-1,2,0,17,0,0,0,0,57,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(8,81,'Light Plate Armor-J',3,2,3,143145919,0,0,-1,2,0,17,0,0,0,0,62,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(8,82,'Red Wing Armor-J',3,2,2,143145919,0,0,-1,2,0,17,0,0,0,0,56,42,0,1128,0,0,1,0,35,8,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(8,83,'Sacred Fire Armor-J',3,2,3,143145919,0,0,-1,1,0,17,0,0,0,0,66,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),(8,91,'Robust Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,30,36,0,1128,0,0,1,0,100,70,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,92,'Gru Hill Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,60,52,0,1128,0,0,1,0,170,140,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,93,'Princie Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,80,72,0,1128,0,0,1,0,150,130,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,94,'Hirat Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,101,82,0,1128,0,0,1,0,317,92,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,95,'Sate Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,101,82,0,1128,0,0,1,0,92,317,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,96,'Robust Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,30,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,97,'Princie Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,80,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(8,98,'Bloodangel Knight Armor (S)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,174,51,0,0,0,0,0,0,0,0,85,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,99,'Bloodangel Wizard Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,46,15,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,100,'Bloodangel Elf Armor (A)',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,39,87,0,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,101,'Bloodangel Summoner Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,38,13,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(8,102,'Bloodangel Magic Armor (S)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,143,58,0,0,0,0,0,0,0,0,83,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,103,'Bloodangel Lord Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,65,17,0,0,0,0,0,0,0,0,61,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(8,104,'Bloodangel Fighter Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,81,0,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(8,105,'Bloodangel Lancer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,65,65,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(8,106,'Soul Knight Armor (S)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,174,51,0,0,0,0,0,0,0,0,204,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,107,'Soul Wizard Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,46,15,0,0,0,0,0,0,0,0,172,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,108,'Soul Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,39,87,0,0,0,0,0,0,0,0,184,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,109,'Soul Summoner Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,38,13,0,0,0,0,0,0,0,0,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(8,110,'Soul Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,143,58,0,0,0,0,0,0,0,0,203,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,111,'Soul Lord Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,65,17,0,0,0,0,0,0,0,0,181,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(8,112,'Soul Fighter Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,81,0,0,0,0,0,0,0,0,0,186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(8,113,'Soul Lancer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,65,65,0,0,0,0,0,0,0,0,167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(8,114,'Soul Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,14,28,0,154,0,0,0,0,0,0,110,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,115,'Soul Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,35,32,0,157,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,116,'Runic Pad Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,9,28,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,117,'Runic Sphinx Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,37,36,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,118,'Runic Legendary Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,55,42,0,1128,0,0,1,0,40,5,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,119,'Kenazu Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,90,67,0,1128,0,0,1,0,38,16,0,26,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,120,'Runic Divine Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,128,86,0,1128,0,0,1,380,40,13,0,120,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,121,'Runic Light Lord Armor',3,2,2,8944543,0,0,-1,-1,3,17,2,0,0,0,147,90,0,1128,0,0,1,400,39,12,0,121,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(8,122,'Bloodangel Runic Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,40,14,0,125,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(8,123,'Darkangel Runic Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,40,14,0,125,0,0,0,0,0,0,87,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(8,124,'Runic Sphinx Armor',3,2,2,137365507,0,0,-1,3,3,17,4,0,0,0,38,255,0,1128,0,0,1,1,0,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,125,'Runic Legendary Armor',3,2,2,137365507,0,0,-1,3,3,17,4,0,0,0,56,255,0,1128,0,0,1,150,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,126,'Runic Legendary Armor (Bound)',3,2,2,4611,0,0,-1,3,3,17,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(8,127,'Holyangel Runic Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,800,40,14,0,125,0,0,0,0,0,0,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(8,128,'Soul Runic Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,40,14,0,125,0,0,0,0,0,0,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(8,129,'Blue Eye Runic Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,40,14,0,125,0,0,0,0,0,0,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(8,130,'Dragon Armor (Bound)',3,2,3,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,131,'Legendary Armor (Bound)',3,2,2,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,132,'Guardian Armor (Bound)',3,2,2,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,133,'Atlans Armor (Bound)',3,2,3,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,134,'Adamantine Armor (Bound)',3,2,3,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(8,135,'Red Winged Armor (Bound)',3,2,2,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(8,136,'Storm Zahard Armor (Bound)',3,2,3,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,137,'Princie Armor (Bound)',3,2,2,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(8,138,'Darkangel Knight Armor (S)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,174,51,0,0,0,0,0,0,0,0,110,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,139,'Darkangel Wizard Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,46,15,0,0,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,140,'Darkangel Elf Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,39,87,0,0,0,0,0,0,0,0,90,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,141,'Darkangel Summoner Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,38,13,0,0,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(8,142,'Darkangel Magic Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,143,58,0,0,0,0,0,0,0,0,108,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,143,'Darkangel Lord Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,65,17,0,0,0,0,0,0,0,0,86,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(8,144,'Darkangel Fighter Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,81,0,0,0,0,0,0,0,0,0,91,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(8,145,'Darkangel Lancer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,65,65,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(8,146,'Tigris Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,111,86,0,564,0,0,1,380,70,22,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(8,147,'Crimson Skull Armor',3,2,2,8944543,1000,0,-1,-1,3,17,2,0,0,0,143,90,0,564,0,0,1,400,79,25,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(8,148,'Grace Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,111,86,0,564,0,0,1,380,67,48,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(8,149,'Constant Armor',3,2,2,8944543,1000,0,-1,-1,3,17,2,0,0,0,143,90,0,564,0,0,1,400,72,53,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(8,150,'Holyangel Knight Armor (S)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,174,51,0,0,0,0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,151,'Holyangel Wizard Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,46,15,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,152,'Holyangel Elf Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,39,87,0,0,0,0,0,0,0,0,140,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,153,'Holyangel Summoner Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,38,13,0,0,0,0,0,0,0,0,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(8,154,'Holyangel Magic Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,143,58,0,0,0,0,0,0,0,0,158,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,155,'Holyangel Lord Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,65,17,0,0,0,0,0,0,0,0,136,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(8,156,'Holyangel Fighter Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,81,0,0,0,0,0,0,0,0,0,141,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(8,157,'Holyangel Lancer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,564,0,0,1,800,65,65,0,0,0,0,0,0,0,0,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(8,158,'Bloodangel Elf Armor (E)',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,400,14,28,0,154,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,159,'Darkangel Elf Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,600,14,28,0,154,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,160,'Holyangel Elf Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,800,14,28,0,154,0,0,0,0,0,0,69,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,161,'Bloodangel Magic Armor (E)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,400,35,32,0,157,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,162,'Darkangel Magic Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,600,35,32,0,157,0,0,0,0,0,0,105,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,163,'Holyangel Magic Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1,0,0,1,800,35,32,0,157,0,0,0,0,0,0,155,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,164,'Blue Eye Knight Armor (S)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,174,51,0,0,0,0,0,0,0,0,249,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,165,'Blue Eye Wizard Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,46,15,0,0,0,0,0,0,0,0,217,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,166,'Blue Eye Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,39,87,0,0,0,0,0,0,0,0,229,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,167,'Blue Eye Summoner Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,38,13,0,0,0,0,0,0,0,0,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(8,168,'Blue Eye Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,143,58,0,0,0,0,0,0,0,0,248,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,169,'Blue Eye Lord Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,65,17,0,0,0,0,0,0,0,0,226,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(8,170,'Blue Eye Fighter Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,81,0,0,0,0,0,0,0,0,0,231,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(8,171,'Blue Eye Lancer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,65,65,0,0,0,0,0,0,0,0,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(8,172,'Blue Eye Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,14,28,0,154,0,0,0,0,0,0,155,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,173,'Blue Eye Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,35,32,0,157,0,0,0,0,0,0,245,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,174,'Slayer Red Wing Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,11,30,0,1128,0,0,1,0,0,80,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,175,'Slayer Ancient Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,29,40,0,1128,0,0,1,0,0,110,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,176,'Slayer Demonic Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,60,60,0,1128,0,0,1,0,30,120,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,177,'Night Wing Armor',3,2,2,143162303,10000,0,-1,3,3,17,1,0,0,0,127,70,0,1128,0,0,1,0,30,125,0,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,178,'Fidelity Armor',3,2,2,8944543,10000,0,-1,-1,3,17,2,0,0,0,133,86,0,1128,0,0,1,380,32,130,0,0,0,0,0,0,0,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(8,179,'Trace Armor',3,2,2,8944543,0,0,-1,-1,3,17,2,0,0,0,149,90,0,1128,0,0,1,400,33,135,0,0,0,0,0,0,0,0,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(8,180,'Bloodangel Slayer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,51,174,0,0,0,0,0,0,0,0,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0),(8,181,'Darkangel Slayer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,51,174,0,0,0,0,0,0,0,0,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(8,182,'Holyangel Slayer Armor',3,2,2,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,800,51,174,0,0,0,0,0,0,0,0,154,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(8,183,'Soul Slayer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,51,174,0,0,0,0,0,0,0,0,199,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(8,184,'Blue Eye Slayer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,51,174,0,0,0,0,0,0,0,0,244,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(8,185,'Silver Heart Slayer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,51,174,0,0,0,0,0,0,0,0,289,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0),(8,186,'Slayer Ancient Armor',3,2,2,137365507,0,0,-1,3,3,17,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,187,'Slayer Demonic Armor',3,2,2,137365507,0,0,-1,3,3,17,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,188,'Slayer Demonic Armor (Bound)',3,2,2,4611,0,0,-1,3,3,17,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(8,189,'Silver Heart Knight Armor (S)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,174,51,0,0,0,0,0,0,0,0,294,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,190,'Silver Heart Wizard Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,46,15,0,0,0,0,0,0,0,0,262,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,191,'Silver Heart Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,39,87,0,0,0,0,0,0,0,0,274,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,192,'Silver Heart Summoner Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,38,13,0,0,0,0,0,0,0,0,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(8,193,'Silver Heart Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,143,58,0,0,0,0,0,0,0,0,293,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,194,'Silver Heart Lord Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,65,17,0,0,0,0,0,0,0,0,271,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(8,195,'Silver Heart Fighter Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,81,0,0,0,0,0,0,0,0,0,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(8,196,'Silver Heart Lancer Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,65,65,0,0,0,0,0,0,0,0,257,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(8,197,'Silver Heart Elf Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,14,28,0,154,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,198,'Silver Heart Magic Armor',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,35,32,0,157,0,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(8,199,'Silver Heart Runic Armor',3,2,2,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,40,14,0,125,0,0,0,0,0,0,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(8,200,'Bloodangel Knight Armor (E)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,0,22,0,107,0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,201,'Darkangel Knight Armor (E)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,600,0,22,0,107,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,202,'Holyangel Knight Armor (E)',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,800,0,22,0,107,0,0,0,0,0,0,178,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,203,'Soul Knight Armor (E)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,900,0,22,0,107,0,0,0,0,0,0,222,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,204,'Blue Eye Knight Armor (E)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1000,0,22,0,107,0,0,0,0,0,0,267,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,205,'Silver Heart Knight Armor (E)',3,2,3,76034751,0,0,-1,5,18,17,1,0,0,0,150,100,0,1128,0,0,1,1100,0,22,0,107,0,0,0,0,0,0,312,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,206,'Leather Gunner Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,10,30,0,1128,0,0,1,0,44,18,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,207,'Scale Gunner Armor',3,2,2,143162303,10000,0,-1,2,3,17,1,0,0,0,25,40,0,1128,0,0,1,0,37,20,0,46,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,208,'Round Gunner Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,40,42,0,1128,0,0,1,0,65,38,0,76,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,209,'Fray Armor',3,2,3,143162303,10000,0,-1,2,3,17,1,0,0,0,100,68,0,1128,0,0,1,0,66,40,0,76,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,212,'Bloodangel Gun Crusher Armor',3,2,3,76034751,0,0,-1,5,15,17,1,0,0,0,150,100,0,1128,0,0,1,400,60,50,0,114,0,0,0,0,0,0,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(8,218,'Scale Gunner Armor',3,2,2,137365507,0,0,-1,2,3,17,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,219,'Fray Armor',3,2,3,137365507,0,0,-1,2,3,17,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(8,220,'Fray Armor (Bound)',3,2,3,4611,0,0,-1,2,3,17,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,0,'Bronze Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,15,34,0,1128,0,0,1,0,80,20,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(9,1,'Dragon Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,55,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,2,'Pad Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,8,28,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,3,'Legendary Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,53,42,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,4,'Bone Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,20,30,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,5,'Leather Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,8,30,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(9,6,'Scale Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,25,40,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(9,7,'Sphinx Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,34,36,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,8,'Brass Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,35,44,0,1128,0,0,1,0,100,30,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,4,0,0,0,0,0),(9,9,'Plate Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,45,50,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,10,'Vine Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,8,22,0,1128,0,0,1,0,30,60,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,11,'Silk Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,18,26,0,1128,0,0,1,0,30,70,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,12,'Wind Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,30,32,0,1128,0,0,1,0,30,80,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(9,13,'Spirit Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,42,38,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,14,'Guardian Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,54,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,15,'Storm Crow Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,74,80,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,16,'Black Dragon Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,84,74,0,1128,0,0,1,0,170,60,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,17,'Dark Phoenix Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,96,80,0,1128,0,0,1,0,207,63,0,0,0,0,0,0,0,0,54,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,18,'Grand Soul Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,86,67,0,1128,0,0,1,0,59,20,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,19,'Divine Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,88,74,0,1128,0,0,1,0,50,110,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,20,'Thunder Hawk Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,99,82,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,21,'Great Dragon Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,113,86,0,1128,0,0,1,0,200,58,0,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,22,'Dark Soul Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,117,75,0,1128,0,0,1,0,55,18,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,23,'Hurricane Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,122,90,0,1128,0,0,1,0,162,66,0,0,0,0,0,0,0,0,61,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,24,'Red Spirit Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,100,80,0,1128,0,0,1,0,52,115,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,25,'Light Plate Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,50,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,26,'Adamantine Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,70,56,0,1128,0,0,1,0,77,21,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,27,'Dark Steel Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,92,70,0,1128,0,0,1,0,84,22,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,28,'Dark Master Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,110,78,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,29,'Dragon Knight Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,134,90,0,1128,0,0,1,380,170,60,0,0,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,30,'Venom Mist Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,135,86,0,1128,0,0,1,380,44,15,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,31,'Sylphid Ray Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,135,86,0,1128,0,0,1,380,38,80,0,0,0,0,0,0,0,0,61,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,32,'Volcano Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,135,95,0,1128,0,0,1,380,145,60,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,33,'Sunlight Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,140,82,0,1128,0,0,1,380,62,16,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,34,'Ashcrow Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,69,72,0,1128,0,0,1,0,160,50,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,35,'Eclipse Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,69,54,0,1128,0,0,1,0,53,12,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,36,'Iris Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,69,59,0,1128,0,0,1,0,50,70,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,37,'Valiant Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,101,81,0,1128,0,0,1,0,155,50,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,38,'Glorious Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,101,74,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,39,'Violent Wind Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,30,36,0,1128,0,0,1,0,36,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,40,'Red Wing Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,53,42,0,1128,0,0,1,0,35,7,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,41,'Ancient Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,72,54,0,1128,0,0,1,0,49,16,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,42,'Demonic Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,86,67,0,1128,0,0,1,0,60,20,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(9,43,'Storm Blitz Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,117,75,0,1128,0,0,1,380,57,19,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(9,44,'Eternal Wing Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,122,86,0,1128,0,0,1,380,62,20,0,170,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(9,45,'Titan Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,116,86,0,1128,0,0,1,380,222,32,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,46,'Pants of Bravery',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,112,86,0,1128,0,0,1,380,74,162,0,0,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,47,'Phantom Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,115,86,0,1128,0,0,1,380,212,57,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,48,'Pants of Destruction',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,113,86,0,1128,0,0,1,380,62,19,0,165,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,49,'Seraphim Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,116,86,0,1128,0,0,1,380,55,197,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,50,'Faith Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,109,86,0,1128,0,0,1,380,32,29,0,138,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,51,'Royal Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,116,86,0,1128,0,0,1,380,105,38,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,52,'Hades Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,114,86,0,1128,0,0,1,380,60,15,0,181,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,53,'Succubus Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,56,19,0,157,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(9,54,'Lazy Wind Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,67,151,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,55,'Dark Devil Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,45,13,0,171,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,56,'Sticky Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,48,180,0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,57,'Hell Night Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,194,52,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,58,'Ambition Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,112,22,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(9,59,'Sacred Fire Pants',4,2,2,143162303,10000,0,-1,1,3,18,1,0,0,0,62,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,60,'Storm Zahard Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,78,68,0,1128,0,0,1,0,100,0,90,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,61,'Piercing Grove Pants',4,2,2,143162303,10000,0,-1,-1,3,18,1,0,0,0,95,82,0,1128,0,0,1,0,115,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,62,'Scale Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,25,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,-1,0,0,0,0,0),(9,63,'Silk Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,18,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,64,'Sphinx Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,34,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,65,'Violent Wind Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,30,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,66,'Adamantine Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,70,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,67,'Dragon Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,55,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,68,'Guardian Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,54,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,69,'Legendary Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,53,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,70,'Red Wing Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,53,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,71,'Storm Crow Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,74,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,72,'Storm Zahard Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,78,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,73,'Phoenix Soul Pants',4,2,2,8928191,0,0,-1,-1,3,18,3,0,0,0,134,88,0,1128,0,0,1,380,97,0,85,0,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,74,'Stormwing Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,200,33,0,0,0,0,0,0,0,0,83,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,75,'Light Lord Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,14,31,0,127,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,76,'Magic Knight Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,145,90,0,1128,0,0,1,400,48,17,0,142,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,78,'Dragon Pants-J',4,2,2,143145919,0,0,-1,2,0,18,0,0,0,0,55,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(9,79,'Legendary Pants-J',4,2,2,143145919,0,0,-1,2,0,18,0,0,0,0,53,42,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(9,80,'Guardian Pants-J',4,2,2,143145919,0,0,-1,2,0,18,0,0,0,0,54,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(9,81,'Light Plate Pants-J',4,2,2,143145919,0,0,-1,2,0,18,0,0,0,0,50,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(9,82,'Red Wing Pants-J',4,2,2,143145919,0,0,-1,2,0,18,0,0,0,0,53,42,0,1128,0,0,1,0,35,7,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(9,83,'Sacred Fire Pants-J',4,2,2,143145919,0,0,-1,3,0,18,0,0,0,0,62,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),(9,91,'Robust Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,24,30,0,1128,0,0,1,0,100,69,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,92,'Gru Hill Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,54,46,0,1128,0,0,1,0,180,140,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,93,'Princie Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,74,66,0,1128,0,0,1,0,155,135,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,94,'Hirat Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,95,76,0,1128,0,0,1,0,334,94,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,95,'Sate Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,95,76,0,1128,0,0,1,0,94,334,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,96,'Robust Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,24,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,97,'Princie Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,74,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(9,98,'Bloodangel Knight Pants (S)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,157,45,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,99,'Bloodangel Wizard Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,44,14,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,100,'Bloodangel Elf Pants (A)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,36,80,0,0,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,101,'Bloodangel Summoner Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,36,12,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(9,102,'Bloodangel Magic Pants (S)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,136,56,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,103,'Bloodangel Lord Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,61,16,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(9,104,'Bloodangel Fighter Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,76,0,0,0,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(9,105,'Bloodangel Lancer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,63,63,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(9,106,'Soul Knight Pants (S)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,157,45,0,0,0,0,0,0,0,0,195,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,107,'Soul Wizard Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,44,14,0,0,0,0,0,0,0,0,169,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,108,'Soul Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,36,80,0,0,0,0,0,0,0,0,180,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,109,'Soul Summoner Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,36,12,0,0,0,0,0,0,0,0,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(9,110,'Soul Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,136,56,0,0,0,0,0,0,0,0,181,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,111,'Soul Lord Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,61,16,0,0,0,0,0,0,0,0,169,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(9,112,'Soul Fighter Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,76,0,0,0,0,0,0,0,0,0,176,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(9,113,'Soul Lancer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,63,63,0,0,0,0,0,0,0,0,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(9,114,'Soul Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,13,27,0,150,0,0,0,0,0,0,104,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,115,'Soul Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,33,30,0,153,0,0,0,0,0,0,177,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,116,'Runic Pad Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,7,28,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,117,'Runic Sphinx Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,33,36,0,1128,0,0,1,0,40,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,118,'Runic Legendary Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,52,42,0,1128,0,0,1,0,40,5,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,119,'Kenazu Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,85,67,0,1128,0,0,1,0,37,15,0,25,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,120,'Runic Divine Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,113,86,0,1128,0,0,1,380,40,13,0,118,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,121,'Runic Light Lord Pants',4,2,2,8944543,0,0,-1,-1,3,18,2,0,0,0,144,90,0,1128,0,0,1,400,39,12,0,119,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(9,122,'Bloodangel Runic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,38,13,0,123,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(9,123,'Darkangel Runic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,38,13,0,123,0,0,0,0,0,0,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(9,124,'Runic Sphinx Pants',4,2,2,137365507,0,0,-1,3,3,18,4,0,0,0,34,255,0,1128,0,0,1,1,0,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,125,'Runic Legendary Pants',4,2,2,137365507,0,0,-1,3,3,18,4,0,0,0,53,255,0,1128,0,0,1,150,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,126,'Runic Legendary Pants (Bound)',4,2,2,4611,0,0,-1,3,3,18,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(9,127,'Holyangel Runic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,800,38,13,0,123,0,0,0,0,0,0,127,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(9,128,'Soul Runic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,38,13,0,123,0,0,0,0,0,0,174,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(9,129,'Blue Eye Runic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,38,13,0,123,0,0,0,0,0,0,219,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(9,130,'Dragon Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,131,'Legendary Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,132,'Guardian Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,133,'Atlans Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,134,'Adamantine Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(9,135,'Red Winged Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(9,136,'Storm Zahard Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,137,'Princie Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(9,138,'Darkangel Knight Pants (S)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,157,45,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,139,'Darkangel Wizard Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,44,14,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,140,'Darkangel Elf Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,36,80,0,0,0,0,0,0,0,0,83,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,141,'Darkangel Summoner Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,36,12,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(9,142,'Darkangel Magic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,136,56,0,0,0,0,0,0,0,0,96,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,143,'Darkangel Lord Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,61,16,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(9,144,'Darkangel Fighter Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,76,0,0,0,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(9,145,'Darkangel Lancer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,63,63,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(9,146,'Tigris Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,111,86,0,564,0,0,1,380,68,20,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(9,147,'Crimson Skull Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,143,90,0,564,0,0,1,400,73,21,0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(9,148,'Grace Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,111,86,0,564,0,0,1,380,62,44,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(9,149,'Constant Pants',4,2,2,8944543,1000,0,-1,-1,3,18,2,0,0,0,143,90,0,564,0,0,1,400,69,48,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(9,150,'Holyangel Knight Pants (S)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,157,45,0,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,151,'Holyangel Wizard Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,44,14,0,0,0,0,0,0,0,0,124,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,152,'Holyangel Elf Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,36,80,0,0,0,0,0,0,0,0,133,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,153,'Holyangel Summoner Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,36,12,0,0,0,0,0,0,0,0,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(9,154,'Holyangel Magic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,136,56,0,0,0,0,0,0,0,0,136,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,155,'Holyangel Lord Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,61,16,0,0,0,0,0,0,0,0,124,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(9,156,'Holyangel Fighter Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,76,0,0,0,0,0,0,0,0,0,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(9,157,'Holyangel Lancer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,564,0,0,1,800,63,63,0,0,0,0,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(9,158,'Bloodangel Elf Pants (E)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,400,13,27,0,150,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,159,'Darkangel Elf Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,600,13,27,0,150,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,160,'Holyangel Elf Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,800,13,27,0,150,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,161,'Bloodangel Magic Pants (E)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,400,33,30,0,153,0,0,0,0,0,0,57,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,162,'Darkangel Magic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,600,33,30,0,153,0,0,0,0,0,0,82,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,163,'Holyangel Magic Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1,0,0,1,800,33,30,0,153,0,0,0,0,0,0,132,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,164,'Blue Eye Knight Pants (S)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,157,45,0,0,0,0,0,0,0,0,240,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,165,'Blue Eye Wizard Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,44,14,0,0,0,0,0,0,0,0,214,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,166,'Blue Eye Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,36,80,0,0,0,0,0,0,0,0,225,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,167,'Blue Eye Summoner Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,36,12,0,0,0,0,0,0,0,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(9,168,'Blue Eye Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,136,56,0,0,0,0,0,0,0,0,226,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,169,'Blue Eye Lord Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,61,16,0,0,0,0,0,0,0,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(9,170,'Blue Eye Fighter Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,76,0,0,0,0,0,0,0,0,0,221,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(9,171,'Blue Eye Lancer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,63,63,0,0,0,0,0,0,0,0,209,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(9,172,'Blue Eye Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,13,27,0,150,0,0,0,0,0,0,149,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,173,'Blue Eye Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,33,30,0,153,0,0,0,0,0,0,222,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,174,'Slayer Red Wing Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,9,30,0,1128,0,0,1,0,0,80,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,175,'Slayer Ancient Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,26,40,0,1128,0,0,1,0,0,110,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,176,'Slayer Demonic Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,56,60,0,1128,0,0,1,0,30,120,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,177,'Night Wing Pants',4,2,2,143162303,10000,0,-1,3,3,18,1,0,0,0,114,70,0,1128,0,0,1,0,30,125,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,178,'Fidelity Pants',4,2,2,8944543,10000,0,-1,-1,3,18,2,0,0,0,117,86,0,1128,0,0,1,380,32,130,0,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(9,179,'Trace Pants',4,2,2,8944543,0,0,-1,-1,3,18,2,0,0,0,146,90,0,1128,0,0,1,400,33,135,0,0,0,0,0,0,0,0,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(9,180,'Bloodangel Slayer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,45,157,0,0,0,0,0,0,0,0,87,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0),(9,181,'Darkangel Slayer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,45,157,0,0,0,0,0,0,0,0,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(9,182,'Holyangel Slayer Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,800,45,157,0,0,0,0,0,0,0,0,147,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(9,183,'Soul Slayer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,45,157,0,0,0,0,0,0,0,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(9,184,'Blue Eye Slayer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,45,157,0,0,0,0,0,0,0,0,237,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(9,185,'Silver Heart Slayer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,45,157,0,0,0,0,0,0,0,0,282,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0),(9,186,'Slayer Ancient Pants',4,2,2,137365507,0,0,-1,3,3,18,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,187,'Slayer Demonic Pants',4,2,2,137365507,0,0,-1,3,3,18,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,188,'Slayer Demonic Pants (Bound)',4,2,2,4611,0,0,-1,3,3,18,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(9,189,'Silver Heart Knight Pants (S)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,157,45,0,0,0,0,0,0,0,0,285,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,190,'Silver Heart Wizard Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,44,14,0,0,0,0,0,0,0,0,259,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,191,'Silver Heart Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,36,80,0,0,0,0,0,0,0,0,270,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,192,'Silver Heart Summoner Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,36,12,0,0,0,0,0,0,0,0,259,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(9,193,'Silver Heart Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,136,56,0,0,0,0,0,0,0,0,271,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,194,'Silver Heart Lord Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,61,16,0,0,0,0,0,0,0,0,259,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(9,195,'Silver Heart Fighter Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,76,0,0,0,0,0,0,0,0,0,266,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(9,196,'Silver Heart Lancer Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,63,63,0,0,0,0,0,0,0,0,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(9,197,'Silver Heart Elf Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,13,27,0,150,0,0,0,0,0,0,194,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,198,'Silver Heart Magic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,33,30,0,153,0,0,0,0,0,0,267,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(9,199,'Silver Heart Runic Pants',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,38,13,0,123,0,0,0,0,0,0,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(9,200,'Bloodangel Knight Pants (E)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,0,21,0,106,0,0,0,0,0,0,93,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,201,'Darkangel Knight Pants (E)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,600,0,21,0,106,0,0,0,0,0,0,118,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,202,'Holyangel Knight Pants (E)',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,800,0,21,0,106,0,0,0,0,0,0,168,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,203,'Soul Knight Pants (E)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,900,0,21,0,106,0,0,0,0,0,0,213,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,204,'Blue Eye Knight Pants (E)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1000,0,21,0,106,0,0,0,0,0,0,258,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,205,'Silver Heart Knight Pants (E)',4,2,2,76034751,0,0,-1,5,18,18,1,0,0,0,150,100,0,1128,0,0,1,1100,0,21,0,106,0,0,0,0,0,0,303,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,206,'Leather Gunner Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,10,30,0,1128,0,0,1,0,40,14,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,207,'Scale Gunner Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,25,40,0,1128,0,0,1,0,33,16,0,42,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,208,'Round Gunner Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,40,42,0,1128,0,0,1,0,61,34,0,72,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,209,'Fray Pants',4,2,2,143162303,10000,0,-1,2,3,18,1,0,0,0,100,68,0,1128,0,0,1,0,62,36,0,72,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,212,'Bloodangel Gun Crusher Pants',4,2,2,76034751,0,0,-1,5,15,18,1,0,0,0,150,100,0,1128,0,0,1,400,56,46,0,110,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(9,218,'Scale Gunner Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,219,'Fray Pants',4,2,2,137365507,0,0,-1,2,3,18,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(9,220,'Fray Pants (Bound)',4,2,2,4611,0,0,-1,2,3,18,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,0,'Bronze Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,13,34,0,1128,0,0,1,0,80,20,0,0,0,0,0,0,4,0,4,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(10,1,'Dragon Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,52,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,6,0,14,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,2,'Pad Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,3,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,3,'Legendary Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,44,42,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,4,'Bone Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,14,30,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,5,'Leather Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,4,30,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,8,0,2,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(10,6,'Scale Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,22,40,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,10,0,7,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(10,7,'Sphinx Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,28,36,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,8,'Brass Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,32,44,0,1128,0,0,1,0,100,30,0,0,0,0,0,0,8,0,9,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,9,'Plate Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,42,50,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,4,0,12,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,10,'Vine Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,4,22,0,1128,0,0,1,0,30,60,0,0,0,0,0,0,4,0,2,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,11,'Silk Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,14,26,0,1128,0,0,1,0,30,70,0,0,0,0,0,0,8,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,12,'Wind Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,26,32,0,1128,0,0,1,0,30,80,0,0,0,0,0,0,10,0,6,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(10,13,'Spirit Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,38,38,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,4,0,9,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,14,'Guardian Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,50,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,6,0,15,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,15,'Storm Crow Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,70,80,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,6,0,20,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,16,'Black Dragon Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,76,74,0,1128,0,0,1,0,170,60,0,0,0,0,0,0,6,0,22,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,17,'Dark Phoenix Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,86,80,0,1128,0,0,1,0,205,63,0,0,0,0,0,0,6,0,37,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,18,'Grand Soul Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,70,67,0,1128,0,0,1,0,49,10,0,0,0,0,0,0,5,0,20,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,19,'Divine Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,72,74,0,1128,0,0,1,0,50,110,0,0,0,0,0,0,6,0,29,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,20,'Thunder Hawk Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,88,82,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,7,0,34,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,21,'Great Dragon Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,94,86,0,1128,0,0,1,0,200,58,0,0,0,0,0,0,6,0,48,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,22,'Dark Soul Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,87,75,0,1128,0,0,1,0,55,18,0,0,0,0,0,0,6,0,30,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,23,'Hurricane Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,102,90,0,1128,0,0,1,0,162,66,0,0,0,0,0,0,7,0,45,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,24,'Red Spirit Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,84,80,0,1128,0,0,1,0,52,115,0,0,0,0,0,0,6,0,38,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,25,'Light Plate Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,42,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,7,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,26,'Adamantine Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,57,56,0,1128,0,0,1,0,77,21,0,0,0,0,0,0,6,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,27,'Dark Steel Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,75,70,0,1128,0,0,1,0,84,22,0,0,0,0,0,0,5,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,28,'Dark Master Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,89,78,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,4,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,29,'Dragon Knight Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,114,90,0,1128,0,0,1,380,170,60,0,0,0,0,0,0,7,0,60,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,30,'Venom Mist Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,111,86,0,1128,0,0,1,380,44,15,0,0,0,0,0,0,7,0,44,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,31,'Sylphid Ray Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,111,86,0,1128,0,0,1,380,38,80,0,0,0,0,0,0,7,0,50,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,32,'Volcano Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,127,95,0,1128,0,0,1,380,145,60,0,0,0,0,0,0,7,0,55,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,33,'Sunlight Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,110,82,0,1128,0,0,1,380,62,16,0,0,0,0,0,0,5,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,34,'Ashcrow Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,61,72,0,1128,0,0,1,0,160,50,0,0,0,0,0,0,6,0,18,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,35,'Eclipse Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,61,54,0,1128,0,0,1,0,53,12,0,0,0,0,0,0,6,0,15,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,36,'Iris Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,61,59,0,1128,0,0,1,0,50,70,0,0,0,0,0,0,6,0,22,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,37,'Valiant Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,91,81,0,1128,0,0,1,0,155,50,0,0,0,0,0,0,7,0,27,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,38,'Glorious Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,91,74,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,5,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,39,'Violent Wind Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,24,36,0,1128,0,0,1,0,22,0,0,0,0,0,0,0,6,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,40,'Red Wing Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,44,42,0,1128,0,0,1,0,18,4,0,0,0,0,0,0,8,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,41,'Ancient Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,61,54,0,1128,0,0,1,0,52,16,0,0,0,0,0,0,7,0,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,42,'Demonic Gloves',5,2,2,143162303,10000,0,-1,-1,3,19,1,0,0,0,70,67,0,1128,0,0,1,0,50,10,0,0,0,0,0,0,6,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(10,43,'Storm Blitz Gloves',5,2,2,8928191,0,0,-1,-1,3,19,3,0,0,0,87,75,0,1128,0,0,1,380,56,20,0,0,0,0,0,0,6,0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(10,44,'Eternal Wing Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,102,86,0,1128,0,0,1,380,62,20,0,170,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(10,45,'Titan Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,100,86,0,1128,0,0,1,380,222,32,0,0,0,0,0,0,7,0,56,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,46,'Gloves of Bravery',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,97,86,0,1128,0,0,1,380,74,162,0,0,0,0,0,0,7,0,42,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,47,'Phantom Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,101,86,0,1128,0,0,1,380,212,57,0,0,0,0,0,0,7,0,49,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,48,'Gloves of Destruction',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,99,86,0,1128,0,0,1,380,62,19,0,165,0,0,0,0,7,0,40,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,49,'Seraphim Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,100,86,0,1128,0,0,1,380,55,197,0,0,0,0,0,0,7,0,43,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,50,'Faith Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,95,86,0,1128,0,0,1,380,32,29,0,138,0,0,0,0,7,0,36,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,51,'Royal Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,101,86,0,1128,0,0,1,380,105,38,0,0,0,0,0,0,7,0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,52,'Hades Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,100,86,0,1128,0,0,1,380,60,15,0,181,0,0,0,0,7,0,31,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,53,'Succubus Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,56,19,0,157,0,0,0,0,6,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(10,54,'Lazy Wind Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,67,151,0,0,0,0,0,0,7,0,59,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,55,'Dark Devil Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,45,13,0,171,0,0,0,0,7,0,40,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,56,'Sticky Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,48,180,0,0,0,0,0,0,7,0,52,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,57,'Hell Night Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,194,52,0,0,0,0,0,0,7,0,58,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,58,'Ambition Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,112,22,0,0,0,0,0,0,7,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(10,62,'Scale Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,22,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,10,0,10,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,-1,0,0,0,0,0),(10,63,'Silk Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,14,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,8,0,6,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,64,'Sphinx Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,65,'Violent Wind Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,24,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,6,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,66,'Adamantine Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,57,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,67,'Dragon Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,52,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,19,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,68,'Guardian Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,20,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,69,'Legendary Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,44,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,70,'Red Wing Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,44,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,8,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,71,'Storm Crow Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,70,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,25,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,74,'Stormwing Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,200,33,0,0,0,0,0,0,7,0,65,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,75,'Light Lord Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,14,31,0,127,0,0,0,0,7,0,45,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,76,'Magic Knight Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,142,90,0,1128,0,0,1,400,48,17,0,142,0,0,0,0,7,0,49,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,78,'Dragon Gloves-J',5,2,2,143145919,0,0,-1,2,0,19,0,0,0,0,52,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,6,0,16,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(10,79,'Legendary Gloves-J',5,2,2,143145919,0,0,-1,2,0,19,0,0,0,0,44,42,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(10,80,'Guardian Gloves-J',5,2,2,143145919,0,0,-1,2,0,19,0,0,0,0,50,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,6,0,17,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(10,81,'Light Plate Gloves-J',5,2,2,143145919,0,0,-1,2,0,19,0,0,0,0,42,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,7,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(10,82,'Red Wing Gloves-J',5,2,2,143145919,0,0,-1,2,0,19,0,0,0,0,44,42,0,1128,0,0,1,0,18,4,0,0,0,0,0,0,8,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(10,91,'Robust Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,10,24,0,1128,0,0,1,0,90,65,0,0,0,0,0,0,5,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,92,'Gru Hill Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,40,40,0,1128,0,0,1,0,200,150,0,0,0,0,0,0,5,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,93,'Princie Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,60,60,0,1128,0,0,1,0,160,140,0,0,0,0,0,0,6,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,94,'Hirat Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,81,70,0,1128,0,0,1,0,374,93,0,0,0,0,0,0,6,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,95,'Sate Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,81,70,0,1128,0,0,1,0,93,374,0,0,0,0,0,0,6,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,96,'Robust Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,10,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,5,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,97,'Princie Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,60,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,98,'Bloodangel Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,131,38,0,0,0,0,0,0,6,0,58,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,99,'Bloodangel Wizard Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,33,11,0,0,0,0,0,0,6,0,40,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,100,'Bloodangel Elf Gloves (A)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,31,68,0,0,0,0,0,0,6,0,48,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,101,'Bloodangel Summoner Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,25,5,0,0,0,0,0,0,8,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(10,102,'Bloodangel Magic Gloves (S)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,115,47,0,0,0,0,0,0,7,0,55,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,103,'Bloodangel Lord Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,50,13,0,0,0,0,0,0,5,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(10,105,'Bloodangel Lancer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,53,53,0,0,0,0,0,0,8,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(10,106,'Soul Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,131,38,0,0,0,0,0,0,6,0,178,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,107,'Soul Wizard Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,33,11,0,0,0,0,0,0,6,0,159,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,108,'Soul Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,31,68,0,0,0,0,0,0,6,0,170,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,109,'Soul Summoner Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,25,5,0,0,0,0,0,0,8,0,158,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(10,110,'Soul Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,115,47,0,0,0,0,0,0,7,0,175,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,111,'Soul Lord Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,50,13,0,0,0,0,0,0,5,0,159,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(10,113,'Soul Lancer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,53,53,0,0,0,0,0,0,8,0,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(10,114,'Soul Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,12,25,0,148,0,0,0,0,7,0,93,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,115,'Soul Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,30,27,0,151,0,0,0,0,7,0,172,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,116,'Runic Pad Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,2,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,5,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,117,'Runic Sphinx Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,27,36,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,5,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,118,'Runic Legendary Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,43,42,0,1128,0,0,1,0,20,5,0,0,0,0,0,0,6,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,119,'Kenazu Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,69,67,0,1128,0,0,1,0,34,12,0,22,0,0,0,0,7,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,120,'Runic Divine Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,99,86,0,1128,0,0,1,380,40,13,0,112,0,0,0,0,7,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,121,'Runic Light Lord Gloves',5,2,2,8944543,0,0,-1,-1,3,19,2,0,0,0,141,90,0,1128,0,0,1,400,39,12,0,113,0,0,0,0,8,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(10,122,'Bloodangel Runic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,27,10,0,117,0,0,0,0,9,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(10,123,'Darkangel Runic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,27,10,0,117,0,0,0,0,9,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(10,124,'Runic Sphinx Gloves',5,2,2,137365507,0,0,-1,3,3,19,4,0,0,0,28,255,0,1128,0,0,1,1,0,0,0,0,0,0,0,0,5,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,125,'Runic Legendary Gloves',5,2,2,137365507,0,0,-1,3,3,19,4,0,0,0,44,255,0,1128,0,0,1,150,0,0,0,0,0,0,0,0,6,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,126,'Runic Legendary Gloves (Bound)',5,2,2,4611,0,0,-1,3,3,19,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,6,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(10,127,'Holyangel Runic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,800,27,10,0,117,0,0,0,0,9,0,121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(10,128,'Soul Runic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,27,10,0,117,0,0,0,0,9,0,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(10,129,'Blue Eye Runic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,27,10,0,117,0,0,0,0,9,0,210,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(10,130,'Dragon Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,29,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,131,'Legendary Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,26,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,132,'Guardian Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,30,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,133,'Atlans Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,35,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,134,'Adamantine Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(10,135,'Red Winged Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(10,137,'Princie Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,6,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(10,138,'Darkangel Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,131,38,0,0,0,0,0,0,6,0,83,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,139,'Darkangel Wizard Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,33,11,0,0,0,0,0,0,6,0,65,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,140,'Darkangel Elf Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,31,68,0,0,0,0,0,0,6,0,73,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,141,'Darkangel Summoner Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,25,5,0,0,0,0,0,0,8,0,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(10,142,'Darkangel Magic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,115,47,0,0,0,0,0,0,7,0,80,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,143,'Darkangel Lord Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,50,13,0,0,0,0,0,0,5,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(10,145,'Darkangel Lancer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,53,53,0,0,0,0,0,0,8,0,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(10,148,'Grace Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,111,86,0,564,0,0,1,380,60,41,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(10,149,'Constant Gloves',5,2,2,8944543,1000,0,-1,-1,3,19,2,0,0,0,143,90,0,564,0,0,1,400,67,47,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(10,150,'Holyangel Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,131,38,0,0,0,0,0,0,6,0,133,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,151,'Holyangel Wizard Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,33,11,0,0,0,0,0,0,6,0,115,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,152,'Holyangel Elf Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,31,68,0,0,0,0,0,0,6,0,123,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,153,'Holyangel Summoner Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,25,5,0,0,0,0,0,0,8,0,111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(10,154,'Holyangel Magic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,115,47,0,0,0,0,0,0,7,0,130,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,155,'Holyangel Lord Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,50,13,0,0,0,0,0,0,5,0,114,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(10,157,'Holyangel Lancer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,564,0,0,1,800,53,53,0,0,0,0,0,0,8,0,113,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(10,158,'Bloodangel Elf Gloves (E)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,400,12,25,0,148,0,0,0,0,7,0,20,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,159,'Darkangel Elf Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,600,12,25,0,148,0,0,0,0,7,0,33,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,160,'Holyangel Elf Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,800,12,25,0,148,0,0,0,0,7,0,52,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,161,'Bloodangel Magic Gloves (E)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,400,30,27,0,151,0,0,0,0,7,0,52,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,162,'Darkangel Magic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,600,30,27,0,151,0,0,0,0,7,0,77,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,163,'Holyangel Magic Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1,0,0,1,800,30,27,0,151,0,0,0,0,7,0,127,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,164,'Blue Eye Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,131,38,0,0,0,0,0,0,6,0,223,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,165,'Blue Eye Wizard Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,33,11,0,0,0,0,0,0,6,0,204,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,166,'Blue Eye Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,31,68,0,0,0,0,0,0,6,0,215,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,167,'Blue Eye Summoner Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,25,5,0,0,0,0,0,0,8,0,203,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(10,168,'Blue Eye Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,115,47,0,0,0,0,0,0,7,0,220,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,169,'Blue Eye Lord Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,50,13,0,0,0,0,0,0,5,0,204,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(10,171,'Blue Eye Lancer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,53,53,0,0,0,0,0,0,8,0,202,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(10,172,'Blue Eye Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,12,25,0,148,0,0,0,0,7,0,138,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,173,'Blue Eye Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,30,27,0,151,0,0,0,0,7,0,217,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,174,'Slayer Red Wing Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,5,30,0,1128,0,0,1,0,0,80,0,0,0,0,0,0,5,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,175,'Slayer Ancient Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,23,40,0,1128,0,0,1,0,0,110,0,0,0,0,0,0,5,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,176,'Slayer Demonic Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,53,60,0,1128,0,0,1,0,30,120,0,0,0,0,0,0,5,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,177,'Night Wing Gloves',5,2,2,143162303,10000,0,-1,3,3,19,1,0,0,0,95,70,0,1128,0,0,1,0,30,125,0,0,0,0,0,0,5,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,178,'Fidelity Gloves',5,2,2,8944543,10000,0,-1,-1,3,19,2,0,0,0,101,86,0,1128,0,0,1,380,32,130,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(10,179,'Trace Gloves',5,2,2,8944543,0,0,-1,-1,3,19,2,0,0,0,143,90,0,1128,0,0,1,400,33,135,0,0,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(10,180,'Bloodangel Slayer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,38,131,0,0,0,0,0,0,7,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0),(10,181,'Darkangel Slayer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,38,131,0,0,0,0,0,0,7,0,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(10,182,'Holyangel Slayer Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,800,38,131,0,0,0,0,0,0,7,0,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(10,183,'Soul Slayer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,38,131,0,0,0,0,0,0,7,0,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(10,184,'Blue Eye Slayer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,38,131,0,0,0,0,0,0,7,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(10,185,'Silver Heart Slayer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,38,131,0,0,0,0,0,0,7,0,259,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0),(10,186,'Slayer Ancient Gloves',5,2,2,137365507,0,0,-1,3,3,19,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,6,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,187,'Slayer Demonic Gloves',5,2,2,137365507,0,0,-1,3,3,19,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,6,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,188,'Slayer Demonic Gloves (Bound)',5,2,2,4611,0,0,-1,3,3,19,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,6,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(10,189,'Silver Heart Knight Gloves (S)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,131,38,0,0,0,0,0,0,6,0,268,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,190,'Silver Heart Wizard Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,33,11,0,0,0,0,0,0,6,0,249,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,191,'Silver Heart Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,31,68,0,0,0,0,0,0,6,0,260,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,192,'Silver Heart Summoner Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,25,5,0,0,0,0,0,0,8,0,248,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(10,193,'Silver Heart Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,115,47,0,0,0,0,0,0,7,0,265,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,194,'Silver Heart Lord Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,50,13,0,0,0,0,0,0,5,0,249,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(10,196,'Silver Heart Lancer Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,53,53,0,0,0,0,0,0,8,0,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(10,197,'Silver Heart Elf Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,12,25,0,148,0,0,0,0,7,0,183,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,198,'Silver Heart Magic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,30,27,0,151,0,0,0,0,7,0,262,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(10,199,'Silver Heart Runic Gloves',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,27,10,0,117,0,0,0,0,9,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(10,200,'Bloodangel Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,0,19,0,104,0,0,0,0,6,0,76,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,201,'Darkangel Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,600,0,19,0,104,0,0,0,0,6,0,101,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,202,'Holyangel Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,800,0,19,0,104,0,0,0,0,6,0,151,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,203,'Soul Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,900,0,19,0,104,0,0,0,0,6,0,196,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,204,'Blue Eye Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1000,0,19,0,104,0,0,0,0,6,0,241,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,205,'Silver Heart Knight Gloves (E)',5,2,2,76034751,0,0,-1,5,18,19,1,0,0,0,150,100,0,1128,0,0,1,1100,0,19,0,104,0,0,0,0,6,0,286,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,206,'Leather Gunner Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,10,30,0,1128,0,0,1,0,38,12,0,0,0,0,0,0,5,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,207,'Scale Gunner Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,25,40,0,1128,0,0,1,0,31,14,0,40,0,0,0,0,6,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,208,'Round Gunner Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,40,42,0,1128,0,0,1,0,59,32,0,70,0,0,0,0,6,0,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,209,'Fray Gloves',5,2,2,143162303,10000,0,-1,2,3,19,1,0,0,0,100,68,0,1128,0,0,1,0,60,34,0,70,0,0,0,0,7,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,212,'Bloodangel Gun Crusher Gloves',5,2,2,76034751,0,0,-1,5,15,19,1,0,0,0,150,100,0,1128,0,0,1,400,54,44,0,108,0,0,0,0,7,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(10,218,'Scale Gunner Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,6,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,219,'Fray Gloves',5,2,2,137365507,0,0,-1,2,3,19,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,7,0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(10,220,'Fray Gloves (Bound)',5,2,2,4611,0,0,-1,2,3,19,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,7,0,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,0,'Bronze Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,12,34,0,1128,0,0,1,0,80,20,0,0,0,0,0,0,0,10,4,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,4,0,0,0,0,0),(11,1,'Dragon Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,54,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,2,15,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,2,'Pad Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,4,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,10,3,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,3,'Legendary Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,46,42,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,4,'Bone Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,16,30,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,6,6,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,5,'Leather Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,5,30,0,1128,0,0,1,0,80,0,0,0,0,0,0,0,0,12,2,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(11,6,'Scale Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,22,40,0,1128,0,0,1,0,110,0,0,0,0,0,0,0,0,8,8,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,4,0,0,0,0,0),(11,7,'Sphinx Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,30,36,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,8,9,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,8,'Brass Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,32,44,0,1128,0,0,1,0,100,30,0,0,0,0,0,0,0,6,10,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,4,0,0,0,0,0),(11,9,'Plate Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,42,50,0,1128,0,0,1,0,130,0,0,0,0,0,0,0,0,4,12,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,10,'Vine Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,5,22,0,1128,0,0,1,0,30,60,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,11,'Silk Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,15,26,0,1128,0,0,1,0,30,70,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,12,'Wind Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,27,32,0,1128,0,0,1,0,30,80,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0),(11,13,'Spirit Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,40,38,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,14,'Guardian Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,52,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,15,'Storm Crow Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,72,80,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,0,2,22,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,16,'Black Dragon Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,78,74,0,1128,0,0,1,0,170,60,0,0,0,0,0,0,0,2,24,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,17,'Dark Phoenix Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,93,80,0,1128,0,0,1,0,198,60,0,0,0,0,0,0,0,2,40,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,18,'Grand Soul Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,76,67,0,1128,0,0,1,0,59,10,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,19,'Divine Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,81,74,0,1128,0,0,1,0,50,110,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,20,'Thunder Hawk Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,92,82,0,1128,0,0,1,0,150,70,0,0,0,0,0,0,0,2,37,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,21,'Great Dragon Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,98,86,0,1128,0,0,1,0,200,58,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,22,'Dark Soul Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,95,75,0,1128,0,0,1,0,55,18,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,23,'Hurricane Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,110,90,0,1128,0,0,1,0,162,66,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,24,'Red Spirit Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,87,80,0,1128,0,0,1,0,52,115,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,25,'Light Plate Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,45,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,26,'Adamantine Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,60,56,0,1128,0,0,1,0,77,21,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,27,'Dark Steel Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,83,70,0,1128,0,0,1,0,84,22,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,28,'Dark Master Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,95,78,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,29,'Dragon Knight Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,119,90,0,1128,0,0,1,380,170,60,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,30,'Venom Mist Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,119,86,0,1128,0,0,1,380,44,15,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,31,'Sylphid Ray Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,119,86,0,1128,0,0,1,380,38,80,0,0,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,32,'Volcano Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,131,95,0,1128,0,0,1,380,145,60,0,0,0,0,0,0,0,0,61,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,33,'Sunlight Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,121,82,0,1128,0,0,1,380,62,16,0,0,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,34,'Ashcrow Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,68,72,0,1128,0,0,1,0,160,50,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,35,'Eclipse Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,68,54,0,1128,0,0,1,0,53,12,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,36,'Iris Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,68,59,0,1128,0,0,1,0,50,70,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,37,'Valiant Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,98,81,0,1128,0,0,1,0,155,50,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,38,'Glorious Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,98,74,0,1128,0,0,1,0,80,21,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,39,'Violent Wind Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,26,36,0,1128,0,0,1,0,27,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,40,'Red Wing Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,46,42,0,1128,0,0,1,0,25,4,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,41,'Ancient Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,65,54,0,1128,0,0,1,0,53,16,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,42,'Demonic Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,76,67,0,1128,0,0,1,0,60,10,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(11,43,'Storm Blitz Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,95,75,0,1128,0,0,1,380,57,20,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(11,44,'Eternal Wing Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,99,86,0,1128,0,0,1,380,62,20,0,170,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(11,45,'Titan Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,96,86,0,1128,0,0,1,380,222,32,0,0,0,0,0,0,0,0,57,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,46,'Boots of Bravery',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,93,86,0,1128,0,0,1,380,74,162,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,47,'Phantom Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,97,86,0,1128,0,0,1,380,212,57,0,0,0,0,0,0,0,0,54,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,48,'Boots of Destruction',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,94,86,0,1128,0,0,1,380,62,19,0,165,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,49,'Seraphim Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,97,86,0,1128,0,0,1,380,55,197,0,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,50,'Faith Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,92,86,0,1128,0,0,1,380,32,29,0,138,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,51,'Royal Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,98,86,0,1128,0,0,1,380,105,38,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,52,'Hades Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,94,86,0,1128,0,0,1,380,60,15,0,181,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,53,'Succubus Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,56,19,0,157,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(11,54,'Lazy Wind Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,67,151,0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,55,'Dark Devil Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,45,13,0,171,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,56,'Sticky Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,48,180,0,0,0,0,0,0,0,0,51,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,57,'Hell Night Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,194,52,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,58,'Ambition Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,112,22,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(11,59,'Sacred Fire Boots',6,2,2,143162303,10000,0,-1,1,3,20,1,0,0,0,50,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,60,'Storm Zahard Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,62,68,0,1128,0,0,1,0,100,0,90,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,61,'Piercing Grove Boots',6,2,2,143162303,10000,0,-1,-1,3,20,1,0,0,0,82,82,0,1128,0,0,1,0,115,0,100,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,62,'Scale Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,22,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,8,12,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,-1,0,0,0,0,0),(11,63,'Silk Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,15,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,64,'Sphinx Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,30,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,8,13,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,65,'Violent Wind Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,26,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,66,'Adamantine Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,60,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,67,'Dragon Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,54,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,2,20,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,68,'Guardian Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,52,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,69,'Legendary Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,46,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,70,'Red Wing Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,46,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,71,'Storm Crow Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,72,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,2,27,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,72,'Storm Zahard Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,62,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,73,'Phoenix Soul Boots',6,2,2,8928191,0,0,-1,-1,3,20,3,0,0,0,119,88,0,1128,0,0,1,380,97,0,85,0,0,0,0,0,0,0,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,74,'Stormwing Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,200,33,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,75,'Light Lord Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,14,31,0,127,0,0,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,76,'Magic Knight Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,140,90,0,1128,0,0,1,400,48,17,0,142,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,78,'Dragon Boots-J',6,2,2,143145919,0,0,-1,2,0,20,0,0,0,0,54,68,0,1128,0,0,1,0,120,30,0,0,0,0,0,0,0,2,17,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(11,79,'Legendary Boots-J',6,2,2,143145919,0,0,-1,2,0,20,0,0,0,0,46,42,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),(11,80,'Guardian Boots-J',6,2,2,143145919,0,0,-1,2,0,20,0,0,0,0,52,45,0,1128,0,0,1,0,40,80,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(11,81,'Light Plate Boots-J',6,2,2,143145919,0,0,-1,2,0,20,0,0,0,0,45,42,0,1128,0,0,1,0,70,20,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),(11,82,'Red Wing Boots-J',6,2,2,143145919,0,0,-1,2,0,20,0,0,0,0,46,42,0,1128,0,0,1,0,25,4,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1),(11,83,'Sacred Fire Boots-J',6,2,2,143145919,0,0,-1,3,0,20,0,0,0,0,50,52,0,1128,0,0,1,0,85,0,75,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),(11,91,'Robust Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,14,26,0,1128,0,0,1,0,88,65,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,92,'Gru Hill Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,44,42,0,1128,0,0,1,0,195,150,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,93,'Princie Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,64,62,0,1128,0,0,1,0,160,140,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,94,'Hirat Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,85,72,0,1128,0,0,1,0,361,95,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,95,'Sate Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,85,72,0,1128,0,0,1,0,95,361,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,96,'Robust Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,14,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,97,'Princie Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,64,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(11,98,'Bloodangel Knight Boots (S)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,137,39,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,99,'Bloodangel Wizard Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,36,12,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,100,'Bloodangel Elf Boots (A)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,32,70,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,101,'Bloodangel Summoner Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,32,5,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(11,102,'Bloodangel Magic Boots (S)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,124,50,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,103,'Bloodangel Lord Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,53,14,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(11,104,'Bloodangel Fighter Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,66,0,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(11,105,'Bloodangel Lancer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,57,57,0,0,0,0,0,0,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(11,106,'Soul Knight Boots (S)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,137,39,0,0,0,0,0,0,0,0,182,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,107,'Soul Wizard Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,36,12,0,0,0,0,0,0,0,0,164,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,108,'Soul Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,32,70,0,0,0,0,0,0,0,0,172,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,109,'Soul Summoner Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,32,5,0,0,0,0,0,0,0,0,161,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(11,110,'Soul Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,124,50,0,0,0,0,0,0,0,0,180,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,111,'Soul Lord Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,53,14,0,0,0,0,0,0,0,0,162,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(11,112,'Soul Fighter Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,66,0,0,0,0,0,0,0,0,0,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(11,113,'Soul Lancer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,57,57,0,0,0,0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(11,114,'Soul Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,13,25,0,149,0,0,0,0,0,0,96,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,115,'Soul Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,31,28,0,148,0,0,0,0,0,0,176,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,116,'Runic Pad Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,3,28,0,1128,0,0,1,0,20,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,117,'Runic Sphinx Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,29,36,0,1128,0,0,1,0,30,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,118,'Runic Legendary Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,45,42,0,1128,0,0,1,0,30,5,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,119,'Kenazu Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,75,67,0,1128,0,0,1,0,35,13,0,23,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,120,'Runic Divine Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,93,86,0,1128,0,0,1,380,40,13,0,114,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,121,'Runic Light Lord Boots',6,2,2,8944543,0,0,-1,-1,3,20,2,0,0,0,139,90,0,1128,0,0,1,400,39,12,0,115,0,0,0,0,0,0,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(11,122,'Bloodangel Runic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,30,11,0,119,0,0,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(11,123,'Darkangel Runic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,30,11,0,119,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(11,124,'Runic Sphinx Boots',6,2,2,137365507,0,0,-1,3,3,20,4,0,0,0,30,255,0,1128,0,0,1,1,0,0,0,0,0,0,0,0,0,8,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,125,'Runic Legendary Boots',6,2,2,137365507,0,0,-1,3,3,20,4,0,0,0,46,255,0,1128,0,0,1,150,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,126,'Runic Legendary Boots (Bound)',6,2,2,4611,0,0,-1,3,3,20,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,2,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(11,127,'Holyangel Runic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,800,30,11,0,119,0,0,0,0,0,0,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(11,128,'Soul Runic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,30,11,0,119,0,0,0,0,0,0,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0),(11,129,'Blue Eye Runic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,30,11,0,119,0,0,0,0,0,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(11,130,'Dragon Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,30,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,131,'Legendary Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,27,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,132,'Guardian Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,31,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,133,'Atlans Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,37,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,134,'Adamantine Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,35,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(11,135,'Red Winged Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(11,136,'Storm Zahard Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,137,'Princie Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,564,0,0,1,0,50,50,0,0,0,0,0,0,0,2,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(11,138,'Darkangel Knight Boots (S)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,137,39,0,0,0,0,0,0,0,0,85,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,139,'Darkangel Wizard Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,36,12,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,140,'Darkangel Elf Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,32,70,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,141,'Darkangel Summoner Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,32,5,0,0,0,0,0,0,0,0,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0),(11,142,'Darkangel Magic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,124,50,0,0,0,0,0,0,0,0,85,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,143,'Darkangel Lord Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,53,14,0,0,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(11,144,'Darkangel Fighter Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,66,0,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(11,145,'Darkangel Lancer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,57,57,0,0,0,0,0,0,0,0,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(11,146,'Tigris Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,111,86,0,564,0,0,1,380,61,15,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(11,147,'Crimson Skull Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,143,90,0,564,0,0,1,400,68,17,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(11,148,'Grace Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,111,86,0,564,0,0,1,380,58,43,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(11,149,'Constant Boots',6,2,2,8944543,1000,0,-1,-1,3,20,2,0,0,0,143,90,0,564,0,0,1,400,64,44,0,0,0,0,0,0,0,0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(11,150,'Holyangel Knight Boots (S)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,137,39,0,0,0,0,0,0,0,0,135,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,151,'Holyangel Wizard Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,36,12,0,0,0,0,0,0,0,0,116,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,152,'Holyangel Elf Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,32,70,0,0,0,0,0,0,0,0,125,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,153,'Holyangel Summoner Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,32,5,0,0,0,0,0,0,0,0,113,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(11,154,'Holyangel Magic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,124,50,0,0,0,0,0,0,0,0,135,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,155,'Holyangel Lord Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,53,14,0,0,0,0,0,0,0,0,118,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(11,156,'Holyangel Fighter Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,66,0,0,0,0,0,0,0,0,0,121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(11,157,'Holyangel Lancer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,564,0,0,1,800,57,57,0,0,0,0,0,0,0,0,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(11,158,'Bloodangel Elf Boots (E)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,400,13,25,0,149,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,159,'Darkangel Elf Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,600,13,25,0,149,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,160,'Holyangel Elf Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,800,13,25,0,149,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,161,'Bloodangel Magic Boots (E)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,400,31,28,0,148,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,162,'Darkangel Magic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,600,31,28,0,148,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,163,'Holyangel Magic Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1,0,0,1,800,31,28,0,148,0,0,0,0,0,0,130,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,164,'Blue Eye Knight Boots (S)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,137,39,0,0,0,0,0,0,0,0,227,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,165,'Blue Eye Wizard Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,36,12,0,0,0,0,0,0,0,0,209,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,166,'Blue Eye Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,32,70,0,0,0,0,0,0,0,0,217,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,167,'Blue Eye Summoner Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,32,5,0,0,0,0,0,0,0,0,206,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(11,168,'Blue Eye Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,124,50,0,0,0,0,0,0,0,0,225,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,169,'Blue Eye Lord Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,53,14,0,0,0,0,0,0,0,0,207,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(11,170,'Blue Eye Fighter Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,66,0,0,0,0,0,0,0,0,0,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(11,171,'Blue Eye Lancer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,57,57,0,0,0,0,0,0,0,0,205,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(11,172,'Blue Eye Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,13,25,0,149,0,0,0,0,0,0,141,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,173,'Blue Eye Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,31,28,0,148,0,0,0,0,0,0,221,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,174,'Slayer Red Wing Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,6,30,0,1128,0,0,1,0,0,80,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,175,'Slayer Ancient Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,23,40,0,1128,0,0,1,0,0,110,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,176,'Slayer Demonic Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,55,60,0,1128,0,0,1,0,30,120,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,177,'Night Wing Boots',6,2,2,143162303,10000,0,-1,3,3,20,1,0,0,0,99,70,0,1128,0,0,1,0,30,125,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,178,'Fidelity Boots',6,2,2,8944543,10000,0,-1,-1,3,20,2,0,0,0,97,86,0,1128,0,0,1,380,32,130,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(11,179,'Trace Boots',6,2,2,8944543,0,0,-1,-1,3,20,2,0,0,0,138,90,0,1128,0,0,1,400,33,135,0,0,0,0,0,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(11,180,'Bloodangel Slayer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,39,137,0,0,0,0,0,0,0,0,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0),(11,181,'Darkangel Slayer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,39,137,0,0,0,0,0,0,0,0,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(11,182,'Holyangel Slayer Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,800,39,137,0,0,0,0,0,0,0,0,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(11,183,'Soul Slayer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,39,137,0,0,0,0,0,0,0,0,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(11,184,'Blue Eye Slayer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,39,137,0,0,0,0,0,0,0,0,226,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(11,185,'Silver Heart Slayer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,39,137,0,0,0,0,0,0,0,0,271,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0),(11,186,'Slayer Ancient Boots',6,2,2,137365507,0,0,-1,3,3,20,4,0,0,0,32,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,187,'Slayer Demonic Boots',6,2,2,137365507,0,0,-1,3,3,20,4,0,0,0,50,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,188,'Slayer Demonic Boots (Bound)',6,2,2,4611,0,0,-1,3,3,20,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,2,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(11,189,'Silver Heart Knight Boots (S)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,137,39,0,0,0,0,0,0,0,0,272,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,190,'Silver Heart Wizard Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,36,12,0,0,0,0,0,0,0,0,254,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,191,'Silver Heart Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,32,70,0,0,0,0,0,0,0,0,262,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,192,'Silver Heart Summoner Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,32,5,0,0,0,0,0,0,0,0,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(11,193,'Silver Heart Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,124,50,0,0,0,0,0,0,0,0,270,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,194,'Silver Heart Lord Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,53,14,0,0,0,0,0,0,0,0,252,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(11,195,'Silver Heart Fighter Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,66,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(11,196,'Silver Heart Lancer Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,57,57,0,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(11,197,'Silver Heart Elf Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,13,25,0,149,0,0,0,0,0,0,186,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,198,'Silver Heart Magic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,31,28,0,148,0,0,0,0,0,0,266,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(11,199,'Silver Heart Runic Boots',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,30,11,0,119,0,0,0,0,0,0,259,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(11,200,'Bloodangel Knight Boots (E)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,0,18,0,105,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,201,'Darkangel Knight Boots (E)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,600,0,18,0,105,0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,202,'Holyangel Knight Boots (E)',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,800,0,18,0,105,0,0,0,0,0,0,153,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,203,'Soul Knight Boots (E)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,900,0,18,0,105,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,204,'Blue Eye Knight Boots (E)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1000,0,18,0,105,0,0,0,0,0,0,245,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,205,'Silver Heart Knight Boots (E)',6,2,2,76034751,0,0,-1,5,18,20,1,0,0,0,150,100,0,1128,0,0,1,1100,0,18,0,105,0,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,206,'Leather Gunner Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,10,30,0,1128,0,0,1,0,36,10,0,0,0,0,0,0,0,12,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,207,'Scale Gunner Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,25,40,0,1128,0,0,1,0,29,12,0,38,0,0,0,0,0,8,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,208,'Round Gunner Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,40,42,0,1128,0,0,1,0,57,30,0,68,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,209,'Fray Boots',6,2,2,143162303,10000,0,-1,2,3,20,1,0,0,0,100,68,0,1128,0,0,1,0,58,32,0,68,0,0,0,0,0,2,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,212,'Bloodangel Gun Crusher Boots',6,2,2,76034751,0,0,-1,5,15,20,1,0,0,0,150,100,0,1128,0,0,1,400,52,42,0,106,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(11,218,'Scale Gunner Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,28,255,0,180,10000,10000,0,1,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,219,'Fray Boots',6,2,2,137365507,0,0,-1,2,3,20,4,0,0,0,59,255,0,180,10000,10000,0,150,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(11,220,'Fray Boots (Bound)',6,2,2,4611,0,0,-1,2,3,20,5,0,0,0,50,100,0,1128,0,0,1,0,50,50,0,0,0,0,0,0,0,0,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(12,0,'Wings of Fairy',7,3,2,11547295,0,0,-1,-1,6,23,1,0,0,0,100,200,0,564,10000,10000,2,150,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,1,'Wings of Heaven',7,5,3,11547295,0,0,-1,-1,6,23,1,0,0,0,100,200,0,564,10000,10000,2,150,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,1,0,1,-1,0,0,0,0,0),(12,2,'Wings of Satan',7,5,2,11547295,0,0,-1,-1,6,23,1,0,0,0,100,200,0,564,10000,10000,2,150,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,-1,0,0,0,0,0),(12,3,'Wings of Spirits',7,5,3,11547295,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,2,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,4,'Wings of Soul',7,5,3,11547295,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,2,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,2,-1,0,0,0,0,0),(12,5,'Wings of Dragon',7,3,3,11547295,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,2,215,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(12,6,'Wings of Darkness',7,4,2,11547295,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,2,215,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,7,'Orb of Twisting Slash',-1,1,1,9088,0,0,-1,-1,10,38,0,0,29000,0,47,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,-1,0,0,0,0,0),(12,8,'Orb of Healing',-1,1,1,9088,0,0,-1,-1,10,38,0,0,800,0,8,0,0,0,0,0,0,0,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,9,'Orb of Greater Defense',-1,1,1,9088,0,0,-1,-1,10,38,0,0,3000,0,13,0,0,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,10,'Orb of Greater Damage',-1,1,1,9088,0,0,-1,-1,10,38,0,0,7000,0,18,0,0,0,0,0,0,0,0,0,0,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,11,'Orb of Summoning',-1,1,1,9088,0,0,-1,-1,10,38,0,0,150,0,3,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,12,'Orb of Rageful Blow',-1,1,1,9088,0,0,-1,-1,10,38,0,0,150000,0,78,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(12,13,'Orb of Impale',-1,1,1,9088,0,0,-1,-1,10,38,0,0,10000,0,20,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,14,'Orb of Greater Fortitude',-1,1,1,9088,0,0,-1,-1,10,38,0,0,43000,0,60,0,0,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,15,'Jewel of Chaos',-1,1,1,8832,0,0,-1,-1,9,56,0,0,810000,1,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,1,1,0,-1,0,0,0,0,0),(12,16,'Orb of Fire Slash',-1,1,1,9088,0,0,-1,-1,10,38,0,0,51000,0,60,0,0,0,0,0,0,0,596,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,17,'Orb of Penetration',-1,1,1,9088,0,0,-1,-1,10,38,0,0,72000,0,64,0,0,0,0,0,0,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,18,'Orb of Ice Arrow',-1,1,1,9088,0,0,-1,-1,10,38,0,0,195000,0,81,0,0,0,0,0,0,0,0,646,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,19,'Orb of Death Stab',-1,1,1,9088,0,0,-1,-1,10,38,0,0,85000,0,72,0,0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,21,'Scroll of Fire Burst',-1,1,2,9088,0,0,-1,-1,10,39,0,0,115000,0,74,0,0,0,0,0,0,0,0,0,0,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,22,'Scroll of Summon',-1,1,2,9088,0,0,-1,-1,10,39,0,0,375000,0,98,0,0,0,0,0,0,0,0,0,0,153,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,23,'Scroll of Critical Damage',-1,1,2,9088,0,0,-1,-1,10,39,0,0,220000,0,82,0,0,0,0,0,0,0,0,0,0,102,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,24,'Scroll of Electric Spark',-1,1,2,9088,0,0,-1,-1,10,39,0,0,295000,0,92,0,0,0,0,0,0,0,0,0,0,126,340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,26,'Gem of Secret',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,30,'Bundled Jewel of Bless',-1,1,1,8832,0,0,-1,-1,0,0,0,0,30000000,4,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,31,'Bundled Jewel of Soul',-1,1,1,8832,0,0,-1,-1,0,0,0,0,18000000,4,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,32,'Box of Red Ribbon',-1,1,1,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,33,'Box of Green Ribbon',-1,1,1,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,34,'Box of Blue Ribbon',-1,1,1,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,35,'Scroll of Fire Scream',-1,1,2,9088,0,0,-1,-1,10,39,0,0,300000,0,102,0,0,0,0,0,0,0,0,0,0,32,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,36,'Wings of Storm',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,37,'Wings of Eternal',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,38,'Wings of Illusion',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,39,'Wings of Ruin',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,40,'Emperors Cape',7,2,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(12,41,'Wings of Curse',7,4,2,11547295,0,0,-1,-1,6,23,1,0,0,0,100,200,0,564,10000,10000,2,150,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,-1,0,0,0,0,0),(12,42,'Wings of Despair',7,4,3,11547295,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,2,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(12,43,'Wings of Dimension',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(12,44,'Crystal of Destruction',-1,1,1,9088,0,0,-1,-1,10,38,0,0,380000,0,100,0,0,0,0,0,0,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,45,'Crystal of Multi-Shot',-1,1,1,9088,0,0,-1,-1,10,38,0,0,380000,0,100,0,0,0,0,0,0,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,46,'Crystal of Recovery',-1,1,1,9088,0,0,-1,-1,10,38,0,0,250000,0,100,0,0,0,0,0,0,220,0,0,0,168,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,47,'Crystal of Flame Strike',-1,1,1,9088,0,0,-1,-1,10,38,0,0,380000,0,100,0,0,0,0,0,0,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,48,'Scroll of Chaotic Diseier',-1,1,2,9088,0,0,-1,-1,10,39,0,0,380000,0,100,0,0,0,0,0,0,220,0,0,0,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,49,'Warriors Cloak',7,2,3,11547295,0,0,-1,-1,6,27,1,0,0,0,150,200,0,564,10000,10000,2,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(12,50,'Reigning Cloak',7,2,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(12,60,'Seed (Fire)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,61,'Seed (Water)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,62,'Seed (Ice)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,63,'Seed (Wind)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,64,'Seed (Lightning)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,65,'Seed (Earth)',-1,1,1,8832,0,0,-1,-1,0,40,0,0,500000,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,70,'Sphere (1)',-1,1,1,9088,0,0,-1,-1,0,41,0,0,30000000,0,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,71,'Sphere (2)',-1,1,1,9088,0,0,-1,-1,0,41,0,0,150000,0,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,72,'Sphere (3)',-1,1,1,9088,0,0,-1,-1,0,41,0,0,200000,0,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,73,'Sphere (4)',-1,1,1,9088,0,0,-1,-1,0,41,0,0,250000,0,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,74,'Sphere (5)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,300000,0,145,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,100,'Seed Sphere 1 (Fire)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,101,'Seed Sphere 1 (Water)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,102,'Seed Sphere 1 (Ice)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,103,'Seed Sphere 1 (Wind)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,104,'Seed Sphere 1 (Lightning)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,105,'Seed Sphere 1 (Earth)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1050000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,106,'Seed Sphere 2 (Fire)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,107,'Seed Sphere 2 (Water)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,108,'Seed Sphere 2 (Ice)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,109,'Seed Sphere 2 (Wind)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,110,'Seed Sphere 2 (Lightning)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,111,'Seed Sphere 2 (Earth)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1125000,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,112,'Seed Sphere 3 (Fire)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,113,'Seed Sphere 3 (Water)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,114,'Seed Sphere 3 (Ice)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,115,'Seed Sphere 3 (Wind)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,116,'Seed Sphere 3 (Lightning)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,117,'Seed Sphere 3 (Earth)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1200000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,118,'Seed Sphere 4 (Fire)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,119,'Seed Sphere 4 (Water)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,120,'Seed Sphere 4 (Ice)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,121,'Seed Sphere 4 (Wind)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,122,'Seed Sphere 4 (Lightning)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,123,'Seed Sphere 4 (Earth)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1300000,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,124,'Seed Sphere 5 (Fire)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,125,'Seed Sphere 5 (Water)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,126,'Seed Sphere 5 (Ice)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,127,'Seed Sphere 5 (Wind)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,128,'Seed Sphere 5 (Lightning)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,129,'Seed Sphere 5 (Earth)',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,130,'Small Cape of the Lord',7,2,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,131,'Small Wings of Curse',7,3,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(12,132,'Small Wings of Fairy',7,3,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,133,'Small Wings of Heaven',7,3,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,1,-1,0,0,0,0,0),(12,134,'Small Wings of Satan',7,3,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,-1,0,0,0,0,0),(12,135,'Small Warriors Cloak',7,2,2,7340032,0,0,-1,-1,6,22,1,0,0,0,1,200,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(12,136,'Bundled Jewel of Life',-1,1,1,8832,0,0,-1,-1,0,0,0,0,150000000,4,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,137,'Bundled Jewel of Creation',-1,1,1,8832,0,0,-1,-1,0,0,0,0,120000000,4,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,138,'Bundled Jewel of Guardian',-1,1,1,8832,0,0,-1,-1,0,0,0,0,210000000,4,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,139,'Bundled Gemstone',-1,1,1,8832,0,0,-1,-1,0,0,0,0,186000,4,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,140,'Bundled Jewel of Harmony',-1,1,1,8832,0,0,-1,-1,0,0,0,0,186000,4,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,141,'Bundled Jewel of Chaos',-1,1,1,8832,0,0,-1,-1,0,0,0,0,8100000,4,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,142,'Bundled Lower Refining Stone',-1,1,1,8832,0,0,-1,-1,0,0,0,0,186000,4,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,143,'Bundled Higher Refining Stone',-1,1,1,8832,0,0,-1,-1,0,0,0,0,186000,4,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(12,144,'Mithril Fragment',-1,1,1,9088,0,0,-1,-1,8,0,0,0,300000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,145,'Mithril',-1,1,1,8832,0,0,-1,-1,8,0,0,0,1500000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,146,'Elixir Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,300000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,147,'Elixir',-1,1,1,8832,0,0,-1,-1,0,0,0,0,1500000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,148,'Mithril Fragment Bunch',-1,1,1,8832,0,0,-1,-1,8,0,0,0,1500000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,149,'Elixir Fragment Bunch',-1,1,1,8832,0,0,-1,-1,0,0,0,0,1500000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,150,'Jewel Combination Frame',-1,2,1,8832,0,0,-1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,151,'Spirit Powder',-1,1,2,8832,0,0,-1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,200,'Muren\'s Book of Magic',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,100,5,0,0,0,0,0,100,0,0,0,0,0,30,45,0,0,0,30,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,201,'Scroll of Etramu',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,150,5,0,0,0,0,0,150,0,0,0,0,0,50,70,0,0,0,50,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,202,'Lorencia Knights\' Iron Shield',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,150,5,0,0,0,0,0,150,0,0,0,0,0,96,129,0,0,0,231,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,203,'Iron Shield of the Magic',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,180,5,0,0,0,0,0,180,0,0,0,0,0,96,129,0,0,0,231,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,204,'Hero Elixir',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,150,5,0,0,0,0,0,150,0,0,0,0,0,134,180,0,0,0,184,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,205,'Brave Hero Elixir',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,180,5,0,0,0,0,0,180,0,0,0,0,0,134,180,0,0,0,184,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,206,'Gladiator\'s Dagger',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,150,5,0,0,0,0,0,150,0,0,0,0,0,168,227,0,0,0,132,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,207,'Merciless Gladiator\'s Dagger',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,180,5,0,0,0,0,0,180,0,0,0,0,0,168,227,0,0,0,132,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,208,'Kundun\'s Madness Blade',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,209,'Kundun\'s Magic Spell Scroll',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,210,'Empire Guardians\' Stronghold',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,211,'Ancient Icarus Scroll',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,212,'Arca\'s Prophecy',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,209,284,0,0,0,288,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,213,'Antonia\'s Sword',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,209,284,0,0,0,288,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,214,'Kundun\'s Seal Scroll',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,209,284,0,0,0,288,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,215,'Pentagram for Beginners',236,3,3,8973,0,0,-1,-1,8,43,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,25,40,0,0,0,25,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,216,'Iron Shield (Bound)',236,3,3,9101,0,0,-1,-1,8,43,5,0,0,0,150,0,0,0,0,0,0,150,0,0,0,0,0,100,140,0,0,0,231,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,217,'Bead of Thoughtful Sage',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,180,5,0,0,0,0,0,180,0,0,0,0,0,96,129,0,0,0,231,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,218,'Magic Scroll (attributable)',236,3,3,9101,0,0,-1,-1,8,43,5,0,0,0,300,0,0,0,0,0,0,300,0,0,0,0,0,204,267,0,0,0,270,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,221,'Errtel of Anger',-1,2,2,8832,0,0,-1,-1,8,44,0,0,0,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,222,'Errtel of Anger for Beginners',-1,2,2,8704,0,0,-1,-1,8,44,0,0,0,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,231,'Errtel of Blessing',-1,2,2,8832,0,0,-1,-1,8,44,0,0,0,0,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,232,'Errtel of Blessing for Beginners',-1,2,2,8704,0,0,-1,-1,8,44,0,0,0,0,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,241,'Errtel of Integrity',-1,2,2,8832,0,0,-1,-1,8,44,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,242,'Errtel of Integrity for Beginners',-1,2,2,8704,0,0,-1,-1,8,44,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,251,'Errtel of Divinity',-1,2,2,8832,0,0,-1,-1,8,44,0,0,0,0,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,252,'Errtel of Divinity for Beginners',-1,2,2,8704,0,0,-1,-1,8,44,0,0,0,0,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,261,'Errtel of Radiance',-1,2,2,8832,0,0,-1,-1,8,44,0,0,0,0,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,262,'Cloak of Death',7,2,3,11547295,0,0,-1,-1,6,28,1,0,0,0,150,210,0,564,10000,10000,2,290,0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0),(12,263,'Wings of Chaos',7,4,3,11547295,0,0,-1,-1,6,28,1,0,0,0,150,210,0,564,10000,10000,2,290,0,0,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,2,0,0,0,0,0,0,0),(12,264,'Wings of Magic',7,4,3,11547295,0,0,-1,-1,6,28,1,0,0,0,150,210,0,564,10000,10000,2,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,2,0,0,1,0,2,0,0,2,0,2,0,0,0,0,0,0),(12,265,'Wings of Life',7,4,3,11547295,0,0,-1,-1,6,28,1,0,0,0,150,210,0,564,10000,10000,2,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,266,'Wings of Conqueror',7,4,3,11547283,0,0,-1,-1,6,60,1,0,300000,0,150,220,0,564,10000,10000,2,1,0,0,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,2,0,0,0,0,0,0),(12,267,'Wings of Angel and Devil',7,4,3,11547281,0,0,-1,-1,6,62,1,0,3000000,0,350,220,0,564,10000,10000,2,350,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,2,0,0,0,0,0,0),(12,268,'Wings of Conqueror',7,4,3,9450143,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,1,3,3,3,-1,0,0,0,0,0),(12,269,'Cloak of Limit',7,2,3,11547295,0,0,-1,-1,6,27,1,0,0,0,150,200,0,564,10000,10000,2,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,270,'Cloak of Transcendence',7,2,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(12,271,'Spin Step Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,100000,0,53,0,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,272,'Obsidian Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,120000,0,74,0,0,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,273,'Magic Pin Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,200000,0,80,0,0,0,0,0,0,0,300,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,274,'Harsh Strike Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,100000,0,58,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,275,'Shining Peak Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,300000,0,92,0,0,0,0,0,0,220,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,276,'Wrath Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,120000,0,66,0,0,0,0,0,0,0,200,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,277,'Breche Scroll',-1,1,2,9088,0,0,-1,-1,10,39,0,0,200000,0,92,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,278,'Small Cloak of Limit',7,2,2,11547295,0,0,-1,-1,6,22,1,0,0,0,1,200,0,564,10000,10000,2,1,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,279,'Cloak of Death (Bound)',7,2,3,11547167,0,0,-1,-1,6,28,5,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,-1,0,0,0,0,0),(12,280,'Wings of Chaos (Bound)',7,4,3,11547167,0,0,-1,-1,6,28,5,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,-1,0,0,0,0,0),(12,281,'Wings of Magic (Bound)',7,4,3,11547167,0,0,-1,-1,6,28,5,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,-1,0,0,0,0,0),(12,282,'Wings of Life (Bound)',7,4,3,11547167,0,0,-1,-1,6,28,5,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,283,'[PC]Wings of Angel & Devil',7,4,3,11547153,0,0,-1,-1,6,62,1,0,0,0,350,220,0,0,0,0,0,350,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,2,-1,0,0,0,0,0),(12,284,'[PC]Cloak of Death',7,2,3,11547167,0,0,-1,-1,6,28,1,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,-1,0,0,0,0,0),(12,285,'[PC]Wings of Chaos',7,4,3,11547167,0,0,-1,-1,6,28,1,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,46,0,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,2,2,-1,0,0,0,0,0),(12,286,'[PC]Wings of Magic',7,4,3,11547167,0,0,-1,-1,6,28,1,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,2,0,0,1,0,2,0,0,2,0,0,-1,0,0,0,0,0),(12,287,'[PC]Wings of Life',7,4,3,11547167,0,0,-1,-1,6,28,1,0,0,0,150,210,0,0,0,0,0,290,0,0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,288,'Elemental Rune',-1,1,2,8832,0,0,-1,-1,0,0,0,0,80000000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,289,'Orb of Fire Blow',-1,1,1,8320,0,0,-1,-1,10,38,0,0,900000,0,150,0,0,0,0,0,0,400,1090,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,290,'Scroll of Meteor Strike',-1,1,2,8320,0,0,-1,-1,10,36,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1073,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,291,'Scroll of Meteor Storm',-1,1,2,8320,0,0,-1,-1,10,36,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,292,'Scroll of Soul Seeker',-1,1,2,8320,0,0,-1,-1,10,36,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,293,'Orb of Focus Shot',-1,1,1,8320,0,0,-1,-1,10,38,0,0,900000,0,150,0,0,0,0,0,0,400,0,1302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,295,'Parchment of Fire Beast',-1,1,2,8320,0,0,-1,-1,10,37,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(12,296,'Parchment of Aqua Beast',-1,1,2,8320,0,0,-1,-1,10,37,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(12,297,'Orb of Ice Blood',-1,1,1,8320,0,0,-1,-1,10,38,0,0,900000,0,150,0,0,0,0,0,0,400,900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,298,'Orb of Fire Blood',-1,1,1,8320,0,0,-1,-1,10,38,0,0,900000,0,150,0,0,0,0,0,0,400,900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,299,'Scroll of Dark Blast',-1,1,2,8320,0,0,-1,-1,10,36,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1073,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,300,'Scroll of Meteor Strike',-1,1,2,8320,0,0,-1,-1,10,36,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,0,1073,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,303,'Scroll of Wind Soul',-1,1,2,8320,0,0,-1,-1,10,39,0,0,900000,0,150,0,0,0,0,0,0,400,717,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(12,305,'Parchment of Dark Phoenix Shot',-1,1,2,8320,0,0,-1,-1,10,39,0,0,900000,0,150,0,0,0,0,0,0,400,0,987,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(12,306,'Golden Line Harp of Lunidel',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,307,'Orb of the Lemurian',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,308,'Colorful Lira of Norwein',236,3,3,9101,0,0,-1,-1,8,43,0,0,0,0,300,5,0,0,0,0,0,300,0,0,0,0,0,181,245,0,0,0,249,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,311,'Seed Sphere (Fire)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,312,'Seed Sphere (Water)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,313,'Seed Sphere (Ice)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,314,'Seed Sphere (Wind)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,315,'Seed Sphere (Lightning)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,316,'Seed Sphere (Earth)[Level 6]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1425000,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,317,'Seed Sphere (Fire)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,318,'Seed Sphere (Water)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,319,'Seed Sphere (Ice)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,320,'Seed Sphere (Wind)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,321,'Seed Sphere (Lightning)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,322,'Seed Sphere (Earth)[Level 7]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1500000,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,323,'Seed Sphere (Fire)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,324,'Seed Sphere (Water)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,325,'Seed Sphere (Ice)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,326,'Seed Sphere (Wind)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,327,'Seed Sphere (Lightning)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,328,'Seed Sphere (Earth)[Level 8]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1575000,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,329,'Seed Sphere (Fire)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,330,'Seed Sphere (Water)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,331,'Seed Sphere (Ice)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,332,'Seed Sphere (Wind)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,333,'Seed Sphere (Lightning)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,334,'Seed Sphere (Earth)[Level 9]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1650000,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,335,'Seed Sphere (Fire)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,336,'Seed Sphere (Water)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,337,'Seed Sphere (Ice)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,338,'Seed Sphere (Wind)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,339,'Seed Sphere (Lightning)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,340,'Seed Sphere (Earth)[Level 10]',-1,1,1,8832,0,0,-1,-1,0,42,0,0,1725000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,401,'Sphere Rune Strengthener',-1,1,2,8832,0,0,-1,-1,0,0,0,0,10000000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,404,'Lesser Spiritstone',-1,1,1,9088,0,0,-1,-1,0,0,0,0,50000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,405,'Intermediate Spiritstone',-1,1,1,9088,0,0,-1,-1,0,0,0,0,70000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,406,'Greater Spiritstone',-1,1,1,9088,0,0,-1,-1,0,0,0,0,100000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,407,'[Bind] Loch\'s Magic Solution',-1,1,1,8704,0,0,-1,-1,0,0,0,0,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,408,'[Bind] Completed Loch\'s Magic Solution',-1,1,1,8704,0,0,-1,-1,0,0,0,0,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,409,'[Bind] Condor\'s Magic Solution',-1,1,1,8704,0,0,-1,-1,0,0,0,0,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,410,'[Bind] Completed Condor\'s Magic Solution',-1,1,1,8704,0,0,-1,-1,0,0,0,0,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,413,'Spirit Hook Parchment',-1,1,2,8320,0,0,-1,-1,10,37,0,0,900000,0,150,0,0,0,0,0,0,400,0,0,1480,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(12,414,'Heavenly Wings',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,155,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,415,'Wrathful Wings',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,416,'Celestial Wings',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,417,'Devastation Wings',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,418,'Cape of Dominance',7,2,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,155,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,-1,0,0,0,0,0),(12,419,'Agony Wings',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0,0,0,0),(12,420,'Cloak of Judgement',7,2,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,-1,0,0,0,0,0),(12,421,'Cloak of Renascence',7,2,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,0,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,-1,0,0,0,0,0),(12,422,'[Bind] Wings of Soul',7,5,3,11547167,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,0,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(12,423,'[Bind] Wings of Dragon',7,3,3,11547167,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,0,215,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,2,-1,0,0,0,0,0),(12,424,'[Bind] Wings of Spirits',7,5,3,11547167,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,0,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,425,'[Bind] Wings of Darkness',7,4,2,11547167,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,0,215,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,426,'[Bind] Cape of Lord',7,2,3,11547167,0,0,-1,-1,6,26,1,0,0,0,150,200,0,564,10000,10000,0,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(12,427,'[Bind] Wings of Despair',7,4,3,11547167,0,0,-1,-1,6,24,1,0,0,0,150,200,0,564,10000,10000,0,215,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(12,428,'[Bind] Cape of Fighter',7,2,3,11547167,0,0,-1,-1,6,27,1,0,0,0,150,200,0,564,10000,10000,0,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(12,429,'[Bind] Cloak of Limit',7,2,3,11547167,0,0,-1,-1,6,27,1,0,0,0,150,200,0,564,10000,10000,0,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(12,430,'[Bind] Wings of Eternal',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,431,'[Bind] Wings of Storm',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(12,432,'[Bind] Wings of Illusion',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,433,'[Bind] Wings of Ruin',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,-1,0,0,0,0,0),(12,434,'[Bind] Cape of Emperor',7,2,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,-1,0,0,0,0,0),(12,435,'[Bind] Wings of Dimension',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,-1,0,0,0,0,0),(12,436,'[Bind] Cape of Overrule',7,2,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,-1,0,0,0,0,0),(12,437,'[Bind] Cloak of Transcendence',7,2,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,0,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,-1,0,0,0,0,0),(12,446,'Loch\'s Magical Bell',-1,1,1,9088,0,0,-1,-1,0,0,0,0,50000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,447,'Condor\'s Magical Bell',-1,1,1,9088,0,0,-1,-1,0,0,0,0,70000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,449,'Rage Earring (L)',238,1,1,9450112,0,0,-1,-1,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,300,0,0,0,0,0,17,20,0,0,0,15,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,450,'Ancestor Earring (L)',238,1,1,9450112,0,0,-1,-1,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,700,0,0,0,0,0,66,69,0,0,0,36,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,451,'Honor Earring (L)',238,1,1,9450112,0,0,-1,0,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,750,0,0,0,0,0,132,135,0,0,0,102,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,457,'Rage Earring (R)',237,1,1,9450112,0,0,-1,-1,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,700,0,0,0,0,0,37,40,0,0,0,25,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,458,'Ancestor Earring (R)',237,1,1,9450112,0,0,-1,-1,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,750,0,0,0,0,0,106,109,0,0,0,94,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,459,'Honor Earring (R)',237,1,1,9450112,0,0,-1,0,19,77,1,0,100000,0,0,130,0,564,10000,10000,2,800,0,0,0,0,0,172,175,0,0,0,160,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,465,'Baseball Player Transformation Ring',10,1,1,128,0,0,-1,-1,4,32,0,0,0,0,10,100,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,466,'Cheerleader Transformation Ring',10,1,1,128,0,0,-1,-1,4,32,0,0,0,0,10,100,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,467,'Wings of Disillusionment',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(12,468,'[Bind] Wings of Disillusionment',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(12,469,'Wings of Fate',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,2,800,0,0,0,0,0,0,0,0,0,0,155,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1,0,0,0,0,0),(12,471,'Ghost Horse',-1,1,1,11674244,0,0,-1,-1,20,79,0,0,9000000,0,1,255,0,60,10000,10000,0,800,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,472,'Wings of Silence',7,4,3,11547295,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(12,473,'[Bind] Wings of Silence',7,4,3,11547167,0,0,-1,-1,6,25,1,0,0,0,150,220,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(12,474,'Wings of Condemnation',7,4,3,11547295,0,0,-1,-1,6,76,1,0,0,0,153,220,0,564,10000,10000,2,800,0,0,0,0,0,0,0,0,0,0,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,-1,0,0,0,0,0),(12,476,'Orb of Sword Inertia',-1,1,1,9088,0,0,-1,-1,10,38,0,0,10000,0,10,0,0,0,0,0,1,30,50,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(12,477,'Orb of Bat Flock',-1,1,1,9088,0,0,-1,-1,10,38,0,0,200000,0,20,0,0,0,0,0,1,270,100,380,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-1,0,0,0,0,0),(12,478,'Orb of Detection',-1,1,1,9088,0,0,-1,-1,10,38,0,0,400000,0,30,0,0,0,0,0,1,400,0,800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(12,479,'Orb of Pierce Attack',-1,1,1,8320,0,0,-1,-1,10,38,0,0,850000,0,160,0,0,0,0,0,1,400,300,1100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(12,480,'Wings of Power',7,4,3,9445891,0,0,-1,-1,6,80,1,0,0,0,770,220,0,564,10000,10000,2,750,0,0,0,0,0,0,0,0,0,0,700,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,3,3,3,3,-1,0,0,0,0,0),(12,481,'Desmodus Egg',-1,1,1,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(12,482,'Orb of Demolish',-1,1,1,8320,0,0,-1,-1,10,38,0,0,1600000,0,400,0,0,0,0,0,0,400,0,1450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,-1,0,0,0,0,0),(12,483,'Ice Dragon',-1,1,1,11674244,0,0,-1,0,20,79,0,0,9000000,0,2,255,0,60,10000,10000,0,900,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,484,'Ice Dragon (Rare)',-1,1,1,11674244,0,0,-1,0,20,79,0,0,9000000,0,2,255,0,60,10000,10000,0,900,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(12,485,'Orb of Sword Wrath',-1,1,1,9088,0,0,-1,0,10,38,0,0,550000,0,78,0,0,0,0,0,0,0,1060,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,486,'Orb of Sword Blow',-1,1,1,8320,0,0,-1,0,10,38,0,0,150000,0,78,0,0,0,0,0,0,0,1090,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,487,'Orb of Strong Belief',-1,1,1,9088,0,0,-1,0,10,38,0,0,550000,0,78,0,0,0,0,0,0,0,0,0,0,1040,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,488,'Orb of Solid Protection',-1,1,1,9088,0,0,-1,0,10,38,0,0,600000,0,78,0,0,0,0,0,0,0,0,0,0,1052,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,491,'Orb of Dark Plasma',-1,1,1,9088,0,0,-1,-1,10,38,0,0,550000,0,100,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,-1,0,0,0,0,0),(12,492,'Orb of Ice Break',-1,1,1,9088,0,0,-1,-1,10,38,0,0,150000,0,80,0,0,0,0,0,0,0,0,0,0,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(12,493,'Orb of Ice Blast',-1,1,1,8320,0,0,-1,-1,10,38,0,0,550000,0,150,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(12,494,'Orb of Fire Death',-1,1,1,9088,0,0,-1,-1,10,38,0,0,600000,0,80,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0),(12,495,'Orb of Bursting Flare',-1,1,1,8320,0,0,-1,-1,10,38,0,0,600000,0,150,0,0,0,0,0,0,0,100,200,0,800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,-1,0,0,0,0,0),(13,0,'Guardian Angel',8,1,1,8921984,0,0,-1,-1,5,45,0,0,0,0,23,255,0,0,0,0,3,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,1,'Satan',8,1,1,8921984,0,0,-1,-1,5,45,0,0,0,0,28,255,0,0,0,0,3,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,2,'Horn of Uniria',-1,1,1,9053056,0,0,-1,-1,5,47,0,0,0,0,25,255,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,3,'Horn of Dinorant',-1,1,1,9052802,0,49,-1,-1,5,47,0,0,0,0,110,255,0,0,0,0,3,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,4,'Dark Horse',-1,1,1,668288,0,62,-1,-1,5,47,0,0,0,0,218,255,0,1500,0,0,0,218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,5,'Dark Raven',-1,1,1,668288,0,0,-1,-1,5,47,0,0,0,0,0,255,0,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,7,'Contract (Summon)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,8,'Ring of Ice',10,1,1,1061762,0,0,-1,1,4,31,1,0,0,0,20,50,0,564,10000,10000,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,9,'Ring of Poison',10,1,1,1061762,0,0,-1,2,4,31,1,0,0,0,17,50,0,564,10000,10000,2,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,10,'Transformation Ring',10,1,1,1061762,0,0,-1,-1,4,33,0,0,0,0,0,200,0,564,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,11,'Order (Guardian/Life Stone)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,12,'Pendant of Lighting',9,1,1,1061762,0,0,-1,3,2,30,1,0,0,0,21,50,0,564,10000,10000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,13,'Pendant of Fire',9,1,1,1061762,0,0,-1,0,2,29,1,0,0,0,13,50,0,564,10000,10000,2,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,14,'Lochs Feather',-1,1,2,8832,0,0,-1,-1,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,15,'Fruits',-1,1,1,8832,0,0,-1,-1,0,0,0,0,9000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,16,'Scroll of Archangel',-1,1,2,9088,0,0,-1,-1,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,17,'Blood Bone',-1,1,2,9088,0,0,-1,-1,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,18,'Invisibility Cloak',-1,2,2,9088,0,0,-1,-1,0,53,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,19,'Absolute Weapon of Archangel',-1,1,2,8704,0,0,-1,-1,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,20,'Wizards Ring',10,1,1,13632384,0,0,1,-1,4,31,0,0,0,0,0,30,0,8,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,21,'Ring of Fire',10,1,1,1061762,0,0,-1,3,4,31,1,0,0,0,30,50,0,564,10000,10000,2,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,22,'Ring of Earth',10,1,1,1061762,0,0,-1,0,4,31,1,0,0,0,38,50,0,564,10000,10000,2,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,23,'Ring of Wind',10,1,1,1061762,0,0,-1,1,4,31,1,0,0,0,44,50,0,564,10000,10000,2,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,24,'Ring of Magic',10,1,1,1061762,0,0,-1,3,4,31,1,0,0,0,47,50,0,564,10000,10000,2,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,25,'Pendant of Ice',9,1,1,1061762,0,0,-1,0,2,30,1,0,0,0,34,50,0,564,10000,10000,2,34,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,26,'Pendant of Wind',9,1,1,1061762,0,0,-1,1,2,29,1,0,0,0,42,50,0,564,10000,10000,2,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,27,'Pendant of Water',9,1,1,1061762,0,0,-1,2,2,30,1,0,0,0,46,50,0,564,10000,10000,2,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,28,'Pendant of Ability',9,1,1,1061762,0,0,-1,-1,2,29,1,0,0,0,50,50,0,564,10000,10000,2,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,29,'Armor of Guardsman',-1,2,2,9088,0,0,-1,-1,0,53,0,0,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,30,'Cape of Lord',7,2,3,11547295,0,0,-1,-1,6,26,1,0,0,0,150,200,0,564,10000,10000,2,180,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,31,'Spirit',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,32,'Splinter of Armor',-1,1,1,9088,0,0,-1,-1,0,0,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,33,'Bless of Guardian',-1,1,1,9088,0,0,-1,-1,0,0,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,34,'Claw of Beast',-1,1,1,9088,0,0,-1,-1,0,0,0,0,3000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,35,'Fragment of Horn',-1,1,1,8832,0,0,-1,-1,0,0,0,0,30000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,36,'Broken Horn',-1,2,2,8832,0,0,-1,-1,0,0,0,0,90000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,37,'Horn of Fenrir',-1,2,2,9052806,0,76,-1,-1,5,47,0,0,150000,0,300,255,0,100,0,0,3,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,2,-1,0,0,0,0,0),(13,38,'Moonstone Ring',10,1,1,7349120,0,0,-1,-1,4,0,0,0,0,0,21,120,0,8,10000,10000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,39,'Eilte Skeleton Ring',10,1,1,15737728,0,0,-1,-1,4,32,0,0,0,0,10,255,0,564,10000,10000,2,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,40,'Jack OLantern Ring',10,1,1,15737728,0,0,-1,-1,4,32,0,0,0,0,10,100,0,564,10000,10000,2,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,41,'Christmas Ring',10,1,1,15737728,0,0,-1,-1,4,32,0,0,0,0,1,100,0,564,10000,10000,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,42,'Game Master Ring',10,1,1,8704,0,0,-1,-1,4,32,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,43,'Seal of Ascension',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,44,'Seal of Wealth',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,45,'Seal of Sustenance',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,46,'Devil Square Ticket',-1,1,1,8704,0,0,-1,-1,0,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,47,'Blood Castle Ticket',-1,1,1,8704,0,0,-1,-1,0,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,48,'Kalima Ticket',-1,1,1,8960,0,0,-1,-1,0,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,49,'Old Scroll',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,50,'Illusion Sorcerer Covenant',-1,1,2,9088,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,51,'Scroll of Blood',-1,2,2,9088,0,0,-1,-1,0,53,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,52,'Flame of Condor',-1,1,2,8832,0,0,-1,-1,0,0,0,0,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,53,'Feather of Condor',-1,1,2,8832,0,0,-1,-1,0,0,0,0,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,54,'Reset Fruit Strength',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,55,'Reset Fruit Quickness',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,56,'Reset Fruit Health',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,57,'Reset Fruit Energy',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,58,'Reset Fruit Control',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,59,'Seal of Mobility',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,60,'Indulgence',-1,1,2,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,61,'Illusion Temple Ticket',-1,1,1,8704,0,0,-1,-1,0,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,62,'Seal of Healing',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,63,'Seal of Divinity',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,64,'Demon',8,1,1,15737344,0,0,-1,-1,5,45,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,65,'Spirit of Guardian',8,1,1,15737344,0,0,-1,-1,5,45,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,66,'Invitation to Santa Village',-1,1,1,640,0,0,1,-1,11,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,67,'Pet Rudolf',8,1,1,15737344,0,0,-1,-1,5,45,0,0,0,0,28,255,0,300,3000,4000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,68,'Snowman Transformation Ring',10,1,1,1061762,0,0,-1,-1,4,33,0,0,0,0,10,100,0,564,10000,10000,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,69,'Talisman of Resurrection',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,70,'Talisman of Mobility',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,71,'Sword/Mace/Spear',-1,2,3,8704,0,0,-1,-1,0,0,0,0,2000000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,72,'Staff',-1,2,3,8704,0,0,-1,-1,0,0,0,0,2000000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,73,'Bow/Crossbow',-1,2,3,8704,0,0,-1,-1,0,0,0,0,2000000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,74,'Scepter',-1,2,3,8704,0,0,-1,-1,0,0,0,0,2000000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,75,'Stick',-1,2,3,8704,0,0,-1,-1,0,0,0,0,2000000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,76,'Panda Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,77,'Brown Panda Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(13,78,'Pink Panda Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(13,80,'Pet Panda',8,1,1,15737344,0,0,-1,-1,5,45,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,81,'Talisman of Guardian',-1,1,1,8704,0,0,-1,-1,7,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,82,'Talisman of Item Protection',-1,1,1,8704,0,0,-1,-1,7,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,83,'Talisman of Wings of Satan',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,84,'Talisman of Wings of Heaven',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,85,'Talisman of Wings of Elf',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,86,'Talisman of Wings of Curse',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,87,'Talisman of Cape of Emperor',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,88,'Talisman of Wings of Dragon',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,89,'Talisman of Wings of Soul',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,90,'Talisman of Wings of Spirits',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,91,'Talisman of Wings of Despair',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,92,'Talisman of Wings of Darkness',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,93,'Master Seal of Ascension',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,94,'Master Seal of Wealth',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,95,'Gladiators Honor',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,96,'Seal of Strength',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,97,'Magic Gladiator Character Card',-1,1,1,13184,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,-1,0,0,0,0,0),(13,98,'Dark Lord Character Card',-1,1,1,13184,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,-1,0,0,0,0,0),(13,99,'Character Slot Key',10,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,100,'Small Elixir of Vitality',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,101,'Medium Elixir of Vitality',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,102,'High Elixir of Vitality',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,103,'Party Experience Scroll',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,104,'Max Stamina Boost Aura',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,105,'Max Shield Defense Boost Aura',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,106,'Pet Unicorn',8,1,1,15737344,0,0,-1,-1,0,0,0,0,0,0,28,255,0,300,3000,4000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,107,'Lethal Wizards Ring',10,1,1,7348736,0,0,-1,-1,4,35,0,0,0,0,0,100,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,109,'Sapphire Ring',10,1,1,7348736,0,0,-1,-1,4,35,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,110,'Ruby Ring',10,1,1,7348736,0,0,-1,-1,4,35,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,111,'Topaz Ring',10,1,1,7348736,0,0,-1,-1,4,35,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,112,'Amethyst Ring',10,1,1,7348736,0,0,-1,-1,4,35,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,113,'Ruby Necklace',9,1,1,7348736,0,0,-1,-1,2,34,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,114,'Emerald Necklace',9,1,1,7348736,0,0,-1,-1,2,34,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,115,'Sapphire Necklace',9,1,1,7348736,0,0,-1,-1,2,34,0,0,0,0,0,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,116,'Seal of Wealth',10,1,1,3154432,0,0,-1,-1,7,0,0,0,0,0,0,0,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,117,'Minimum Vitality Potion',-1,1,1,8704,0,0,-1,-1,7,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,118,'Low Vitality Potion',-1,1,1,8704,0,0,-1,-1,7,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,119,'Medium Vitality Potion',-1,1,1,8704,0,0,-1,-1,7,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,120,'High Vitality Potion',-1,1,1,8704,0,0,-1,-1,7,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,121,'Chaos Castle Ticket',-1,1,1,8704,0,0,-1,-1,0,53,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,122,'Skeleton Transformation Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,123,'Pet Skeleton',8,1,1,15737344,0,0,-1,-1,5,45,0,0,0,0,1,255,0,300,3000,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,124,'Paid Channel Access Ticket',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,125,'Doppelganger Ticket',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,126,'Imperial Guardian Ticket',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,127,'Imperial Guardian Sunday Ticket',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,-1,0,0,0,0,1),(13,128,'Hawk Figurine',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,129,'Goat Figurine',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,130,'Oak Charm',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,131,'Maple Charm',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,132,'Golden Oak Charm',-1,1,2,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,133,'Golden Maple Charm',-1,1,2,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,134,'Worn Horseshoe',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,120,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,135,'1st Lucky Armor Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,136,'1st Lucky Pants Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,137,'1st Lucky Helm Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,138,'1st Lucky Gloves Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,139,'1st Lucky Boots Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,140,'2nd Lucky Armor Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,141,'2nd Lucky Pants Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,142,'2nd Lucky Helm Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,143,'2nd Lucky Gloves Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,144,'2nd Lucky Boots Ticket',-1,1,1,8832,0,0,-1,-1,0,54,4,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,145,'Spirit Map Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,146,'Spirit Map',-1,1,1,9088,0,0,-1,-1,0,0,0,0,600000,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,147,'Trophies of Battle',-1,1,1,9088,0,0,-1,-1,0,0,0,0,300000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,148,'Green Ink',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,149,'Blue Ink',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,150,'Red Ink',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,151,'Parchment of Soul',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,152,'Scroll of Green Oblivion',-1,2,2,8320,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,153,'Scroll of Blue Oblivion',-1,2,2,8320,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,154,'Scroll of Red Oblivion',-1,2,2,8320,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,155,'Scroll of Gray Oblivion',-1,2,2,8320,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,156,'Sealed Green Oblivion Scroll',-1,2,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,157,'Sealed Blue Oblivion Scroll',-1,2,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,158,'Sealed Red Oblivion Scroll',-1,2,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,159,'Sealed Gray Oblivion Scroll',-1,2,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,160,'Protection Talisman',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,161,'Cooperation Talisman',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,163,'Robot Knight Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,164,'Mini Robot Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,165,'Great Heavenly Mage Ring',10,1,1,7348736,0,0,-1,-1,4,32,0,0,0,0,1,255,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,166,'Brown Panda Transformation Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,168,'Item13_168',10,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,169,'Decoration Ring',10,1,1,15737472,0,0,-1,-1,4,61,0,0,0,0,0,30,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,170,'Blessed Decoration Ring',10,1,1,15737472,0,0,-1,-1,4,61,0,0,0,0,0,100,0,300,3000,4000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,171,'Necklace of Agony',9,1,1,143668098,0,0,-1,-1,2,29,1,0,0,0,122,60,0,300,4000,4000,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,172,'Solid Symbol',9,1,1,143668098,0,0,-1,-1,2,30,1,0,0,0,110,60,0,300,4000,4000,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,173,'Ring of Ultimatum',10,1,1,143668098,0,0,-1,-1,4,31,1,0,0,0,98,60,0,300,4000,4000,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,175,'Protector Protection Ring',10,1,1,143668098,0,0,-1,-1,4,31,1,0,0,0,74,60,0,300,4000,4000,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,176,'Protection Ring',10,1,1,143668098,0,0,-1,-1,4,31,1,0,0,0,62,60,0,300,4000,4000,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,177,'Talisman of Ascension I',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,178,'Talisman of Ascension II',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,179,'Talisman of Ascension III',-1,1,1,139776,0,0,-1,-1,0,47,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,180,'Seal of Asecnsion II',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,181,'Master Seal of Ascension II',-1,1,1,8704,0,0,-1,-1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,210,'WereRabbit Egg',-1,1,1,9088,0,0,-1,-1,11,72,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,211,'Evolution Stone',-1,1,1,0,0,0,-1,-1,12,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,212,'Luki',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,213,'Luki (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,214,'Tony',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,215,'Tony (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,216,'Nymph',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,217,'Nymph (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,218,'Safi',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,219,'Safi (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,220,'Lucky Bag Egg',-1,1,1,9088,0,0,-1,-1,11,72,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,221,'Fire Flame Ghost Egg',-1,1,1,9088,0,0,-1,-1,11,72,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,222,'Golden Goblin Egg',-1,1,1,9088,0,0,-1,-1,11,72,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,223,'William',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,224,'William (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,225,'Paul',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,226,'Paul (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,227,'Chiron',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,228,'Chiron (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,229,'Wooparoo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,230,'Wooparoo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,231,'Tibetton',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,232,'Tibetton (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,233,'Witch',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,234,'Witch (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,235,'Skull',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,236,'Skull (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,237,'Pumpy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,238,'Pumpy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,239,'Muun Energy Converter',-1,1,1,0,0,0,-1,-1,12,67,0,0,900000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,240,'Wizardry Stone',-1,1,1,0,0,0,-1,-1,12,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,241,'Savath',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,242,'Savath (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,243,'Lycan',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,244,'Lycan (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,245,'Torby',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,246,'Torby (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,252,'Seiren',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,253,'Seiren (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,254,'Behemoth',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,255,'Behemoth (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,256,'Loggle',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,257,'Loggle (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,258,'Mino',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,259,'Mino (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,260,'Hound',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,261,'Hound (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,262,'Trive',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,263,'Trive (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,264,'Vogan',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,265,'Vogan (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,266,'Cyclop',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,267,'Cyclop (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,268,'Dark Transformation Ring',10,1,1,11543172,0,0,-1,-1,4,32,0,0,0,0,400,255,0,564,10000,10000,2,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,1,3,3,3,-1,0,0,0,0,0),(13,270,'Bonf',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,271,'Bonf (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,272,'Hawk',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,273,'Hawk (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,274,'Muty',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,275,'Muty (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,276,'Conqueror\'s Badge',-1,3,3,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,277,'Badge of Hardships',-1,3,3,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,278,'Mantis',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,279,'Mantis (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,280,'Scolpy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,281,'Scolpy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,282,'Chafer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,283,'Chafer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,290,'Cosplay Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,291,'Cosplay Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,292,'Cheer Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,293,'Cheer Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,294,'Sporty Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,295,'Sporty Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,296,'Baal',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,297,'Baal (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,298,'Gaap',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,299,'Gaap (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,300,'Taaf',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,301,'Taaf (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,302,'Frozen',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,303,'Frozen(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,304,'Loor',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,305,'Loor(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,306,'Purssil',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,307,'Purssil(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,308,'Lucky Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,309,'Lucky Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,310,'Songpyeon Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,311,'Songpyeon Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,312,'Mortar Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,313,'Mortar Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,314,'Tarius',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,315,'Tarius (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,316,'Rainer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,317,'Rainer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,318,'Alkamo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,319,'Alkamo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,320,'Glacuse',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,321,'Glacuse (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,322,'Kenturion',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,323,'Kenturion (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,324,'Rocka',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,325,'Rocka (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,326,'Repen',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,327,'Repen (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,328,'Pawn',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,329,'Pawn (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,330,'Grippus',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,331,'Grippus (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,332,'Polar Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,333,'Polar Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,334,'Present',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,335,'Present (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,336,'Rockinghorse',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,337,'Rockinghorse (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,338,'Aries',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,339,'Aries (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,340,'Lester',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,341,'Lester (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,342,'Merino',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,343,'Merino (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,344,'Splinter',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,345,'Splinter(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,346,'Mutation',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,347,'Mutation(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,348,'Pider',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,349,'Pider(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,350,'Muun Egg',-1,1,1,256,0,0,-1,-1,11,72,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,1,0),(13,351,'Sealed Bloodangel Knight Armor (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,352,'Sealed Bloodangel Knight Helm (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,353,'Sealed Bloodangel Knight Pants (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,354,'Sealed Bloodangel Knight Boots (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,355,'Sealed Bloodangel Runic Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(13,356,'Sealed Bloodangel Runic Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(13,357,'Sealed Bloodangel Runic Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(13,358,'Sealed Bloodangel Runic Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(13,359,'Sealed Bloodangel Wizard Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,360,'Sealed Bloodangel Wizard Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,361,'Sealed Bloodangel Wizard Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,362,'Sealed Bloodangel Wizard Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,363,'Sealed Bloodangel Elf Armor (A)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,364,'Sealed Bloodangel Elf Helm (A)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,365,'Sealed Bloodangel Elf Pants (A)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,366,'Sealed Bloodangel Elf Gloves (A)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,367,'Sealed Bloodangel Elf Armor (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,368,'Sealed Bloodangel Elf Helm (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,369,'Sealed Bloodangel Elf Pants (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,370,'Sealed Bloodangel Elf Gloves (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,371,'Sealed Bloodangel Magic Armor (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,372,'Sealed Bloodangel Magic Boots (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,373,'Sealed Bloodangel Magic Pants (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,374,'Sealed Bloodangel Magic Gloves (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,375,'Sealed Bloodangel Magic Armor (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,376,'Sealed Bloodangel Magic Boots (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,377,'Sealed Bloodangel Magic Pants (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,378,'Sealed Bloodangel Magic Gloves (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,379,'Sealed Bloodangel Lord Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,380,'Sealed Bloodangel Lord Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,381,'Sealed Bloodangel Lord Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,382,'Sealed Bloodangel Lord Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0),(13,383,'Sealed Bloodangel Slayer Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(13,384,'Sealed Bloodangel Slayer Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(13,385,'Sealed Bloodangel Slayer Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(13,386,'Sealed Bloodangel Slayer Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0),(13,387,'Sealed Bloodangel Summoner Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(13,388,'Sealed Bloodangel Summoner Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(13,389,'Sealed Bloodangel Summoner Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(13,390,'Sealed Bloodangel Summoner Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(13,391,'Sealed Bloodangel Fighter Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(13,392,'Sealed Bloodangel Fighter Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(13,393,'Sealed Bloodangel Fighter Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(13,394,'Sealed Bloodangel Fighter Boots',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(13,395,'Sealed Bloodangel Knight Helm (E)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,396,'Sealed Bloodangel Knight Armor (E)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,397,'Sealed Bloodangel Knight Pants (E)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,398,'Sealed Bloodangel Knight Boots (E)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,399,'Sealed Bloodangel Lancer Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(13,400,'Sealed Bloodangel Lancer Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(13,401,'Sealed Bloodangel Lancer Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(13,402,'Sealed Bloodangel Lancer Gloves',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,-1,0,0,0,0,0),(13,403,'Sealed Bloodangel Gun Crusher Helm',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,404,'Sealed Bloodangel Gun Crusher Armor',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,405,'Sealed Bloodangel Gun Crusher Pants',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,406,'Sealed Bloodangel Gun Crusher Boots',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,407,'Ancient Hero\'s Soul',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,408,'Pendant of Ability (Bound)',9,1,1,1053442,0,0,-1,-1,2,29,1,0,0,0,50,50,0,564,10000,10000,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,409,'Heywood',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,410,'Heywood(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,411,'Branch',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,412,'Branch(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,413,'Hook',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,414,'Hook(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,415,'Carnifle',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,416,'Carnifle(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,417,'Mandora',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,418,'Mandora(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,419,'Treat',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,420,'Treat(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,421,'Rose Spirit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,422,'Rose Spirit(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,423,'Canola Spirit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,424,'Canola Spirit(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,425,'Cherry Blossom Spirit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,426,'Cherry Blossom Spirit Evolve',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,427,'Gigantes',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,428,'Gigantes(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,429,'Mammoth',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,430,'Mammoth(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,431,'Walker',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,432,'Walker(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,433,'Surfing Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,434,'Surfing Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,435,'Tube Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,436,'Tube Girl(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,437,'Cooling Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,438,'Cooling Girl(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,439,'Commander',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,440,'Commander(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,441,'Lance Soldier',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,442,'Lance Soldier(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,443,'Bow Soldier',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,444,'Bow Soldier(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,445,'Hammer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,446,'Hammer(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,447,'Refear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,448,'Refear(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,449,'Axer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,450,'Axer(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,451,'Pumpkin Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,452,'Pumpkin Girl(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,453,'Ghost',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,454,'Ghost(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,455,'Mummified Boy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,456,'Mummified Boy(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,457,'Chrysanthemum',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,458,'Chrysanthemum(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,459,'Maple',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,460,'Maple(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,461,'Ginkgo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,462,'Ginkgo(Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(13,466,'Garuda\'s Flame',-1,1,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,467,'Garuda\'s Feather',-1,1,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,468,'Golden Sentence',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,469,'[PC]Pet Panda',8,1,1,0,0,0,-1,-1,5,45,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,470,'[PC]Pet Skeleton',8,1,1,0,0,0,-1,-1,5,45,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,471,'[PC]Panda Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,472,'[PC]Skeleton Transformation Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,473,'[PC]Robot Knight Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,474,'[PC]Mini Robot Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,475,'[PC]Great Heavenly Mage Ring',10,1,1,0,0,0,-1,-1,4,32,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,476,'[PC]Talisman of Ascension II',-1,1,1,0,0,0,-1,-1,0,47,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,478,'[PC]Indulgence',-1,1,1,0,0,0,-1,-1,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,479,'Event Map Ticket',-1,1,1,0,0,0,-1,-1,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(13,509,'Scroll of Golden Oblivion',-1,2,2,8832,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(13,510,'Handcraft Stone',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,160,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,0,'Apple',-1,1,1,9088,0,0,-1,-1,0,51,0,5,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,1,'Small Healing Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,10,0,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,2,'Medium Healing Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,20,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,3,'Large Healing Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,30,0,0,40,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,4,'Small Mana Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,10,0,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,5,'Medium Mana Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,20,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,6,'Large Mana Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,30,0,0,40,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,7,'Siege Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,30,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,8,'Antidote',-1,1,1,9088,0,0,-1,-1,0,51,0,10,0,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,9,'Alcohol',-1,1,2,9088,0,0,-1,-1,0,51,0,30,750,0,15,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,10,'Town Portal Scroll',-1,1,2,9088,0,0,-1,-1,0,0,0,30,750,0,30,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,11,'Box of Luck',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,12,'Heart',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,13,'Jewel of Bless',-1,1,1,8832,0,0,-1,-1,9,56,0,150,3000000,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,14,'Jewel of Soul',-1,1,1,8832,0,0,-1,-1,9,56,0,150,1800000,1,30,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,15,'Zen',-1,1,1,8960,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,35,1,0,0),(14,16,'Jewel of Life',-1,1,1,8832,0,0,-1,-1,9,56,0,0,15000000,1,72,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,17,'Devils Eye',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,18,'Devils Key',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,19,'Devils Invitation',-1,1,1,9088,0,0,-1,-1,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,20,'Remedy of Love',-1,1,1,9088,0,0,-1,-1,0,0,0,0,900,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,21,'Rena',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,22,'Jewel of Creation',-1,1,1,8832,0,0,-1,-1,9,56,0,0,12000000,1,78,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,23,'Scroll of the Emperor',-1,1,1,8704,0,0,1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,24,'Broken Sword',-1,1,2,8704,0,0,1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,25,'Tear of Elf',-1,1,1,8704,0,0,1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,26,'Soul of Wizard',-1,1,1,8704,0,0,1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,28,'Lost Map',-1,1,1,9088,0,0,-1,-1,0,0,0,0,600000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,29,'Symbol of Kundun',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,31,'Jewel of Guardian',-1,1,1,8832,0,0,-1,-1,9,56,0,75,21000000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,32,'Pink Chocolate Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,33,'Red Chocolate Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,34,'Blue Chocolate Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,35,'Small Shield Defense Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,50,2000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,36,'Medium Shield Defense Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,80,4000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,37,'Large Shield Defense Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,100,6000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,38,'Small Complex Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,20,2500,1,68,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,39,'Complex Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,40,5000,1,96,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,40,'Large Complex Potion',-1,1,1,9088,0,0,-1,-1,0,51,0,60,7500,1,118,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,41,'Gemstone',-1,1,1,8832,0,0,-1,-1,9,58,0,150,18700,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,42,'Jewel of Harmony',-1,1,1,8832,0,0,-1,-1,9,56,0,150,18700,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,43,'Lower Refining Stone',-1,1,1,8832,0,0,-1,-1,9,59,0,150,18700,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,44,'Higher Refining Stone',-1,1,1,8832,0,0,-1,-1,9,59,0,150,18700,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,45,'Pumpkin of Luck',-1,1,1,9088,0,0,-1,-1,0,0,0,0,150,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,46,'Jack OLantern Blessings',-1,1,2,9088,0,0,-1,-1,7,74,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,47,'Jack OLantern Wrath',-1,1,2,9088,0,0,-1,-1,7,74,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,48,'Jack OLantern Cry',-1,1,2,9088,0,0,-1,-1,7,74,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,49,'Jack OLantern Food',-1,1,1,9088,0,0,-1,-1,7,74,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,50,'Jack OLantern Drink',-1,1,1,9088,0,0,-1,-1,7,74,0,0,150,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,51,'Chistmas Star',-1,1,1,9088,0,0,-1,-1,0,0,0,0,200000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,52,'Game Master Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,53,'Talisman of Luck',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,54,'Chaos Card',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,55,'Green Chaos Box',-1,1,1,8960,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,56,'Red Chaos Box',-1,1,1,8960,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,57,'Purple Chaos Box',-1,1,1,8960,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,58,'Rare Item Ticket 1',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,59,'Rare Item Ticket 2',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,60,'Rare Item Ticket 3',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,61,'Rare Item Ticket 4',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,62,'Rare Item Ticket 5',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,63,'Firecracker',-1,1,1,9088,0,0,-1,-1,0,0,0,0,200000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,64,'Cursed Castle Water',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,65,'Death Beam Knight Flame',-1,1,1,8704,0,0,-1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,66,'Hell Maine Horn',-1,1,2,8704,0,0,-1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,67,'Dark Phoenix Feather',-1,1,2,8704,0,0,-1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,68,'Abyssal Eye',-1,1,2,8704,0,0,1,-1,0,55,0,0,9000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,70,'Elite Healing Potion',-1,1,1,8832,0,0,-1,-1,0,51,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,71,'Elite Mana Potion',-1,1,1,8832,0,0,-1,-1,0,51,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,72,'Scroll of Quickness',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,73,'Scroll of Defense',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,74,'Scroll of Wrath',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,75,'Scroll of Wizardry',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,76,'Scroll of Health',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,77,'Scroll of Mana',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,78,'Elixir of Strength',-1,1,2,8704,0,0,-1,-1,7,49,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,79,'Elixir of Agility',-1,1,2,8704,0,0,-1,-1,7,49,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,80,'Elixir of Health',-1,1,2,8704,0,0,-1,-1,7,49,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,81,'Elixir of Energy',-1,1,2,8704,0,0,-1,-1,7,49,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,82,'Elixir of Control',-1,1,2,8704,0,0,-1,-1,7,49,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,83,'Rare Item Ticket 6',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,84,'Cherry Blossom Play-Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,85,'Cherry Blossom Wine',-1,1,2,9088,0,0,-1,-1,7,74,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,86,'Cherry Blossom Rice Cake',-1,1,1,9088,0,0,-1,-1,7,74,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,87,'Cherry Blossom Flower Petal',-1,1,1,9088,0,0,-1,-1,7,74,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,88,'White Cherry Blossom Branch',-1,1,2,9088,0,0,-1,-1,0,0,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,89,'Red Cherry Blossom Branch',-1,1,2,9088,0,0,-1,-1,0,0,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,90,'Golden Cherry Blossom Branch',-1,1,2,9088,0,0,-1,-1,0,0,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,91,'Summoner Character Card',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,92,'Chaos Card Gold',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,93,'Chaos Card Rare',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,94,'Medium Elite Healing Potion',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,95,'Chaos Card  Mini',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,96,'Talisman of Chaos Assembly',-1,1,1,8832,0,0,-1,-1,0,0,0,0,100,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,97,'Scroll of Battle',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,98,'Scroll of Strength',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,99,'Christmas Firecracker',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,100,'Lucky Coin',-1,1,1,9088,0,0,-1,-1,0,0,0,0,300,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,101,'Suspicious Scrap of Paper',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,102,'Gaions Order',-1,1,1,9088,0,0,-1,-1,0,53,0,0,30000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,103,'First Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,104,'Second Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,105,'Third Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,106,'Fourth Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,107,'Fifth Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,108,'Sixth Secromicon Fragment',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,109,'Complete Secromicon',-1,1,1,8832,0,0,-1,-1,0,0,0,0,30000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,110,'Sign of Dimensions',-1,1,1,9088,0,0,-1,-1,0,0,0,0,30000,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,111,'Mirror of Dimensions',-1,1,1,9088,0,0,-1,-1,0,53,0,0,600000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,112,'Silver Key',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,113,'Golden Key',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,114,'Master Skill Reset',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,115,'Stat Adjustment',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,116,'Character Relocation Service',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,117,'Character Rename Service',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,118,'Server Relocation Service',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,119,'Premium Package',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,120,'Legend Credit Coin',-1,1,1,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,121,'Sealed Golden Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,122,'Sealed Silver Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,123,'Golden Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,124,'Silver Box',-1,1,1,9088,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,125,'Package Box',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,126,'30-Day Pass',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,127,'90-Day Pass',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,128,'30-Day Pass - Points',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,129,'90-Day Pass - Points',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,130,'3-Hour Pass',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,131,'5-Hour Pass',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,132,'10-Hour Pass',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,133,'Elite SD Potion',-1,1,1,8832,0,0,-1,-1,0,51,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,134,'Package Box A',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,135,'Package Box B',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,136,'Package Box C',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,137,'Package Box D',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,138,'Package Box E',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,139,'Package Box F',-1,1,1,8704,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,140,'Scroll of Healing',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,141,'Shining Jewelry Case',-1,1,1,8960,0,0,-1,-1,0,0,0,0,672000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,142,'Elegant Jewelry Case',-1,1,1,8960,0,0,-1,-1,0,0,0,0,546000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,143,'Steel Jewelry Case',-1,1,1,8960,0,0,-1,-1,0,0,0,0,471000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,144,'Old Jewelry Case',-1,1,1,8960,0,0,-1,-1,0,0,0,0,363000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,145,'Rare Item Ticket 7',-1,1,1,8704,0,0,-1,-1,9,56,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,146,'Rare Item Ticket 8',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,147,'Rare Item Ticket 9',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,148,'Small Rare Chest Key',-1,1,1,8960,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,149,'Rare Chest Key',-1,1,1,8960,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,150,'Big Rare Chest Key',-1,1,1,8960,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,1),(14,151,'Letter of Request',-1,1,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,152,'Completion Certificate',-1,1,2,0,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,153,'Stardust',-1,1,1,8704,0,0,-1,-1,0,55,0,60,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,154,'Kalt Stone',-1,1,1,8704,0,0,-1,-1,0,55,0,60,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,155,'Tantalos Armor',-1,2,2,8704,0,0,-1,-1,0,55,0,60,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,156,'Burnt Murderers Club',-1,1,3,8704,0,0,-1,-1,0,55,0,60,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,0),(14,157,'Green Box',-1,1,1,8960,0,0,-1,-1,0,71,0,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,158,'Red Box',-1,1,1,8960,0,0,-1,-1,0,71,0,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,159,'Purple Box',-1,1,1,8960,0,0,-1,-1,0,71,0,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,160,'Jewel of Extension',-1,1,1,8832,0,0,-1,-1,9,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,161,'Jewel of Elevation',-1,1,1,8832,0,0,-1,-1,9,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,162,'Magic Backpack',-1,1,1,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,163,'Vault Expansion Certificate',-1,1,1,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,164,'Ancient Figurine',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,1),(14,165,'Magic Cloth',-1,1,1,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,1),(14,166,'Rune Cloth',-1,1,1,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,1),(14,167,'Space Cloth',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,1),(14,168,'Dimensional Cloth',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,60,60,0,1),(14,169,'Rage Fighter Card',-1,1,1,8704,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,170,'Lv. 2 Letter of Request',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,171,'Lv. 2 Request Completion Certificate',-1,1,2,8704,0,0,-1,-1,0,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,176,'Death King\'s Bone',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,177,'Hell Maine\'s Leather',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,178,'Dark Phoenix Flame',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,179,'Death Beam Knight Soul',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,180,'Ice Walker\'s Mane',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,181,'Mammoth\'s Bundle of Fur',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,182,'Giant\'s Icicle',-1,1,2,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,183,'Coolutin\'s Poison',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,184,'Iron Knight\'s Heart',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,185,'Dark Mammoth\'s Horn',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,186,'Dark Giant\'s Axe',-1,1,2,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,187,'Dark Coolutin\'s Blood',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,188,'Dark Iron Knight\'s Sword',-1,1,4,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,189,'Elemental Talisman of Luck',-1,1,1,8832,0,0,-1,-1,0,0,0,0,720,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,190,'Elemental Talisman of Chaos',-1,1,1,8832,0,0,-1,-1,0,0,0,0,100,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,191,'Sonic Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,192,'Cyclone Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,193,'Blast Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,194,'Magma Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,195,'Horn Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,196,'Angelic Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,197,'Devil Cross Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,198,'Miracle Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,199,'Spite Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,200,'Asura Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,201,'Thunder Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,202,'Soul Combination Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,206,'Lackluster Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,207,'Luxurious Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,208,'Exciting Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,209,'Tradeable Seal',-1,1,1,8832,0,0,-1,-1,0,0,0,0,100,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,210,'Summon Scroll (Lv1)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,211,'Summon Scroll (Lv2)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,212,'Summon Scroll (Lv3)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,213,'Summon Scroll (Lv4)',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,215,'Card Piece',-1,1,1,9088,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(14,216,'Card Deck',-1,1,1,8832,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(14,217,'Titan\'s Anger',-1,1,1,9088,0,0,-1,-1,0,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,218,'Tantalose\'s Punishment',-1,1,1,9088,0,0,-1,-1,0,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,219,'Erohim\'s Nightmare',-1,1,1,9088,0,0,-1,-1,0,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,220,'Hell Maine\'s Insanity',-1,1,1,9088,0,0,-1,-1,0,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,221,'Kundun\'s Greed',-1,1,1,9088,0,0,-1,-1,0,68,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,222,'Unique Accessory Box',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(14,223,'Cursed Castle Water',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,224,'Blessing of Light',-1,1,1,8832,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,225,'Scroll Master of Defense',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,226,'Scroll Master of Wizardry',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,227,'Scroll Master of Health',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,228,'Scroll Master of Mana',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,229,'Scroll Master of Wrath',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,230,'Scroll Master of Recovery',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,231,'Scroll Master of Battle',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,232,'Scroll Master of Strenghener',-1,2,2,8704,0,0,-1,-1,7,48,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,233,'Unique Weapon Box',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(14,234,'Book of Monster Invocation',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,235,'Scroll Master of Quickness',-1,2,2,8704,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(14,236,'Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,237,'Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,238,'Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,239,'Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,240,'Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,241,'Rare Reward Pot',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,242,'Golden Apple',-1,1,1,0,0,0,-1,-1,0,0,0,5,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(14,243,'Golden Apple(2)',-1,1,1,0,0,0,-1,-1,0,0,0,5,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(14,244,'Evomon Summoning Scroll',-1,1,1,384,0,0,-1,-1,11,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,245,'Tetra Crystal (Greater)',-1,1,1,640,0,0,-1,-1,0,0,0,0,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,246,'Tetra Crystal (Standard)',-1,1,1,640,0,0,-1,-1,0,0,0,0,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,247,'Tetra Crystal (Minor)',-1,1,1,640,0,0,-1,-1,0,0,0,0,3000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,248,'Minor Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,249,'Standard Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,250,'Greater Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,251,'Luxurious Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,252,'Magnificent Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,253,'Legendary Evomon Box',-1,1,1,256,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,254,'Gift of Henchmen',-1,1,1,256,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,256,'Gift of Knights',-1,1,1,256,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,257,'Gift of High Knights',-1,1,1,256,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,258,'Minor Devil\'s Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,259,'Devil\'s Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,260,'High Devil\'s Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,261,'Guardsman\'s Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,262,'Guardman Captain\'s Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,263,'Bless of Light (Low Grade)',-1,1,1,128,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,264,'Bless of Light (Middle Grade)',-1,1,1,128,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,265,'Goblin Treasure Box (Green)',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,266,'Goblin Treasure Box (Blue)',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,267,'Goblin Treasure Box (Red)',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,268,'Goblin Treasure Box (Yellow)',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,269,'Normal EXP Potion (1)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,270,'Normal EXP Potion (2)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,271,'Normal EXP Potion (3)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,272,'Normal EXP Potion (4)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,273,'Master EXP Potion (1)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,274,'Master EXP Potion (2)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,275,'Master EXP Potion (3)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,276,'Master EXP Potion (4)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,277,'Special Card',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,278,'Piece of Summoning Scroll',-1,1,1,384,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,279,'Master EXP Potion (5)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,280,'Master EXP Potion (6)',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,281,'Grow Lancer Character Card',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,282,'Mastery Box(Minor)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,283,'Mastery Box(Standard)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,284,'Mastery Box(Greater)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,285,'Ruud',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,286,'Pentagram Box',-1,1,1,256,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,287,'Mastery Reward Chest(2000)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,288,'Mastery Reward Chest(1000)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,289,'Mastery Reward Chest(500)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,290,'Elemental Powder',-1,1,1,640,0,0,-1,-1,0,0,0,0,3000,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,293,'Elemental Capsule(Normal)',-1,1,2,128,0,0,-1,-1,0,72,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,296,'Capsule(Fire)',-1,1,2,8320,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,309,'Fragment of Radiance slot (1)',-1,1,1,8320,0,0,-1,-1,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,310,'Fragment of Radiance slot (2)',-1,1,1,8320,0,0,-1,-1,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,311,'Fragment of Radiance slot (3)',-1,1,1,8320,0,0,-1,-1,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,312,'Fragment of Radiance slot (4)',-1,1,1,8320,0,0,-1,-1,0,0,0,0,1500000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,316,'Expansion Scroll of Radiance slot',-1,1,1,8320,0,0,-1,-1,0,70,0,0,6000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,317,'Talisman Element Change',-1,1,1,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,320,'Blessing of Spirit',-1,1,1,8320,0,0,-1,-1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,331,'[PC]1 hour gift box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,332,'[PC]4 hour gift box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,333,'[PC]8 hour gift box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,334,'[PC]12 hour gift box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,336,'Mastery Reward Chest(100)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,337,'Capsule(Earth)',-1,1,2,8320,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,338,'Capsule(Water)',-1,1,2,8320,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,339,'Capsule(Wind)',-1,1,2,8320,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,340,'Capsule(Darkness)',-1,1,2,8320,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,341,'Sealed Stone Shard',-1,2,2,8320,0,0,-1,-1,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,342,'Steel of Heaven',-1,1,1,8320,0,0,-1,-1,0,0,0,0,100,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,343,'Archangel\'s Hammer',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,344,'[Speed]Archangel Weapon Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,345,'Mysterious Stone',-1,1,1,8320,0,0,-1,-1,9,56,0,0,15000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,346,'Fire Symbol',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,347,'Water Symbol',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,348,'Earth Symbol',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,349,'Wind Symbol',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,350,'Darkness Symbol',-1,1,1,128,0,0,-1,-1,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,351,'Element Box',-1,1,1,128,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,352,'Ruud Box(10)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,353,'Magic Fragment',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,354,'[14Year]Prize Box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,355,'[14Year]Special Prize Box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,356,'[PC]Ruud Box',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,357,'[Speed] Helm Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,358,'[Speed] Armor Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,359,'[Speed] Pants Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,360,'[Speed] Gloves Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,361,'[Speed] Boots Box',-1,2,2,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,364,'Socket Upgrade Note',-1,1,1,9088,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,367,'Roomy Card Box(low)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,368,'Roomy Card Box(mid)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,369,'Roomy Card Box(high)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,370,'Seed',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,371,'[Bound] Bless of Light (Higher)',-1,1,1,0,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,372,'[Bound] Bless of Light (Medium)',-1,1,1,0,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,373,'[Bound] Bless of Light (Lower)',-1,1,1,0,0,0,-1,-1,7,74,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,374,'[Event] Lesser box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,375,'[Event] Intermediate box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,376,'[Event] Greater Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,377,'[Event] Advance Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,378,'Seed Capsule(Fire)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,379,'Seed Capsule(Water)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,380,'Seed Capsule(Ice)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,381,'Seed Capsule(Wind)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,382,'Seed Capsule(Lightning)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,383,'Seed Capsule(Earth)',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,384,'Sphere Rune Strengthener Capsule',-1,1,2,9088,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,385,'Box of Mystery',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,386,'Darkangel Anvil',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,389,'Holyangel Spirit',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,390,'Fragments of spirits nix',-1,1,1,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,391,'Event Gift Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,392,'Card box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,393,'Card box (10)',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,394,'Elf Conversion Order (E) to (A)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,395,'Elf Conversion Order (A) to (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,396,'Magic Conversion Order (E) to (S)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,397,'Magic Conversion Order (S) to (E)',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,398,'Attribute Talisman Box',-1,1,1,9088,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,399,'(Hero) Blood Angels Spirit',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,400,'Labyrinth Box (Lowest)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,401,'Labyrinth Box (Lesser)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,402,'Labyrinth Box (Medium)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,403,'Labyrinth Box (Advanced)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,404,'Labyrinth Box (Improved)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,405,'Labyrinth Box (Highest)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,406,'Intermediate Mastery Weapon Box',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(14,407,'Speed Server Competition Box',-1,1,1,0,0,0,-1,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,408,'[Jewel Bingo] Lower Box',-1,1,1,0,0,0,-1,0,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,409,'[Jewel Bingo] Intermediate Box',-1,1,1,0,0,0,-1,0,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,410,'[Jewel Bingo] Advanced Box',-1,1,1,0,0,0,-1,0,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,411,'[Jewel Bingo] Premium Box',-1,1,1,0,0,0,-1,0,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,412,'Intermediate Mastery Armor Box',-1,1,1,0,0,0,-1,0,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,413,'Miracle Coin',-1,1,1,0,0,0,-1,0,9,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,414,'Manche Compensation Box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,415,'Awakening Spirit',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,416,'Holyangel Anvil',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,0,0),(14,417,'Bloodangel Conversion Mark',-1,1,1,8320,0,0,-1,-1,9,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,418,'[PC] Intermediate mastery weapon',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,419,'[PC] Intermediate mastery armor',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,420,'[Bind] Stone of Mystery',-1,1,1,0,0,0,-1,-1,9,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,421,'2nd Wings Box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,422,'3rd Wings Box',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,423,'[Numeric Baseball] Lower Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,424,'[Numeric Baseball] Intermediate Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,425,'[Numeric Baseball] Greater Box',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,0),(14,426,'Mastery Armor Box (60 days)',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,427,'Mastery Armor Box (30 days)',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,428,'Mastery Armor Box (3 days)',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,429,'+11 Third Wing Box (Bind)',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,430,'Elena\'s letter',-1,1,1,640,0,0,-1,-1,0,53,0,0,3000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,431,'Dimensional Key',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,432,'[Increase] Life Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,433,'[Increase] Mana Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,434,'[Increase] Speed Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,435,'[Enhance] Attack Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,436,'[Enhance] Wizardry Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,437,'[Enhance] Defense Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,438,'[Enhance] Critical Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,439,'[Enhance] Excellent Elixir',-1,1,2,9088,0,0,-1,-1,7,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,440,'Compensation Box B',-1,1,1,0,0,0,-1,-1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,441,'Handcraft Stone Box',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,442,'Shiny Earring Box (L)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,443,'Shiny Earring Box (R)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,444,'Power Chicken Drink',-1,1,1,0,0,0,-1,-1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,445,'Box of Blessing',-1,1,1,0,0,0,-1,-1,11,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,446,'[Event] Ruud Box',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,447,'Ruud Box (20)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,448,'Ruud Box (30)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,449,'Cold Spirit',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,450,'Soul Anvil',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,451,'[Event] Ruud Box (2nd week)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,452,'Mastery Weapon Box (60 days)',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,453,'Switch Mode Scroll',-1,2,2,0,0,0,-1,-1,7,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,454,'[Speed] Earring Box (L)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,455,'Gift Box (Minor)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,456,'Gift Box (Standard)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,457,'Gift Box (Greater)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,458,'Framework of the Ancestors',-1,1,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,459,'Monster Souls',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,460,'[Level 1] Monster Soul Converter',-1,1,2,0,0,0,-1,-1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,461,'[Level 2] Monster Soul Converter',-1,1,2,0,0,0,-1,-1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,462,'[Level 3] Monster Soul Converter',-1,1,2,0,0,0,-1,-1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,463,'[Level 4] Monster Soul Converter',-1,1,2,0,0,0,-1,-1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,464,'[Level 5] Monster Soul Converter',-1,1,2,0,0,0,-1,-1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(14,465,'Guardian Capsule',-1,1,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,466,'Resurrection Piece',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,467,'Guardian Fossil',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,468,'Elite Guardian Fossil',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,469,'Guardian Elite Option Change Piece',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,470,'Guardian Elite Option Change',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,471,'Seal Armor Piece',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,472,'Scratched Sealed Bloodangel Helm',-1,2,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,473,'Scratched Sealed Bloodangel Armor',-1,2,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,474,'Scratched Sealed Bloodangel Pants',-1,2,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,475,'Scratched Sealed Bloodangel Gloves',-1,2,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,476,'Scratched Sealed Bloodangel Boots',-1,2,2,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,477,'Ghost Horse Seal',-1,1,1,8832,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,478,'Moss Treasure Chest',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,479,'Moss Treasure Chest Winning Ticket',-1,1,1,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,480,'[Level 1] Soul Converter Ruud Box',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,481,'[Level 2] Soul Converter Ruud Box',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,482,'[Level 3] Soul Converter Ruud Box',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,483,'[Level 4] Soul Converter Ruud Box',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,484,'[Level 5] Soul Converter Ruud Box',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,485,'Ruud Box (5)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,486,'Ruud Box (15)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,489,'Ruud Box (4)',-1,2,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,490,'[TEST] Mastery Armor Box',-1,1,1,768,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,491,'[TEST] Mastery Weapon Box',-1,1,1,768,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,492,'Ghost Horse Capsule',-1,1,2,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,493,'Term Wing Box',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,494,'Ancestral Spirit',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,495,'Blue Eye Anvil',-1,2,2,8320,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,496,'30 Day Mastery Weapon Box',-1,1,1,0,0,0,-1,-1,11,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(14,497,'Honorary Craftwork Frame',-1,1,2,8832,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,498,'Ice Dragon Seal',-1,1,1,8832,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,499,'Knight Conversion Order (E) to (S)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,500,'Knight Conversion Order (S) to (E)',-1,2,2,8320,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(15,0,'Scroll of Poison',-1,1,2,9088,0,0,-1,-1,10,36,0,0,17000,0,30,0,0,0,0,0,0,0,0,0,0,140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,1,'Scroll of Meteorite',-1,1,2,9088,0,0,-1,-1,10,36,0,0,11000,0,21,0,0,0,0,0,0,0,0,0,0,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,1,0,0,-1,0,0,0,0,0),(15,2,'Scroll of Lighting',-1,1,2,9088,0,0,-1,-1,10,36,0,0,3000,0,13,0,0,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,3,'Scroll of Fire Ball',-1,1,2,9088,0,0,-1,-1,10,36,0,0,300,0,5,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,1,0,0,-1,0,0,0,0,0),(15,4,'Scroll of Flame',-1,1,2,9088,0,0,-1,-1,10,36,0,0,21000,0,35,0,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,5,'Scroll of Teleport',-1,1,2,9088,0,0,-1,-1,10,36,0,0,5000,0,17,0,0,0,0,0,0,0,0,0,0,88,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,6,'Scroll of Ice',-1,1,2,9088,0,0,-1,-1,10,36,0,0,14000,0,25,0,0,0,0,0,0,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,7,'Scroll of Twister',-1,1,2,9088,0,0,-1,-1,10,36,0,0,25000,0,40,0,0,0,0,0,0,0,0,0,0,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,8,'Scroll of Evil Spirit',-1,1,2,9088,0,0,-1,-1,10,36,0,0,35000,0,50,0,0,0,0,0,0,0,0,0,0,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,9,'Scroll of Hellfire',-1,1,2,9088,0,0,-1,-1,10,36,0,0,60000,0,60,0,0,0,0,0,0,0,0,0,0,260,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,10,'Scroll of Power Wave',-1,1,2,9088,0,0,-1,-1,10,36,0,0,1150,0,9,0,0,0,0,0,0,0,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,11,'Scroll of Aqua Beam',-1,1,2,9088,0,0,-1,-1,10,36,0,0,100000,0,74,0,0,0,0,0,0,0,0,0,0,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,12,'Scroll of Cometfall',-1,1,2,9088,0,0,-1,-1,10,36,0,0,175000,0,80,0,0,0,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,13,'Scroll of Inferno',-1,1,2,9088,0,0,-1,-1,10,36,0,0,265000,0,88,0,0,0,0,0,0,0,0,0,0,724,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,14,'Scroll of Mass Teleport',-1,1,2,9088,0,0,-1,-1,10,36,0,0,245000,0,83,0,0,0,0,0,0,0,0,0,0,644,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,15,'Scroll of Mana Shield',-1,1,2,9088,0,0,-1,-1,10,36,0,0,135000,0,77,0,0,0,0,0,0,0,0,0,0,408,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,16,'Scroll of Decay',-1,1,2,9088,0,0,-1,-1,10,36,0,0,345000,0,96,0,0,0,0,0,0,0,0,0,0,953,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,17,'Scroll of Ice Storm',-1,1,2,9088,0,0,-1,-1,10,36,0,0,315000,0,93,0,0,0,0,0,0,0,0,0,0,849,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(15,18,'Scroll of Nova',-1,1,2,9088,0,0,-1,-1,10,36,0,0,410000,0,100,0,0,0,0,0,0,0,0,0,0,1052,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,19,'Chain Lightning Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,245,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,20,'Drain Life Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,100000,0,35,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,21,'Lightning Shock Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,315000,0,93,0,0,0,0,0,0,0,0,0,0,823,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,22,'Damage Reflection Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,245000,0,80,0,0,0,0,0,0,0,0,0,0,375,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,23,'Berserker Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,265000,0,83,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,24,'Sleep Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,135000,0,40,0,0,0,0,0,0,0,0,0,0,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,-1,0,0,0,0,0),(15,26,'Weakness Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,410000,0,93,0,0,0,0,0,0,0,0,0,0,663,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(15,27,'Innovation Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,450000,0,111,0,0,0,0,0,0,0,0,0,0,912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,-1,0,0,0,0,0),(15,28,'Scroll of Wizardry Enhance',-1,1,2,9088,0,0,-1,-1,10,36,0,0,425000,0,100,0,0,0,0,0,0,220,0,0,0,1058,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(15,29,'Scroll of Gigantic Storm',-1,1,2,9088,0,0,-1,-1,10,36,0,0,380000,0,100,0,0,0,0,0,0,220,0,0,0,1058,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0),(15,30,'Chain Drive Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,100000,0,70,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,31,'Dark Side Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,80,0,0,0,0,0,0,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,32,'Dragon Roar Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,100000,0,70,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,33,'Dragon Slasher Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,265000,0,90,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,34,'Ignore Defense Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,80,0,0,0,0,0,0,120,0,0,0,404,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,35,'Increase Health Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,35000,0,50,0,0,0,0,0,0,80,0,0,0,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,36,'Increase Block Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,25000,0,40,0,0,0,0,0,0,50,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,0),(15,37,'Magic Arrow Book',-1,1,2,9088,0,0,-1,-1,10,36,0,0,17000,0,50,0,0,0,0,0,0,0,0,0,0,142,0,50,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,0,0,0,0,0),(15,38,'Plasma Ball Book',-1,1,2,9088,0,0,-1,-1,10,36,0,0,120000,0,80,0,0,0,0,0,0,0,0,0,0,600,0,80,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(15,39,'Lightning Storm Book',-1,1,2,9088,0,0,-1,-1,10,36,0,0,900000,0,100,0,0,0,0,0,0,0,0,0,0,1180,0,100,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(15,40,'Burst Book',-1,1,2,9088,0,0,-1,-1,10,36,0,0,35000,0,90,0,0,0,0,0,0,220,0,0,0,0,0,90,135,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,-1,0,0,0,0,0),(15,41,'Haste Book',-1,1,2,9088,0,0,-1,-1,10,36,0,0,40000,0,180,0,0,0,0,0,0,400,0,0,0,0,0,180,270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,-1,0,0,0,0,0),(15,42,'Explosion Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,300,0,75,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(15,43,'Requiem Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,416,0,75,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(15,44,'Pollution Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,542,0,75,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(15,45,'Deathside Parchment',-1,1,2,8320,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,930,0,75,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(15,46,'Darkness Parchment',-1,1,2,9088,0,0,-1,-1,10,37,0,0,175000,0,75,0,0,0,0,0,0,0,0,0,0,300,0,75,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(16,0,'Pinocchio',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,1,'Pinocchio (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,2,'Geppeto',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,3,'Geppeto (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,4,'Blue Fairy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,5,'Blue Fairy (Evolved))',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,6,'Father Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,7,'Father Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,8,'Baby Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,9,'Baby Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,10,'Mother Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,11,'Mother Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,12,'Indio',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,13,'Indio (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,14,'Treasure Chest',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,15,'Treasure Chest (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,16,'Treasure Hunter',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,17,'Treasure Hunter (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,18,'Tree Fairy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,19,'Tree Fairy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,20,'Grassy Elf',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,21,'Grasshopper Fairy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,22,'Reef Master',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,23,'Reef Sword (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,24,'Samba Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,25,'Samba Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,26,'Rio',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,27,'Rio (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,28,'Bateria',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,29,'Bateria (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,30,'Reporter',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,31,'Dragon Articles',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,32,'Tiger',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,33,'Tiger (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,34,'Libra',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,35,'Libra (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,36,'Scorpio',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,37,'Scorpio (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,38,'Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,39,'Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,40,'Kaolin',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,41,'Chicken',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,42,'Chicken (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,43,'Chick',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,44,'Chick (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,45,'Angry Chicken',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,46,'Angry Chicken (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,47,'Lion',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,48,'Lion (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,49,'Knight Instructor',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,50,'Knight Instructor (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,51,'Blackbeard',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,52,'Blackbeard (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,53,'Toy Robot',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,54,'Toy Robot (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,55,'Adventure cat',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,56,'Adventure cat (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,57,'Dike',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,58,'Dike (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,59,'Rainy Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,60,'Rainy Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,61,'Scarecrow',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,62,'Scarecrow (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,63,'Zombie Articles',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,64,'Zombie Articles (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,65,'Mr. Fishing King',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,66,'Mr. Fishing King (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,67,'Snow Fairy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,68,'Snow Fairy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,69,'Prince',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,70,'Rex Millon',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,71,'Dodo Puddle',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,72,'Dodo Puddle (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,73,'Shinan Beagle',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,74,'Shinan Beagle (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,75,'Angry Bulldog',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,76,'Angry Bulldog (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,77,'Skier Tiger',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,78,'Skier Tiger (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,79,'Figure Queen',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,80,'Figure Queen (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,81,'Hockey Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,82,'Hockey Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,83,'Pilot',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,84,'Pilot (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,85,'Super Panda',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,86,'Super Panda (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,87,'Belly Dancer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,88,'Belly Dancer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,89,'The Best Captain',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,90,'The Best Captain (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,91,'Goalkeeper',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,92,'Goalkeeper (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,93,'Referee',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,94,'Referee (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,95,'Hip-Hop Dino',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,96,'Hip-Hop Dino (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,97,'Beach Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,98,'Beach Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,99,'Bread Master',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,100,'Bread Master (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,101,'Hangul King',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,102,'Hangul King (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,103,'Apple Magician',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,104,'Apple Magician (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,105,'Flying Bread',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,106,'Flying Bread (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,107,'The Great Fairy Kara',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,108,'Great Wizard Eithamu',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,109,'Bell',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,110,'Rapa',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,111,'Rapa (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,112,'Nix',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,113,'Nix (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,114,'Selupan',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,115,'Selupan (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,116,'Medusa',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,117,'Medusa (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,118,'Balrog',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,119,'Balrog (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,120,'Hell Maine',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,121,'Hell Maine (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,122,'Kundun',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,123,'Kundun (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,124,'Hydra',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,125,'Hydra (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,126,'Death Beam Knight',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,127,'Death Beam Knight (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,128,'Nightmare',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,129,'Nightmare (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,130,'Dark Phoenix',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,131,'Dark Phoenix (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,132,'Kairuku',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,133,'Kairuku (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,134,'Legendary Wizard',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,135,'Guardian Elf',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,136,'Desmodus',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,137,'Desmodus (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,138,'Fairy Queen Lunedil',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,139,'Marshal Gaion Karein',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,140,'Mouse',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,141,'Mouse (Evolved)',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,142,'Leah',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,143,'Leah (Evolved)',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,144,'Shadow Phantom',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,145,'Shadow Phantom (Evolved)',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,146,'Warehouse Guardian',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,147,'Warehouse Guardian (Evolved)',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,148,'Elf Lala',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,149,'Elf Lala (Evolved)',-1,1,1,512,0,0,-1,0,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,0),(16,211,'Stone of Evolution',-1,1,1,512,0,0,-1,-1,12,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,212,'Loki',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,213,'Loki (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,214,'Tony',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,215,'Tony (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,216,'Nymph',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,217,'Nymph (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,218,'Safi',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,219,'Safi (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,223,'William',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,224,'William (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,225,'Paul',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,226,'Paul (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,227,'Kiron',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,228,'Kiron (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,229,'Wooparoo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,230,'Wooparoo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,231,'Tibeton',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,232,'Tibeton (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,233,'Witch',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,234,'Witch (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,235,'Skull',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,236,'Skull (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,237,'Pumpy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,238,'Pumpy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,239,'Energy Converter',-1,1,1,512,0,0,-1,-1,12,67,0,0,900000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,240,'Power Stone',-1,1,1,512,0,0,-1,-1,12,67,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,241,'Sabat',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,242,'Sabat (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,243,'Lycan',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,244,'Lycan (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,245,'Toby',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,246,'Toby (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,252,'Siren ',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,253,'Siren (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,254,'Behemoth',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,255,'Behemoth (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,256,'Rogue',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,257,'Rogue (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,258,'Mino',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,259,'Mino (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,260,'Hound',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,261,'Hound (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,262,'Tribe',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,263,'Tribe (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,264,'Bogeon',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,265,'Bogeon (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,266,'Cyclops',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,267,'Cyclops (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,270,'Bone',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,271,'Bone (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,272,'Hawk',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,273,'Hawk (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,274,'Mute',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,275,'Mute (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,278,'Mantis',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,279,'Mantis (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,280,'Scolpi',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,281,'Scolpi (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,282,'Chafer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,283,'Chafer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,284,'Shogun',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,285,'Shogun (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,286,'Ninja',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,287,'Ninja (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,288,'Samurai',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,289,'Samurai (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,1),(16,290,'Cosgirl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,291,'Cosgirl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,292,'Cheerleader',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,293,'Cheerleader (Evolved',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,294,'Sporty Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,295,'Sporty Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,296,'Bael',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,297,'Bael (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,298,'Gapp',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,299,'Gapp (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,300,'Tapp',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,301,'Tapp (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,302,'Frozen',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,303,'Frozen (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,304,'Lure',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,305,'Lure (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,306,'Persil',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,1,255,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,307,'Persil (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,308,'Lucky Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,309,'Lucky Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,310,'Song Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,311,'Song Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,312,'Stone Mortar Rabbit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,313,'Stone Mortar Rabbit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,314,'Polaris',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,315,'Polaris (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,316,'Rainer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,317,'Rainer (Evolved) ',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,318,'Alcamo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,319,'Alcamo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,320,'Glakus',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,321,'Glakus (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,322,'Kenturion',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,323,'Kenturion (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,324,'Rocka',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,325,'Rocka (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,326,'Rippen',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,327,'Rippen (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,328,'Pawn',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,329,'Pawn (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,330,'Griffs',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,331,'Griffs (Evolved)',-1,1,1,512,0,0,-1,-1,12,64,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,332,'Polar Bear',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,333,'Polar Bear (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,334,'Present',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,335,'Present (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,336,'Rocking Horse',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,337,'Rocking Horse (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,338,'Alice',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,339,'Alice (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,340,'Leicester',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,341,'Leicester (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,342,'Merino',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,343,'Merino (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,344,'Splinter',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,345,'Splinter (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,346,'Mutation',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,347,'Mutation (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,348,'Fighter',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,349,'Fighter (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,409,'Heywood',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,410,'Heywood (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,411,'Branch',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,412,'Branch (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,413,'Hook',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,414,'Hook (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,415,'Canifle',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,416,'Canifle (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,417,'Mandora',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,418,'Mandora (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,419,'Treat',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,420,'Treat (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,421,'Rose Spirit',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,422,'Rose Spirit (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,423,'Rape Flower',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,424,'Rape Flower (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,425,'Cherry Blossom',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,426,'Cherry Blossom (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,427,'Gigante',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,428,'Gigante (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,429,'Mommoth',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,430,'Mommoth (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,431,'Walker',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,432,'Walker (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,433,'Surfing Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,434,'Surfing Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,435,'Tube Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,436,'Tube Girls (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,437,'Cooling Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,438,'Cooling Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,439,'Commander',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,440,'Commander (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,441,'Lance Soldier',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,442,'Lance Soldier (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,443,'Bow Soldier',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,444,'Bow Soldier (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,445,'Hammer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,446,'Hammer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,447,'Ripieo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,448,'Ripieo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,449,'Xer',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,450,'Xer (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,451,'Pumpkin Girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,452,'Pumpkin Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,453,'Ghost',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,454,'Ghost (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,455,'Mummy Boy',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,456,'Mummy Boy (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,457,'Chrysanthemum',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,458,'Chrysanthemum (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,459,'Maple',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,460,'Maple (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,461,'Ginkgo',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,462,'Ginkgo (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,463,'Ghost (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,464,'Miraboi (evolution)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,477,'Orris',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,480,'Toy soldier',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,481,'Toy soldier (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,482,'Christmas tree',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,483,'Christmas tree (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,484,'Snow Man',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,485,'Snow Man (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,486,'Muscle Monkey',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,487,'Muscle Monkey (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,488,'Monkey DJ',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,489,'Monkey DJ (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,490,'Space Monkey',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,491,'Space Monkey (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,492,'Little Cupid',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,493,'Little Cupid (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,494,'Chocolate Cookie',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,495,'Chocolate Cookie (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,496,'Heart girl',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,497,'Heart girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,498,'Candy Girl ',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,499,'Candy Girl (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,500,'Lollipop Mama',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,501,'Lollipop Mama (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,502,'Sweet Muscle Man',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(16,503,'Sweet Muscle Man (Evolved)',-1,1,1,512,0,0,-1,-1,12,63,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,-1,0,0,0,2,0),(19,0,'Pandora Box',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,1,'Red Card',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,2,'Blue Card',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,3,'Premium Box',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,4,'1st Lucky Armor Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,5,'1st Lucky Pants Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,6,'1st Lucky Helm Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,7,'1st Lucky Gloves Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,8,'1st Lucky Boots Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,9,'2nd Lucky Armor Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,10,'2nd Lucky Pants Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,11,'2nd Lucky Helm Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,12,'2nd Lucky Gloves Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,13,'2nd Lucky Boots Ticket (Level 0)',-1,1,1,0,0,0,-1,-1,0,54,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(19,14,'Red Card (Elemental)',-1,1,1,0,0,0,-1,-1,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0),(20,39,'Jade Necklace',9,1,1,8944543,0,0,-1,0,2,29,2,0,0,0,830,60,0,564,10000,10000,2,830,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(20,40,'Lapis Lazuli Necklace',9,1,1,8944543,0,0,-1,0,2,30,2,0,0,0,830,60,0,564,10000,10000,2,830,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(20,41,'Battle Jade Necklace',9,1,1,8944543,0,0,-1,0,2,29,2,0,0,0,830,60,0,564,10000,10000,2,830,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(20,42,'Battle Lapis Lazuli Necklace',9,1,1,8944543,0,0,-1,0,2,30,2,0,0,0,830,60,0,564,10000,10000,2,830,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0);
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
  `level` tinyint(3) unsigned NOT NULL,
  `skin` smallint(5) unsigned NOT NULL,
  `special` tinyint(4) NOT NULL,
  `disabled` tinyint(4) NOT NULL,
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
  `value_1` int(11) NOT NULL,
  `value_2` int(11) NOT NULL,
  `value_3` int(11) NOT NULL,
  `value_4` int(11) NOT NULL,
  `value_5` int(11) NOT NULL,
  `value_6` int(11) NOT NULL,
  `value_7` int(11) NOT NULL,
  `value_8` int(11) NOT NULL,
  `value_9` int(11) NOT NULL,
  `value_10` int(11) NOT NULL,
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
  `rate` int(11) NOT NULL,
  `value_1` int(11) NOT NULL,
  `value_2` int(11) NOT NULL,
  `value_3` int(11) NOT NULL,
  `value_4` int(11) NOT NULL,
  `value_5` int(11) NOT NULL,
  `value_6` int(11) NOT NULL,
  `value_7` int(11) NOT NULL,
  `value_8` int(11) NOT NULL,
  `value_9` int(11) NOT NULL,
  `value_10` int(11) NOT NULL,
  `value_11` int(11) NOT NULL,
  `value_12` int(11) NOT NULL,
  `value_13` int(11) NOT NULL,
  `value_14` int(11) NOT NULL,
  `value_15` int(11) NOT NULL,
  `value_16` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_socket_option`
--

LOCK TABLES `item_wing_socket_option` WRITE;
/*!40000 ALTER TABLE `item_wing_socket_option` DISABLE KEYS */;
INSERT INTO `item_wing_socket_option` VALUES (2,0,10000,25,35,45,55,65,75,85,96,107,118,130,142,154,167,180,193,'Elemental Defense Increase'),(3,0,8000,20,23,27,32,38,45,53,62,72,83,95,108,122,137,153,170,'Elemental Damage Increase'),(3,1,8000,5,10,15,20,26,32,38,45,52,59,67,75,84,93,104,125,'Elemental Attack Success Rate Increase'),(3,2,8000,5,10,15,20,26,32,38,45,52,59,67,75,84,93,104,125,'Elemental Defense Success Rate Increase'),(3,3,5000,30,34,39,45,52,60,69,79,90,102,115,129,144,160,177,195,'Elemental Damage (II) Increase'),(3,4,8000,4,6,8,10,13,16,19,23,27,31,36,41,46,52,58,64,'Elemental Defense (II) Increase'),(3,5,5000,10,15,25,35,46,57,68,80,92,104,117,130,144,158,174,200,'Elemental Attack Success Rate (II) Increase'),(3,6,5000,10,15,25,35,46,57,68,80,92,104,117,130,144,158,174,200,'Elemental Defense Success Rate (II) Increase');
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
  `rate` int(11) NOT NULL,
  `item_type_1` tinyint(3) unsigned NOT NULL,
  `item_index_1` smallint(5) unsigned NOT NULL,
  `item_count_1` int(11) NOT NULL,
  `item_type_2` tinyint(3) unsigned NOT NULL,
  `item_index_2` smallint(5) unsigned NOT NULL,
  `item_count_2` int(11) NOT NULL,
  `item_type_3` tinyint(3) unsigned NOT NULL,
  `item_index_3` smallint(5) unsigned NOT NULL,
  `item_count_3` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
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
  `damage_add` int(11) NOT NULL,
  `damage_add_level` int(11) NOT NULL,
  `absorb_add` int(11) NOT NULL,
  `absorb_add_level` int(11) NOT NULL,
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
-- Table structure for table `mini_map`
--

DROP TABLE IF EXISTS `mini_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mini_map` (
  `world` smallint(5) unsigned NOT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mini_map`
--

LOCK TABLES `mini_map` WRITE;
/*!40000 ALTER TABLE `mini_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mini_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining`
--

DROP TABLE IF EXISTS `mining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mining` (
  `index` smallint(5) unsigned NOT NULL,
  `stage` tinyint(3) unsigned NOT NULL,
  `value` tinyint(3) unsigned NOT NULL,
  `item_rate` smallint(5) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  `item_count` smallint(5) unsigned NOT NULL,
  `bonus_item_rate` smallint(5) unsigned NOT NULL,
  `bonus_item_index` smallint(5) unsigned NOT NULL,
  `bonus_item_count` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining`
--

LOCK TABLES `mining` WRITE;
/*!40000 ALTER TABLE `mining` DISABLE KEYS */;
/*!40000 ALTER TABLE `mining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_non_pk_time`
--

DROP TABLE IF EXISTS `misc_non_pk_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misc_non_pk_time` (
  `start_hour` tinyint(3) unsigned NOT NULL,
  `start_minute` tinyint(3) unsigned NOT NULL,
  `end_hour` tinyint(3) unsigned NOT NULL,
  `end_minute` tinyint(3) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc_non_pk_time`
--

LOCK TABLES `misc_non_pk_time` WRITE;
/*!40000 ALTER TABLE `misc_non_pk_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `misc_non_pk_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_disabled`
--

DROP TABLE IF EXISTS `mix_disabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_disabled` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_disabled`
--

LOCK TABLES `mix_disabled` WRITE;
/*!40000 ALTER TABLE `mix_disabled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_disabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_guardian`
--

DROP TABLE IF EXISTS `mix_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_guardian` (
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `main_item_type` tinyint(3) unsigned NOT NULL,
  `main_item_index` smallint(5) unsigned NOT NULL,
  `main_item_level` tinyint(3) unsigned NOT NULL,
  `main_item_durability` tinyint(3) unsigned NOT NULL,
  `material_item_type_1` tinyint(3) unsigned NOT NULL,
  `material_item_index_1` smallint(5) unsigned NOT NULL,
  `material_aomunt_1` int(11) NOT NULL,
  `material_item_type_2` tinyint(3) unsigned NOT NULL,
  `material_item_index_2` smallint(5) unsigned NOT NULL,
  `material_aomunt_2` int(11) NOT NULL,
  `material_item_type_3` tinyint(3) unsigned NOT NULL,
  `material_item_index_3` smallint(5) unsigned NOT NULL,
  `material_aomunt_3` int(11) NOT NULL,
  `material_item_type_4` tinyint(3) unsigned NOT NULL,
  `material_item_index_4` smallint(5) unsigned NOT NULL,
  `material_aomunt_4` int(11) NOT NULL,
  `material_item_type_5` tinyint(3) unsigned NOT NULL,
  `material_item_index_5` smallint(5) unsigned NOT NULL,
  `material_aomunt_5` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `success_rate` int(11) NOT NULL,
  `result_item_type` tinyint(3) unsigned NOT NULL,
  `result_item_index` smallint(5) unsigned NOT NULL,
  `result_level` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_guardian`
--

LOCK TABLES `mix_guardian` WRITE;
/*!40000 ALTER TABLE `mix_guardian` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_jewel_template`
--

DROP TABLE IF EXISTS `mix_jewel_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_jewel_template` (
  `id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `mix_money` int(10) unsigned NOT NULL,
  `unmix_money` int(10) unsigned NOT NULL,
  `pack_type` tinyint(3) unsigned NOT NULL,
  `pack_index` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_jewel_template`
--

LOCK TABLES `mix_jewel_template` WRITE;
/*!40000 ALTER TABLE `mix_jewel_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_jewel_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_lucky_template`
--

DROP TABLE IF EXISTS `mix_lucky_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_lucky_template` (
  `ticket_type` tinyint(3) unsigned NOT NULL,
  `ticket_index` smallint(5) unsigned NOT NULL,
  `ticket_level` tinyint(3) unsigned NOT NULL,
  `item_type` tinyint(3) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ticket_type`,`ticket_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_lucky_template`
--

LOCK TABLES `mix_lucky_template` WRITE;
/*!40000 ALTER TABLE `mix_lucky_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_lucky_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_spellstone`
--

DROP TABLE IF EXISTS `mix_spellstone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_spellstone` (
  `type` tinyint(3) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  `rate_1` smallint(5) unsigned NOT NULL,
  `rate_2` smallint(5) unsigned NOT NULL,
  `rate_3` smallint(5) unsigned NOT NULL,
  `rate_4` smallint(5) unsigned NOT NULL,
  `rate_5` smallint(5) unsigned NOT NULL,
  `rate_6` smallint(5) unsigned NOT NULL,
  `rate_7` smallint(5) unsigned NOT NULL,
  `rate_8` smallint(5) unsigned NOT NULL,
  `rate_9` smallint(5) unsigned NOT NULL,
  `rate_10` smallint(5) unsigned NOT NULL,
  `rate_11` smallint(5) unsigned NOT NULL,
  `rate_12` smallint(5) unsigned NOT NULL,
  `rate_13` smallint(5) unsigned NOT NULL,
  `rate_14` smallint(5) unsigned NOT NULL,
  `rate_15` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_spellstone`
--

LOCK TABLES `mix_spellstone` WRITE;
/*!40000 ALTER TABLE `mix_spellstone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_spellstone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster` (
  `server` smallint(5) unsigned NOT NULL,
  `guid` smallint(5) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `direction` tinyint(4) NOT NULL,
  `spawn_delay` int(10) unsigned NOT NULL,
  `spawn_distance` tinyint(3) unsigned NOT NULL,
  `respawn_time_min` int(10) unsigned NOT NULL,
  `respawn_time_max` int(10) unsigned NOT NULL,
  `respawn_id` int(10) unsigned NOT NULL,
  `move_distance` tinyint(3) unsigned NOT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned NOT NULL,
  `disabled` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_automata`
--

DROP TABLE IF EXISTS `monster_ai_automata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_automata` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` tinyint(3) unsigned NOT NULL,
  `current_state` tinyint(3) unsigned NOT NULL,
  `next_state` tinyint(3) unsigned NOT NULL,
  `transaction_type` int(11) NOT NULL,
  `transaction_rate` tinyint(3) unsigned NOT NULL,
  `transaction_value_type` int(11) NOT NULL,
  `transition_value` int(11) NOT NULL,
  `delay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_automata`
--

LOCK TABLES `monster_ai_automata` WRITE;
/*!40000 ALTER TABLE `monster_ai_automata` DISABLE KEYS */;
INSERT INTO `monster_ai_automata` VALUES (1,'General -> Go',0,0,1,0,100,0,0,1000),(1,'General -> Go',1,0,1,2,100,0,0,1000),(1,'General -> Attack',2,0,2,1,100,0,0,1000),(1,'Go -> Attack',0,1,2,1,100,0,0,1000),(1,'Go -> Go',1,1,1,0,100,0,0,1000),(1,'Go -> Go',2,1,1,2,100,0,0,1000),(1,'Attack -> Go',0,2,1,0,100,0,0,1000),(1,'Attack -> Avoid',1,2,4,4,100,0,10000,1000),(1,'Attack -> Attack',2,2,2,1,100,0,0,1000),(1,'Attack -> Go',3,2,1,2,100,0,0,1000),(1,'Attack -> Attack',4,2,2,1,100,0,0,1000),(1,'Avoid -> General',0,4,0,0,100,0,0,1000),(1,'Avoid -> Attack',1,4,2,7,70,0,3000,1000),(1,'Avoid -> Go',2,4,1,2,50,0,0,1000),(1,'Avoid -> Attack',3,4,2,1,50,0,0,1000),(1,'Avoid -> Avoid',4,4,4,1,80,0,0,1000),(1,'Avoid -> Avoid',5,4,4,4,100,0,2000,1000),(1,'Avoid -> Avoid',6,4,4,4,80,0,10000,1000),(1,'Avoid -> General',7,4,0,1,100,0,0,1000),(1,'Avoid -> General',8,4,0,2,100,0,0,1000),(2,'General -> Go',0,0,1,0,50,0,0,1000),(2,'General -> Treatment',1,0,3,0,10,0,0,1000),(2,'General -> Summon',2,0,6,0,100,0,0,1000),(2,'General -> Go',3,0,1,2,80,0,0,1000),(2,'General -> Summon',4,0,6,2,100,0,0,1000),(2,'General -> Treatment',5,0,3,1,10,0,0,1000),(2,'General -> Go',6,0,1,1,100,0,0,1000),(2,'Go -> Treatment',0,1,3,1,20,0,0,1000),(2,'Go -> Attack',1,1,2,1,30,0,0,1000),(2,'Go -> Go',2,1,1,0,100,0,0,1000),(2,'Go -> Summon',3,1,6,0,20,0,0,1000),(2,'Go -> Go',4,1,1,0,100,0,0,1000),(2,'Go -> Summon',5,1,6,2,100,0,0,1000),(2,'Go -> Go',6,1,1,2,100,0,0,1000),(2,'Attack -> Go',0,2,1,0,100,0,0,1000),(2,'Attack -> Treatment',1,2,3,4,100,0,10000,1000),(2,'Attack -> Go',2,2,1,2,100,0,0,1000),(2,'Attack -> Attack',3,2,2,1,50,0,0,1000),(2,'Attack -> General',4,2,0,1,100,0,0,1000),(2,'Treatment -> General',0,3,0,0,100,0,0,1000),(2,'Treatment -> General',1,3,0,2,100,0,0,1000),(2,'Treatment -> General',2,3,0,1,100,0,0,1000),(2,'Summon -> General',0,6,0,0,100,0,0,1000),(2,'Summon -> General',1,6,0,2,100,0,0,1000),(2,'Summon -> General',2,6,0,1,100,0,0,1000),(3,'General -> Attack',0,0,2,0,100,0,0,1000),(3,'General -> Attack',1,0,2,2,100,0,0,1000),(3,'General -> Attack',2,0,2,1,100,0,0,1000),(3,'Attack -> General',0,2,0,0,100,0,0,1000),(3,'Attack -> General',1,2,0,2,100,0,0,1000),(3,'Attack -> General',2,2,0,1,100,0,0,1000),(4,'General -> Go',0,0,1,0,100,0,0,1000),(4,'General -> Go',1,0,1,2,100,0,0,1000),(4,'General -> Attack',2,0,2,1,100,0,0,1000),(4,'Go -> Go',0,1,1,0,100,0,0,1000),(4,'Go -> Attack',1,1,2,1,50,0,0,1000),(4,'Go -> Go',2,1,1,2,100,0,0,1000),(4,'Attack -> Go',0,2,1,0,100,0,0,1000),(4,'Attack -> Go',1,2,1,2,100,0,0,1000),(4,'Attack -> Attack',2,2,2,1,30,0,0,1000),(4,'Attack -> General',3,2,0,1,100,0,0,1000),(4,'Invisible -> General',0,6,0,0,100,0,0,1000),(4,'Invisible -> General',1,6,0,1,100,0,0,1000),(4,'Invisible -> General',2,6,0,2,100,0,0,1000),(5,'General -> Go',0,0,1,0,100,0,0,1000),(5,'General -> Attack',1,0,2,1,100,0,0,1000),(5,'General -> Go',2,0,1,2,100,0,0,1000),(5,'Go -> Go',0,1,1,0,100,0,0,1000),(5,'Go -> Attack',1,1,2,1,80,0,0,1000),(5,'Go -> Go',2,1,1,2,100,0,0,1000),(5,'Attack -> Go',0,2,1,0,100,0,0,1000),(5,'Attack -> Attack',1,2,2,1,80,0,0,1000),(5,'Attack -> Go',2,2,1,2,100,0,0,1000),(5,'Attack -> General',3,2,0,1,100,0,0,1000),(6,'General -> Go',0,0,1,0,100,0,0,1000),(6,'General -> Attack',1,0,2,1,100,0,0,1000),(6,'General -> Go',2,0,1,2,100,0,0,1000),(6,'Go -> Go',0,1,1,0,100,0,0,1000),(6,'Go -> Attack',1,1,2,1,100,0,0,1000),(6,'Go -> Go',2,1,1,2,100,0,0,1000),(6,'Attack -> Go',0,2,1,0,100,0,0,1000),(6,'Attack -> Attack',1,2,2,7,50,0,3000,1000),(6,'Attack -> Attack',2,2,2,1,100,0,0,1000),(6,'Attack -> Go',3,2,1,2,100,0,0,1000),(6,'Attack -> Avoid',4,2,4,4,100,0,10000,1000),(6,'Avoid -> General',0,4,0,0,100,0,0,1000),(6,'Avoid -> Attack',1,4,2,7,70,0,1000,1000),(6,'Avoid -> Go',2,4,1,2,50,0,0,1000),(6,'Avoid -> Attack',3,4,2,1,50,0,0,1000),(6,'Avoid -> Avoid',4,4,4,1,80,0,0,1000),(6,'Avoid -> Avoid',5,4,4,4,100,0,2000,1000),(6,'Avoid -> General',6,4,0,1,100,0,0,1000),(6,'Avoid -> General',7,4,0,2,100,0,0,1000),(7,'General -> Invisible',0,0,6,0,100,0,0,1000),(7,'General -> Invisible',1,0,6,1,100,0,0,1000),(7,'General -> Invisible',2,0,6,2,100,0,0,1000),(7,'Invisible -> Invisible',0,6,6,0,100,0,0,1000),(7,'Invisible -> Invisible',1,6,6,1,100,0,0,1000),(7,'Invisible -> Invisible',2,6,6,2,100,0,0,1000),(8,'General -> Go',0,0,1,0,100,0,0,1000),(8,'General -> Go',1,0,1,2,100,0,0,1000),(8,'General -> Summon',2,0,6,5,100,0,80,1000),(8,'General -> Attack',3,0,2,1,100,0,0,1500),(8,'Go -> Go',0,1,1,0,100,0,0,1000),(8,'Go -> Summon',1,1,6,5,100,0,80,1000),(8,'Go -> Attack',2,1,2,1,100,0,0,1500),(8,'Go -> Go',3,1,1,2,100,0,0,1000),(8,'Attack -> General',0,2,0,0,100,0,0,1000),(8,'Attack -> General',1,2,0,2,100,0,0,1000),(8,'Attack -> Summon',2,2,6,5,100,0,80,1000),(8,'Attack -> Attack',3,2,2,1,100,0,0,1500),(8,'Summon -> Invisible',0,6,5,6,100,0,0,1000),(8,'Invisible -> Warp',0,5,4,6,100,0,0,1000),(8,'Warp -> AI',0,4,7,6,100,0,0,1000),(8,'AI -> Go',0,7,1,0,100,0,0,1000),(8,'AI -> Go',1,7,1,2,100,0,0,1000),(8,'AI -> Go',2,7,1,1,100,0,0,1000),(9,'General -> Go',0,0,1,0,100,0,0,1000),(9,'General -> Go',1,0,1,2,100,0,0,1000),(9,'General -> Attack',2,0,2,1,100,0,0,1500),(9,'Go -> Go',0,1,1,0,100,0,0,1000),(9,'Go -> Attack',1,1,2,1,100,0,0,1500),(9,'Go -> Go',2,1,1,2,100,0,0,1000),(9,'Attack -> General',0,2,0,0,100,0,0,1000),(9,'Attack -> General',1,2,0,2,100,0,0,1000),(9,'Attack -> Summon',2,2,6,5,100,0,50,1000),(9,'Attack -> Attack',3,2,2,1,100,0,0,1500),(9,'Summon -> Invisible',0,6,5,6,100,0,0,1000),(9,'Invisible -> Warp',0,5,4,6,100,0,0,1000),(9,'Warp -> AI',0,4,7,6,100,0,0,1000),(9,'AI -> Go',0,7,1,0,100,0,0,1000),(9,'AI -> Go',1,7,1,2,100,0,0,1000),(9,'AI -> Go',2,7,1,1,100,0,0,1000),(10,'General -> General',0,0,0,0,100,0,0,1000),(10,'General -> General',1,0,0,2,100,0,0,1000),(10,'General -> General',2,0,0,1,100,0,0,1000),(11,'General -> Go',0,0,1,0,100,0,0,1000),(11,'General -> Go',1,0,1,2,100,0,0,1000),(11,'General -> Attack',2,0,2,1,100,0,0,1500),(11,'Go -> Go',0,1,1,0,100,0,0,1000),(11,'Go -> Attack',1,1,2,1,100,0,0,1500),(11,'Go -> Go',2,1,1,2,100,0,0,1000),(11,'Attack -> General',0,2,0,0,100,0,0,1000),(11,'Attack -> General',1,2,0,2,100,0,0,1000),(11,'Attack -> Attack',2,2,2,1,100,0,0,1500),(11,'AI -> Go',0,7,1,0,100,0,0,1000),(11,'AI -> Go',1,7,1,2,100,0,0,1000),(11,'AI -> Go',2,7,1,1,100,0,0,1000),(12,'General -> Go',0,0,1,0,100,0,0,1000),(12,'General -> Go',1,0,1,2,100,0,0,1000),(12,'General -> Attack',2,0,2,1,100,0,0,1500),(12,'Go -> Go',0,1,1,0,100,0,0,1000),(12,'Go -> Attack',1,1,2,1,50,0,0,1500),(12,'Go -> Go',2,1,1,2,100,0,0,1000),(12,'Attack -> General',0,2,0,0,100,0,0,1000),(12,'Attack -> General',1,2,0,2,100,0,0,1000),(12,'Attack -> Summon',2,2,6,5,100,0,20,1000),(12,'Attack -> Attack',3,2,2,1,100,0,0,1500),(12,'Summon -> Invisible',0,6,5,6,100,0,0,1000),(12,'Invisible -> Warp',0,5,4,6,100,0,0,1000),(12,'Warp -> AI',0,4,7,6,100,0,0,1000),(12,'AI -> Go',0,7,1,0,100,0,0,1000),(12,'AI -> Go',1,7,1,2,100,0,0,1000),(12,'AI -> Go',2,7,1,1,100,0,0,1000),(13,'General -> Go',0,0,1,0,100,0,0,1000),(13,'General -> Go',1,0,1,2,100,0,0,1000),(13,'General -> Attack',2,0,2,1,100,0,0,1000),(13,'Go -> Go',0,1,1,0,100,0,0,1000),(13,'Go -> Attack',1,1,2,1,100,0,0,1000),(13,'Go -> Go',2,1,1,2,100,0,0,1000),(13,'Attack -> General',0,2,0,0,100,0,0,1000),(13,'Attack -> Go',1,2,1,2,100,0,0,1000),(13,'Attack -> Attack',2,2,2,1,100,0,0,1000),(14,'General -> Go',0,0,1,2,100,0,0,1000),(14,'General -> Heal',1,0,3,5,80,0,40,1000),(14,'General -> Help',2,0,5,12,80,0,60,1000),(14,'General -> Go',3,0,1,0,100,0,0,1000),(14,'General -> Attack',4,0,2,1,100,0,0,1000),(14,'Go -> Go',0,1,1,2,100,0,0,1000),(14,'Go -> Heal',1,1,3,5,80,0,40,1000),(14,'Go -> Help',2,1,5,12,80,0,60,1000),(14,'Go -> Go',3,1,1,0,100,0,0,1000),(14,'Go -> Attack',4,1,2,1,100,0,0,1000),(14,'Attack -> Go',0,2,1,2,100,0,0,1000),(14,'Attack -> Heal',1,2,3,5,80,0,40,1000),(14,'Attack -> Help',2,2,5,12,80,0,60,1000),(14,'Attack -> General',3,2,0,0,100,0,0,1000),(14,'Attack -> Attack',4,2,2,1,100,0,0,1000),(14,'Heal -> Go',0,3,1,2,100,0,0,1000),(14,'Heal -> Heal',1,3,3,5,80,0,40,1000),(14,'Heal -> Help',2,3,5,12,80,0,60,1000),(14,'Heal -> General',3,3,0,0,100,0,0,1000),(14,'Heal -> Attack',4,3,2,1,100,0,0,1000),(14,'Help -> Go',0,5,1,2,100,0,0,1000),(14,'Help -> Heal',1,5,3,5,80,0,40,1000),(14,'Help -> Help',2,5,5,12,80,0,60,1000),(14,'Help -> General',3,5,0,0,100,0,0,1000),(14,'Help -> Attack',4,5,2,1,100,0,0,1000),(15,'General -> Go',0,0,1,0,100,0,0,1000),(15,'General -> Attack',1,0,2,1,25,0,0,1000),(15,'General -> Go',2,0,1,1,100,0,0,1000),(15,'General -> Go',3,0,1,2,100,0,0,1000),(15,'Go -> Go',0,1,1,0,100,0,0,1000),(15,'Go -> Attack',1,1,2,1,25,0,0,1000),(15,'Go -> Go',2,1,1,1,100,0,0,1000),(15,'Go -> Go',3,1,1,2,100,0,0,1000),(15,'Attack -> Go',0,2,1,0,100,0,0,1000),(15,'Attack -> Attack',1,2,2,1,25,0,0,1000),(15,'Attack -> Go',2,2,1,1,100,0,0,1000),(15,'Attack -> Go',3,2,1,2,100,0,0,1000);
/*!40000 ALTER TABLE `monster_ai_automata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_data`
--

DROP TABLE IF EXISTS `monster_ai_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_data` (
  `group` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `ai_order_1` int(10) unsigned NOT NULL,
  `ai_order_2` int(10) unsigned NOT NULL,
  `ai_order_3` int(10) unsigned NOT NULL,
  `ai_order_4` int(10) unsigned NOT NULL,
  `ai_time_1` int(10) unsigned NOT NULL,
  `ai_time_2` int(10) unsigned NOT NULL,
  `ai_time_3` int(10) unsigned NOT NULL,
  `ai_time_4` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_data`
--

LOCK TABLES `monster_ai_data` WRITE;
/*!40000 ALTER TABLE `monster_ai_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_ai_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_element`
--

DROP TABLE IF EXISTS `monster_ai_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_element` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `delay` int(10) unsigned NOT NULL,
  `target` int(11) NOT NULL,
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_element`
--

LOCK TABLES `monster_ai_element` WRITE;
/*!40000 ALTER TABLE `monster_ai_element` DISABLE KEYS */;
INSERT INTO `monster_ai_element` VALUES (1,'General Condition',0,1,100,1000,0,0,0),(2,'Item Move',1,12,100,1000,2,121,36),(3,'Test Attack',2,21,100,300,2,0,0),(4,'Avoid - Fugitive',4,41,100,300,2,0,0),(5,'Self- Treatment',3,31,100,300,2,0,0),(6,'Group Summon',6,62,100,300,2,0,0),(7,'Group Therapy',3,32,100,300,2,0,0),(8,'Group Migration',1,13,100,300,2,0,0),(9,'Position Attack',2,22,100,300,2,121,36),(11,'Goal Move 1-1',1,12,100,1000,2,128,45),(12,'Goal Move 1-2',1,12,100,1000,2,109,42),(13,'Goal Move 1-3',1,12,100,1000,2,123,84),(14,'Goal Move 1-4',1,12,100,1000,2,119,87),(15,'Goal Move 2-1',1,12,100,1000,2,105,32),(16,'Goal Move 2-2',1,12,100,1000,2,89,32),(17,'Goal Move 2-3',1,12,100,1000,2,83,29),(18,'Goal Move 2-4',1,12,100,1000,2,65,34),(19,'Goal Move 3-1',1,12,100,1000,2,136,38),(20,'Goal Move 3-2',1,12,100,1000,2,134,19),(21,'Goal Move 3-3',1,12,100,1000,2,177,37),(22,'Goal Move 3-4',1,12,100,1000,2,179,33),(31,'Goal Move 1-1',1,12,100,1000,2,126,35),(32,'Goal Move 1-2',1,12,100,1000,2,125,27),(33,'Goal Move 1-3',1,12,100,1000,2,121,19),(34,'Goal Move 1-4',1,12,100,1000,2,119,87),(35,'Goal Move 2-1',1,12,100,1000,2,120,38),(36,'Goal Move 2-2',1,12,100,1000,2,115,32),(37,'Goal Move 2-3',1,12,100,1000,2,109,40),(38,'Goal Move 2-4',1,12,100,1000,2,65,34),(39,'Goal Move 3-1',1,12,100,1000,2,117,27),(40,'Goal Move 3-2',1,12,100,1000,2,117,37),(41,'Goal Move 3-3',1,12,100,1000,2,131,31),(42,'Goal Move 3-4',1,12,100,1000,2,179,33),(51,'1-1 Position Attacks',2,22,100,300,2,121,52),(52,'1-2 Position Attacks',2,22,100,300,2,120,35),(53,'2-1 Position Attacks',2,22,100,300,2,101,31),(54,'2-2 Position Attacks',2,22,100,300,2,117,31),(55,'3-1 Position Attacks',2,22,100,300,2,141,32),(56,'3-2 Position Attacks',2,22,100,300,2,125,31),(60,'Invisible',6,64,100,1000,0,0,0),(61,'General Attack',2,21,100,1000,1,0,0),(62,'Fast Attack',2,21,100,800,1,0,0),(63,'Super Fast Attack',2,21,100,100,1,0,0),(64,'Rubber Meat',2,23,100,300,1,0,0),(65,'General Move',1,11,100,100,1,0,0),(66,'High Bank',6,64,100,1000,0,2,2),(67,'General Move',1,11,100,100,1,0,0),(68,'General Attack',2,21,100,1000,1,0,0),(69,'Summon',6,65,100,1000,1,0,0),(70,'Year For The Body',6,66,100,1000,1,79,100),(71,'Year For The Body',6,66,100,1000,1,78,124),(72,'Year For The Body',6,66,100,1000,1,78,141),(73,'Attack Pattern',2,67,100,1000,60,40,0),(74,'Attack Pattern',2,67,100,1000,40,60,0),(75,'Attack Pattern',2,67,100,1000,30,30,40),(76,'Attack Pattern',2,67,100,1000,30,20,50),(77,'AI Change',7,68,100,1000,23,1,0),(78,'AI Change',7,68,100,1000,23,2,0),(79,'AI Change',7,68,100,1000,23,3,0),(80,'Imperial Guardian - Common',0,1,100,1000,0,0,0),(81,'Imperial Guardian - Move',1,11,100,1000,2,0,0),(82,'Imperial Guardian - Attack',2,21,100,1000,2,0,0),(83,'Imperial Guardian - Heal Self',3,31,100,1000,2,0,0),(84,'Imperial Guardian - Help Heal',5,51,100,1000,2,0,0),(85,'Double Goer - Move 1',1,12,100,1000,2,197,25),(86,'Double Goer - Move 2',1,12,100,1000,2,138,67),(87,'Double Goer - Move 3',1,12,100,1000,2,110,56),(88,'Double Goer - Move 4',1,12,100,1000,2,95,11),(89,'Double Goer - Attack',2,21,100,1000,2,0,0);
/*!40000 ALTER TABLE `monster_ai_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_unit`
--

DROP TABLE IF EXISTS `monster_ai_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_unit` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `delay` int(10) unsigned NOT NULL,
  `automatia` int(11) NOT NULL,
  `ai_class_1` int(11) NOT NULL,
  `ai_class_2` int(11) NOT NULL,
  `ai_class_3` int(11) NOT NULL,
  `ai_class_4` int(11) NOT NULL,
  `ai_class_5` int(11) NOT NULL,
  `ai_class_6` int(11) NOT NULL,
  `ai_class_7` int(11) NOT NULL,
  `ai_class_8` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_unit`
--

LOCK TABLES `monster_ai_unit` WRITE;
/*!40000 ALTER TABLE `monster_ai_unit` DISABLE KEYS */;
INSERT INTO `monster_ai_unit` VALUES (1,'Monster General',1700,1,1,8,3,5,4,0,0,0),(2,'Dark Elf',1700,2,1,2,3,7,4,0,6,0),(3,'Ballesta',2000,3,1,0,9,0,0,0,0,0),(4,'Balgass',1000,1,1,2,3,5,4,0,0,0),(10,'Maya Hand',5000,10,1,0,0,0,0,0,0,0),(11,'1 Dark Elf 1-1',1700,2,1,11,3,7,4,0,6,0),(12,'1 Dark Elf 1-2',1700,2,1,12,3,7,4,0,6,0),(13,'1 Dark Elf 1-3',1700,2,1,13,3,7,4,0,6,0),(14,'1 Dark Elf 1-4',1700,2,1,14,3,7,4,0,6,0),(15,'1 Dark Elf 2-1',1700,2,1,15,3,7,4,0,6,0),(16,'1 Dark Elf 2-2',1700,2,1,16,3,7,4,0,6,0),(17,'1 Dark Elf 2-3',1700,2,1,17,3,7,4,0,6,0),(18,'1 Dark Elf 2-4',1700,2,1,18,3,7,4,0,6,0),(19,'1 Dark Elf 3-1',1700,2,1,19,3,7,4,0,6,0),(20,'1 Dark Elf 3-2',1700,2,1,20,3,7,4,0,6,0),(21,'1 Dark Elf 3-3',1700,2,1,21,3,7,4,0,6,0),(22,'1 Dark Elf 3-4',1700,2,1,22,3,7,4,0,6,0),(31,'2 Dark Elf 1-1',1700,2,1,31,3,7,4,0,6,0),(32,'2 Dark Elf 1-2',1700,2,1,32,3,7,4,0,6,0),(33,'2 Dark Elf 1-3',1700,2,1,33,3,7,4,0,6,0),(34,'2 Dark Elf 1-4',1700,2,1,34,3,7,4,0,6,0),(35,'2 Dark Elf 2-1',1700,2,1,35,3,7,4,0,6,0),(36,'2 Dark Elf 2-2',1700,2,1,36,3,7,4,0,6,0),(37,'2 Dark Elf 2-3',1700,2,1,37,3,7,4,0,6,0),(38,'2 Dark Elf 2-4',1700,2,1,38,3,7,4,0,6,0),(39,'2 Dark Elf 3-1',1700,2,1,39,3,7,4,0,6,0),(40,'2 Dark Elf 3-2',1700,2,1,40,3,7,4,0,6,0),(41,'2 Dark Elf 3-3',1700,2,1,41,3,7,4,0,6,0),(42,'2 Dark Elf 3-4',1700,2,1,42,3,7,4,0,6,0),(51,'Ballesta 1-1',2000,3,1,0,51,0,0,0,0,0),(52,'Ballesta 1-2',2000,3,1,0,52,0,0,0,0,0),(53,'Ballesta 2-1',2000,3,1,0,53,0,0,0,0,0),(54,'Ballesta 2-2',2000,3,1,0,54,0,0,0,0,0),(55,'Ballesta 3-1',2000,3,1,0,55,0,0,0,0,0),(56,'Ballesta 3-2',2000,3,1,0,56,0,0,0,0,0),(60,'Maya Hand - Invisible',1000,7,1,0,0,0,0,0,60,0),(61,'Maya Hand - Attack General',2000,4,1,65,61,0,4,0,0,0),(62,'Maya Hand - Disable Skills',2000,6,1,65,64,0,0,0,0,0),(63,'Maya Hand - Fasr Attack',800,5,1,65,62,0,4,0,0,0),(64,'Maya Hand - Attack General',2000,4,1,65,61,0,4,0,0,0),(65,'Maya Hand - Disable Skills',800,6,1,65,64,0,0,0,0,0),(66,'Maya Hand - Fast Attack',1000,5,1,65,62,0,4,0,0,0),(67,'Maya Hand - Super Fast Attack',300,6,1,65,63,0,4,0,0,0),(68,'State - Nightmare 1',300,8,67,67,73,0,70,66,69,77),(69,'State - Nightmare 2',300,9,67,67,74,0,71,66,69,78),(70,'State - Nightmare 3',300,12,67,67,75,0,72,66,69,79),(71,'State - Nightmare 4',300,11,67,67,76,0,0,0,0,0),(72,'Imperial Guardian - Default',1500,13,80,81,82,0,0,0,0,0),(73,'Imperial Guardian - Support',1500,14,80,81,82,83,0,84,0,0),(74,'Double Goer - Default 1',1000,15,1,85,89,0,0,0,0,0),(75,'Double Goer - Default 2',1000,15,1,86,89,0,0,0,0,0),(76,'Double Goer - Default 3',1000,15,1,87,89,0,0,0,0,0),(77,'Double Goer - Default 4',1000,15,1,88,89,0,0,0,0,0);
/*!40000 ALTER TABLE `monster_ai_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_equipment`
--

DROP TABLE IF EXISTS `monster_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_equipment` (
  `monster` smallint(5) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `excellent_ancient` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_equipment`
--

LOCK TABLES `monster_equipment` WRITE;
/*!40000 ALTER TABLE `monster_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_event`
--

DROP TABLE IF EXISTS `monster_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_event` (
  `server` smallint(5) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `direction` tinyint(4) NOT NULL,
  `spawn_delay` int(10) unsigned NOT NULL,
  `spawn_distance` tinyint(3) unsigned NOT NULL,
  `respawn_time` int(10) unsigned NOT NULL,
  `respawn_id` int(10) unsigned NOT NULL,
  `move_distance` tinyint(3) unsigned NOT NULL,
  `event_id` tinyint(3) unsigned NOT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL,
  `data_4` int(11) NOT NULL,
  `data_5` int(11) NOT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `ai_group` int(10) unsigned NOT NULL,
  `ai_group_member` int(10) unsigned NOT NULL,
  `add_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_event`
--

LOCK TABLES `monster_event` WRITE;
/*!40000 ALTER TABLE `monster_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_exclusive`
--

DROP TABLE IF EXISTS `monster_exclusive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_exclusive` (
  `server` smallint(5) unsigned NOT NULL,
  `guid` smallint(5) unsigned NOT NULL,
  `available_server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`server`,`guid`,`available_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_exclusive`
--

LOCK TABLES `monster_exclusive` WRITE;
/*!40000 ALTER TABLE `monster_exclusive` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_exclusive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_respawn_location`
--

DROP TABLE IF EXISTS `monster_respawn_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_respawn_location` (
  `monster` smallint(5) unsigned NOT NULL,
  `group` int(10) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `direction` tinyint(4) NOT NULL,
  `instance` int(11) NOT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_respawn_location`
--

LOCK TABLES `monster_respawn_location` WRITE;
/*!40000 ALTER TABLE `monster_respawn_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_respawn_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_skill`
--

DROP TABLE IF EXISTS `monster_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_skill` (
  `monster` smallint(5) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`monster`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_skill`
--

LOCK TABLES `monster_skill` WRITE;
/*!40000 ALTER TABLE `monster_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_skill_special`
--

DROP TABLE IF EXISTS `monster_skill_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_skill_special` (
  `monster` smallint(5) unsigned NOT NULL,
  `type` smallint(6) NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`monster`,`type`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_skill_special`
--

LOCK TABLES `monster_skill_special` WRITE;
/*!40000 ALTER TABLE `monster_skill_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_skill_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_converter`
--

DROP TABLE IF EXISTS `monster_soul_converter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_converter` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_converter`
--

LOCK TABLES `monster_soul_converter` WRITE;
/*!40000 ALTER TABLE `monster_soul_converter` DISABLE KEYS */;
INSERT INTO `monster_soul_converter` VALUES (1,14,460,2,'Level 1 Monster Soul Translator'),(2,14,461,2,'Level 2 Monster Soul Translator'),(3,14,462,2,'Level 3 Monster Soul Translator'),(4,14,463,2,'Level 4 Monster Soul Translator'),(5,14,464,2,'Level 5 Monster Soul Translator');
/*!40000 ALTER TABLE `monster_soul_converter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_reward`
--

DROP TABLE IF EXISTS `monster_soul_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_reward` (
  `id` int(10) unsigned NOT NULL,
  `sub_id` tinyint(3) unsigned NOT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `random_item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_reward`
--

LOCK TABLES `monster_soul_reward` WRITE;
/*!40000 ALTER TABLE `monster_soul_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_soul_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_transformation`
--

DROP TABLE IF EXISTS `monster_soul_transformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_transformation` (
  `type` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `monster` smallint(5) unsigned NOT NULL,
  `required_soul` int(11) NOT NULL,
  `drop_rate` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_transformation`
--

LOCK TABLES `monster_soul_transformation` WRITE;
/*!40000 ALTER TABLE `monster_soul_transformation` DISABLE KEYS */;
INSERT INTO `monster_soul_transformation` VALUES (1,0,91,586,500,450000,'Acheron'),(1,1,91,587,500,450000,'Acheron'),(1,2,91,588,500,450000,'Acheron'),(1,3,91,589,500,450000,'Acheron'),(1,4,91,590,500,450000,'Acheron'),(1,5,91,591,500,450000,'Acheron'),(1,6,63,480,500,450000,'Vulcanus'),(1,7,63,482,500,450000,'Vulcanus'),(1,8,63,484,500,450000,'Vulcanus'),(1,9,63,486,500,450000,'Vulcanus'),(1,10,63,487,500,450000,'Vulcanus'),(1,11,63,489,500,450000,'Vulcanus'),(1,12,63,490,500,450000,'Vulcanus'),(1,13,29,271,500,450000,'Kalima6'),(1,14,29,272,500,450000,'Kalima6'),(1,15,29,270,500,450000,'Kalima6'),(1,16,29,268,500,450000,'Kalima6'),(1,17,29,273,500,450000,'Kalima6'),(1,18,29,269,500,450000,'Kalima6'),(1,19,29,274,500,450000,'Kalima6'),(1,20,36,331,500,450000,'Kalima7'),(1,21,36,332,500,450000,'Kalima7'),(1,22,36,333,500,450000,'Kalima7'),(1,23,36,334,500,450000,'Kalima7'),(1,24,36,335,500,450000,'Kalima7'),(1,25,36,336,500,450000,'Kalima7'),(1,26,36,337,500,450000,'Kalima7'),(1,27,33,308,500,450000,'Aida'),(1,28,33,307,500,450000,'Aida'),(1,29,33,306,500,450000,'Aida'),(1,30,33,305,500,450000,'Aida'),(2,0,37,553,500,450000,'KanturuRuins'),(2,1,37,554,500,450000,'KanturuRuins'),(2,2,37,555,500,450000,'KanturuRuins'),(2,3,37,556,500,450000,'KanturuRuins'),(2,4,81,571,500,450000,'Karutan'),(2,5,81,572,500,450000,'Karutan'),(2,6,81,575,500,450000,'Karutan'),(2,7,81,576,500,450000,'Karutan'),(2,8,57,562,500,450000,'Raklion'),(2,9,57,563,500,450000,'Raklion'),(2,10,57,564,500,450000,'Raklion'),(2,11,57,565,500,450000,'Raklion'),(2,12,56,557,500,450000,'SwampOfPeace'),(2,13,56,558,500,450000,'SwampOfPeace'),(2,14,56,559,500,450000,'SwampOfPeace'),(2,15,112,730,500,450000,'Ferea'),(2,16,112,731,500,450000,'Ferea'),(2,17,112,732,500,450000,'Ferea'),(3,0,113,743,500,450000,'Nixies Lake'),(3,1,113,744,500,450000,'Nixies Lake'),(3,2,113,745,500,450000,'Nixies Lake'),(3,3,116,767,500,450000,'Deep Dungeon 1'),(3,4,116,770,500,450000,'Deep Dungeon 1'),(3,5,117,771,500,450000,'Deep Dungeon 2'),(3,6,117,772,500,450000,'Deep Dungeon 2'),(3,7,118,768,500,450000,'Deep Dungeon 3'),(3,8,118,773,500,450000,'Deep Dungeon 3'),(4,0,119,769,500,450000,'Deep Dungeon 4'),(4,1,119,774,500,450000,'Deep Dungeon 4'),(4,2,120,775,500,450000,'Deep Dungeon 5'),(4,3,120,776,500,450000,'Deep Dungeon 5'),(4,4,120,777,500,450000,'Deep Dungeon 5'),(4,5,122,786,500,450000,'SwampOfDarkness'),(4,6,122,787,500,450000,'SwampOfDarkness'),(4,7,122,788,500,450000,'SwampOfDarkness'),(4,8,122,789,500,450000,'SwampOfDarkness'),(5,0,123,810,500,450000,'Cubera Mines'),(5,1,123,811,500,450000,'Cubera Mines'),(5,2,123,812,500,450000,'Cubera Mines'),(5,3,123,813,500,450000,'Cubera Mines'),(5,4,123,814,500,450000,'Cubera Mines'),(5,5,123,815,500,450000,'Cubera Mines'),(5,6,123,816,500,450000,'Cubera Mines');
/*!40000 ALTER TABLE `monster_soul_transformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_template`
--

DROP TABLE IF EXISTS `monster_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_template` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` smallint(5) unsigned NOT NULL,
  `size` float NOT NULL,
  `type` tinyint(4) NOT NULL,
  `min_level` smallint(5) unsigned NOT NULL,
  `max_level` smallint(5) unsigned NOT NULL,
  `life` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `shield` int(11) NOT NULL,
  `stamina` int(11) NOT NULL,
  `attack_min_damage` int(11) NOT NULL,
  `attack_max_damage` int(11) NOT NULL,
  `magic_min_damage` int(11) NOT NULL,
  `magic_max_damage` int(11) NOT NULL,
  `critical_damage_rate` int(11) NOT NULL,
  `critical_damage_add` int(11) NOT NULL,
  `excellent_damage_rate` int(11) NOT NULL,
  `excellent_damage_add` int(11) NOT NULL,
  `attack_success` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `defense_magic` int(11) NOT NULL,
  `defense_success` int(11) NOT NULL,
  `move_range` int(10) unsigned NOT NULL,
  `move_speed` int(10) unsigned NOT NULL,
  `attack_range` int(10) unsigned NOT NULL,
  `attack_speed` int(11) NOT NULL,
  `view_range` int(10) unsigned NOT NULL,
  `resistance_1` tinyint(3) unsigned NOT NULL,
  `resistance_2` tinyint(3) unsigned NOT NULL,
  `resistance_3` tinyint(3) unsigned NOT NULL,
  `resistance_4` tinyint(3) unsigned NOT NULL,
  `resistance_5` tinyint(3) unsigned NOT NULL,
  `resistance_6` tinyint(3) unsigned NOT NULL,
  `resistance_7` tinyint(3) unsigned NOT NULL,
  `respawn_time_min` int(10) unsigned NOT NULL,
  `respawn_time_max` int(10) unsigned NOT NULL,
  `item_rate` int(11) NOT NULL,
  `zen_rate` int(11) NOT NULL,
  `item_max_level` int(11) NOT NULL,
  `life_regen_power` float NOT NULL,
  `life_regen_time` int(10) unsigned NOT NULL,
  `mana_regen_power` float NOT NULL,
  `mana_regen_time` int(10) unsigned NOT NULL,
  `shield_regen_power` float NOT NULL,
  `shiled_regen_time` int(10) unsigned NOT NULL,
  `stamina_regen_power` float NOT NULL,
  `stamina_regen_time` int(10) unsigned NOT NULL,
  `faction` tinyint(3) unsigned NOT NULL,
  `faction_level` tinyint(3) unsigned NOT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned NOT NULL,
  `elemental_pattern` int(11) NOT NULL,
  `elemental_defense` int(11) NOT NULL,
  `elemental_damage_min` int(11) NOT NULL,
  `elemental_damage_max` int(11) NOT NULL,
  `elemental_attack_rate` int(11) NOT NULL,
  `elemental_defense_rate` int(11) NOT NULL,
  `radiance_immune` tinyint(3) unsigned NOT NULL,
  `debuff_resistance` int(11) NOT NULL,
  `debuff_defense` int(11) NOT NULL,
  `critical_damage_resistance` tinyint(3) unsigned NOT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned NOT NULL,
  `damage_absorb` tinyint(3) unsigned NOT NULL,
  `elite` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_template`
--

LOCK TABLES `monster_template` WRITE;
/*!40000 ALTER TABLE `monster_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_template_custom`
--

DROP TABLE IF EXISTS `monster_template_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_template_custom` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` smallint(5) unsigned NOT NULL,
  `size` float NOT NULL,
  `type` tinyint(4) NOT NULL,
  `min_level` smallint(5) unsigned NOT NULL,
  `max_level` smallint(5) unsigned NOT NULL,
  `life` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `shield` int(11) NOT NULL,
  `stamina` int(11) NOT NULL,
  `attack_min_damage` int(11) NOT NULL,
  `attack_max_damage` int(11) NOT NULL,
  `magic_min_damage` int(11) NOT NULL,
  `magic_max_damage` int(11) NOT NULL,
  `excellent_damage_rate` int(11) NOT NULL,
  `excellent_damage_add` int(11) NOT NULL,
  `attack_success` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `defense_magic` int(11) NOT NULL,
  `defense_success` int(11) NOT NULL,
  `move_range` int(10) unsigned NOT NULL,
  `move_speed` int(10) unsigned NOT NULL,
  `attack_range` int(10) unsigned NOT NULL,
  `attack_speed` int(11) NOT NULL,
  `view_range` int(10) unsigned NOT NULL,
  `resistance_1` tinyint(3) unsigned NOT NULL,
  `resistance_2` tinyint(3) unsigned NOT NULL,
  `resistance_3` tinyint(3) unsigned NOT NULL,
  `resistance_4` tinyint(3) unsigned NOT NULL,
  `resistance_5` tinyint(3) unsigned NOT NULL,
  `resistance_6` tinyint(3) unsigned NOT NULL,
  `resistance_7` tinyint(3) unsigned NOT NULL,
  `respawn_time_min` int(10) unsigned NOT NULL,
  `respawn_time_max` int(10) unsigned NOT NULL,
  `item_rate` int(11) NOT NULL,
  `zen_rate` int(11) NOT NULL,
  `item_max_level` int(11) NOT NULL,
  `life_regen_power` float NOT NULL,
  `life_regen_time` int(10) unsigned NOT NULL,
  `mana_regen_power` float NOT NULL,
  `mana_regen_time` int(10) unsigned NOT NULL,
  `shield_regen_power` float NOT NULL,
  `shiled_regen_time` int(10) unsigned NOT NULL,
  `stamina_regen_power` float NOT NULL,
  `stamina_regen_time` int(10) unsigned NOT NULL,
  `faction` tinyint(3) unsigned NOT NULL,
  `faction_level` tinyint(3) unsigned NOT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned NOT NULL,
  `elemental_pattern` int(11) NOT NULL,
  `elemental_defense` int(11) NOT NULL,
  `elemental_damage_min` int(11) NOT NULL,
  `elemental_damage_max` int(11) NOT NULL,
  `elemental_attack_rate` int(11) NOT NULL,
  `elemental_defense_rate` int(11) NOT NULL,
  `radiance_immune` tinyint(3) unsigned NOT NULL,
  `debuff_resistance` int(11) NOT NULL,
  `debuff_defense` int(11) NOT NULL,
  `critical_damage_resistance` tinyint(3) unsigned NOT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned NOT NULL,
  `damage_absorb` tinyint(3) unsigned NOT NULL,
  `elite` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_template_custom`
--

LOCK TABLES `monster_template_custom` WRITE;
/*!40000 ALTER TABLE `monster_template_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_template_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moss_merchant_section`
--

DROP TABLE IF EXISTS `moss_merchant_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moss_merchant_section` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `required_item` smallint(5) unsigned NOT NULL,
  `required_zen` int(10) unsigned NOT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moss_merchant_section`
--

LOCK TABLES `moss_merchant_section` WRITE;
/*!40000 ALTER TABLE `moss_merchant_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `moss_merchant_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `move_level`
--

DROP TABLE IF EXISTS `move_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_level` (
  `level` smallint(6) NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `disabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`world`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_level`
--

LOCK TABLES `move_level` WRITE;
/*!40000 ALTER TABLE `move_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `move_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun`
--

DROP TABLE IF EXISTS `muun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun` (
  `index` smallint(5) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `option_index` tinyint(3) unsigned NOT NULL,
  `special_option_type` tinyint(3) unsigned NOT NULL,
  `special_option_value` int(11) NOT NULL,
  `evolution_item_index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun`
--

LOCK TABLES `muun` WRITE;
/*!40000 ALTER TABLE `muun` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_energy`
--

DROP TABLE IF EXISTS `muun_energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_energy` (
  `rating` tinyint(3) unsigned NOT NULL,
  `value_1` tinyint(3) unsigned NOT NULL,
  `value_2` tinyint(3) unsigned NOT NULL,
  `value_3` tinyint(3) unsigned NOT NULL,
  `value_4` tinyint(3) unsigned NOT NULL,
  `value_5` tinyint(3) unsigned NOT NULL,
  `evolution_value` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_energy`
--

LOCK TABLES `muun_energy` WRITE;
/*!40000 ALTER TABLE `muun_energy` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_exchange`
--

DROP TABLE IF EXISTS `muun_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_exchange` (
  `id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `muun` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_exchange`
--

LOCK TABLES `muun_exchange` WRITE;
/*!40000 ALTER TABLE `muun_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_option`
--

DROP TABLE IF EXISTS `muun_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `option_value_1` int(11) NOT NULL,
  `option_value_2` int(11) NOT NULL,
  `option_value_3` int(11) NOT NULL,
  `option_value_4` int(11) NOT NULL,
  `option_value_5` int(11) NOT NULL,
  `max_option_value` int(11) NOT NULL,
  `max_zone` smallint(5) unsigned NOT NULL,
  `play_time` int(11) NOT NULL,
  `day_of_week` int(11) NOT NULL,
  `min_hour` int(11) NOT NULL,
  `max_hour` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `min_master_level` int(11) NOT NULL,
  `max_master_level` int(11) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_option`
--

LOCK TABLES `muun_option` WRITE;
/*!40000 ALTER TABLE `muun_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `group` smallint(5) unsigned NOT NULL,
  `sub_group` smallint(5) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`server`,`world`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `server_code` smallint(5) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_attack_world`
--

DROP TABLE IF EXISTS `offline_attack_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_attack_world` (
  `world_id` smallint(5) unsigned NOT NULL,
  `server_id` smallint(5) unsigned NOT NULL,
  `level_min` smallint(6) NOT NULL,
  `level_max` smallint(6) NOT NULL,
  PRIMARY KEY (`world_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_attack_world`
--

LOCK TABLES `offline_attack_world` WRITE;
/*!40000 ALTER TABLE `offline_attack_world` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_attack_world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_attack_zone`
--

DROP TABLE IF EXISTS `offline_attack_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_attack_zone` (
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_attack_zone`
--

LOCK TABLES `offline_attack_zone` WRITE;
/*!40000 ALTER TABLE `offline_attack_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_attack_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offset_data`
--

DROP TABLE IF EXISTS `offset_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offset_data` (
  `offset` int(10) unsigned NOT NULL,
  `value` tinyint(3) unsigned NOT NULL,
  `fix` tinyint(3) unsigned NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`offset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offset_data`
--

LOCK TABLES `offset_data` WRITE;
/*!40000 ALTER TABLE `offset_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `offset_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offset_fps`
--

DROP TABLE IF EXISTS `offset_fps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offset_fps` (
  `offset` int(10) unsigned NOT NULL,
  `mod` tinyint(3) unsigned NOT NULL,
  `original` tinyint(3) unsigned NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`offset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offset_fps`
--

LOCK TABLES `offset_fps` WRITE;
/*!40000 ALTER TABLE `offset_fps` DISABLE KEYS */;
/*!40000 ALTER TABLE `offset_fps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_option`
--

DROP TABLE IF EXISTS `pentagram_jewel_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `item_type` tinyint(3) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  `rank_number` tinyint(3) unsigned NOT NULL,
  `rank_option` tinyint(3) unsigned NOT NULL,
  `rate` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_1` int(11) NOT NULL,
  `upgrade_rate_1` smallint(5) unsigned NOT NULL,
  `value_2` int(11) NOT NULL,
  `upgrade_rate_2` smallint(5) unsigned NOT NULL,
  `value_3` int(11) NOT NULL,
  `upgrade_rate_3` smallint(5) unsigned NOT NULL,
  `value_4` int(11) NOT NULL,
  `upgrade_rate_4` smallint(5) unsigned NOT NULL,
  `value_5` int(11) NOT NULL,
  `upgrade_rate_5` smallint(5) unsigned NOT NULL,
  `value_6` int(11) NOT NULL,
  `upgrade_rate_6` smallint(5) unsigned NOT NULL,
  `value_7` int(11) NOT NULL,
  `upgrade_rate_7` smallint(5) unsigned NOT NULL,
  `value_8` int(11) NOT NULL,
  `upgrade_rate_8` smallint(5) unsigned NOT NULL,
  `value_9` int(11) NOT NULL,
  `upgrade_rate_9` smallint(5) unsigned NOT NULL,
  `value_10` int(11) NOT NULL,
  `upgrade_rate_10` smallint(5) unsigned NOT NULL,
  `value_11` int(11) NOT NULL,
  `upgrade_rate_11` smallint(5) unsigned NOT NULL,
  `variable_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_option`
--

LOCK TABLES `pentagram_jewel_option` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_remove`
--

DROP TABLE IF EXISTS `pentagram_jewel_remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_remove` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_rate_1` smallint(5) unsigned NOT NULL,
  `mix_rate_2` smallint(5) unsigned NOT NULL,
  `mix_rate_3` smallint(5) unsigned NOT NULL,
  `mix_rate_4` smallint(5) unsigned NOT NULL,
  `mix_rate_5` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_remove`
--

LOCK TABLES `pentagram_jewel_remove` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_remove` DISABLE KEYS */;
INSERT INTO `pentagram_jewel_remove` VALUES (0,10000,9000,8000,8000,8000),(1,10000,9000,8000,8000,8000),(2,10000,9000,8000,8000,8000),(3,9500,9000,8000,8000,8000),(4,9500,8500,7500,7500,7500),(5,9500,8500,7500,7500,7500),(6,9000,8500,7500,7500,7500),(7,9000,8000,7000,7000,7000),(8,9000,8000,7000,7000,7000),(9,8500,7500,7000,7000,7000),(10,8500,7500,7000,7000,7000);
/*!40000 ALTER TABLE `pentagram_jewel_remove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_upgrade_level`
--

DROP TABLE IF EXISTS `pentagram_jewel_upgrade_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_upgrade_level` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_money` int(10) unsigned NOT NULL,
  `mix_rate_1` smallint(5) unsigned NOT NULL,
  `mix_rate_2` smallint(5) unsigned NOT NULL,
  `mix_rate_3` smallint(5) unsigned NOT NULL,
  `mix_rate_4` smallint(5) unsigned NOT NULL,
  `mix_rate_5` smallint(5) unsigned NOT NULL,
  `required_elemental_rune_1` int(11) NOT NULL,
  `required_elemental_rune_2` int(11) NOT NULL,
  `required_elemental_rune_3` int(11) NOT NULL,
  `required_elemental_rune_4` int(11) NOT NULL,
  `required_elemental_rune_5` int(11) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_upgrade_level`
--

LOCK TABLES `pentagram_jewel_upgrade_level` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_upgrade_rank`
--

DROP TABLE IF EXISTS `pentagram_jewel_upgrade_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_upgrade_rank` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_money` int(10) unsigned NOT NULL,
  `mix_rate` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_upgrade_rank`
--

LOCK TABLES `pentagram_jewel_upgrade_rank` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_option`
--

DROP TABLE IF EXISTS `pentagram_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `type_1` tinyint(3) unsigned NOT NULL,
  `rank_1` tinyint(3) unsigned NOT NULL,
  `level_1` tinyint(3) unsigned NOT NULL,
  `type_2` tinyint(3) unsigned NOT NULL,
  `rank_2` tinyint(3) unsigned NOT NULL,
  `level_2` tinyint(3) unsigned NOT NULL,
  `type_3` tinyint(3) unsigned NOT NULL,
  `rank_3` tinyint(3) unsigned NOT NULL,
  `level_3` tinyint(3) unsigned NOT NULL,
  `type_4` tinyint(3) unsigned NOT NULL,
  `rank_4` tinyint(3) unsigned NOT NULL,
  `level_4` tinyint(3) unsigned NOT NULL,
  `type_5` tinyint(3) unsigned NOT NULL,
  `rank_5` tinyint(3) unsigned NOT NULL,
  `level_5` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_option`
--

LOCK TABLES `pentagram_option` WRITE;
/*!40000 ALTER TABLE `pentagram_option` DISABLE KEYS */;
INSERT INTO `pentagram_option` VALUES (1,'Mul Pentagram Damage',10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'Mul Pentagram Defense',10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'Add Elemental Critical D. Rate',10,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'Add Elemental D. Transfer Rate',5,0,3,0,1,3,0,0,0,0,0,0,0,0,0,0),(5,'Add Elemental A. Transfer Rate',1,0,3,0,1,3,0,0,0,0,0,0,0,0,0,0),(6,'Add Elemental Resist Strong Rate',5,1,2,0,2,1,7,0,0,0,0,0,0,0,0,0),(7,'Add Elemental Resist Rate',5,1,3,6,2,3,6,3,3,6,0,0,0,0,0,0),(8,'Mul Pentagram Damage Defense',5,0,1,0,1,1,0,2,1,0,3,1,0,0,0,0),(9,'Add Elemental Defense',35,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0),(10,'Mul Pentagram Damage Defense',5,0,1,7,1,1,7,4,1,7,0,0,0,0,0,0),(11,'Mul Pentagram Damage',10,0,2,0,2,2,0,0,0,0,0,0,0,0,0,0),(12,'Add Elemental Damage',30,0,3,0,2,3,0,0,0,0,0,0,0,0,0,0),(13,'Mul Pentagram Defense',10,0,2,0,2,2,0,0,0,0,0,0,0,0,0,0),(14,'Add Elemental Defense',30,0,3,0,2,3,0,0,0,0,0,0,0,0,0,0),(15,'Add Elemental Critical D. Rate',5,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0),(16,'Add Elemental Critical D. Rate',10,0,2,3,0,0,0,0,0,0,0,0,0,0,0,0),(17,'Add Elemental Critical D. Rate',25,0,3,0,1,3,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `pentagram_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_type`
--

DROP TABLE IF EXISTS `pentagram_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_type` (
  `index` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `option_1` tinyint(3) unsigned NOT NULL,
  `option_2` tinyint(3) unsigned NOT NULL,
  `option_3` tinyint(3) unsigned NOT NULL,
  `option_4` tinyint(3) unsigned NOT NULL,
  `option_5` tinyint(3) unsigned NOT NULL,
  `option_6` tinyint(3) unsigned NOT NULL,
  `option_7` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_type`
--

LOCK TABLES `pentagram_type` WRITE;
/*!40000 ALTER TABLE `pentagram_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_condition`
--

DROP TABLE IF EXISTS `quest_evolution_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_condition` (
  `quest` tinyint(3) unsigned NOT NULL,
  `condition_id` int(11) NOT NULL,
  `required_quest_id` tinyint(3) unsigned NOT NULL,
  `min_level` int(10) unsigned NOT NULL,
  `max_level` int(10) unsigned NOT NULL,
  `required_zen` int(10) unsigned NOT NULL,
  `context_start` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_condition`
--

LOCK TABLES `quest_evolution_condition` WRITE;
/*!40000 ALTER TABLE `quest_evolution_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_data`
--

DROP TABLE IF EXISTS `quest_evolution_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_data` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `objective_type` tinyint(3) unsigned NOT NULL,
  `item_type` tinyint(3) unsigned NOT NULL,
  `item_index` smallint(5) unsigned NOT NULL,
  `item_level` tinyint(3) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  `monster_id` smallint(6) NOT NULL,
  `monster_min_level` smallint(6) NOT NULL,
  `monster_max_level` smallint(6) NOT NULL,
  `monster_slot` tinyint(3) unsigned NOT NULL,
  `drop_rate` smallint(5) unsigned NOT NULL,
  `reward_type` smallint(5) unsigned NOT NULL,
  `reward_sub_type` smallint(5) unsigned NOT NULL,
  `reward_count` smallint(5) unsigned NOT NULL,
  `condition_index` smallint(6) NOT NULL,
  `context_before_reg` smallint(5) unsigned NOT NULL,
  `context_after_reg` smallint(5) unsigned NOT NULL,
  `context_complete_quest` smallint(5) unsigned NOT NULL,
  `context_clear_quest` smallint(5) unsigned NOT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_dark_knight` tinyint(3) unsigned NOT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned NOT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned NOT NULL,
  `required_class_dark_lord` tinyint(3) unsigned NOT NULL,
  `required_class_summoner` tinyint(3) unsigned NOT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned NOT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned NOT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_slayer` tinyint(3) unsigned NOT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_data`
--

LOCK TABLES `quest_evolution_data` WRITE;
/*!40000 ALTER TABLE `quest_evolution_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_item_reward`
--

DROP TABLE IF EXISTS `quest_evolution_item_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_item_reward` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `class_flag` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `qurability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `socket_bonus` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_item_reward`
--

LOCK TABLES `quest_evolution_item_reward` WRITE;
/*!40000 ALTER TABLE `quest_evolution_item_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_item_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_template`
--

DROP TABLE IF EXISTS `quest_evolution_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_template` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `npc` smallint(5) unsigned NOT NULL,
  `party` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_template`
--

LOCK TABLES `quest_evolution_template` WRITE;
/*!40000 ALTER TABLE `quest_evolution_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mu`
--

DROP TABLE IF EXISTS `quest_mu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_mu` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `day` tinyint(3) unsigned NOT NULL,
  `template_type_1` tinyint(3) unsigned NOT NULL,
  `chapter` tinyint(3) unsigned NOT NULL,
  `category` tinyint(3) unsigned NOT NULL,
  `importance` tinyint(3) unsigned NOT NULL,
  `start_type` tinyint(3) unsigned NOT NULL,
  `start_sub_type` smallint(5) unsigned NOT NULL,
  `level_min` smallint(5) unsigned NOT NULL,
  `level_max` smallint(5) unsigned NOT NULL,
  `repeat_cycle` tinyint(4) NOT NULL,
  `precedence_quest` smallint(6) NOT NULL,
  `start_item_type` tinyint(4) NOT NULL,
  `start_item_index` smallint(6) NOT NULL,
  `check_gens` tinyint(4) NOT NULL,
  `zen` int(11) NOT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_dark_knight` tinyint(3) unsigned NOT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned NOT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned NOT NULL,
  `required_class_dark_lord` tinyint(3) unsigned NOT NULL,
  `required_class_summoner` tinyint(3) unsigned NOT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned NOT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned NOT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_slayer` tinyint(3) unsigned NOT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned NOT NULL,
  `add_class` tinyint(3) unsigned NOT NULL,
  `template_type_2` tinyint(3) unsigned NOT NULL,
  `objective_type` tinyint(3) unsigned NOT NULL,
  `objective_main_type` smallint(6) NOT NULL,
  `objective_main_sub_type` smallint(6) NOT NULL,
  `target_number` smallint(6) NOT NULL,
  `target_max_level` smallint(6) NOT NULL,
  `drop_rate` smallint(6) NOT NULL,
  `gate_id` smallint(5) unsigned NOT NULL,
  `map_id` smallint(5) unsigned NOT NULL,
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `reward_experience` int(11) NOT NULL,
  `reward_zen` int(11) NOT NULL,
  `reward_gens_points` tinyint(3) unsigned NOT NULL,
  `reward_item_type_1` tinyint(4) NOT NULL,
  `reward_item_index_1` smallint(6) NOT NULL,
  `reward_item_count_1` smallint(6) NOT NULL,
  `reward_item_type_2` tinyint(4) NOT NULL,
  `reward_item_index_2` smallint(6) NOT NULL,
  `reward_item_count_2` smallint(6) NOT NULL,
  `reward_item_type_3` tinyint(4) NOT NULL,
  `reward_item_index_3` smallint(6) NOT NULL,
  `reward_item_count_3` smallint(6) NOT NULL,
  `reward_type` smallint(6) NOT NULL,
  `reward_sub_type` smallint(6) NOT NULL,
  `reward_number` smallint(6) NOT NULL,
  `disabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_mu`
--

LOCK TABLES `quest_mu` WRITE;
/*!40000 ALTER TABLE `quest_mu` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mu_orig`
--

DROP TABLE IF EXISTS `quest_mu_orig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_mu_orig` (
  `ID` int(10) unsigned NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Server` smallint(5) unsigned NOT NULL,
  `Day` tinyint(3) unsigned NOT NULL,
  `TemplateType1` tinyint(3) unsigned NOT NULL,
  `Chapter` tinyint(3) unsigned NOT NULL,
  `Category` tinyint(3) unsigned NOT NULL,
  `Importance` tinyint(3) unsigned NOT NULL,
  `StartType` tinyint(3) unsigned NOT NULL,
  `StartSubType` smallint(5) unsigned NOT NULL,
  `LevelMin` smallint(5) unsigned NOT NULL,
  `LevelMax` smallint(5) unsigned NOT NULL,
  `RepeatCycle` tinyint(4) NOT NULL,
  `PrecedenceQuest` smallint(6) NOT NULL,
  `StartItemType` tinyint(4) NOT NULL,
  `StartItemIndex` smallint(6) NOT NULL,
  `CheckGens` tinyint(4) NOT NULL,
  `Zen` int(11) NOT NULL,
  `DarkWizard` tinyint(3) unsigned NOT NULL,
  `DarkKnight` tinyint(3) unsigned NOT NULL,
  `FairyElf` tinyint(3) unsigned NOT NULL,
  `MagicGladiator` tinyint(3) unsigned NOT NULL,
  `DarkLord` tinyint(3) unsigned NOT NULL,
  `Summoner` tinyint(3) unsigned NOT NULL,
  `RageFighter` tinyint(3) unsigned NOT NULL,
  `GrowLancer` tinyint(3) unsigned NOT NULL,
  `RuneWizard` tinyint(3) unsigned NOT NULL,
  `Slayer` tinyint(3) unsigned NOT NULL,
  `GunCrusher` tinyint(3) unsigned NOT NULL,
  `AddClass1` tinyint(3) unsigned NOT NULL,
  `TemplateType2` tinyint(3) unsigned NOT NULL,
  `ObjectiveType` tinyint(3) unsigned NOT NULL,
  `ObjectiveMainType` smallint(6) NOT NULL,
  `ObjectiveMainSubType` smallint(6) NOT NULL,
  `TargetNumber` smallint(6) NOT NULL,
  `TargetMaxLevel` smallint(6) NOT NULL,
  `DropRate` smallint(6) NOT NULL,
  `GateID` smallint(5) unsigned NOT NULL,
  `MapID` smallint(5) unsigned NOT NULL,
  `X` smallint(6) NOT NULL,
  `Y` smallint(6) NOT NULL,
  `RewardExperience` int(11) NOT NULL,
  `RewardZen` int(11) NOT NULL,
  `RewardGensPoints` tinyint(3) unsigned NOT NULL,
  `RewardItemType01` tinyint(4) NOT NULL,
  `RewardItemIndex01` smallint(6) NOT NULL,
  `RewardItemCount01` smallint(6) NOT NULL,
  `RewardItemType02` tinyint(4) NOT NULL,
  `RewardItemIndex02` smallint(6) NOT NULL,
  `RewardItemCount02` smallint(6) NOT NULL,
  `RewardItemType03` tinyint(4) NOT NULL,
  `RewardItemIndex03` smallint(6) NOT NULL,
  `RewardItemCount03` smallint(6) NOT NULL,
  `RewardType` smallint(6) NOT NULL,
  `RewardSubType` smallint(6) NOT NULL,
  `RewardNumber` smallint(6) NOT NULL,
  `Disabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_mu_orig`
--

LOCK TABLES `quest_mu_orig` WRITE;
/*!40000 ALTER TABLE `quest_mu_orig` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mu_orig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scramble_word`
--

DROP TABLE IF EXISTS `scramble_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scramble_word` (
  `word` varchar(255) NOT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scramble_word`
--

LOCK TABLES `scramble_word` WRITE;
/*!40000 ALTER TABLE `scramble_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `scramble_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `server_id` smallint(5) NOT NULL DEFAULT '-1',
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
INSERT INTO `settings` VALUES (-1,'Account.ConnectCheckResetOnAction','0'),(-1,'Account.ConnectCheckTime','0'),(-1,'Account.DarkLordCreate','0'),(-1,'Account.DisconnectTime','0'),(-1,'Account.GameCloseTime','0'),(-1,'Account.GrowLancerCreate','0'),(-1,'Account.MagicGladiatorCreate','0'),(-1,'Account.MaxLoginAttempts','0'),(-1,'Account.RageFighterCreate','0'),(-1,'Account.ServerMoveKickTime','0'),(-1,'Account.Warehouse.GetMoney','0'),(-1,'Account.Warehouse.Lock','0'),(-1,'Account.Warehouse.MaxMoney','0'),(-1,'Account.Warehouse.SaveMoney','0'),(-1,'AntiHack.CoordinateAttackCheck','0'),(-1,'AntiHack.CoordinateVerify','0'),(-1,'AntiHack.CoordinateVerifyTime','0'),(-1,'AntiHack.SkillContinue','0'),(-1,'AntiHack.SkillCount','0'),(-1,'AntiHack.SkillCountContinue','2'),(-1,'AntiHack.SkillHeadcodeCheck','0'),(-1,'AntiHack.SkillKick','0'),(-1,'AntiHack.SkillLogCount','3'),(-1,'AntiHack.WalkCheck1','0'),(-1,'AntiHack.WalkCheck2','0'),(-1,'AntiHack.WalkCheck3','0'),(-1,'AntiHack.WalkCheck4','0'),(-1,'AntiHack.WalkCheck5','0'),(-1,'AntiHack.WalkCheckDistance1','0'),(-1,'AntiHack.WalkCheckError1','0'),(-1,'AntiMacro.ComboEnabled','0'),(-1,'AntiMacro.ComboTime','0'),(-1,'AntiMacro.Enabled','0'),(-1,'AntiMacro.Time','0'),(-1,'ArkaWar.DamageReductionAlly','0'),(-1,'ArkaWar.DamageReductionEnemy','0'),(-1,'ArkaWar.MinGuilds','0'),(-1,'ArkaWar.RegisterMaxMembers','0'),(-1,'ArkaWar.RegisterMinMembers','0'),(-1,'ArkaWar.Server','9999'),(-1,'AttackRangeTolerance','1'),(-1,'AttackTime.NullKick','1'),(-1,'Barracks.MoveCost','0'),(-1,'Barracks.MoveEnabled','0'),(-1,'Barracks.MoveMinLevel','0'),(-1,'Barracks.MoveParty','0'),(-1,'BloodCastle.DeliverWeaponTime','0'),(-1,'BloodCastle.Enabled','0'),(-1,'BloodCastle.RewardScore','0'),(-1,'BloodCastle.SkillRushCheck','0'),(-1,'CashShop.BannerDir',''),(-1,'CashShop.BannerDirTest',''),(-1,'CashShop.BannerIp',''),(-1,'CashShop.BannerMonth','0'),(-1,'CashShop.BannerNumber','0'),(-1,'CashShop.BannerYear','0'),(-1,'CashShop.CoinUpdateTime','0'),(-1,'CashShop.DiscountDate','0'),(-1,'CashShop.DiscountGP','0'),(-1,'CashShop.DiscountWC','0'),(-1,'CashShop.Enabled','0'),(-1,'CashShop.GiftUpdateTime','0'),(-1,'CashShop.ItemDir',''),(-1,'CashShop.ItemDirTest',''),(-1,'CashShop.ItemIp',''),(-1,'CashShop.ItemListMonth','0'),(-1,'CashShop.ItemListNumber','0'),(-1,'CashShop.ItemListYear','0'),(-1,'CashShop.SafeZone','0'),(-1,'CashShop.UseJoin','0'),(-1,'CastleDeep.Enabled','0'),(-1,'CastleSiege.CrownTime','0'),(-1,'CastleSiege.Enabled','0'),(-1,'CastleSiege.LordMixMax','0'),(-1,'CastleSiege.MachineEnabled','0'),(-1,'CastleSiege.ParticipantRewardMinutes','0'),(-1,'CastleSiege.ReduceDamageDifSide','0'),(-1,'CastleSiege.ReduceDamageSameSide','0'),(-1,'CastleSiege.RegisterEnabled','0'),(-1,'CastleSiege.RegisterMinLevel','0'),(-1,'CastleSiege.RegisterMinMembers','0'),(-1,'CastleSiege.RegisterSignEnabled','0'),(-1,'ChaosCastle.Enabled','0'),(-1,'ChaosCastle.SurvivalMaxPerPC','0'),(-1,'ChaosCastle.SurvivalOfTheFittestEnabled','0'),(-1,'Character.AGAutorecuperationCount','0'),(-1,'Character.AGAutorecuperationCountRest','0'),(-1,'Character.AGAutorecuperationEnabled','0'),(-1,'Character.AGAutorecuperationMaxLevel','0'),(-1,'Character.AutoSaveOfflineTime','0'),(-1,'Character.AutosaveTime','0'),(-1,'Character.DieExperienceDecrease','0'),(-1,'Character.DieZenDecrease','0'),(-1,'Character.DKDamageModPVE','0'),(-1,'Character.DKDamageModPVP','0'),(-1,'Character.DLDamageModPVE','0'),(-1,'Character.DLDamageModPVP','0'),(-1,'Character.DWDamageModPVE','0'),(-1,'Character.DWDamageModPVP','0'),(-1,'Character.FEDamageModPVE','0'),(-1,'Character.FEDamageModPVP','0'),(-1,'Character.GCDamageModPVE','100'),(-1,'Character.GCDamageModPVP','100'),(-1,'Character.GLDamageModPVE','0'),(-1,'Character.GLDamageModPVP','0'),(-1,'Character.HeroCount','0'),(-1,'Character.HeroTime','0'),(-1,'Character.HPAutorecuperationCount','0'),(-1,'Character.HPAutorecuperationCountRest','0'),(-1,'Character.HPAutorecuperationEnabled','0'),(-1,'Character.HPAutorecuperationMaxLevel','0'),(-1,'Character.MaxAgility','0'),(-1,'Character.MaxAttackSpeedDK','0'),(-1,'Character.MaxAttackSpeedDL','0'),(-1,'Character.MaxAttackSpeedDW','0'),(-1,'Character.MaxAttackSpeedELF','0'),(-1,'Character.MaxAttackSpeedGC','280'),(-1,'Character.MaxAttackSpeedGL','0'),(-1,'Character.MaxAttackSpeedMG','0'),(-1,'Character.MaxAttackSpeedRF','0'),(-1,'Character.MaxAttackSpeedRW','0'),(-1,'Character.MaxAttackSpeedSL','0'),(-1,'Character.MaxAttackSpeedSUM','0'),(-1,'Character.MaxEnergy','0'),(-1,'Character.MaxExpandedInventory','0'),(-1,'Character.MaxLeadership','0'),(-1,'Character.MaxLevelMajestic','0'),(-1,'Character.MaxLevelMaster','0'),(-1,'Character.MaxLevelNormal','0'),(-1,'Character.MaxStrength','0'),(-1,'Character.MaxVitality','0'),(-1,'Character.MaxZen','0'),(-1,'Character.MGDamageModPVE','0'),(-1,'Character.MGDamageModPVP','0'),(-1,'Character.MinMonsterLevelMajestic','0'),(-1,'Character.MinMonsterLevelMaster','0'),(-1,'Character.MPAutorecuperationCount','0'),(-1,'Character.MPAutorecuperationCountRest','0'),(-1,'Character.MPAutorecuperationEnabled','0'),(-1,'Character.MPAutorecuperationMaxLevel','0'),(-1,'Character.MultiAttackFireScream','0'),(-1,'Character.MultiAttackPenetration','0'),(-1,'Character.MurderCount','0'),(-1,'Character.MurderLimitCount','0'),(-1,'Character.MurderTime','0'),(-1,'Character.OfflineAttack','0'),(-1,'Character.OfflineAttackBuffItem','0'),(-1,'Character.OfflineAttackCount','0'),(-1,'Character.OfflineAttackDetailAutoloot','0'),(-1,'Character.OfflineAttackFlag','0'),(-1,'Character.OfflineAttackGoblinPointsGain','0'),(-1,'Character.OfflineAttackIPCount','0'),(-1,'Character.OfflineAttackMaxLevel','0'),(-1,'Character.OfflineAttackMinLevel','0'),(-1,'Character.OfflineAttackMonsterAICheck','0'),(-1,'Character.OfflineAttackOnDisconnect','0'),(-1,'Character.OfflineAttackTime','0'),(-1,'Character.OfflineAttackZenLoot','0'),(-1,'Character.OfflineCloseWhenWrongLevel','0'),(-1,'Character.OfflineDieDisconnectTime','0'),(-1,'Character.OfflineDisconnectTime','0'),(-1,'Character.OfflineMove','0'),(-1,'Character.OfflineSkillTime','0'),(-1,'Character.PKItemDrop','0'),(-1,'Character.PKItemDrop380','0'),(-1,'Character.PKItemDropAncient','0'),(-1,'Character.PKItemDropExcellent','0'),(-1,'Character.PKItemDropHarmony','0'),(-1,'Character.PKItemDropItemMaxLevel','0'),(-1,'Character.PKItemDropMinLevel','0'),(-1,'Character.PKWarpCostIncrease','0'),(-1,'Character.PVPEnabled','0'),(-1,'Character.PVPMinLevel','0'),(-1,'Character.RepairButton.Enabled','0'),(-1,'Character.RepairButton.MinLevel','0'),(-1,'Character.RFDamageModPVE','0'),(-1,'Character.RFDamageModPVP','0'),(-1,'Character.RWDamageModPVE','0'),(-1,'Character.RWDamageModPVP','0'),(-1,'Character.SD.AttackSuccessRate','0'),(-1,'Character.SD.ComboMissInit','0'),(-1,'Character.SD.DamageToShield','0'),(-1,'Character.SDAutorecuperationCount','0'),(-1,'Character.SDAutorecuperationCountRest','0'),(-1,'Character.SDAutorecuperationEnabled','0'),(-1,'Character.SDAutorecuperationMaxLevel','0'),(-1,'Character.SelfDefenseEnabled','0'),(-1,'Character.SelfDefenseTime','0'),(-1,'Character.SLDamageModPVE','0'),(-1,'Character.SLDamageModPVP','0'),(-1,'Character.SMDamageModPVE','0'),(-1,'Character.SMDamageModPVP','0'),(-1,'CheatScan.Ban','0'),(-1,'CheatScan.Count','0'),(-1,'CheatScan.Enabled','0'),(-1,'CheatScan.Kick','0'),(-1,'CheatScan.Time','0'),(-1,'ComboCheck.Count','0'),(-1,'ComboCheck.DatabaseLog','0'),(-1,'ComboCheck.Enabled','0'),(-1,'ComboCheck.Kick','0'),(-1,'ComboCheck.Stop','0'),(-1,'ComboCheck.TimeDiff','0'),(-1,'Command.AddStat.Cost','0'),(-1,'Command.AddStat.Enabled','0'),(-1,'Command.AddStat.MinLevel','0'),(-1,'Command.Gold.Enabled','0'),(-1,'Command.Gold.MaxDays','0'),(-1,'Command.Gold.Price','0'),(-1,'Command.Master','0'),(-1,'Command.Post.Cost','0'),(-1,'Command.Post.Delay','0'),(-1,'Command.Post.Enabled','0'),(-1,'Command.Post.Head','$name: [POST][$server]: $message'),(-1,'Command.Post.MinLevel','0'),(-1,'Command.Post.Type','0'),(-1,'Command.Refresh.Enabled','0'),(-1,'Command.Refresh.Time','0'),(-1,'Common.FenrirRepairRate','0'),(-1,'Common.ItemDrop.ExeMaxOption','2'),(-1,'Common.ItemDrop.ExeMinOption','1'),(-1,'Common.ItemDrop.LuckRateExe','0'),(-1,'Common.ItemDrop.LuckRateNormal','0'),(-1,'Common.ItemDrop.RateExe','0'),(-1,'Common.ItemDrop.RateNormal','0'),(-1,'Common.ItemDrop.SkillRateNormal','0'),(-1,'Common.ItemDrop.Socket1RateExe','0'),(-1,'Common.ItemDrop.Socket1RateNormal','0'),(-1,'Common.ItemDrop.Socket2RateExe','0'),(-1,'Common.ItemDrop.Socket2RateNormal','0'),(-1,'Common.ItemDrop.Socket3RateExe','0'),(-1,'Common.ItemDrop.Socket3RateNormal','0'),(-1,'Common.ItemDrop.Socket4RateExe','0'),(-1,'Common.ItemDrop.Socket4RateNormal','0'),(-1,'Common.ItemDrop.Socket5RateExe','0'),(-1,'Common.ItemDrop.Socket5RateNormal','0'),(-1,'Common.ItemDurationTime','0'),(-1,'Common.JewelOfLife.Enabled','0'),(-1,'Common.JewelOfLife.Max','0'),(-1,'Common.JewelOfLife.MaxRate','0'),(-1,'Common.JewelOfLife.RateAncient','0'),(-1,'Common.JewelOfLife.RateExe','0'),(-1,'Common.JewelOfLife.RateNormal','0'),(-1,'Common.JewelOfLife.RateSocket','0'),(-1,'Common.JewelOfLife.Reset','0'),(-1,'Common.JewelOfLife.ResetRate','0'),(-1,'Common.JewelOfLife.ResetWarning',''),(-1,'Common.JewelOfSoul.Enabled','0'),(-1,'Common.JewelOfSoul.Rate','0'),(-1,'Common.JewelOfSoul.RateLuck','0'),(-1,'Common.LootingTime','0'),(-1,'Common.PersonalMerchantShop',''),(-1,'Crywolf.AIChange.Time','0'),(-1,'Crywolf.Altar.ContractValidationTime','0'),(-1,'Crywolf.Altar.ContractWaitTime','0'),(-1,'Crywolf.Altar.MaxContract','0'),(-1,'Crywolf.Altar.MinLevel','0'),(-1,'Crywolf.Altar.Score','0'),(-1,'Crywolf.Balgass.StartTime','0'),(-1,'Crywolf.Benefit.Apply','0'),(-1,'Crywolf.Benefit.KundunRefill','0'),(-1,'Crywolf.Benefit.MonsterHp','0'),(-1,'Crywolf.Benefit.PlusRate','0'),(-1,'Crywolf.Enabled','0'),(-1,'Crywolf.Penalty.Apply','0'),(-1,'Crywolf.Penalty.DropGem','0'),(-1,'Crywolf.Penalty.ExpGain','0'),(-1,'CustomBoss.SummonCount','0'),(-1,'CustomBoss.SummonDespawnTime','0'),(-1,'CustomBoss.SummonTime','0'),(-1,'DevilSquare.Enabled','0'),(-1,'Doppelganger.Enabled','0'),(-1,'Doppelganger.MonsterSpeed','0'),(-1,'Doppelganger.PKCheck','0'),(-1,'Doppelganger.PKLevelMax','0'),(-1,'Duel.BuffDisabled','0'),(-1,'Duel.Classic','0'),(-1,'Duel.Damage','0'),(-1,'Duel.Duration','0'),(-1,'Duel.Enabled','0'),(-1,'Duel.MaxWaitInterval','0'),(-1,'Duel.MinLevel','0'),(-1,'Duel.MuunDisabled','0'),(-1,'Duel.PentagramDisabled','0'),(-1,'Duel.RequiredZen','0'),(-1,'Duel.RoundStandby','0'),(-1,'Duel.StandByTime','0'),(-1,'Duel.TestLevel','0'),(-1,'Dungeon.Duration','0'),(-1,'Dungeon.Enabled','0'),(-1,'Dungeon.EndGate','0'),(-1,'Dungeon.GAP','0'),(-1,'Dungeon.MaxPerPC','0'),(-1,'Dungeon.MinParty','0'),(-1,'Dungeon.SilverChestMonster','0'),(-1,'Dungeon.SimpleTrapDamage','0'),(-1,'Dungeon.SimpleTrapTime','0'),(-1,'Dungeon.WaitTime','0'),(-1,'DungeonRace.Enabled','999'),(-1,'DungeonRace.Reward',''),(-1,'Event.KillRankingEnabled','0'),(-1,'Event.TimeRankingEnabled','0'),(-1,'EventInventory.Enabled','0'),(-1,'Evomon.Enabled','0'),(-1,'Evomon.PartyReward','0'),(-1,'Evomon.PartySpecialReward','0'),(-1,'Evomon.Send','0'),(-1,'Friend.AddMinLevel','0'),(-1,'Friend.Enabled','0'),(-1,'Friend.MailCost','0'),(-1,'Friend.MailEnabled','0'),(-1,'Friend.MailUpdateInterval','0'),(-1,'GameServer.Active','0'),(-1,'GameServer.AdministratorAuthorization','0'),(-1,'GameServer.AntiDupeBlock','0'),(-1,'GameServer.AntiDupeBoxCheckTime','0'),(-1,'GameServer.AntiDupeBoxEnabled','0'),(-1,'GameServer.AntiDupeBoxRemove','0'),(-1,'GameServer.AntiDupeBoxServer','9999'),(-1,'GameServer.AntiDupeKick','0'),(-1,'GameServer.AntiFloodCount','0'),(-1,'GameServer.AntiFloodKick','0'),(-1,'GameServer.AntiSpam.Count','0'),(-1,'GameServer.AntiSpam.Enabled','0'),(-1,'GameServer.AntiSpam.MuteTime','0'),(-1,'GameServer.AntiSpam.Time','0'),(-1,'GameServer.AttackDebuffFirstHit','0'),(-1,'GameServer.AttackSafeCount','0'),(-1,'GameServer.AttackSafeEnabled','0'),(-1,'GameServer.AttackSafeKick','0'),(-1,'GameServer.AttackSafeTime','0'),(-1,'GameServer.AttackSpeedBan','0'),(-1,'GameServer.AttackSpeedCheck','0'),(-1,'GameServer.AttackSpeedCount','0'),(-1,'GameServer.AttackSpeedKick','0'),(-1,'GameServer.AttackSpeedRange','0'),(-1,'GameServer.AttackSpeedSendTime','0'),(-1,'GameServer.AttackStunCheck','0'),(-1,'GameServer.AuthServerReconnectEnabled','0'),(-1,'GameServer.AuthServerReconnectTime','0'),(-1,'GameServer.AutoLoginEnabled','0'),(-1,'GameServer.AutoLoginRandomTime','0'),(-1,'GameServer.AutoLoginTime','0'),(-1,'GameServer.BossStackCheck','0'),(-1,'GameServer.ChannelChangeEnabled','0'),(-1,'GameServer.ChaosMachineSafeItemMove','0'),(-1,'GameServer.CharacterOnlineOnLogin','0'),(-1,'GameServer.ConnectServerReconnectEnabled','0'),(-1,'GameServer.ConnectServerReconnectTime','0'),(-1,'GameServer.ConnectTimeKick','0'),(-1,'GameServer.CriticalDamageRateLimit','0'),(-1,'GameServer.DarkRavenAutorepair','0'),(-1,'GameServer.DebuffStopCheck','0'),(-1,'GameServer.Debug','0'),(-1,'GameServer.DecreaseDamageRateLimit','0'),(-1,'GameServer.DobleFrustrum','0'),(-1,'GameServer.DupeCompleteBan','0'),(-1,'GameServer.DuplicatedCharacterCheck','0'),(-1,'GameServer.ElfSkillWeaponCheck','0'),(-1,'GameServer.ElfSoldierMaxLevel','0'),(-1,'GameServer.ElfSoldierRemoveOnDie','0'),(-1,'GameServer.ElfSoldierUpdate','0'),(-1,'GameServer.ExcellentDamageRateLimit','0'),(-1,'GameServer.FereaBossHPRecoveryCount','0'),(-1,'GameServer.FereaBossHPRecoveryTime','0'),(-1,'GameServer.FullInventoryToGremoryCase','0'),(-1,'GameServer.GateHandle','0'),(-1,'GameServer.HackCheckBan','0'),(-1,'GameServer.HackCheckCount','0'),(-1,'GameServer.HackCheckEnabled','0'),(-1,'GameServer.HackCheckFrameCount','0'),(-1,'GameServer.HackCheckFullBan','0'),(-1,'GameServer.HackCheckKick','0'),(-1,'GameServer.HackCheckLoopTime','0'),(-1,'GameServer.HackCheckResetTime','0'),(-1,'GameServer.HackCheckTime','0'),(-1,'GameServer.HostilCancelCommand','0'),(-1,'GameServer.IgnoreDefenseRateLimit','0'),(-1,'GameServer.InactiveTime','0'),(-1,'GameServer.InventoryMountTime','0'),(-1,'GameServer.ItemBuffCheck','0'),(-1,'GameServer.ItemBuyLogDB','0'),(-1,'GameServer.ItemDropLogDB','0'),(-1,'GameServer.ItemLootLogDB','0'),(-1,'GameServer.ItemSellLogDB','0'),(-1,'GameServer.ItemSplitEnabled','0'),(-1,'GameServer.JoinItemsWithExpireTime','0'),(-1,'GameServer.LogDB.PersonalStore','0'),(-1,'GameServer.LogDB.Trade','0'),(-1,'GameServer.LoginDiskSerialMacCheck','0'),(-1,'GameServer.LogRecvPacket','0'),(-1,'GameServer.LogSendPacket','0'),(-1,'GameServer.LuckyItemMixCheck','0'),(-1,'GameServer.MajesticExperienceRate','0'),(-1,'GameServer.MajesticZenRate','0'),(-1,'GameServer.MasterExperienceRate','0'),(-1,'GameServer.MasterZenRate','0'),(-1,'GameServer.MaxMonsters','1000'),(-1,'GameServer.MaxPlayers','1000'),(-1,'GameServer.MaxSocketWear','0'),(-1,'GameServer.MonsterAttackWallCheck','0'),(-1,'GameServer.MonsterStopAction','0'),(-1,'GameServer.MonsterTeleportOutOfRange','0'),(-1,'GameServer.MonsterViewportControl','0'),(-1,'GameServer.MultiAttackSkillCheck','0'),(-1,'GameServer.NormalExperienceRate','0'),(-1,'GameServer.NormalMonsterMovement','0'),(-1,'GameServer.NormalZenRate','0'),(-1,'GameServer.PentagramErrtelFix','0'),(-1,'GameServer.PersonalStoreLockSamePC','0'),(-1,'GameServer.PetComboExperience','0'),(-1,'GameServer.PKBossServer','9999'),(-1,'GameServer.PKBossTime','0'),(-1,'GameServer.PostManager.Count','0'),(-1,'GameServer.PostManager.Enabled','0'),(-1,'GameServer.PostManagerMAC.Count','0'),(-1,'GameServer.PostManagerMAC.Enabled','0'),(-1,'GameServer.RecvPacketQueueKick','0'),(-1,'GameServer.RecvPacketQueueMax','0'),(-1,'GameServer.ReflectDamageRateLimit','0'),(-1,'GameServer.ReflectFix','0'),(-1,'GameServer.ReservedMonsters','500'),(-1,'GameServer.ReservedPlayers','500'),(-1,'GameServer.SecurityCode','0'),(-1,'GameServer.Serial',''),(-1,'GameServer.ServerLinkServerReconnectEnabled','0'),(-1,'GameServer.ServerLinkServerReconnectTime','0'),(-1,'GameServer.ServerWarpTransactionCheck1','0'),(-1,'GameServer.ServerWarpTransactionCheck2','0'),(-1,'GameServer.ServerWarpTransactionCheck3','0'),(-1,'GameServer.SessionTimeout','0'),(-1,'GameServer.ShieldDefenseRateLimit','0'),(-1,'GameServer.ShutdownCheck','0'),(-1,'GameServer.SkillBlessStrenghtenerFix','0'),(-1,'GameServer.SkillCheckEnabled','0'),(-1,'GameServer.SpawnMonsterTime','0'),(-1,'GameServer.StackExpirableItemsOnLoot','0'),(-1,'GameServer.TempDualWeaponDmg1','0'),(-1,'GameServer.TempDualWeaponDmg2','0'),(-1,'GameServer.TestEnabled','0'),(-1,'GameServer.TestKey','0'),(-1,'GameServer.TestKickTime','0'),(-1,'GameServer.TimeCheck','0'),(-1,'GameServer.TimeCheckLevelMax','0'),(-1,'GameServer.TimeCheckLevelMin','0'),(-1,'GameServer.TimeCheckTime','0'),(-1,'GameServer.TradeInterfaceCancelBan','0'),(-1,'GameServer.TransactionRollbackCurrency','0'),(-1,'GameServer.Version',''),(-1,'GameServer.ViewportFrustrum','0'),(-1,'GameServer.WalkSpeedBan','0'),(-1,'GameServer.WalkSpeedCount','0'),(-1,'GameServer.WalkSpeedDistance','0'),(-1,'GameServer.WalkSpeedFix','0'),(-1,'GameServer.WalkSpeedKick','0'),(-1,'GameServer.WelcomeMessage',''),(-1,'GameServer.WelcomeNotice','0'),(-1,'GameServer.WhisperLog','0'),(-1,'GameServer.WrongDecryptCount','0'),(-1,'GameServer.WrongDecryptTime','0'),(-1,'GameServer.WrongSerialCount','0'),(-1,'GameServer.WrongSerialTime','0'),(-1,'Gen.ChangeFamilyTime','0'),(-1,'Gen.JoinMinLevel','0'),(-1,'Gen.Penalization','0'),(-1,'Gen.PenalizationCount','0'),(-1,'Gen.PenalizationTime','0'),(-1,'GLElementalDamageFix','1'),(-1,'GoblinPoint.Enabled','0'),(-1,'GoblinPoint.KillTime','0'),(-1,'GoblinPoint.RequiredTime','0'),(-1,'GoblinPoint.RequiredTimeOffline','0'),(-1,'GremoryCase.FreeSpaceCheck','1'),(-1,'Guardian.DisassembleItemBag',''),(-1,'Guild.Alliance.CastleSiegeCheck','0'),(-1,'Guild.Alliance.Gens','0'),(-1,'Guild.Alliance.Max','0'),(-1,'Guild.Alliance.MinMembers','0'),(-1,'Guild.BattleSoccer.Duration','0'),(-1,'Guild.BattleSoccer.Enabled','0'),(-1,'Guild.BattleSoccer.GoalPoints','0'),(-1,'Guild.BattleSoccer.KillAssistantPoints','0'),(-1,'Guild.BattleSoccer.KillBattlePoints','0'),(-1,'Guild.BattleSoccer.KillMasterPoints','0'),(-1,'Guild.BattleSoccer.KillPoints','0'),(-1,'Guild.BattleSoccer.MaxScore','0'),(-1,'Guild.CreateGens','0'),(-1,'Guild.CreateMinLevel','0'),(-1,'Guild.Delete','0'),(-1,'Guild.Enabled','0'),(-1,'Guild.Hostil.EventKill','0'),(-1,'Guild.JoinGens','0'),(-1,'Guild.MaxWaitInterval','0'),(-1,'Guild.War.Enabled','0'),(-1,'Guild.War.IntervalTime','0'),(-1,'Guild.War.KillAssistantPoints','0'),(-1,'Guild.War.KillBattlePoints','0'),(-1,'Guild.War.KillMasterPoints','0'),(-1,'Guild.War.KillPoints','0'),(-1,'Guild.War.Max','0'),(-1,'Guild.War.MaxPoints','0'),(-1,'Guild.War.MaxWaitInterval','0'),(-1,'GuildScore.ArkaWar','0'),(-1,'GuildScore.CastleSiege','0'),(-1,'GuildScore.CastleSiegeMembers','0'),(-1,'HappyHour.DropAdd','0'),(-1,'HappyHour.ExperienceAdd','0'),(-1,'Harmony.Enabled','0'),(-1,'Harmony.OnAncient','0'),(-1,'Harmony.RefineRate','0'),(-1,'Harmony.SmeltExeRate','0'),(-1,'Harmony.SmeltNormalRate','0'),(-1,'Harmony.StrengthenRate','0'),(-1,'Harmony.StrengthenUpdateExeRate','0'),(-1,'Harmony.StrengthenUpdateNormalRate','0'),(-1,'Helper.AutoLootEnabled','0'),(-1,'Helper.BuffItemUseCheck','0'),(-1,'Helper.LootEnabled','0'),(-1,'Helper.PotionUseEnabled','0'),(-1,'Helper.RepairEnabled','0'),(-1,'HuntingRecord.Clear','0'),(-1,'ImperialFortress.Day','-1'),(-1,'ImperialFortress.Enabled','0'),(-1,'ImperialFortress.EndTime','0'),(-1,'ImperialFortress.InParty','0'),(-1,'ImperialFortress.MoveToPrevious','0'),(-1,'ImperialFortress.PKCheck','0'),(-1,'ImperialFortress.PKLevelMax','0'),(-1,'ImperialFortress.PlayTime','0'),(-1,'ImperialFortress.StandbyTime','0'),(-1,'ImperialFortress.TeleportCheck','0'),(-1,'ImperialFortress.TimeZone1','0'),(-1,'ImperialFortress.TimeZone2','0'),(-1,'ImperialFortress.TimeZone3','0'),(-1,'ImperialFortress.TimeZone4','0'),(-1,'ImperialFortress.WalkCheck','0'),(-1,'ItemUpgrade.SuccessRate10','60'),(-1,'ItemUpgrade.SuccessRate11','60'),(-1,'ItemUpgrade.SuccessRate12','55'),(-1,'ItemUpgrade.SuccessRate13','55'),(-1,'ItemUpgrade.SuccessRate14','50'),(-1,'ItemUpgrade.SuccessRate15','50'),(-1,'JewelBingo.Enabled','0'),(-1,'JewelBingo.RequiredTicket','0'),(-1,'JewelBingo.Reward','0'),(-1,'JewelBingo.ScoreD','0'),(-1,'JewelBingo.ScoreH','0'),(-1,'JewelBingo.ScoreNotMatched','0'),(-1,'JewelBingo.ScoreSpecialH','0'),(-1,'JewelBingo.ScoreSpecialV','0'),(-1,'JewelBingo.ScoreV','0'),(-1,'Kanturu.Enabled','0'),(-1,'Kanturu.MaxPlayers','0'),(-1,'Kanturu.Maya.IceStormRate','0'),(-1,'Kanturu.Maya.SkillTime','0'),(-1,'Kick.Enabled','0'),(-1,'Kick.Type','0'),(-1,'Kundun.RefillHp','0'),(-1,'Kundun.RefillHpSec','0'),(-1,'Kundun.RefillTime','0'),(-1,'LabyrinthOfDimensions.DayFirstScore','0'),(-1,'LabyrinthOfDimensions.GoblinScore','0'),(-1,'LabyrinthOfDimensions.GoblinStage','0'),(-1,'LabyrinthOfDimensions.MissionTime','0'),(-1,'LabyrinthOfDimensions.MoveBronze','0'),(-1,'LabyrinthOfDimensions.MoveGold','0'),(-1,'LabyrinthOfDimensions.MoveLegend','0'),(-1,'LabyrinthOfDimensions.MoveOnFail','0'),(-1,'LabyrinthOfDimensions.MoveSilver','0'),(-1,'LabyrinthOfDimensions.RequiredLevel','0'),(-1,'LabyrinthOfDimensions.RequiredMaster','0'),(-1,'LabyrinthOfDimensions.Server','9999'),(-1,'LabyrinthOfDimensions.StateDuration','0'),(-1,'LabyrinthOfDimensions.TimeScore','0'),(-1,'LastManStanding.Classic','0'),(-1,'LastManStanding.DamageReduction','0'),(-1,'LastManStanding.Duration','0'),(-1,'LastManStanding.HideCharacter','0'),(-1,'LastManStanding.KillScore','0'),(-1,'LastManStanding.LevelRange','0'),(-1,'LastManStanding.MaxPerPC','0'),(-1,'LastManStanding.MinLevel','0'),(-1,'LastManStanding.Server','9999'),(-1,'LastManStanding.WinScore','0'),(-1,'Log.DamagePVP','0'),(-1,'Log.DamagePVPToDB','0'),(-1,'LosttowerRace.Enabled','999'),(-1,'LosttowerRace.Reward',''),(-1,'LuckyItem.Fix','0'),(-1,'LuckyItem.FixCount','0'),(-1,'MajesticAddDamageNormal','1'),(-1,'MajesticSkillDamageNormal','1'),(-1,'MiniBomb.ClearScore','0'),(-1,'MiniBomb.Enabled','0'),(-1,'MiniBomb.FailScore','0'),(-1,'MiniBomb.FoundedBombsScore','0'),(-1,'MiniBomb.RequiredTicket','0'),(-1,'MiniBomb.RevealScore','0'),(-1,'MiniBomb.Reward','0'),(-1,'MiniBomb.WrongBombsScore','0'),(-1,'Mix.GreaterSpellStonePriceDivision','0'),(-1,'Mix.GreaterSpellStoneRate','0'),(-1,'Mix.LesserSpellStonePriceDivision','0'),(-1,'Mix.LesserSpellStoneRate','0'),(-1,'Mix.MediumSpellStonePriceDivision','0'),(-1,'Mix.MediumSpellStoneRate','0'),(-1,'Mix.SealedBloodAngelExcellentMax','0'),(-1,'Mix.SealedBloodAngelExcellentMin','0'),(-1,'MixRecovery.Enabled','0'),(-1,'MixRecovery.ErrtelMixFailCount','1'),(-1,'MixRecovery.ErrtelOnFail','0'),(-1,'MixRecovery.ErrtelRemoveFailCount','5'),(-1,'MixRecovery.FailTime','0'),(-1,'MixRecovery.PriceBless','0'),(-1,'MixRecovery.PriceWC','0'),(-1,'MixRecovery.Time','0'),(-1,'MixRecovery.Warning','0'),(-1,'MonsterSoul.DurationTime','0'),(-1,'MonsterSoul.PurchaseAmount','0'),(-1,'MossMerchant.Enabled','0'),(-1,'MossMerchant.ItemBag.Bow',''),(-1,'MossMerchant.ItemBag.Scepter',''),(-1,'MossMerchant.ItemBag.Staff',''),(-1,'MossMerchant.ItemBag.Stick',''),(-1,'MossMerchant.ItemBag.Sword',''),(-1,'MuRoomy.Enabled','0'),(-1,'MuRoomy.RewardMoneyAmount','0'),(-1,'MuRoomy.SpecialEnabled','0'),(-1,'MuRoomy.TicketRequired','0'),(-1,'Muun.Attack.Delay','0'),(-1,'Muun.Attack.Enabled','0'),(-1,'Muun.Attack.HitDelay','0'),(-1,'Muun.Attack.Range','0'),(-1,'Muun.DurabilityRate','0'),(-1,'Muun.EvolveBonus','0'),(-1,'Muun.EvolveBonusTime','0'),(-1,'Muun.MountTime','0'),(-1,'Network.BindIP','0.0.0.0'),(-1,'Network.MaxConnectionPerIP','0'),(-1,'NixiesLake.BattleTime','0'),(-1,'NixiesLake.BossRecoveryPercent','0'),(-1,'NixiesLake.BossRecoveryStandyTime','0'),(-1,'NixiesLake.BossRecoveryTime','0'),(-1,'NixiesLake.ClosedTime','0'),(-1,'NixiesLake.Free','0'),(-1,'NixiesLake.ItemBag1',''),(-1,'NixiesLake.ItemBag2',''),(-1,'NixiesLake.ItemBag3',''),(-1,'NixiesLake.ItemBag4',''),(-1,'NixiesLake.ItemBag5',''),(-1,'NixiesLake.Server','9999'),(-1,'NixiesLake.StandbyTime','0'),(-1,'NumericBaseball.Enabled','0'),(-1,'NumericBaseball.RequiredTicket','0'),(-1,'NumericBaseball.Reward','0'),(-1,'NumericBaseball.Score1','0'),(-1,'NumericBaseball.Score2','0'),(-1,'NumericBaseball.Score3','0'),(-1,'NumericBaseball.Score4','0'),(-1,'NumericBaseball.Score5','0'),(-1,'NumericBaseball.ScoreBall','0'),(-1,'NumericBaseball.ScoreStrike','0'),(-1,'OnlyBaseStatForEquipment','1'),(-1,'Option380.Enabled','0'),(-1,'Option380.Price','0'),(-1,'Option380.RateGrade1','0'),(-1,'Option380.RateGrade2','0'),(-1,'Option380.RateGrade3','0'),(-1,'Party.AllowDifGens','0'),(-1,'Party.AllowPK','0'),(-1,'Party.BonusExperience2','0'),(-1,'Party.BonusExperience3','0'),(-1,'Party.BonusExperience4','0'),(-1,'Party.BonusExperience5','0'),(-1,'Party.Enabled','0'),(-1,'Party.Experience2','0'),(-1,'Party.Experience3','0'),(-1,'Party.Experience4','0'),(-1,'Party.Experience5','0'),(-1,'Party.InBattlezone','0'),(-1,'Party.LeaderChange','0'),(-1,'Party.MatchingEnabled','0'),(-1,'Party.MatchingLeaderChange','0'),(-1,'Party.MaxLevelDif','0'),(-1,'Party.MaxWaitInterval','0'),(-1,'Party.MemberOfflineInterval','1'),(-1,'Party.MoveCost','0'),(-1,'Party.MoveEnabled','0'),(-1,'PersonalStore.Disconnect','0'),(-1,'PersonalStore.Enabled','0'),(-1,'PersonalStore.MinLevel','0'),(-1,'PersonalStore.Off','0'),(-1,'PersonalStore.OffCount','0'),(-1,'PersonalStore.OffDuration','0'),(-1,'PersonalStore.OffTotalCount','0'),(-1,'PlayerWalkSpeed','400'),(-1,'ProtectorOfAcheron.Enabled','0'),(-1,'QuestMU.Enabled','0'),(-1,'Radiance.BindingDuration','5'),(-1,'Radiance.BleedingDuration','10'),(-1,'Radiance.BleedingRate','5'),(-1,'Radiance.BlindingDuration','10'),(-1,'Radiance.BlindingRate','5'),(-1,'Radiance.ParalysisEffect','90'),(-1,'Radiance.ParalysisRate','5'),(-1,'Raklion.Enabled','0'),(-1,'Raklion.FailTimeMax','0'),(-1,'Raklion.FailTimeMin','0'),(-1,'Raklion.SuccessTimeMax','0'),(-1,'Raklion.SuccessTimeMin','0'),(-1,'RareIceDragonRate','5'),(-1,'Refuge.MoveCost','0'),(-1,'Refuge.MoveEnabled','0'),(-1,'Refuge.MoveMinLevel','0'),(-1,'Refuge.MoveParty','0'),(-1,'SantaVillage.CheckSeason','0'),(-1,'SantaVillage.Enabled','0'),(-1,'SantaVillage.SantaClaus.Enabled','0'),(-1,'SantaVillage.SantaClaus.GiftTime','0'),(-1,'SantaVillage.SantaClaus.ItemBag',''),(-1,'SantaVillage.Season','0'),(-1,'Scramble.Enabled','999'),(-1,'Scramble.RepeatWordCount','0'),(-1,'Scramble.Reward',''),(-1,'Scramble.TotalWordCount','0'),(-1,'SecretShop.List',''),(-1,'SecretShop.WarpTime','0'),(-1,'Skill.AbsorbHPRate','0'),(-1,'Skill.AbsorbSDRate','0'),(-1,'Skill.ArchangelWillDamage','0'),(-1,'Skill.ArchangelWillDuration','0'),(-1,'Skill.ArchangelWillSkillDamage','0'),(-1,'Skill.BastionRate','0'),(-1,'Skill.BastionReduction','0'),(-1,'Skill.BastionSD','0'),(-1,'Skill.BlindAdd','0'),(-1,'Skill.BlindDiv','0'),(-1,'Skill.BlindTime','0'),(-1,'Skill.BlindValue','0'),(-1,'Skill.BloodHowlingDamage','0'),(-1,'Skill.BloodHowlingDuration','0'),(-1,'Skill.BloodHowlingRate','0'),(-1,'Skill.BossDebuffBlow','0'),(-1,'Skill.BurstRWDurationAdd','0'),(-1,'Skill.BurstRWDurationDiv','0'),(-1,'Skill.BurstRWEffect1Div','0'),(-1,'Skill.BurstRWEffect2Div','0'),(-1,'Skill.CircleShieldDuration','0'),(-1,'Skill.CircleShieldReduceAG','0'),(-1,'Skill.CircleShieldReduceAGRate','0'),(-1,'Skill.CureBuffRate','0'),(-1,'Skill.DarkPlasmaAttackDistance','8'),(-1,'Skill.DarkPlasmaAttackSpeed','5'),(-1,'Skill.DarkPlasmaTargetCount','5'),(-1,'Skill.DetectionRange','0'),(-1,'Skill.EarthPrisonStunRate','0'),(-1,'Skill.ElementalBerserkerI','0'),(-1,'Skill.ElementalBerserkerIDamage','0'),(-1,'Skill.ElementalBerserkerIDefense','0'),(-1,'Skill.ElementalImmuneI','0'),(-1,'Skill.ElementalImmuneII','0'),(-1,'Skill.EnergyCheck','0'),(-1,'Skill.FireScreamExplosionRate','0'),(-1,'Skill.FixPowersOnBuff','0'),(-1,'Skill.HasteRWDurationAdd','0'),(-1,'Skill.HasteRWDurationDiv','0'),(-1,'Skill.HasteRWEffect1Div','0'),(-1,'Skill.HasteRWEffect2Div','0'),(-1,'Skill.IllusionDuration','0'),(-1,'Skill.IronDefenseDuration','0'),(-1,'Skill.IronDefenseValue1','0'),(-1,'Skill.IronDefenseValue2','0'),(-1,'Skill.LeadershipCheck','0'),(-1,'Skill.MagicArrowProjectiles','0'),(-1,'Skill.MagicArrowSplashDamage','0'),(-1,'Skill.MagicArrowSplashDistance','0'),(-1,'Skill.MagicArrowSplashTargets','0'),(-1,'Skill.MagicPinExplosionDamage','0'),(-1,'Skill.MagicPinExplosionRate','0'),(-1,'Skill.ManaShieldCastleSiegeLimit','0'),(-1,'Skill.ManaShieldLimit','0'),(-1,'Skill.MultiAttackCount','0'),(-1,'Skill.MultiAttackNew','0'),(-1,'Skill.MultiAttackTime','0'),(-1,'Skill.ParalizeDebuffRate','0'),(-1,'Skill.PlasmaBallAttackCount','0'),(-1,'Skill.PlasmaBallAttackDistance','0'),(-1,'Skill.PlasmaBallAttackSpeed','0'),(-1,'Skill.PlasmaBallMoveDistance','0'),(-1,'Skill.PlasmaBallMoveSpeed','0'),(-1,'Skill.PlasmaBallTargetCount','0'),(-1,'Skill.PoisonArrowDebuffRate','0'),(-1,'Skill.PunishFirstHit','0'),(-1,'Skill.PunishFrequencyPVM','0'),(-1,'Skill.PunishFrequencyPVP','0'),(-1,'Skill.PunishMaxDamage','0'),(-1,'Skill.PunishRatePVM','0'),(-1,'Skill.PunishRatePVP','0'),(-1,'Skill.ReflectLimit','25'),(-1,'Skill.SleepLimit','70'),(-1,'Skill.SleepLimitTime','70'),(-1,'Skill.SleepReuseTime','1000'),(-1,'Skill.SplashDamagePercent','0'),(-1,'SkillTeleport.StateAttack0','0'),(-1,'SkillTeleport.StateAttack1','0'),(-1,'SkillTeleport.StateAttack2','0'),(-1,'SkillTeleport.StateAttack3','0'),(-1,'SkillTeleport.StateRemoveVP0','0'),(-1,'SkillTeleport.StateRemoveVP1','0'),(-1,'SkillTeleport.StateRemoveVP2','0'),(-1,'SkillTeleport.StateRemoveVP3','0'),(-1,'SkillTeleport.StateTime0','0'),(-1,'SkillTeleport.StateTime1','0'),(-1,'SkillTeleport.StateTime2','0'),(-1,'SkillTeleport.StateTime3','0'),(-1,'SpecialMap.CharacterCount','0'),(-1,'SpecialMap.PVP','0'),(-1,'SwampOfDarkness.BattleTime','0'),(-1,'SwampOfDarkness.BossAppearTime','0'),(-1,'SwampOfDarkness.ClosedTimeMax','0'),(-1,'SwampOfDarkness.ClosedTimeMin','0'),(-1,'SwampOfDarkness.Enabled','0'),(-1,'SwampOfDarkness.MaxPlayers','0'),(-1,'TeleportCoordinateBuff','57 241'),(-1,'TeleportFix','1'),(-1,'TeleportRestrictBuff','61 72 146 147'),(-1,'TormentedSquare.Enabled','0'),(-1,'TormentedSquareSurvival.Enabled','0'),(-1,'Trade.Enabled','0'),(-1,'Trade.MaxWaitInterval','0'),(-1,'Trade.MaxZen','0'),(-1,'Transaction.DuplicatedSerialDelete','0'),(-1,'Transaction.SharedDuplicatedSerialDelete','0'),(-1,'Transfer.Enabled','0'),(-1,'Transfer.PartyServer','-1'),(-1,'Transfer.Server','-1'),(-1,'WorldBoss.AOERange','0'),(-1,'WorldBoss.Enabled','0'),(-1,'WorldBoss.GuildPK','0'),(-1,'WorldBoss.IncreaseDamagePerPoint','0'),(-1,'WorldBoss.ItemBag',''),(-1,'WorldBoss.MaxPKPoints','0'),(-1,'WorldBoss.NormalRespawn','0'),(-1,'WorldBoss.PKGAP','0'),(-1,'WorldBoss.PKRange','0'),(-1,'WorldBoss.RequiredPlayer','0'),(-1,'WorldBoss.RequiredPointsToAttack','0'),(-1,'WorldBoss.StartNotification','0'),(0,'Account.ConnectCheckTime','180'),(0,'Character.MaxAgility','32000'),(0,'Character.MaxEnergy','32000'),(0,'Character.MaxLeadership','32000'),(0,'Character.MaxStrength','32000'),(0,'Character.MaxVitality','32000'),(0,'GameServer.Active','1'),(0,'GameServer.LogDB.Trade','1'),(0,'GameServer.Serial','jw45af7xf4wxj198'),(0,'GameServer.Version','1.07.17'),(0,'Network.MaxConnectionPerIP','9999'),(0,'Trade.Enabled','1'),(0,'Trade.MaxZen','999999999');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_items`
--

DROP TABLE IF EXISTS `shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_items` (
  `shop` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_items`
--

LOCK TABLES `shop_items` WRITE;
/*!40000 ALTER TABLE `shop_items` DISABLE KEYS */;
INSERT INTO `shop_items` VALUES (26,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(26,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(26,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(26,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(26,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(26,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(26,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(22,0,41,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(22,5,6,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,5),(22,4,16,3,0,1,1,3,0,0,65535,65535,65535,65535,65535,0,4),(22,4,14,3,0,1,1,3,0,0,65535,65535,65535,65535,65535,0,3),(22,2,9,3,0,1,1,3,0,0,65535,65535,65535,65535,65535,0,2),(22,2,8,3,0,1,1,3,0,0,65535,65535,65535,65535,65535,0,1),(22,0,16,3,0,1,1,3,0,0,65535,65535,65535,65535,65535,0,0),(21,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(21,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(21,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(21,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(21,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(21,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(21,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(21,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(21,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(21,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(21,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(21,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(21,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(21,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(21,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(21,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(21,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(21,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(21,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(21,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(21,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(21,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(21,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(21,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(21,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(21,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(21,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(21,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(21,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(21,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(20,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(20,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(20,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(20,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(20,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(20,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(20,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(20,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(20,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(20,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(20,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(20,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(20,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(20,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(20,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(20,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(20,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(20,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(20,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(20,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(20,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(20,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(20,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(20,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(20,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(20,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(20,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(20,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(20,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(20,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(19,15,20,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(19,15,6,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(19,15,1,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(19,15,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(19,15,3,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(18,5,16,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,19),(18,5,15,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,18),(18,5,14,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,17),(18,5,0,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,16),(18,0,0,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,15),(18,1,4,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,14),(18,0,2,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,13),(18,1,1,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,12),(18,0,1,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,11),(18,1,0,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,10),(18,11,40,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(18,10,40,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,8),(18,9,40,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,7),(18,8,40,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,6),(18,7,40,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,5),(18,11,39,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,4),(18,10,39,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,3),(18,9,39,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,2),(18,8,39,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,1),(18,7,39,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,0),(17,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(17,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(17,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(17,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(17,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(17,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(17,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(17,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(17,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(17,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(17,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(17,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(17,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(17,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(17,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(17,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(17,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(17,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(17,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(17,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(17,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(17,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(17,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(17,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(17,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(17,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(17,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(17,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(17,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(17,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(16,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(16,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(16,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(16,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(16,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(16,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(16,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(16,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(16,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(16,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(16,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(16,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(16,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(16,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(16,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(16,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(16,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(16,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(16,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(16,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(16,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(16,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(16,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(16,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(16,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(16,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(16,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(16,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(16,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(16,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(15,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(15,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(15,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(15,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(15,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(15,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(15,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(15,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(15,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(15,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(15,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(15,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(15,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(15,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(15,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(15,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(15,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(15,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(15,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(15,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(15,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(15,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(15,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(15,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(15,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(15,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(15,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(15,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(15,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(15,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(14,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(14,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(14,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(14,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(14,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(14,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(14,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(14,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(14,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(14,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(14,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(14,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(14,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(12,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,1,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,2,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,3,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,4,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,6,0,100,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,3,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,13,0,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,8,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,9,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(12,14,10,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(14,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(14,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(14,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(14,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(14,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(14,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(14,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(14,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(14,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(14,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(14,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(14,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(14,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(14,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(14,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(14,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(14,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(13,14,63,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(11,3,13,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,14),(11,6,31,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,13),(11,6,29,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,12),(11,11,91,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,11),(11,10,91,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,10),(11,9,91,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(11,8,91,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,8),(11,7,91,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,7),(11,12,276,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(11,12,272,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(11,12,275,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(11,12,277,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(11,12,273,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(11,12,274,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(11,12,271,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(10,11,12,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,51),(10,10,12,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,50),(10,9,12,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,49),(10,8,12,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,48),(10,7,12,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,47),(10,11,11,2,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,46),(10,10,11,2,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,45),(10,9,11,2,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,44),(10,8,11,2,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,43),(10,7,11,2,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,42),(10,11,10,0,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,41),(10,10,10,0,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,40),(10,9,10,0,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,39),(10,8,10,0,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,38),(10,7,10,0,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,37),(10,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,36),(10,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,35),(10,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,34),(10,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,33),(10,14,9,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,32),(10,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(10,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(10,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(10,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,28),(10,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(10,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(10,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(10,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(10,12,11,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(10,12,11,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(10,12,11,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(10,12,11,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(10,12,11,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(10,12,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(10,12,9,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(10,12,8,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(10,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(10,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(10,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(10,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(10,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(10,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(10,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(10,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(10,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(10,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(10,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(10,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(10,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(10,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(10,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(10,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(9,6,3,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,19),(9,4,10,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,18),(9,4,4,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,17),(9,4,11,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,16),(9,4,3,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,15),(9,4,2,2,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,14),(9,4,1,0,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,13),(9,4,0,0,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,12),(9,4,9,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,11),(9,4,8,1,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,10),(9,11,14,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(9,10,14,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,8),(9,9,14,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,7),(9,8,14,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,6),(9,7,14,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,5),(9,11,13,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,4),(9,10,13,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,3),(9,9,13,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,2),(9,8,13,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,1),(9,7,13,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,0),(8,4,13,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,15),(8,4,5,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,14),(8,3,9,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,13),(8,3,8,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,12),(8,4,12,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,11),(8,0,12,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,10),(8,0,14,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,9),(8,0,13,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,8),(8,0,15,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,7),(8,0,11,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,6),(8,0,9,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,5),(8,11,1,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,4),(8,10,1,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,3),(8,9,1,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,2),(8,8,1,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,1),(8,7,1,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,0),(7,6,14,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,37),(7,5,4,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,36),(7,11,3,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,35),(7,10,3,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,34),(7,9,3,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,33),(7,8,3,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,32),(7,7,3,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,31),(7,5,5,3,0,0,1,3,0,0,65535,65535,65535,65535,65535,0,30),(7,15,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(7,15,4,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,28),(7,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(7,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,26),(7,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(7,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(7,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(7,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(7,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(7,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(7,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(7,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(7,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(7,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(7,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(7,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(7,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(7,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(7,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(23,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,1,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,2,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,3,0,30,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,4,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,6,0,100,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,13,0,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,9,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,9,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,20,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,10,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(7,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(24,13,71,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(24,13,72,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(24,13,73,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(24,13,74,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(24,13,75,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(25,14,14,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(25,14,13,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(25,12,15,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(7,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(7,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(7,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(7,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(12,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(7,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(7,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(7,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(7,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(7,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(7,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(23,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,13,400,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,399,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,413,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,12,305,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,0,46,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,13,394,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,393,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,392,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,391,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,296,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,12,295,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,5,43,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,13,390,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,389,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,388,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,387,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,303,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,2,22,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,13,382,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,381,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,380,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,379,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,300,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,33),(50,12,299,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,32),(50,12,298,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,12,297,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,0,44,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,21),(50,14,397,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(50,14,396,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(50,13,378,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(50,13,377,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(50,13,376,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(50,13,375,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(50,13,374,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,373,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,372,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,371,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,293,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,4,34,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,21),(50,4,28,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,14,395,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(50,14,394,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(50,13,370,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(50,13,369,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(50,13,368,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(50,13,367,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(50,13,366,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,365,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,364,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,363,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,292,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,32),(50,12,291,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,12,290,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,5,41,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(5,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(5,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(5,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(5,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(5,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(5,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(5,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(5,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(5,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(5,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(5,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(5,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(5,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(5,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(5,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(5,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(5,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(5,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(5,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(5,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(5,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(5,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(5,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(5,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(5,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(5,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(5,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(5,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(5,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(5,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(3,11,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,24),(3,10,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,23),(3,9,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,22),(3,8,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,21),(3,7,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,20),(3,11,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,19),(3,10,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,18),(3,9,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,17),(3,8,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,16),(3,7,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,15),(3,11,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,14),(3,10,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,13),(3,9,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,12),(3,8,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,11),(3,7,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,10),(3,11,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(3,10,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,8),(3,9,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,7),(3,8,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,6),(3,7,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,5),(3,11,5,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,4),(3,10,5,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,3),(3,9,5,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,2),(3,8,5,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,1),(3,7,5,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,0),(2,5,2,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,27),(2,5,1,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,26),(2,5,0,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,25),(2,5,3,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,24),(2,11,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,23),(2,10,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,22),(2,9,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,21),(2,8,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,20),(2,7,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,19),(2,11,4,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,18),(2,10,4,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,17),(2,9,4,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,16),(2,8,4,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,15),(2,7,4,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,14),(2,11,2,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,13),(2,10,2,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,12),(2,9,2,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,11),(2,8,2,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,10),(2,7,2,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(2,12,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(2,12,13,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(2,15,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(2,15,6,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(2,15,5,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(2,15,1,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(2,15,2,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(2,15,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(2,15,3,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(6,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(6,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(6,14,9,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,13,401,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(1,14,19,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,13,402,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(1,13,18,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(1,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(1,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(1,14,9,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(1,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(1,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(1,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(1,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(1,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(1,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(1,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(1,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(1,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(1,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(1,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(1,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(1,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(1,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(1,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(1,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(1,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(1,14,2,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(1,14,1,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(1,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(1,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(1,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(1,14,0,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(1,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(0,0,5,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,24),(0,0,8,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,23),(0,0,7,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,22),(0,0,6,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,21),(0,0,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,20),(0,1,3,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,19),(0,2,1,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,18),(0,0,4,3,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,17),(0,1,2,2,0,1,1,1,0,0,65535,65535,65535,65535,65535,0,16),(0,0,2,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,15),(0,2,0,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,14),(0,1,1,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,13),(0,0,1,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,12),(0,6,12,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,11),(0,6,11,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,10),(0,6,8,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,9),(0,6,5,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,8),(0,6,7,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,7),(0,6,9,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,6),(0,6,10,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,5),(0,6,6,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,4),(0,6,2,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,3),(0,6,1,2,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,2),(0,6,4,1,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,1),(0,6,0,0,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,0),(26,14,3,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(26,14,1,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(26,14,2,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(26,14,3,1,10,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(26,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(26,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(26,14,4,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(26,14,5,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(26,14,6,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(26,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(26,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(26,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(26,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(26,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(26,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(26,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(26,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(26,13,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(26,13,7,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(26,14,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(26,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(26,16,239,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,500000000,28),(26,12,288,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(50,14,495,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,119),(50,14,494,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,118),(50,0,71,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,12,482,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,12,479,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,13,386,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,385,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,384,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,383,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,14,464,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,117),(50,14,463,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,116),(50,14,462,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,115),(50,14,461,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,114),(50,14,460,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,113),(50,14,458,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,112),(50,15,45,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,32),(50,5,57,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,21),(50,14,450,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,111),(50,14,449,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,110),(50,13,355,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,13,356,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,357,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,358,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,2,32,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,15,39,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,12,409,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,109),(50,12,407,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,108),(50,14,390,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,107),(50,14,384,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,106),(50,14,364,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,105),(50,14,416,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,104),(50,14,415,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,103),(50,14,389,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,102),(50,14,386,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,101),(50,14,341,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,100),(50,3,19,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(204,14,42,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,100000000,0),(203,14,22,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,20000000,0),(202,12,15,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,5000000,0),(201,14,14,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,30000000,0),(200,14,13,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,90000000,0),(28,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(28,14,40,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(28,14,39,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(28,14,38,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(28,14,37,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(28,14,36,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(28,14,35,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(28,14,40,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(28,14,39,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(28,14,38,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(28,14,37,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(28,14,36,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(28,14,35,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(27,13,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,32),(27,4,15,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(27,4,15,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(27,4,15,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,29),(27,4,15,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,28),(27,4,7,3,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,27),(27,4,7,2,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,26),(27,4,7,1,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,25),(27,4,7,0,255,0,0,0,0,0,65535,65535,65535,65535,65535,0,24),(27,14,3,1,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,23),(27,14,2,1,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,22),(27,14,1,1,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,21),(27,14,0,1,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,20),(27,14,3,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,19),(27,14,2,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,18),(27,14,1,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,17),(27,14,0,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,16),(27,14,8,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,15),(27,14,6,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,14),(27,14,5,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,13),(27,14,4,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,12),(27,14,3,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,11),(27,14,2,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,10),(27,14,1,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(27,14,0,0,3,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(27,14,8,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(27,14,6,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(27,14,5,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(27,14,4,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(27,14,3,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(27,14,2,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(27,14,1,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(27,14,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(20,12,70,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,255),(17,12,70,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,255),(10,12,70,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,255),(6,12,70,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,255),(1,12,70,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,255),(50,13,362,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,361,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,360,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,359,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,289,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,0,42,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,20),(50,13,354,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,353,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,352,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,351,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(9,4,32,3,0,0,1,1,0,0,65535,65535,65535,65535,65535,0,20),(50,6,44,0,0,1,1,0,2,0,65535,65535,65535,65535,65535,0,21),(50,13,395,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,4),(50,13,396,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,5),(50,13,397,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,6),(50,13,398,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,7),(50,14,499,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,8),(50,14,500,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,9),(50,12,486,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31),(50,14,497,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,120),(50,14,498,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,121),(101,12,15,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,1),(101,12,15,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,2),(101,12,15,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,3),(101,12,15,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,4),(101,14,13,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,5),(101,14,13,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,6),(101,14,13,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,7),(101,14,13,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,8),(101,14,14,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,9),(101,14,14,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,10),(101,14,14,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,11),(101,14,14,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,12),(101,14,16,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,13),(101,14,16,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,14),(101,14,16,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,15),(101,14,16,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,16),(101,14,22,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,17),(101,14,22,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,18),(101,14,22,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,19),(101,14,22,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,20),(101,14,31,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,21),(101,14,31,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,22),(101,14,31,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,23),(101,14,31,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,24),(101,14,42,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,25),(101,14,42,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,26),(101,14,42,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,27),(101,14,42,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,28),(101,14,43,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,32),(101,14,44,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,36),(101,14,53,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,37),(101,14,96,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,38),(101,14,160,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,39),(101,14,161,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,40),(101,14,342,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,41),(101,14,345,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,42),(101,13,31,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,43),(101,13,31,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,44),(101,14,287,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,45),(101,12,404,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,46),(101,12,405,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,47),(101,12,406,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,48),(101,14,458,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,49),(101,14,466,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,1,50),(101,14,466,0,5,0,0,0,0,0,65535,65535,65535,65535,65535,1,51),(101,14,466,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,52),(101,14,467,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,56),(101,14,468,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,60),(101,14,469,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,61),(101,14,471,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,65),(101,14,477,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,66),(101,14,120,10,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,67),(101,13,52,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,68),(101,13,14,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,68),(101,13,14,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,68),(101,13,53,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,69),(101,13,466,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,70),(101,13,467,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,71),(101,13,468,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,72),(101,13,510,0,50,0,0,0,0,0,65535,65535,65535,65535,65535,1,73),(101,13,407,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,74),(101,14,442,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,99),(101,12,288,0,200,0,0,0,0,0,65535,65535,65535,65535,65535,1,99),(101,14,443,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,100),(101,12,401,0,200,0,0,0,0,0,65535,65535,65535,65535,65535,1,100),(101,13,210,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,101),(101,13,220,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,102),(101,13,221,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,103),(101,13,222,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,104),(101,14,453,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,105),(101,14,490,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,106),(101,13,2,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,107),(101,13,3,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,108),(101,13,4,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,109),(101,13,5,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,110),(101,14,176,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,115),(101,14,177,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,116),(101,14,178,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,117),(101,14,179,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,118),(101,13,15,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,119),(101,13,15,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,120),(101,13,15,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,121),(101,13,15,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,122),(101,13,15,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,123),(101,13,32,0,20,0,0,0,0,0,65535,65535,65535,65535,65535,1,124),(101,13,33,0,20,0,0,0,0,0,65535,65535,65535,65535,65535,1,125),(101,13,34,0,10,0,0,0,0,0,65535,65535,65535,65535,65535,1,126),(102,12,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,1),(102,12,8,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,2),(102,12,9,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,3),(102,12,10,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,4),(102,12,12,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,5),(102,12,13,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,6),(102,12,14,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,7),(102,12,16,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,8),(102,12,17,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,9),(102,12,18,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,10),(102,12,19,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,11),(102,12,21,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,12),(102,12,22,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,13),(102,12,23,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,14),(102,12,24,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,15),(102,12,35,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,16),(102,12,44,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,17),(102,12,45,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,18),(102,12,46,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,19),(102,12,47,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,20),(102,12,48,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,21),(102,12,271,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,22),(102,12,272,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,23),(102,12,273,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,24),(102,12,274,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,25),(102,12,275,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,26),(102,12,276,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,27),(102,12,277,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,28),(102,15,4,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,33),(102,15,7,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,36),(102,15,8,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,37),(102,15,9,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,38),(102,15,11,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,40),(102,15,12,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,41),(102,15,13,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,42),(102,15,14,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,43),(102,15,15,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,44),(102,15,16,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,45),(102,15,17,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,46),(102,15,18,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,47),(102,15,19,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,48),(102,15,20,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,49),(102,15,21,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,50),(102,15,22,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,51),(102,15,23,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,52),(102,15,24,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,53),(102,15,26,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,54),(102,15,27,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,55),(102,15,28,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,56),(102,15,29,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,57),(102,15,30,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,58),(102,15,31,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,59),(102,15,32,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,60),(102,15,33,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,61),(102,15,34,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,62),(102,15,35,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,63),(102,15,36,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,64),(102,15,37,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,65),(102,15,38,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,66),(102,15,40,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,68),(102,15,41,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,69),(102,15,42,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,70),(102,15,43,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,71),(102,15,44,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,72),(102,15,46,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,74),(102,12,476,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,75),(102,12,477,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,76),(102,12,478,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,77),(103,0,66,0,0,1,1,0,63,0,65535,65535,65535,65535,65535,1,1),(103,0,67,0,0,1,1,0,63,0,65535,65535,65535,65535,65535,1,2),(103,0,68,0,0,1,1,0,63,0,65535,65535,65535,65535,65535,1,3),(103,0,76,0,0,1,1,0,63,0,65535,65535,65535,65535,65535,1,4),(103,7,174,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,5),(103,7,175,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,6),(103,7,176,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,7),(103,7,177,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,8),(103,8,174,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,9),(103,8,175,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,10),(103,8,176,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,11),(103,8,177,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,12),(103,9,174,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,13),(103,9,175,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,14),(103,9,176,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,15),(103,9,177,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,16),(103,10,174,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,17),(103,10,175,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,18),(103,10,176,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,19),(103,10,177,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,20),(103,11,174,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,21),(103,11,175,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,22),(103,11,176,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,23),(103,11,177,0,0,0,1,0,63,0,65535,65535,65535,65535,65535,1,24),(104,12,200,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,1),(104,12,201,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,2),(104,12,202,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,3),(104,12,203,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,4),(104,12,204,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,5),(104,12,205,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,6),(104,12,206,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,7),(104,12,207,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,8),(104,12,208,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,9),(105,12,209,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,1),(105,12,210,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,2),(105,12,211,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,3),(105,12,212,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,4),(105,12,213,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,5),(105,12,214,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,6),(105,12,217,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,7),(105,12,306,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,8),(105,12,307,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,9),(105,12,308,0,0,0,0,0,0,0,65534,65534,65534,65534,65534,1,10),(106,12,221,0,0,0,0,0,0,0,1,65535,65535,65535,65535,1,1),(106,12,221,0,0,0,0,0,0,0,1,1,65535,65535,65535,1,2),(106,12,221,0,0,0,0,0,0,0,1,2,65535,65535,65535,1,3),(106,12,221,0,0,0,0,0,0,0,1,3,65535,65535,65535,1,4),(106,12,221,0,0,0,0,0,0,0,1,4,65535,65535,65535,1,5),(106,12,221,0,0,0,0,0,0,0,1,5,65535,65535,65535,1,6),(106,12,221,0,0,0,0,0,0,0,1,1,1,65535,65535,1,7),(106,12,221,0,0,0,0,0,0,0,1,2,1,65535,65535,1,8),(106,12,221,0,0,0,0,0,0,0,1,3,1,65535,65535,1,9),(106,12,221,0,0,0,0,0,0,0,1,4,1,65535,65535,1,10),(106,12,221,0,0,0,0,0,0,0,1,5,1,65535,65535,1,11),(106,12,221,0,0,0,0,0,0,0,1,1,2,65535,65535,1,12),(106,12,221,0,0,0,0,0,0,0,1,2,2,65535,65535,1,13),(106,12,221,0,0,0,0,0,0,0,1,3,2,65535,65535,1,14),(106,12,221,0,0,0,0,0,0,0,1,4,2,65535,65535,1,15),(106,12,221,0,0,0,0,0,0,0,1,5,2,65535,65535,1,16),(106,12,261,0,0,0,0,0,0,0,1,1,1,65535,65535,1,17),(106,12,261,0,0,0,0,0,0,0,2,1,1,65535,65535,1,18),(106,12,261,0,0,0,0,0,0,0,3,1,1,65535,65535,1,19),(106,12,261,0,0,0,0,0,0,0,4,1,1,65535,65535,1,20),(106,12,261,0,0,0,0,0,0,0,5,1,1,65535,65535,1,21),(106,12,261,0,0,0,0,0,0,0,6,1,1,65535,65535,1,22),(106,12,261,0,0,0,0,0,0,0,1,2,1,65535,65535,1,23),(106,12,261,0,0,0,0,0,0,0,2,2,1,65535,65535,1,24),(106,12,261,0,0,0,0,0,0,0,3,2,1,65535,65535,1,25),(106,12,261,0,0,0,0,0,0,0,4,2,1,65535,65535,1,26),(106,12,261,0,0,0,0,0,0,0,5,2,1,65535,65535,1,27),(106,12,261,0,0,0,0,0,0,0,6,2,1,65535,65535,1,28),(106,12,261,0,0,0,0,0,0,0,1,3,1,65535,65535,1,29),(107,12,231,0,0,0,0,0,0,0,1,65535,65535,65535,65535,1,17),(107,12,231,0,0,0,0,0,0,0,1,1,65535,65535,65535,1,18),(107,12,231,0,0,0,0,0,0,0,1,2,65535,65535,65535,1,19),(107,12,231,0,0,0,0,0,0,0,1,3,65535,65535,65535,1,20),(107,12,231,0,0,0,0,0,0,0,1,4,65535,65535,65535,1,21),(107,12,231,0,0,0,0,0,0,0,1,5,65535,65535,65535,1,22),(107,12,231,0,0,0,0,0,0,0,1,1,1,65535,65535,1,23),(107,12,231,0,0,0,0,0,0,0,1,2,1,65535,65535,1,24),(107,12,231,0,0,0,0,0,0,0,1,3,1,65535,65535,1,25),(107,12,231,0,0,0,0,0,0,0,1,4,1,65535,65535,1,26),(107,12,231,0,0,0,0,0,0,0,1,5,1,65535,65535,1,27),(107,12,231,0,0,0,0,0,0,0,1,1,2,65535,65535,1,28),(107,12,231,0,0,0,0,0,0,0,1,2,2,65535,65535,1,29),(107,12,231,0,0,0,0,0,0,0,1,3,2,65535,65535,1,30),(107,12,261,0,0,0,0,0,0,0,2,3,1,65535,65535,1,30),(107,12,231,0,0,0,0,0,0,0,1,4,2,65535,65535,1,31),(107,12,261,0,0,0,0,0,0,0,3,3,1,65535,65535,1,31),(107,12,231,0,0,0,0,0,0,0,1,5,2,65535,65535,1,32),(107,12,261,0,0,0,0,0,0,0,4,3,1,65535,65535,1,32),(107,12,261,0,0,0,0,0,0,0,5,3,1,65535,65535,1,33),(107,12,261,0,0,0,0,0,0,0,6,3,1,65535,65535,1,34),(107,12,261,0,0,0,0,0,0,0,1,1,2,65535,65535,1,35),(107,12,261,0,0,0,0,0,0,0,2,1,2,65535,65535,1,36),(107,12,261,0,0,0,0,0,0,0,3,1,2,65535,65535,1,37),(107,12,261,0,0,0,0,0,0,0,4,1,2,65535,65535,1,38),(107,12,261,0,0,0,0,0,0,0,5,1,2,65535,65535,1,39),(107,12,261,0,0,0,0,0,0,0,6,1,2,65535,65535,1,40),(107,12,261,0,0,0,0,0,0,0,1,2,2,65535,65535,1,41),(107,12,261,0,0,0,0,0,0,0,2,2,2,65535,65535,1,42),(108,12,241,0,0,0,0,0,0,0,1,65535,65535,65535,65535,1,1),(108,12,241,0,0,0,0,0,0,0,1,1,65535,65535,65535,1,2),(108,12,241,0,0,0,0,0,0,0,1,2,65535,65535,65535,1,3),(108,12,241,0,0,0,0,0,0,0,1,3,65535,65535,65535,1,4),(108,12,241,0,0,0,0,0,0,0,1,4,65535,65535,65535,1,5),(108,12,241,0,0,0,0,0,0,0,1,5,65535,65535,65535,1,6),(108,12,241,0,0,0,0,0,0,0,1,1,1,65535,65535,1,7),(108,12,241,0,0,0,0,0,0,0,1,2,1,65535,65535,1,8),(108,12,241,0,0,0,0,0,0,0,1,3,1,65535,65535,1,9),(108,12,241,0,0,0,0,0,0,0,1,4,1,65535,65535,1,10),(108,12,241,0,0,0,0,0,0,0,1,5,1,65535,65535,1,11),(108,12,241,0,0,0,0,0,0,0,1,1,2,65535,65535,1,12),(108,12,241,0,0,0,0,0,0,0,1,2,2,65535,65535,1,13),(108,12,241,0,0,0,0,0,0,0,1,3,2,65535,65535,1,14),(108,12,241,0,0,0,0,0,0,0,1,4,2,65535,65535,1,15),(108,12,241,0,0,0,0,0,0,0,1,5,2,65535,65535,1,16),(108,12,261,0,0,0,0,0,0,0,3,2,2,65535,65535,1,43),(108,12,261,0,0,0,0,0,0,0,4,2,2,65535,65535,1,44),(108,12,261,0,0,0,0,0,0,0,5,2,2,65535,65535,1,45),(108,12,261,0,0,0,0,0,0,0,6,2,2,65535,65535,1,46),(108,12,261,0,0,0,0,0,0,0,1,3,2,65535,65535,1,47),(108,12,261,0,0,0,0,0,0,0,2,3,2,65535,65535,1,48),(108,12,261,0,0,0,0,0,0,0,3,3,2,65535,65535,1,49),(108,12,261,0,0,0,0,0,0,0,4,3,2,65535,65535,1,50),(108,12,261,0,0,0,0,0,0,0,5,3,2,65535,65535,1,51),(108,12,261,0,0,0,0,0,0,0,6,3,2,65535,65535,1,52),(108,12,261,0,0,0,0,0,0,0,1,1,3,65535,65535,1,53),(108,12,261,0,0,0,0,0,0,0,2,1,3,65535,65535,1,54),(108,12,261,0,0,0,0,0,0,0,3,1,3,65535,65535,1,55),(109,12,251,0,0,0,0,0,0,0,1,65535,65535,65535,65535,1,1),(109,12,251,0,0,0,0,0,0,0,1,1,65535,65535,65535,1,2),(109,12,251,0,0,0,0,0,0,0,1,2,65535,65535,65535,1,3),(109,12,251,0,0,0,0,0,0,0,1,3,65535,65535,65535,1,4),(109,12,251,0,0,0,0,0,0,0,1,4,65535,65535,65535,1,5),(109,12,251,0,0,0,0,0,0,0,1,5,65535,65535,65535,1,6),(109,12,251,0,0,0,0,0,0,0,1,1,1,65535,65535,1,7),(109,12,251,0,0,0,0,0,0,0,1,2,1,65535,65535,1,8),(109,12,251,0,0,0,0,0,0,0,1,3,1,65535,65535,1,9),(109,12,251,0,0,0,0,0,0,0,1,4,1,65535,65535,1,10),(109,12,251,0,0,0,0,0,0,0,1,5,1,65535,65535,1,11),(109,12,251,0,0,0,0,0,0,0,1,1,2,65535,65535,1,12),(109,12,251,0,0,0,0,0,0,0,1,2,2,65535,65535,1,13),(109,12,251,0,0,0,0,0,0,0,1,3,2,65535,65535,1,14),(109,12,251,0,0,0,0,0,0,0,1,4,2,65535,65535,1,15),(109,12,251,0,0,0,0,0,0,0,1,5,2,65535,65535,1,16),(109,12,261,0,0,0,0,0,0,0,4,1,3,65535,65535,1,56),(109,12,261,0,0,0,0,0,0,0,5,1,3,65535,65535,1,57),(109,12,261,0,0,0,0,0,0,0,6,1,3,65535,65535,1,58),(109,12,261,0,0,0,0,0,0,0,1,2,3,65535,65535,1,59),(109,12,261,0,0,0,0,0,0,0,2,2,3,65535,65535,1,60),(109,12,261,0,0,0,0,0,0,0,3,2,3,65535,65535,1,61),(109,12,261,0,0,0,0,0,0,0,4,2,3,65535,65535,1,62),(109,12,261,0,0,0,0,0,0,0,5,2,3,65535,65535,1,63),(109,12,261,0,0,0,0,0,0,0,6,2,3,65535,65535,1,64),(109,12,261,0,0,0,0,0,0,0,1,3,3,65535,65535,1,65),(109,12,261,0,0,0,0,0,0,0,2,3,3,65535,65535,1,66),(109,12,261,0,0,0,0,0,0,0,3,3,3,65535,65535,1,67),(109,12,261,0,0,0,0,0,0,0,4,3,3,65535,65535,1,68),(110,12,261,0,0,0,0,0,0,0,5,3,3,65535,65535,1,69),(110,12,261,0,0,0,0,0,0,0,6,3,3,65535,65535,1,70),(110,12,261,0,0,0,0,0,0,0,1,1,4,65535,65535,1,71),(110,12,261,0,0,0,0,0,0,0,2,1,4,65535,65535,1,72),(110,12,261,0,0,0,0,0,0,0,3,1,4,65535,65535,1,73),(110,12,261,0,0,0,0,0,0,0,4,1,4,65535,65535,1,74),(110,12,261,0,0,0,0,0,0,0,5,1,4,65535,65535,1,75),(110,12,261,0,0,0,0,0,0,0,6,1,4,65535,65535,1,76),(110,12,261,0,0,0,0,0,0,0,1,2,4,65535,65535,1,77),(110,12,261,0,0,0,0,0,0,0,2,2,4,65535,65535,1,78),(110,12,261,0,0,0,0,0,0,0,3,2,4,65535,65535,1,79),(110,12,261,0,0,0,0,0,0,0,4,2,4,65535,65535,1,80),(110,12,261,0,0,0,0,0,0,0,5,2,4,65535,65535,1,81),(110,12,261,0,0,0,0,0,0,0,6,2,4,65535,65535,1,82),(110,12,261,0,0,0,0,0,0,0,1,3,4,65535,65535,1,83),(110,12,261,0,0,0,0,0,0,0,2,3,4,65535,65535,1,84),(110,12,261,0,0,0,0,0,0,0,3,3,4,65535,65535,1,85),(110,12,261,0,0,0,0,0,0,0,4,3,4,65535,65535,1,86),(110,12,261,0,0,0,0,0,0,0,5,3,4,65535,65535,1,87),(110,12,261,0,0,0,0,0,0,0,6,3,4,65535,65535,1,88),(110,12,261,0,0,0,0,0,0,0,1,1,5,65535,65535,1,89),(110,12,261,0,0,0,0,0,0,0,2,1,5,65535,65535,1,90),(110,12,261,0,0,0,0,0,0,0,3,1,5,65535,65535,1,91),(110,12,261,0,0,0,0,0,0,0,4,1,5,65535,65535,1,92),(110,12,261,0,0,0,0,0,0,0,5,1,5,65535,65535,1,93),(110,12,261,0,0,0,0,0,0,0,6,1,5,65535,65535,1,94),(110,12,261,0,0,0,0,0,0,0,1,2,5,65535,65535,1,95),(110,12,261,0,0,0,0,0,0,0,2,2,5,65535,65535,1,96),(110,12,261,0,0,0,0,0,0,0,3,2,5,65535,65535,1,97),(110,12,261,0,0,0,0,0,0,0,4,2,5,65535,65535,1,98),(111,12,261,0,0,0,0,0,0,0,5,2,5,65535,65535,1,99),(111,12,261,0,0,0,0,0,0,0,6,2,5,65535,65535,1,100),(111,12,261,0,0,0,0,0,0,0,1,3,5,65535,65535,1,101),(111,12,261,0,0,0,0,0,0,0,2,3,5,65535,65535,1,102),(111,12,261,0,0,0,0,0,0,0,3,3,5,65535,65535,1,103),(111,12,261,0,0,0,0,0,0,0,4,3,5,65535,65535,1,104),(111,12,261,0,0,0,0,0,0,0,5,3,5,65535,65535,1,105),(111,12,261,0,0,0,0,0,0,0,6,3,5,65535,65535,1,106),(112,12,124,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,1),(112,12,124,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,2),(112,12,124,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,3),(112,12,124,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,4),(112,12,124,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,5),(112,12,124,5,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,6),(112,12,125,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,7),(112,12,125,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,8),(112,12,125,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,9),(112,12,125,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,10),(112,12,125,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,11),(112,12,126,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,12),(112,12,126,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,13),(112,12,126,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,14),(112,12,126,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,15),(112,12,126,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,16),(112,12,127,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,17),(112,12,127,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,18),(112,12,127,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,19),(112,12,127,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,20),(112,12,127,4,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,21),(112,12,127,5,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,22),(112,12,128,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,23),(112,12,128,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,24),(112,12,128,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,25),(112,12,128,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,26),(112,12,129,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,27),(112,12,129,1,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,28),(112,12,129,2,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,29),(112,12,129,3,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,30),(113,7,52,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(113,8,52,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(113,9,52,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(113,10,52,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(113,11,52,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(113,5,31,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(113,5,35,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(113,5,37,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(113,6,20,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(113,6,24,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,10),(114,7,45,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(114,8,45,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(114,9,45,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(114,10,45,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(114,11,45,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(114,7,46,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(114,8,46,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(114,9,46,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(114,10,46,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(114,11,46,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,10),(114,0,26,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,11),(114,0,27,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,12),(114,0,29,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,13),(114,0,36,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,14),(114,0,37,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,15),(114,6,17,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,16),(114,6,22,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,17),(115,7,49,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(115,8,49,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(115,9,49,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(115,10,49,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(115,11,49,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(115,7,50,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(115,8,50,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(115,9,50,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(115,10,50,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(115,11,50,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,10),(115,2,16,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,11),(115,4,23,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,12),(115,4,25,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,13),(115,4,26,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,14),(115,4,33,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,15),(116,8,47,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(116,9,47,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(116,10,47,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(116,11,47,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(116,8,48,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(116,9,48,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(116,10,48,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(116,11,48,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,10),(116,0,28,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,11),(116,0,30,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,12),(116,0,37,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,13),(116,5,30,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,14),(116,5,35,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,15),(116,5,37,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,16),(116,6,18,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,17),(116,6,25,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,18),(117,7,51,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(117,8,51,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(117,9,51,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(117,10,51,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(117,11,51,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(117,2,17,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,6),(117,2,19,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,7),(117,6,26,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,8),(118,7,44,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(118,8,44,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(118,9,44,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(118,10,44,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(118,11,44,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(118,5,20,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(118,5,32,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(119,7,146,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(119,8,146,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(119,9,146,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(119,11,146,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(119,0,52,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,5),(119,0,53,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,6),(120,7,148,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(120,8,148,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(120,9,148,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(120,10,148,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(120,11,148,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(120,3,22,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,6),(120,3,23,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,7),(120,6,40,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,8),(120,6,41,0,0,1,1,0,0,0,65534,65534,65534,65534,65534,1,9),(121,7,120,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(121,8,120,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(121,9,120,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(121,10,120,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(121,11,120,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(121,2,30,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(121,2,31,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(121,6,19,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(121,6,23,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(122,7,178,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,1),(122,8,178,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,2),(122,9,178,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,3),(122,10,178,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,4),(122,11,178,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,5),(122,7,179,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,6),(122,8,179,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,7),(122,9,179,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,8),(122,10,179,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,9),(122,11,179,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,10),(122,0,69,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,11),(122,0,70,0,0,0,1,0,0,0,65534,65534,65534,65534,65534,1,12),(123,13,37,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,13,37,0,0,0,0,0,1,0,65535,65535,65535,65535,65535,1,0),(123,13,37,0,0,0,0,0,2,0,65535,65535,65535,65535,65535,1,0),(123,13,37,0,0,0,0,0,4,0,65535,65535,65535,65535,65535,1,0),(123,14,11,8,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,11,9,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,11,10,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,11,11,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,11,12,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,210,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,211,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,212,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,213,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,248,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,249,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,250,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,251,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,252,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,14,253,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,12,145,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,0),(123,0,19,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,0,60,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,0,76,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,2,13,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,2,34,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,3,26,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,4,18,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,5,10,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,5,36,15,0,1,1,4,0,0,65535,65535,65535,65535,65535,1,1),(123,13,276,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,1),(123,13,277,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,1),(101,12,485,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,127),(101,12,487,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,128),(101,12,488,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,129),(101,14,491,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,1,130),(50,13,406,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,3),(50,13,405,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,2),(50,13,404,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,1),(50,13,403,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,0),(50,12,493,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,30),(50,12,495,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,0,31);
/*!40000 ALTER TABLE `shop_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_template`
--

DROP TABLE IF EXISTS `shop_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_template` (
  `guid` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `max_pk_level` tinyint(3) unsigned NOT NULL,
  `pk_text` varchar(255) DEFAULT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `max_buy_count` int(11) NOT NULL DEFAULT '0',
  `max_buy_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_template`
--

LOCK TABLES `shop_template` WRITE;
/*!40000 ALTER TABLE `shop_template` DISABLE KEYS */;
INSERT INTO `shop_template` VALUES (0,'lorencia_weapon',4,'I don\'t sell anything to people like you.',1,0,0,0),(1,'lorencia_bar',4,'I don\'t sell anything to people like you.',1,0,0,0),(2,'lorencia_mage',4,'I don\'t sell anything to people like you.',5,0,0,0),(3,'lorencia_peddler',4,'I don\'t sell anything to people like you.',1,0,0,0),(4,'lorencia_merchant_near_river',4,'I don\'t sell anything to people like you.',1,0,0,0),(5,'lorencia_potion_girl',4,'I don\'t sell anything to people like you.',1,0,0,0),(6,'devias_bar',4,'I don\'t sell anything to people like you.',1,0,0,0),(7,'devias_wizard',4,'I don\'t sell anything to people like you.',1,0,0,0),(8,'devias_weapon',4,'I don\'t sell anything to people like you.',1,0,0,0),(9,'noria_weapon',4,'I don\'t sell anything to people like you.',1,0,0,0),(10,'noria_potion_fairy',4,'I don\'t sell anything to people like you.',1,0,0,0),(11,'alex',4,'I don\'t sell anything to people like you.',1,0,0,0),(12,'thomson_channel',4,'I don\'t sell anything to people like you.',1,0,0,0),(13,'shop_firework_girl',4,'I don\'t sell anything to people like you.',1,0,0,0),(14,'kalima_potion',4,'I don\'t sell anything to people like you.',1,0,0,0),(15,'siege_supplier',4,'I don\'t sell anything to people like you.',1,0,0,0),(16,'stadium_guard',4,'I don\'t sell anything to people like you.',1,0,0,0),(17,'elbeland_silvia',4,'I don\'t sell anything to people like you.',1,0,0,0),(18,'elbeland_leah',4,'I don\'t sell anything to people like you.',1,0,0,0),(19,'elbeland_marseille',4,'I don\'t sell anything to people like you.',1,0,0,0),(20,'loren_market_christine',4,'I don\'t sell anything to people like you.',1,0,0,0),(21,'kalrutan_merchant_1',4,'I don\'t sell anything to people like you.',1,0,0,0),(22,'kalrutan_merchant_2',4,'I don\'t sell anything to people like you.',1,0,0,0),(23,'shop_personal_merchant',10,'',0,0,0,0),(24,'shop_moss_merchant',10,'',0,0,0,0),(25,'shop_champion_chest',10,'',0,0,0,0),(26,'shop_acheron_jin',4,'I don\'t sell anything to people like you.',1,0,0,0),(27,'shop_battle_core_hp',10,'',0,0,0,0),(28,'shop_battle_core_sd',10,'',0,0,0,0),(50,'ruud_shop',10,'',0,1,0,0),(101,'shop_test_01',10,'',0,0,0,0),(102,'shop_test_02',10,'',0,0,0,0),(103,'shop_test_03',10,'',0,0,0,0),(104,'shop_test_04',10,'',0,0,0,0),(105,'shop_test_05',10,'',0,0,0,0),(106,'shop_test_06',10,'',0,0,0,0),(107,'shop_test_07',10,'',0,0,0,0),(108,'shop_test_08',10,'',0,0,0,0),(109,'shop_test_09',10,'',0,0,0,0),(110,'shop_test_10',10,'',0,0,0,0),(111,'shop_test_11',10,'',0,0,0,0),(112,'shop_test_12',10,'',0,0,0,0),(113,'shop_test_socket_dw',10,'',0,0,0,0),(114,'shop_test_socket_dk',10,'',0,0,0,0),(115,'shop_test_socket_elf',10,'',0,0,0,0),(116,'shop_test_socket_mg',10,'',0,0,0,0),(117,'shop_test_socket_dl',10,'',0,0,0,0),(118,'shop_test_socket_sum',10,'',0,0,0,0),(119,'shop_test_socket_rf',10,'',0,0,0,0),(120,'shop_test_socket_gl',10,'',0,0,0,0),(121,'shop_test_socket_rw',10,'',0,0,0,0),(122,'shop_test_socket_sl',10,'',0,0,0,0),(123,'shop_test_archangel',10,'',0,0,0,0),(200,'shop_anniversary_secret_1',10,'',0,0,0,0),(201,'shop_anniversary_secret_2',10,'',0,0,0,0),(202,'shop_anniversary_secret_3',10,'',0,0,0,0),(203,'shop_anniversary_secret_4',10,'',0,0,0,0),(204,'shop_anniversary_secret_5',10,'',0,0,0,0);
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
  `step` tinyint(3) unsigned NOT NULL,
  `speed_min` int(11) NOT NULL,
  `speed_max` int(11) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `real_time` int(10) unsigned NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
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
  `required_skill` smallint(5) unsigned NOT NULL,
  `required_master_skill` smallint(5) unsigned NOT NULL,
  `required_master_level` tinyint(3) unsigned NOT NULL,
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
  `target` tinyint(3) unsigned NOT NULL,
  `scope_type` int(11) NOT NULL,
  `scope_value` tinyint(3) unsigned NOT NULL,
  `element_1` int(11) NOT NULL,
  `element_2` int(11) NOT NULL,
  `element_3` int(11) NOT NULL,
  `element_4` int(11) NOT NULL,
  `element_5` int(11) NOT NULL,
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
  `type` tinyint(3) unsigned NOT NULL,
  `rate` tinyint(3) unsigned NOT NULL,
  `duration` int(11) NOT NULL,
  `calc_type` tinyint(3) unsigned NOT NULL,
  `calc_value` int(11) NOT NULL,
  `magic` int(11) NOT NULL,
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
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL,
  `mana_cost` int(11) NOT NULL,
  `stamina_cost` int(11) NOT NULL,
  `effect_range` tinyint(3) unsigned NOT NULL,
  `effect_radio` tinyint(3) unsigned NOT NULL,
  `cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL,
  `attribute` tinyint(3) unsigned NOT NULL,
  `buff_icon` smallint(5) unsigned NOT NULL,
  `required_level` smallint(6) NOT NULL,
  `required_strength` int(11) NOT NULL DEFAULT '0',
  `required_agility` int(11) NOT NULL DEFAULT '0',
  `required_vitality` int(11) NOT NULL DEFAULT '0',
  `required_energy` int(11) NOT NULL DEFAULT '0',
  `required_leadership` int(11) NOT NULL DEFAULT '0',
  `required_kill_count` tinyint(3) unsigned NOT NULL,
  `status_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `base_skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `required_class_dark_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_dark_knight` tinyint(3) unsigned NOT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned NOT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned NOT NULL,
  `required_class_dark_lord` tinyint(3) unsigned NOT NULL,
  `required_class_summoner` tinyint(3) unsigned NOT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned NOT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned NOT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned NOT NULL,
  `required_class_slayer` tinyint(3) unsigned NOT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned NOT NULL,
  `animation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `elemental_attribute` tinyint(3) unsigned NOT NULL,
  `elemental_bonus_damage` smallint(5) unsigned NOT NULL,
  `attack_delay` int(10) unsigned NOT NULL,
  `mount_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pvm_damage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pvp_damage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_1` int(11) NOT NULL,
  `stat_value_1` int(11) NOT NULL,
  `stat_2` int(11) NOT NULL,
  `stat_value_2` int(11) NOT NULL,
  `disabled` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_template`
--

LOCK TABLES `skill_template` WRITE;
/*!40000 ALTER TABLE `skill_template` DISABLE KEYS */;
INSERT INTO `skill_template` VALUES (1,'Poison',0,12,42,0,6,0,0,0,5,55,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,150,0,0,0,0,0,4,50,-1,-1,0),(2,'Meteorite',0,21,12,0,6,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,1,0,0,0,190,0,0,0,0,0,4,45,-1,-1,0),(3,'Lightning',0,17,15,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,180,0,0,0,0,0,4,40,-1,-1,0),(4,'Fire Ball',0,8,3,0,6,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,1,0,0,0,197,0,0,0,0,0,4,30,-1,-1,0),(5,'Flame',0,25,50,0,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,120,0,0,0,0,0,4,100,-1,-1,0),(6,'Teleport',0,0,30,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(7,'Ice',0,10,38,0,6,0,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,150,0,0,0,0,0,4,45,-1,-1,0),(8,'Twister',0,35,60,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,140,0,0,0,0,0,4,90,-1,-1,0),(9,'Evil Spirit',0,45,90,0,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,110,0,0,0,0,0,4,150,-1,-1,0),(10,'Hell Fire',0,120,160,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,130,0,0,0,0,0,4,200,-1,-1,0),(11,'Power Wave',0,14,5,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,195,0,0,0,0,0,4,30,-1,-1,0),(12,'Aqua Beam',0,80,140,0,6,6,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,140,0,0,0,0,0,4,200,-1,-1,0),(13,'Blast',0,70,150,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,130,0,0,0,0,0,4,150,-1,-1,0),(14,'Inferno',0,100,200,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,110,0,0,0,0,0,4,90,-1,-1,0),(15,'Teleport Party',0,0,90,25,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(16,'Mana Shield',0,0,70,22,6,0,0,1,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(17,'Energy Ball',0,3,1,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,200,0,0,0,0,0,4,30,-1,-1,0),(18,'Defense',0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(19,'Falling Slash',0,0,9,0,3,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,180,0,0,0,0,0,1,30,-1,-1,0),(20,'Lunge',0,0,9,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,1,0,1,0,0,170,0,0,0,0,0,1,30,-1,-1,0),(21,'Uppercut',0,0,8,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,0,190,0,0,0,0,0,1,30,-1,-1,0),(22,'Cyclone',0,0,9,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,0,165,0,0,0,0,0,1,30,-1,-1,0),(23,'Slash',0,0,10,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,185,0,0,0,0,0,1,30,-1,-1,0),(24,'Triple Shot',0,0,5,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,2,100,-1,-1,0),(26,'Heal',0,0,20,0,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(27,'Greater Defense',0,0,30,0,6,0,0,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(28,'Greater Damage',0,0,40,0,6,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(30,'Summon Goblin',0,0,40,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(31,'Summon Stone Golem',0,0,70,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(32,'Summon Assassin',0,0,110,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(33,'Summon Elite Yeti',0,0,160,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(34,'Summon Dark Knight',0,0,200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(35,'Summon Bali',0,0,250,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(36,'Summon Soldier',0,0,350,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(38,'Decay',0,95,110,7,6,4,0,0,5,55,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,110,0,0,0,0,0,4,100,-1,-1,0),(39,'Ice Storm',0,80,100,5,6,4,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,0,115,0,0,0,0,0,4,90,-1,-1,0),(40,'Nova',0,0,180,45,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,-1,-1,-1,-1,0),(41,'Twisting Slash',0,0,10,10,2,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,150,0,0,0,0,0,1,40,-1,-1,0),(42,'Rageful Blow',0,60,25,20,3,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,125,0,0,0,0,0,1,150,-1,-1,0),(43,'Death Stab',0,70,15,12,3,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(44,'Crescent Moon Slash',0,90,22,15,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(45,'Mana Glaive',0,90,150,10,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(46,'Starfall',0,120,20,15,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(47,'Impale',0,15,8,0,3,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,170,0,0,0,0,0,1,35,-1,-1,0),(48,'Greater Life',0,0,22,24,0,5,0,1,0,8,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(49,'Fire Breath',0,30,9,0,3,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,-1,-1,-1,-1,0),(50,'Monster Area Attack',0,120,160,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(51,'Ice Arrow',0,105,10,12,8,0,0,0,2,57,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,115,0,0,0,0,0,2,150,-1,-1,0),(52,'Penetration',0,70,7,9,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,130,0,0,0,0,0,2,200,-1,-1,0),(55,'Fire Slash',0,80,17,24,3,6,0,0,5,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(56,'Power Slash',0,0,15,0,5,5,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,125,0,0,0,0,0,1,100,-1,-1,0),(57,'Spiral Slash',0,75,20,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(60,'Force',0,10,10,0,4,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,160,0,0,0,0,0,1,40,-1,-1,0),(61,'Fire Burst',0,100,25,0,6,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,135,0,0,0,0,0,1,100,-1,-1,0),(62,'Earthquake',0,150,0,50,10,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,10000,0,0,0,-1,-1,-1,-1,0),(63,'Summon Party',0,0,70,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(64,'Greater Critical Damage',0,0,50,50,0,6,0,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(65,'Electric Spark',0,250,0,100,10,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,5000,0,0,0,1,100,-1,-1,0),(66,'Force Wave',0,50,10,0,4,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,160,0,0,0,0,0,1,40,-1,-1,0),(67,'Stern',0,0,70,50,2,5,0,2,0,61,0,0,0,0,0,0,4,0,32,0,0,1,1,1,1,1,1,0,0,1,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(68,'Remove Stern',0,0,25,30,0,5,0,3,0,0,0,0,0,0,0,0,2,0,32,0,0,1,1,1,1,1,1,0,0,1,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(69,'Greater Mana',0,0,35,30,0,5,0,1,0,9,0,0,0,0,0,0,4,0,32,0,0,1,1,1,1,1,1,0,0,1,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(70,'Invisibility',0,0,80,60,0,0,0,1,0,18,0,0,0,0,0,0,5,0,192,0,0,1,1,1,1,1,1,0,0,1,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(71,'Remove Invisibility',0,0,40,30,0,5,0,3,0,0,0,0,0,0,0,0,2,0,192,0,0,1,1,1,1,1,1,0,0,1,1,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(72,'Remove All Effect',0,0,90,70,0,5,0,3,0,0,0,0,0,0,0,0,8,0,128,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(73,'Mana Rays',0,85,130,7,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(74,'Fire Blast',0,150,30,10,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(76,'Plasma Storm',0,60,50,20,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,0,0,100,0,1500,0,0,0,-1,-1,-1,-1,0),(77,'Infinity Arrow',0,0,50,10,0,0,0,1,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(78,'Fire Scream',0,130,45,10,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,115,0,0,0,0,0,1,150,-1,-1,0),(79,'Explosion',0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(200,'Monster Summon',0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(201,'Magic Damage Immunity',0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(202,'Physi Damage Immunity',0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(203,'Potion of Bless',0,0,40,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(204,'Potion of Soul',0,0,40,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(210,'Order of Protection',0,0,30,0,0,0,0,1,0,0,0,0,0,0,0,0,5,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(211,'Order of Restraint',0,0,30,0,3,0,0,2,0,0,0,0,0,0,0,0,5,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(212,'Order of Tracking',0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,100,0,120000,0,0,0,-1,-1,-1,-1,0),(213,'Order of Weaken',0,0,30,0,3,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(214,'Drain Life',0,35,50,0,6,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(215,'Chain Lightning',0,70,85,0,6,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,105,0,0,0,0,0,4,200,-1,-1,0),(217,'Damage Reflect',0,0,40,10,5,0,0,1,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(218,'Berserker',0,0,100,50,5,0,0,1,0,81,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(219,'Sleep',0,0,20,3,6,0,0,2,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(221,'Lesser Damage',0,0,50,15,8,5,0,2,0,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(222,'Lesser Defense',0,0,50,15,8,5,0,2,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(223,'Sahamutt',0,40,35,0,4,3,0,0,1,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,120,0,500,0,0,0,4,150,-1,-1,0),(224,'Neil',0,65,60,4,4,4,0,0,3,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,125,0,800,0,0,0,4,150,-1,-1,0),(225,'Ghost Phantom',0,80,70,8,4,5,0,0,4,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,125,0,500,0,0,0,4,150,-1,-1,0),(230,'Red Storm',0,95,115,7,6,5,0,0,4,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,105,0,0,0,0,0,4,200,-1,-1,0),(232,'Frozen Stab',0,110,30,24,5,3,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,150,-1,-1,0),(233,'Magic Circle',0,0,200,50,6,0,0,1,0,82,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(234,'Shield Recover',0,0,40,10,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(235,'Multi Shot',0,40,10,7,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,2,200,-1,-1,0),(236,'Sword Slash',0,140,20,25,3,5,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,200,-1,-1,0),(237,'Lightning Storm',0,110,120,10,6,6,0,0,4,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,115,0,0,0,0,0,4,250,-1,-1,0),(238,'Birds',0,190,50,15,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(239,'Self Explosion',0,140,20,25,3,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(260,'Large Ring Blower',0,0,9,0,2,0,0,0,3,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,155,0,0,0,0,0,3,200,-1,-1,0),(261,'Upper Beast',0,0,9,0,2,0,0,0,1,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,155,0,0,0,0,0,3,200,-1,-1,0),(262,'Chain Driver',0,0,15,20,4,0,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,105,0,700,0,0,0,-1,-1,-1,-1,0),(263,'Dark Side',0,0,70,0,5,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,115,0,0,0,0,0,-1,-1,-1,-1,0),(264,'Dragon Lore',0,0,50,30,3,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,700,0,0,0,-1,-1,-1,-1,0),(265,'Dragon Slayer',0,0,100,100,4,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(266,'Greater Ignore Damage Rate',0,0,50,10,3,0,0,1,0,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(267,'Fitness',0,0,50,10,7,5,0,1,0,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(268,'Greater Defense Success Rate',0,0,50,10,7,5,0,1,0,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(269,'Charge',0,90,20,15,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(270,'Phoenix Shot',0,0,30,0,4,3,0,0,4,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,125,0,1200,0,0,0,3,200,-1,-1,0),(271,'Spin Step',0,100,12,0,2,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(272,'Circle Shield',0,0,100,50,0,0,0,1,0,216,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,0,0,0,0,2,-1,-1,-1,0),(273,'Obsidian',0,0,50,50,0,5,0,1,0,217,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,0,0,0,0,1,-1,-1,-1,0),(274,'Magic Pin',0,80,30,20,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(275,'Clash',0,50,50,50,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,10000,0,0,0,1,-1,-1,-1,0),(276,'Harsh Strike',0,100,12,0,3,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,110,0,500,0,0,0,1,30,-1,-1,0),(277,'Shining Peak',0,70,50,20,4,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,110,0,0,0,0,0,1,-1,-1,-1,0),(278,'Wrath',0,0,100,50,0,0,0,1,0,218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,60000,0,0,0,2,-1,-1,-1,0),(279,'Breche',0,400,40,20,3,3,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,110,0,500,0,0,0,2,-1,-1,-1,0),(280,'Spin Step Explosion',0,50,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,110,0,0,0,0,0,-1,-1,-1,-1,0),(281,'Magic Pin Explosion',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(282,'Spirit Hook',0,255,27,21,3,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,105,1,0,0,0,0,3,10,-1,-1,0),(283,'Magic Arrow',0,45,15,5,8,8,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,100,0,0,0,0,0,4,500,-1,-1,0),(284,'Plasma Ball',0,100,120,35,8,4,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,110,0,4000,0,0,0,4,200,-1,-1,0),(285,'Shock Blast',0,220,80,37,8,4,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,115,1,0,0,0,0,4,100,-1,-1,0),(286,'Might',0,0,50,0,0,0,0,1,0,293,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(287,'Haste',0,0,0,50,0,7,0,1,0,294,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(288,'Death Scythe',0,75,120,20,6,6,0,0,5,306,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,125,1,0,0,0,0,4,150,-1,-1,0),(289,'Darkness',0,0,100,50,5,0,0,1,0,301,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(291,'Elite Monster Skill',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(292,'Sword Inertia',0,10,5,0,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(293,'Bat Flock',0,90,20,5,6,6,0,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(294,'Pierce Attack',0,170,30,10,6,3,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,120,1,0,0,0,0,2,150,-1,-1,0),(295,'Detection',0,0,100,100,0,0,0,1,0,316,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(297,'Demolish',0,0,50,0,0,5,0,1,0,317,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(300,'Add Item Durability Rate',0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(301,'Add Defense Success Rate PvP',0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(302,'Add Max SD',0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(303,'Add MP Recovery Rate',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(304,'Add Poison Resistance',0,1,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(305,'Add Item Durability Rate',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(306,'Add SD Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(307,'Add HP Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(308,'Add Lightning Resistance',0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(309,'Add Defense',0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(310,'Add BP Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(311,'Add Ice Resistance',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(312,'Add Item Durability Rate',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(313,'Add Defense Success Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(314,'Cast Invincibility',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(315,'Add Armor Set Bonus',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(316,'Add Reflect Damage',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(317,'Add Energy',0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(318,'Add Vitality',0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(319,'Add Agility',0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(320,'Add Strength',0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(321,'Wing of Storm Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(322,'Add DK Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(323,'Iron Defense',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(324,'Add DK Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(325,'Add Attack Success Rate',0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(326,'Add Cyclone Improved',0,4,9,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,165,0,0,0,0,0,1,30,-1,-1,0),(327,'Add Slash Improved',0,40,10,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,185,0,0,0,0,0,1,30,-1,-1,0),(328,'Add Falling Slash Improved',0,17,9,0,3,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,180,0,0,0,0,0,1,30,-1,-1,0),(329,'Add Lunge Improved',0,17,9,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,3,0,0,0,0,170,0,0,0,0,0,1,30,-1,-1,0),(330,'Add Twisting Slash Improved',0,40,10,10,2,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,150,0,0,0,0,0,1,40,-1,-1,0),(331,'Add Rageful Blow Improved',0,22,25,22,3,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,125,0,0,0,0,0,1,150,-1,-1,0),(332,'Add Twisting Slash Enhanced',0,1,22,20,2,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,1,40,-1,-1,0),(333,'Add Rageful Blow Enhanced',0,1,50,30,3,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,125,0,0,0,0,0,1,150,-1,-1,0),(334,'Add Max HP',0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(335,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(336,'Add Death Stab Improved',0,22,15,13,4,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(338,'Add Max MP',0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(339,'Add Death Stab Enhanced',0,22,30,26,4,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(340,'Add Frozen Stab Enhanced',0,22,30,24,5,3,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,150,-1,-1,0),(341,'Add Max BP',0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(342,'Add Death Stab Mastered',0,7,30,26,4,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(343,'Add Frozen Stab Mastered',0,22,30,24,5,3,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,150,-1,-1,0),(344,'Add Blood Storm',0,25,87,29,3,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,138,0,5000,0,0,0,1,200,-1,-1,0),(345,'Add Combo Damage',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(346,'Add Blood Storm Improved',0,5,95,31,3,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,138,0,3000,0,0,0,1,200,-1,-1,0),(347,'Add Attack Success Rate PvP',0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(348,'Add Two Hand Sword Damage',0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(349,'Add One Hand Sword Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(350,'Add Mace Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(351,'Add Spear Damage',0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(352,'Add Two Hand Sword Mastery',0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(353,'Add One Hand Sword Mastery',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(354,'Add Mace Mastery',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(355,'Add Spear Mastery',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(356,'Add Greater Life Improved',0,7,24,26,0,5,0,1,0,8,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(357,'Add MP Consumption Rate',0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(358,'Add Hunt SD',0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(359,'Add Hunt HP',0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(360,'Add Greater Life Enhanced',0,7,26,28,0,5,0,1,0,135,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(361,'Add Min Physi Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,3,0,0,3,0,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(362,'Add Hunt MP',0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(363,'Add Greater Life Mastered',0,7,28,30,0,5,0,1,0,136,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(364,'Add Max Physi Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,3,3,0,0,3,0,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(366,'Add Critical Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(367,'Add Restore MP Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(368,'Add Restore HP Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(369,'Add Excellent Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(370,'Add Double Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(371,'Add Ignore Defense Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(372,'Add Restore SD Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(373,'Increases triple damage rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(374,'Eternal Wings Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(375,'Add DW Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(377,'Add DW Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(378,'Add Flame Improved',0,17,55,0,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,120,0,0,0,0,0,4,100,-1,-1,0),(379,'Add Lightning Improved',0,40,20,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,180,0,0,0,0,0,4,40,-1,-1,0),(380,'Add Magic Circle Improved',0,1,220,55,6,0,0,1,0,138,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(381,'Add Inferno Improved',0,4,220,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,110,0,0,0,0,0,4,90,-1,-1,0),(382,'Add Blast Improved',0,17,165,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,130,0,0,0,0,0,4,150,-1,-1,0),(383,'Add Magic Circle Enhanced',0,1,220,55,6,0,0,1,0,139,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(384,'Add Poison Improved',0,40,46,0,6,0,0,0,5,55,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,150,0,0,0,0,0,4,50,-1,-1,0),(385,'Add Evil Spirit Improved',0,4,108,0,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,110,0,0,0,0,0,4,150,-1,-1,0),(386,'Add Magic Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(387,'Add Decay Improved',0,17,120,10,6,4,0,0,5,55,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,110,0,0,0,0,0,4,100,-1,-1,0),(388,'Add Hell Fire Improved',0,40,176,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,130,0,0,0,0,0,4,200,-1,-1,0),(389,'Add Ice Improved',0,40,42,0,6,0,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,150,0,0,0,0,0,4,45,-1,-1,0),(390,'Add Meteorite Improved',0,40,13,0,6,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,190,0,0,0,0,0,4,45,-1,-1,0),(391,'Add Ice Storm Improved',0,17,110,5,6,4,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,115,0,0,0,0,0,4,90,-1,-1,0),(392,'Add Nova Improved',0,17,198,49,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,160,0,0,0,0,0,-1,-1,-1,-1,0),(393,'Add Ice Storm Enhanced',0,22,110,5,6,4,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,115,0,0,0,0,0,4,90,-1,-1,0),(394,'Add Meteorite Enhanced',0,1,14,0,6,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,190,0,0,0,0,0,4,45,-1,-1,0),(395,'Nova Cast Strengthener',0,22,198,49,6,0,0,0,1,0,0,0,0,0,1052,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,-1,-1,-1,-1,0),(397,'Add One Hand Staff Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(398,'Add Two Hand Staff Damage',0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(399,'Add Shield Defense',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(400,'Add One Hand Staff Mastery',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(401,'Add Two Hand Staff Mastery',0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(402,'Add Shield Mastery',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(403,'Add Mana Shield Improved',0,7,77,24,6,0,0,1,0,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(404,'Add Mana Shield Enhanced',0,10,84,26,6,0,0,1,0,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(405,'Add Min Magic Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,3,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(406,'Add Mana Shield Mastered',0,7,92,28,6,0,0,1,0,140,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(407,'Add Max Magic Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,3,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(409,'Illusion Wings Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(410,'Add FE Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(411,'Add Five Shot Improved',0,22,11,7,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,2,100,-1,-1,0),(412,'Add FE Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(413,'Add Heal Improved',0,22,22,0,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(414,'Add Triple Shot Improved',0,4,5,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,2,100,-1,-1,0),(415,'Add Summon Life',0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(416,'Add Penetration Improved',0,17,10,11,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,130,0,0,0,0,0,2,200,-1,-1,0),(417,'Add Greater Defense Improved',0,22,33,0,6,0,0,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(418,'Add Triple Shot Enhanced',0,0,9,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,2,100,-1,-1,0),(419,'Add Summon Defense',0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(420,'Add Greater Damage Improved',0,22,44,0,6,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(421,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(422,'Add Greater Damage Enhanced',0,22,48,0,6,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(423,'Add Greater Defense Enhanced',0,22,36,0,6,0,0,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(424,'Add Ice Arrow Improved',0,22,15,18,8,0,0,0,2,57,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,115,0,0,0,0,0,2,150,-1,-1,0),(425,'Add Cure',0,0,72,10,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(426,'Add Party Healing',0,0,66,12,6,6,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(427,'Add Poison Arrow',0,27,50,50,6,0,0,0,5,159,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,165,0,1000,0,0,0,2,100,-1,-1,0),(428,'Add Summon Damage',0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(429,'Add Party Healing Improved',0,22,72,13,6,6,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(430,'Add Bless',0,0,108,18,6,0,0,1,0,142,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(431,'Add Five Shot Enhanced',0,1,12,8,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,2,100,-1,-1,0),(432,'Add Summon Satyros',0,0,525,52,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(433,'Add Bless Improved',0,10,118,20,6,0,0,1,0,142,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(434,'Add Poison Arrow Improved',0,40,50,50,6,0,0,0,5,160,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,165,0,500,0,0,0,2,100,-1,-1,0),(435,'Add Bow Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(436,'Add Cross Bow Damage',0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(437,'Add Shield Defense',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(438,'Add Bow Mastery',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(439,'Add Cross Bow Mastery',0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(440,'Add Shield Mastery',0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(441,'Add Infinity Arrow Improved',0,1,55,11,0,0,0,1,0,143,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(442,'Add Min Physi Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(443,'Add Max Physi Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(445,'DimensionWings Absorb PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(446,'Add SU Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(447,'Add SU Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(451,'Add Sahamutt Enhanced',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(452,'Add Neil Enhanced',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(453,'Add Ghost Phantom Enhanced',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(454,'Add Sleep Improved',0,1,30,7,6,0,0,2,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(455,'Add Chain Lightning Improved',0,22,103,0,6,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,105,0,0,0,0,0,4,200,-1,-1,0),(456,'Add Red Storm Improved',0,22,125,10,6,5,0,0,4,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,105,0,0,0,0,0,4,200,-1,-1,0),(457,'Add Magic Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(458,'Add Drain Life Improved',0,22,57,0,6,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(459,'Add Lesser Damage Improved',0,3,50,15,8,5,0,2,0,162,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(460,'Add Lesser Defense Improved',0,3,50,15,8,5,0,2,0,163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(461,'Add Blind',0,0,115,25,3,0,0,2,0,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(462,'Add Drain Life Enhanced',0,9,62,0,6,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(463,'Add Blind Improved',0,1,126,27,3,0,0,2,0,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(465,'Add Stick Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(466,'Add Book Damage',0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(467,'Add Stick Mastery',0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(468,'Add Book Mastery',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(469,'Add Sword Power Improved',0,172,165,82,5,0,0,1,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(470,'Add Sword Power Enhanced',0,173,181,90,5,0,0,1,0,151,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(471,'Add Min Magic Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(473,'Add Max Magic Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(475,'Wing of Ruin Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(476,'Add MG Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(478,'Add MG Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(479,'Add Cyclone Improved',0,4,9,0,2,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,165,0,0,0,0,0,1,30,-1,-1,0),(480,'Add Lightning Improved',0,40,20,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,180,0,0,0,0,0,4,40,-1,-1,0),(481,'Add Twisting Slash Improved',0,40,10,10,2,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,150,0,0,0,0,0,1,40,-1,-1,0),(482,'Add Power Slash Improved',0,17,15,0,5,5,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,125,0,0,0,0,0,1,100,-1,-1,0),(483,'Add Flame Improved',0,17,55,0,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,120,0,0,0,0,0,4,100,-1,-1,0),(484,'Add Blast Improved',0,17,165,0,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,130,0,0,0,0,0,4,150,-1,-1,0),(485,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(486,'Add Inferno Improved',0,4,220,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,110,0,0,0,0,0,4,90,-1,-1,0),(487,'Add Evil Spirit Improved',0,4,108,0,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,110,0,0,0,0,0,4,150,-1,-1,0),(488,'Add Magic Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(489,'Add Ice Improved',0,40,42,0,6,0,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,150,0,0,0,0,0,4,45,-1,-1,0),(490,'Add Fire Slash Improved',0,3,15,22,3,6,0,0,5,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(491,'Add Ice Enhanced',0,1,46,0,6,0,0,0,2,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,150,0,0,0,0,0,4,45,-1,-1,0),(492,'Add Sword Slash Improved',0,4,30,37,3,5,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,200,-1,-1,0),(493,'Add Fire Slash Enhanced',0,7,17,24,3,6,0,0,5,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(494,'Add Sword Slash Enhanced',0,7,33,40,3,5,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,135,0,0,0,0,0,1,200,-1,-1,0),(495,'Add Earth Prison',0,26,180,15,0,4,0,0,3,147,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,3,0,0,0,135,0,5000,0,0,0,4,200,-1,-1,0),(496,'Add Lightning Storm Improved',0,3,132,11,6,6,0,0,4,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,115,0,0,0,0,0,4,250,-1,-1,0),(497,'Add Earth Prison Improved',0,4,198,17,0,4,0,0,3,147,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0,0,0,0,3,0,0,0,135,0,3000,0,0,0,1,200,-1,-1,0),(504,'Emperor Cape Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(505,'Add DL Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(506,'Add Leadership',0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(507,'Add DL Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(508,'Add Fire Burst Improved',0,4,25,0,6,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,135,0,0,0,0,0,1,100,-1,-1,0),(509,'Add Force Wave Improved',0,40,15,0,4,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,160,0,0,0,0,0,1,40,-1,-1,0),(510,'Add Dark Horse Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(511,'Add Greater C. D. Improved',0,3,75,75,0,6,0,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(512,'Add Earthquake Improved',0,4,0,75,10,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,10000,0,0,0,-1,-1,-1,-1,0),(513,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(514,'Add Fire Burst Enhanced',0,1,27,0,6,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,135,0,0,0,0,0,1,100,-1,-1,0),(515,'Add Greater C. D. Enhanced',0,10,82,82,0,6,0,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(516,'Add Earthquake Enhanced',0,1,0,75,10,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,10000,0,0,0,-1,-1,-1,-1,0),(517,'Add Greater C. D. Mastered',0,7,100,100,0,6,0,1,0,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(518,'Add Fire Scream Improved',0,22,45,11,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,115,0,0,0,0,0,1,150,-1,-1,0),(519,'Add Electric Spark Improved',0,3,0,150,10,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,5000,0,0,0,1,100,-1,-1,0),(520,'Add Fire Scream Enhanced',0,5,49,12,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,115,0,0,0,0,0,1,150,-1,-1,0),(522,'Add Greater C. D. Extended',0,1,110,110,0,6,0,1,0,149,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(523,'Add Birds Improved',0,22,75,22,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(526,'Add Dark Spirit Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(527,'Add Scepter Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(528,'Add Shield Defense',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(529,'Add Scepter Pet Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(530,'Add Dark Spirit C. D. Rate',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(531,'Add Scepter Mastery',0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(532,'Add Shield Mastery',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(533,'Add Damage By Leadership',0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(534,'Add Dark Spirit E. D. Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(535,'Add Pet Durability Rate',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(536,'Add Dark Spirit Attack Speed',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(538,'Add Dark Spirit D. D. Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(539,'Add Dark Spirit I. D. Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(548,'Reigning Cloak Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(549,'Add RF Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(550,'Add RF Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(551,'Add Large Ring Blower Improved',0,22,10,0,2,0,0,0,3,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,155,0,0,0,0,0,3,100,-1,-1,0),(552,'Add Upper Beast Improved',0,22,10,0,2,0,0,0,1,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,155,0,0,0,0,0,3,100,-1,-1,0),(554,'Add Large Ring Blower Enhanced',0,1,10,0,2,0,0,0,3,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,155,0,0,0,0,0,3,100,-1,-1,0),(555,'Add Upper Beast Enhanced',0,1,10,0,2,0,0,0,1,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,155,0,0,0,0,0,3,100,-1,-1,0),(556,'Add Defense Success Rate',0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(557,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(558,'Add Chain Driver Improved',0,22,22,22,4,0,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,105,0,700,0,0,0,-1,-1,-1,-1,0),(559,'Add Dark Side Improved',0,22,84,0,5,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,115,0,0,0,0,0,-1,-1,-1,-1,0),(560,'Add Dragon Lore Improved',0,22,60,33,3,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,700,0,0,0,-1,-1,-1,-1,0),(561,'Add Dragon Lore Enhanced',0,1,66,36,3,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,700,0,0,0,-1,-1,-1,-1,0),(562,'Add Chain Driver Enhanced',0,1,24,22,4,0,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,105,0,700,0,0,0,-1,-1,-1,-1,0),(563,'Add Dark Side Enhanced',0,0,92,0,6,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,115,0,0,0,0,0,-1,-1,-1,-1,0),(564,'Add Dragon Slayer Improved',0,22,110,110,4,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(565,'Add Blood Howling',0,0,100,200,0,0,0,1,0,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,120000,0,0,0,-1,-1,-1,-1,0),(566,'Add Dragon Slayer Enhanced',0,38,121,121,4,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(567,'Add Blood Howling Improved',0,38,110,220,0,0,0,1,0,167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,120000,0,0,0,-1,-1,-1,-1,0),(568,'Add Glove Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(569,'Add Greater D. S. Rate Improved',0,22,55,11,7,5,0,1,0,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(571,'Add Glove Mastery',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(572,'Add Greater D. S. Rate Enhanced',0,22,60,12,7,5,0,1,0,154,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(573,'Add Fitness Improved',0,5,55,11,7,5,0,1,0,155,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(574,'Defense Switch',0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(578,'Add Item Durability Rate',0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(579,'Add Defense Success Rate PvP',0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(580,'Add Max SD',0,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(581,'Add MP Recovery Rate',0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(582,'Add Poison Resistance',0,1,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(583,'Add Item Durability Rate',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(584,'Add SD Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(585,'Add HP Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(586,'Add Lightning Resistance',0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(587,'Add Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(588,'Add BP Recovery Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(589,'Add Ice Resistance',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(590,'Add Item Durability Rate',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(591,'Add Defense Success Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(592,'Cast Invincibility',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(593,'Add Armor Set Bonus',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(594,'Add Reflect Damage',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(595,'Add Energy',0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(596,'Add Vitality',0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(597,'Add Agility',0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(598,'Add Strength',0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(599,'Add Attack Success Rate',0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(600,'Add Max HP',0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(601,'Add Max MP',0,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(602,'Add Max BP',0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(603,'Add Attack Success Rate PvP',0,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(604,'Add MP Consumption Rate',0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(605,'Add Hunt SD',0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(606,'Add Hunt HP',0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(607,'Add Min Physi Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(608,'Add Hunt MP',0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(609,'Add Max Physi Damage',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(610,'Add Critical Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(611,'Add Restore MP Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(612,'Add Restore HP Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(613,'Add Excellent Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(614,'Add Double Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(615,'Add Ignore Defense Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(616,'Add Restore SD Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(617,'Add Triple Damage Rate',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(618,'Order of Protection',0,0,30,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(619,'Order of Restraint',0,0,30,0,3,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(620,'Order of Tracking',0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,100,0,120000,0,0,0,-1,-1,-1,-1,0),(621,'Order of Weaken',0,0,30,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(623,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(624,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(625,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(626,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(627,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(628,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(629,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(630,'Add Melee Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(631,'Add Rush',0,178,200,200,7,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,150,0,1000,0,0,0,1,100,-1,-1,0),(634,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(635,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(636,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(637,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(638,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(639,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(640,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(641,'Add Range Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(642,'Add Illusion',0,0,1000,300,1,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,100,0,120000,0,0,0,-1,-1,-1,-1,0),(643,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(644,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(645,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(646,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(647,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(648,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(649,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(650,'Add Range Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(651,'Add Shadow Step',0,0,150,100,5,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,3000,0,0,0,-1,-1,-1,-1,0),(652,'Add Evasion',0,0,200,200,0,0,0,1,0,214,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(653,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(654,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(655,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(656,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(657,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(658,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(659,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(660,'Add Range Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(663,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(664,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(665,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(666,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(667,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(668,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(669,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(670,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(671,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(672,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(673,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(674,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(675,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(676,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(677,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(678,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(679,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(680,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(681,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(682,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(683,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(684,'Cloak of Transcendence Absorption PowUp',0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(685,'Add GL Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(686,'Add GL Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(687,'Add Spin Step Improved',0,3,15,0,2,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(688,'Add Harsh Strike Improved',0,4,15,0,3,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,500,0,0,0,1,30,-1,-1,0),(689,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(690,'Add Spin Step Enhanced',0,4,20,0,2,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(691,'Add Harsh Strike Enhanced',0,0,20,0,3,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,500,0,0,0,1,30,-1,-1,0),(692,'Add Magic Pin Improved',0,4,30,20,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(693,'Add Obsidian Improved',0,18,50,50,0,5,0,1,0,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,1,-1,-1,-1,0),(694,'Add Magic Pin Enhanced',0,7,35,20,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(695,'Add Magic Pin Mastered',0,0,40,22,3,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(696,'Add Breche Improved',0,4,45,25,3,3,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,500,0,0,0,2,-1,-1,-1,0),(697,'Add Breche Enhanced',0,7,45,25,3,3,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,500,0,0,0,2,-1,-1,-1,0),(698,'Add Breche Mastered',0,0,50,30,4,4,0,0,1,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,500,0,0,0,2,-1,-1,-1,0),(699,'Add Shining Peak Improved',0,5,70,25,4,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,110,0,0,0,0,0,1,-1,-1,-1,0),(700,'Add Burst',0,38,200,50,0,0,0,1,0,219,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(701,'Add Burst Improved',0,23,210,52,0,0,0,1,0,226,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(702,'Add Lance Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(703,'Add Circle Shield Improved',0,10,100,50,0,0,0,1,0,221,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,2,-1,-1,-1,0),(704,'Add Shield Defense',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(705,'Add Lance Mastery',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(706,'Add Circle Shield Enhanced',0,23,100,50,0,0,0,1,0,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,2,-1,-1,-1,0),(707,'Add Shield Mastery',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(708,'Add Wrath Improved',0,23,110,50,0,0,0,1,0,223,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,60000,0,0,0,2,-1,-1,-1,0),(709,'Add Wrath Enhanced',0,23,130,60,0,0,0,1,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,60000,0,0,0,2,-1,-1,-1,0),(710,'Add Wrath Mastered',0,38,150,80,0,0,0,1,0,225,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,60000,0,0,0,2,-1,-1,-1,0),(711,'Add GL Damage Multiplier Rate',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(712,'Add GL Damage Multiplier Rate',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(713,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(714,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(715,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(716,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(717,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(718,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(719,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(720,'Elemental Immunity',0,0,300,200,0,0,0,1,0,243,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,500,0,0,0,-1,-1,-1,-1,0),(721,'Debuff Immunity',0,0,300,200,0,0,0,1,0,244,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,500,0,0,0,-1,-1,-1,-1,0),(722,'Berserker',0,0,500,300,0,0,0,1,0,245,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,500,0,0,0,-1,-1,-1,-1,0),(723,'Fire Blow',0,120,17,17,5,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,105,1,0,0,0,0,1,150,-1,-1,0),(724,'Meteor Strike',0,100,92,17,7,2,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(725,'Meteor Shower',0,105,105,20,6,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,130,0,500,0,0,0,4,200,-1,-1,0),(726,'Soul Seeker',0,125,90,16,7,2,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(727,'Focus Shot',0,110,12,9,7,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,130,1,0,0,0,0,2,100,-1,-1,0),(729,'Fire Beast',0,100,95,10,7,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,105,1,350,0,0,0,4,170,-1,-1,0),(730,'Aqua Beast',0,100,95,10,7,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,105,1,350,0,0,0,4,170,-1,-1,0),(731,'Aqua Blood',0,330,19,28,3,2,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,105,1,0,0,0,0,1,750,-1,-1,0),(732,'Fire Blood',0,330,19,28,3,2,0,0,1,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,105,1,0,0,0,0,1,750,-1,-1,0),(733,'Dark Blast',0,120,92,17,7,2,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(734,'Meteor Impact',0,120,92,17,7,2,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(737,'Wind Soul',0,85,60,17,6,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,105,1,0,0,0,0,1,250,-1,-1,0),(739,'Dark Phoenix Shot',0,650,30,10,7,2,0,0,5,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,110,1,600,0,0,0,2,170,-1,-1,0),(740,'Archangel Will',0,0,100,150,0,6,0,1,0,246,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,100,0,90000,0,0,0,-1,-1,-1,-1,0),(743,'Add Max HP',0,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(744,'Add Phoenix Shot Improved',0,22,30,0,4,3,0,0,4,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,125,0,1200,0,0,0,3,200,-1,-1,0),(745,'Add Phoenix Shot Enhanced',0,1,30,0,4,3,0,0,4,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,125,0,1200,0,0,0,3,200,-1,-1,0),(746,'Add Elemental Defense',0,162,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,3,3,3,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(747,'Pentagram Elemental Defense Increase',0,163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3,3,3,3,3,3,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(748,'Add Magic Arrow Improved',0,22,35,12,8,8,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,4,500,-1,-1,0),(749,'Add Magic Arrow Enhanced',0,22,42,18,8,8,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,4,500,-1,-1,0),(750,'Add Plasma Ball Improved',0,22,130,45,8,4,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,110,0,4000,0,0,0,4,200,-1,-1,0),(751,'Add Plasma Ball Enhanced',0,22,135,55,8,5,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,110,0,4000,0,0,0,4,200,-1,-1,0),(752,'Add Rune Mace Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(753,'Add Rune Mace Mastery',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(754,'Add RW Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(755,'Add RW Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(756,'Add Block Full Damage Rate',0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(758,'Add Block Part Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(759,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(760,'Add Resist Stun Rate',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(761,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(762,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(763,'Add Range Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(765,'Add Might Improved',0,23,60,0,0,0,0,1,0,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(766,'Add Might Enhanced',0,23,80,0,0,0,0,1,0,296,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(768,'Add Haste Improved',0,23,0,60,0,7,0,1,0,298,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(769,'Add Haste Enhanced',0,23,0,80,0,7,0,1,0,299,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(770,'Darkness Improved',0,174,100,50,5,0,0,1,0,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(771,'Darkness Enhanced',0,175,100,50,5,0,0,1,0,303,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(772,'Lesser Damage Enhanced',0,177,50,15,8,5,0,2,0,304,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(773,'Lesser Defense Enhanced',0,177,50,15,8,5,0,2,0,305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(774,'Sahamutt Improved',0,3,35,0,4,3,0,0,1,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,500,0,0,0,4,150,-1,-1,0),(775,'Neil Improved',0,3,60,4,4,4,0,0,3,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,800,0,0,0,4,150,-1,-1,0),(776,'Ghost Phantom Improved',0,3,70,8,4,5,0,0,4,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,100,0,500,0,0,0,4,150,-1,-1,0),(777,'Ghost Phantom Enhanced',0,22,70,8,5,5,0,0,4,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,125,0,500,0,0,0,4,150,-1,-1,0),(778,'Ghost Phantom Mastered',0,22,70,8,5,5,0,0,4,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,125,0,500,0,0,0,4,150,-1,-1,0),(779,'Sword Inertia Improved',0,22,7,5,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(780,'Sword Inertia Enhanced',0,0,10,7,7,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(781,'Bat Flock Improved',0,22,25,9,6,6,0,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(782,'Bat Flock Enhanced',0,23,30,12,6,6,0,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(783,'Add Short Sword Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(784,'Add Short Sword Mastery',0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(785,'Add SL Wing Defense',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(786,'Add SL Wing Damage',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(787,'Demolish Improved',0,23,60,0,0,5,0,1,0,319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(788,'Demolish Enhanced',0,214,80,0,0,5,0,1,0,320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,60000,0,0,0,-1,-1,-1,-1,0),(789,'Add Weapon Damage',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(790,'Add Impenetrable Defense',0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(791,'Add Parry Full Damage Rate',0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(792,'Add Recover HP',0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(793,'Add Recover SD',0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(794,'Detection Improved',0,0,100,100,0,0,0,1,0,318,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,100,0,5000,0,0,0,-1,-1,-1,-1,0),(801,'Strengthening Sword\'s Wrath',0,226,21,17,0,0,0,1,0,327,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(802,'Sword Fury Mastery',0,227,21,17,0,0,0,1,0,328,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(803,'Reinforced solid protection',0,228,65,20,0,0,0,1,0,329,0,0,0,0,1052,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(804,'Solid protection skill',0,229,65,20,0,0,0,1,0,330,0,0,0,0,1052,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(805,'Reinforced solid protection (3)',0,230,65,20,0,0,0,1,0,331,0,0,0,0,1052,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(806,'Solid Protection Mastery',0,231,65,20,0,0,0,1,0,332,0,0,0,0,1052,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(807,'Frozen Stab Improved',0,232,30,24,5,3,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,4,150,-1,-1,0),(809,'Frozen Stab Enhanced',0,234,30,24,5,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,4,150,-1,-1,0),(810,'Strengthen strong Conviction',0,22,80,25,0,0,0,1,0,336,0,0,0,0,1040,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(811,'Add Twisting Slash Improved',0,40,10,10,2,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,1,40,-1,-1,0),(812,'Add Rageful Blow Improved',0,22,25,22,3,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,125,0,0,0,0,0,1,150,-1,-1,0),(813,'Rush',0,178,200,200,7,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,150,0,1000,0,0,0,1,100,-1,-1,0),(814,'Energy stat increase',0,245,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(815,'Heal stat increase',0,246,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(816,'Agility stat increase',0,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(817,'Strength stat increase',0,248,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(818,'Enhances Wing Defense of Hit',0,249,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(819,'Enhances Wing Attack of Hit',0,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(820,'Dark Plasma Enhancement',0,251,22,15,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,5000,0,0,0,4,80,-1,0,0),(821,'Dark plasma skill',0,252,22,15,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,5000,0,0,0,4,80,-1,0,0),(822,'Dark Plasma Mastery',0,253,22,15,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,5000,0,0,0,4,80,-1,0,0),(823,'Ice break enhancement',0,254,17,8,6,0,0,0,2,0,0,0,0,0,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(824,'Ice break Mastery',0,255,17,8,6,0,0,0,2,0,0,0,0,0,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(825,'Death Fire Enhancement',0,256,8,10,6,6,0,0,1,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(826,'Death Fire Mastery',0,257,8,10,7,7,0,0,1,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(831,'Strengthen Magic Gun',0,262,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,-1,0,-1,0,0),(832,'Magic Gun Mastery',0,263,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,-1,0,-1,0,0),(835,'Death Ice Strengthener',0,269,8,10,6,6,0,0,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(836,'Death Ice Mastery',0,270,8,10,7,7,0,0,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,0,0,0,0,0,4,80,-1,0,0),(1001,'Add Ext Skill Damage',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1002,'Add Ext Skill Damage Count 1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1003,'Add Ext Skill Damage Count 2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1004,'Add Ext Skill Damage Count 3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1005,'Add Ext Skill Damage Count 4',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1006,'Add Ext Skill Damage Count 5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1007,'Add Ext Skill Extra Damage Rate',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1008,'Add Ext Skill Speed',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1009,'Add Ext Skill Radio',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1010,'Add Ext Skill Splash Damage',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1011,'Add Ext Skill Range',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1012,'Add Ext Skill Target Number',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1013,'Buff Synergy Effect',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1014,'Buff Synergy Effect',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1015,'Increase Skill Duration',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1016,'Iron Defense (Learned)',0,3,70,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(1017,'Enhance Iron Defense',0,3,70,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,30000,0,0,0,-1,-1,-1,-1,0),(1018,'Cooldown Time Reduction',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1019,'Add Ext Skill Remove Cooldown',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1020,'Add Weapon Physi Damage',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1021,'Add Weapon Magic Damage',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1022,'Add Penetration Effect',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1023,'Add Arrow Missile',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1024,'Add Debuff Toxic Rate',0,151,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1025,'Add Debuff Chill Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1026,'Add Debuff Bleed Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1028,'Add Debuff Toxic Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1029,'Add Debuff Chill Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1030,'Add Debuff Bleed Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1032,'Add Debuff Toxic Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1033,'Add Debuff Chill Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1034,'Add Debuff Bleed Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1036,'Add Debuff Toxic Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1037,'Add Debuff Chill Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1038,'Add Debuff Bleed Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1040,'Add Debuff Toxic Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1041,'Add Debuff Chill Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1042,'Add Debuff Bleed Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1046,'Add Debuff Toxic Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1047,'Add Debuff Chill Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1048,'Add Debuff Bleed Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1050,'Add Debuff Toxic Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1051,'Add Debuff Chill Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1052,'Add Debuff Bleed Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1054,'Add Debuff Toxic Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1055,'Add Debuff Chill Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1056,'Add Debuff Bleed Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1058,'Add Debuff Toxic Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1059,'Add Debuff Chill Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1060,'Add Debuff Bleed Improved Value',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1062,'Add Debuff Toxic Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1063,'Add Debuff Chill Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1064,'Add Debuff Bleed Improved Rate',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1069,'Add Rageful Blow Extended',0,60,25,22,3,4,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,4,0,125,0,0,0,0,0,1,150,-1,-1,0),(1071,'Add Death Stab Extended',0,22,17,18,4,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,4,0,105,0,0,0,0,0,1,150,-1,-1,0),(1072,'Add Fire Blow Extended',0,120,17,17,5,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,4,0,105,1,0,0,0,0,1,150,-1,-1,0),(1075,'Add Meteor Strike Extended',0,100,92,17,7,2,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(1076,'Add Meteor Shower Extended',0,105,105,20,6,6,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,130,0,500,0,0,0,4,200,-1,-1,0),(1078,'Add Evil Spirit Extended',0,45,108,7,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0,0,0,0,110,0,0,0,0,0,4,150,-1,-1,0),(1081,'Add Triple Shot Extended',0,0,9,4,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0,2,100,-1,-1,0),(1083,'Add Five Shot Extended',0,22,11,7,6,6,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,2,100,-1,-1,0),(1085,'Add Focus Shot Extended',0,110,12,9,7,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,130,1,0,0,0,0,2,100,-1,-1,0),(1087,'Add Lightning Storm Extended',0,110,110,11,6,6,0,0,4,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,115,0,0,0,0,0,4,250,-1,-1,0),(1088,'Add Evil Spirit Extended',0,45,108,7,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,110,0,0,0,0,0,4,150,-1,-1,0),(1089,'Add Dark Blast Extended',0,120,92,17,7,2,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,110,1,0,0,0,0,4,170,-1,-1,0),(1092,'Add Fire Slash Extended',0,80,15,20,3,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(1094,'Add Fire Blood Extended',0,330,19,28,3,2,0,0,1,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,105,1,0,0,0,0,1,750,-1,-1,0),(1095,'Add Aqua Blood Extended',0,330,19,28,3,2,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,105,1,0,0,0,0,1,750,-1,-1,0),(1096,'Add Fire Burst Extended',0,100,25,8,6,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,135,0,0,0,0,0,1,100,-1,-1,0),(1098,'Add Birds Extended',0,190,60,17,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,105,0,0,0,0,0,1,150,-1,-1,0),(1099,'Add Wind Soul Extended',0,85,60,17,6,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,105,1,0,0,0,0,1,250,-1,-1,0),(1102,'Add Fire Beast Extended',0,100,95,11,7,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,105,1,500,0,0,0,4,170,-1,-1,0),(1103,'Add Red Storm Extended',0,95,105,10,6,5,0,0,4,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,105,0,0,0,0,0,4,200,-1,-1,0),(1105,'Add Aqua Beast Extended',0,100,95,11,7,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,105,1,500,0,0,0,4,170,-1,-1,0),(1111,'Add Dragon Lore Extended',0,0,42,17,3,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,100,0,700,0,0,0,-1,-1,-1,-1,0),(1112,'Add Chain Driver Extended',0,0,22,18,4,0,0,0,2,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,105,0,700,0,0,0,-1,-1,-1,-1,0),(1113,'Add Dark Side Extended',0,0,92,7,6,3,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,115,0,0,0,0,0,-1,-1,-1,-1,0),(1117,'Add Magic Pin Extended',0,80,40,22,3,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,100,0,500,0,0,0,2,-1,-1,-1,0),(1118,'Add Breche Extended',0,400,40,23,4,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,110,0,500,0,0,0,2,-1,-1,-1,0),(1119,'Add Shining Peak Extended',0,70,52,24,4,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,110,0,0,0,0,0,1,-1,-1,-1,0),(1125,'Add Toxic Explosion',0,25000,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1126,'Add Chill Explosion',0,25000,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1127,'Add Bleed Explosion',0,25000,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1129,'Add Toxic Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1130,'Add Chill Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1131,'Add Bleed Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1133,'Add Toxic Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1134,'Add Chill Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1135,'Add Bleed Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1137,'Add Max HP',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1138,'Add Stat Point',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1139,'Add Impenetrable Defense',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1140,'Increase Defense of Lv. 4 Wings /Cape',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1141,'Add Physi Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1142,'Add Magic Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1143,'Add Stat Point',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1144,'Add Skill Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1145,'Increase ATK of Lv. 4 Wings /Cape',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1146,'Add Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1147,'Add Spirit Hook Extended',0,255,27,21,3,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,105,1,0,0,0,0,3,10,-1,-1,0),(1148,'Add Magic Arrow Extended',0,100,15,5,8,8,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,100,0,0,0,0,0,4,500,-1,-1,0),(1149,'Add Plasma Ball Extended',0,100,120,35,8,5,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,110,0,4000,0,0,0,4,200,-1,-1,0),(1150,'Add Shock Blast Extended',0,100,80,37,8,4,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,115,1,0,0,0,0,4,100,-1,-1,0),(1151,'Add Ext Skill Ground Speed',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1152,'Increase Plasma Attack Speed',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1153,'Add Ext Skill Splash Radio',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1154,'Add Ext Skill Splash Count',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1155,'Add Death Scythe Extended',0,95,120,20,6,6,0,0,5,306,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,105,1,0,0,0,0,4,200,-1,-1,0),(1156,'Add Weapon Curse Damage',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1157,'Add Curse Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1158,'Add Sword Inertia Extended',0,10,7,5,7,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(1159,'Add Bat Flock Extended',0,90,15,7,6,6,0,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,100,0,0,0,0,0,2,150,-1,-1,0),(1160,'Add Pierce Attack Extended',0,170,20,10,6,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,120,1,0,0,0,0,2,150,-1,-1,0),(1166,'Add Debuff Toxic Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1167,'Add Debuff Toxic Improved Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1168,'Add Debuff Bleed Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1169,'Add Debuff Bleed Improved Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1170,'Add Debuff Chill Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1171,'Add Debuff Chill Improved Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1172,'Add Debuff Toxic Range',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1174,'Add Debuff Bleed Range',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1176,'Add Debuff Chill Range',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1178,'Add Debuff Toxic Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1179,'Add Debuff Toxic Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1180,'Add Debuff Bleed Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1181,'Add Debuff Bleed Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1182,'Add Debuff Chill Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1183,'Add Debuff Chill Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1184,'Add Debuff Toxic Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1185,'Add Debuff Toxic Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1186,'Add Debuff Bleed Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1187,'Add Debuff Bleed Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1188,'Add Debuff Chill Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1189,'Add Debuff Chill Improved Chance',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1190,'Add Debuff Toxic Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1191,'Add Debuff Bleed Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1192,'Add Debuff Chill Target',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1193,'Add 4th Wing Defense',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1194,'Add 4th Wing Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1195,'Add 4th Wing Curse Damage',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1196,'Add Toxic Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1197,'Add Bleed Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1198,'Add Chill Explosion Damage',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1199,'Add Toxic Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1200,'Add Bleed Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1201,'Add Chill Explosion Effect',0,100,40,30,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,1000,0,0,0,-1,-1,-1,-1,0),(1202,'Destruction Strike Enhancement Skill',0,120,30,24,5,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,135,0,0,0,0,0,4,150,-1,-1,0),(1203,'Sword Blow Enhancement Skill',0,30,19,17,5,7,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,105,1,0,0,0,0,-1,-1,-1,-1,0),(1204,'Solid protection enhancement skill',0,120,65,20,0,0,0,1,0,332,0,0,0,0,1052,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1205,'Solid Protection Enhancement Max HP',0,0,0,0,0,0,0,0,0,332,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1206,'Solid Protection Enhancement Party Damage',0,0,0,0,0,0,0,0,0,332,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1207,'Solid Protection Enhancement HP Convert Rate',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1208,'Solid Protection Enhancement Dmg Convert Rate',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1209,'Solid Protection Enhancement Defense Party',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1210,'Solid Protection Enhancement Defense',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1211,'Dark Plasma Enhancement Skill',0,100,19,15,6,5,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,105,1,5000,0,0,0,4,80,-1,-1,0),(1212,'Ice Blast Enhancement Skill',0,100,14,10,6,6,0,0,2,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,105,1,0,0,0,0,4,80,-1,-1,0),(1213,'Busting Flare Enhancement Skill',0,100,14,13,6,0,0,0,1,0,0,0,0,0,800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,105,1,0,0,0,0,4,80,-1,-1,0),(1500,'Sword\'s Fury',0,0,21,17,0,0,0,1,0,324,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1501,'Sword Blow',0,30,19,17,5,7,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,105,1,0,0,0,0,-1,-1,-1,-1,0),(1502,'Strong belief',0,0,80,25,0,0,0,1,0,325,0,0,0,0,1040,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(1503,'Solid protection',0,0,65,20,0,0,0,1,0,326,0,0,0,0,1052,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,-1,-1,-1,-1,0),(2001,'Dark Plasma',0,30,22,10,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,105,1,5000,0,0,0,4,80,-1,-1,0),(2002,'Ice break',0,180,7,1,6,6,0,0,2,0,0,0,0,0,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,105,1,0,0,0,0,4,80,-1,-1,0),(2003,'Ice Blast',0,140,13,10,6,6,0,0,2,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,1,400,0,0,0,-1,-1,-1,-1,0),(2004,'Death Fire',0,160,5,1,6,6,0,0,1,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,105,0,0,0,0,0,4,80,-1,-1,0),(2005,'Bursting flare',0,70,10,13,6,0,0,0,1,0,0,0,0,0,800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,105,1,0,0,0,0,-1,-1,-1,-1,0),(2006,'Death Ice',0,160,5,1,6,6,0,0,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,105,0,0,0,0,0,4,80,-1,-1,0);
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
  `race` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `required_points` tinyint(3) unsigned NOT NULL,
  `max_level` tinyint(3) unsigned NOT NULL,
  `link` tinyint(3) unsigned NOT NULL,
  `required_skill_1` smallint(5) unsigned NOT NULL,
  `required_skill_points_1` tinyint(3) unsigned NOT NULL,
  `required_skill_2` smallint(5) unsigned NOT NULL,
  `required_skill_points_2` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  `related_skill` smallint(5) unsigned NOT NULL,
  `replace_skill` smallint(5) unsigned NOT NULL,
  `formula_id` smallint(5) unsigned NOT NULL,
  `unknown5` tinyint(3) unsigned NOT NULL,
  `unknown6` tinyint(3) unsigned NOT NULL,
  `unknown7` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
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
  `race` tinyint(3) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `section` tinyint(3) unsigned NOT NULL,
  `ui_group` tinyint(3) unsigned NOT NULL,
  `position_temp` tinyint(3) unsigned NOT NULL,
  `skill_id` smallint(5) unsigned NOT NULL,
  `buff_id` smallint(5) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `formula_id` int(11) NOT NULL,
  `link_slot_1` int(11) NOT NULL,
  `link_line_1` int(11) NOT NULL,
  `link_slot_2` int(11) NOT NULL,
  `link_line_2` int(11) NOT NULL,
  `link_slot_3` int(11) NOT NULL,
  `link_line_3` int(11) NOT NULL,
  `link_slot_4` int(11) NOT NULL,
  `link_line_4` int(11) NOT NULL,
  `link_slot_5` int(11) NOT NULL,
  `link_line_5` int(11) NOT NULL,
  `required_points` tinyint(3) unsigned NOT NULL,
  `max_points` tinyint(3) unsigned NOT NULL,
  `active_next_points` tinyint(3) unsigned NOT NULL,
  `parent_skill_1` smallint(5) unsigned NOT NULL,
  `parent_skill_points_1` tinyint(3) unsigned NOT NULL,
  `parent_skill_2` smallint(5) unsigned NOT NULL,
  `parent_skill_points_2` tinyint(3) unsigned NOT NULL,
  `parent_skill_3` smallint(5) unsigned NOT NULL,
  `parent_skill_points_3` tinyint(3) unsigned NOT NULL,
  `disabled` tinyint(4) NOT NULL,
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
  `race` tinyint(3) unsigned NOT NULL,
  `section` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `skill_id` smallint(5) unsigned NOT NULL,
  `point_condition_1` tinyint(3) unsigned NOT NULL,
  `required_points_1` tinyint(3) unsigned NOT NULL,
  `max_points_1` tinyint(3) unsigned NOT NULL,
  `point_condition_2` tinyint(3) unsigned NOT NULL,
  `required_points_2` tinyint(3) unsigned NOT NULL,
  `max_points_2` tinyint(3) unsigned NOT NULL,
  `point_condition_3` tinyint(3) unsigned NOT NULL,
  `required_points_3` tinyint(3) unsigned NOT NULL,
  `max_points_3` tinyint(3) unsigned NOT NULL,
  `start_point_1` tinyint(3) unsigned NOT NULL,
  `end_point_1` tinyint(3) unsigned NOT NULL,
  `formula_id_1` smallint(5) unsigned NOT NULL,
  `start_point_2` tinyint(3) unsigned NOT NULL,
  `end_point_2` tinyint(3) unsigned NOT NULL,
  `formula_id_2` smallint(5) unsigned NOT NULL,
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

--
-- Table structure for table `summon_scroll`
--

DROP TABLE IF EXISTS `summon_scroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon_scroll` (
  `index` smallint(5) unsigned NOT NULL,
  `item` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon_scroll`
--

LOCK TABLES `summon_scroll` WRITE;
/*!40000 ALTER TABLE `summon_scroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `summon_scroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summon_scroll_monster`
--

DROP TABLE IF EXISTS `summon_scroll_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon_scroll_monster` (
  `index` smallint(5) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `monster_class` smallint(5) unsigned NOT NULL,
  `create_rate` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon_scroll_monster`
--

LOCK TABLES `summon_scroll_monster` WRITE;
/*!40000 ALTER TABLE `summon_scroll_monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `summon_scroll_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_message`
--

DROP TABLE IF EXISTS `system_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_message` (
  `id` int(10) unsigned NOT NULL,
  `language` tinyint(3) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_message`
--

LOCK TABLES `system_message` WRITE;
/*!40000 ALTER TABLE `system_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teleport_template`
--

DROP TABLE IF EXISTS `teleport_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleport_template` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zen` int(10) unsigned NOT NULL,
  `min_level` smallint(6) NOT NULL,
  `gate` smallint(5) unsigned NOT NULL,
  `monster` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleport_template`
--

LOCK TABLES `teleport_template` WRITE;
/*!40000 ALTER TABLE `teleport_template` DISABLE KEYS */;
INSERT INTO `teleport_template` VALUES (1,'Arena',2000,1,50,-1),(2,'Lorencia',2000,10,17,7),(3,'Noria',2000,10,27,32),(4,'Devias',2000,10,22,24),(5,'Devias 2',2500,10,72,19),(6,'Devias 3',3000,10,73,20),(7,'Devias 4',3500,10,74,20),(8,'Dungeon',3000,30,2,11),(9,'Dungeon 2',3500,40,6,13),(10,'Dungeon 3',4000,40,10,8),(11,'Atlans',4000,50,49,45),(12,'Atlans 2',4500,80,75,52),(13,'Atlans 3',5000,90,76,48),(14,'LostTower',5000,50,42,39),(15,'LostTower 2',5500,50,31,34),(16,'LostTower 3',6000,50,33,41),(17,'LostTower 4',6500,50,35,37),(18,'LostTower 5',7000,50,37,40),(19,'LostTower 6',7500,70,39,35),(20,'LostTower 7',8000,70,41,35),(21,'Tarkan',8000,140,57,57),(22,'Tarkan 2',8500,160,77,61),(23,'Icarus',10000,160,63,70),(24,'ValleyOfLoren',0,10,104,-1),(25,'Aida 1',8500,150,119,306),(26,'Crywolf',15000,10,118,-1),(27,'Aida 2',8500,380,140,550),(28,'Kanturu 1',9000,160,138,353),(29,'Kanturu 2',9000,160,141,350),(30,'KanturuRelic',12000,300,139,360),(31,'Elbeland',2000,10,267,418),(32,'Elbeland 2',2500,10,268,422),(33,'SwampOfCalmness',15000,380,273,449),(34,'LaCleon',15000,380,287,458),(42,'Vulcanus',15000,300,294,490),(43,'Elbeland 3',3000,10,269,425),(44,'Loren Market',10000,1,333,-1),(45,'Kanturu 3',15000,380,334,556),(46,'Karutan 1',13000,280,335,574),(47,'Karutan 2',14000,380,344,576),(48,'Event Square',20000,1,503,-1),(49,'Acheron',50000,300,417,591),(50,'Ferea',50000,400,509,730),(51,'Nixies Lake',50000,700,522,744),(52,'Deep Dungeon 1',50000,770,561,767),(53,'Deep Dungeon 2',50000,770,562,772),(54,'Deep Dungeon 3',50000,770,563,773),(55,'Deep Dungeon 4',50000,770,564,769),(56,'Deep Dungeon 5',50000,770,565,777),(57,'Swamp Of Darkness',50000,800,567,788),(58,'Kubera Mine',50000,850,591,810),(59,'Atlans (Abyss) 1',50000,1000,617,832),(60,'Atlans (Abyss) 2',50000,1020,618,834),(61,'Atlans (Abyss) 3',50000,1030,619,836),(62,'Scorched Canyon',50000,1050,620,846),(63,'Scarlet Icarus',50000,1070,631,861);
/*!40000 ALTER TABLE `teleport_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_template`
--

DROP TABLE IF EXISTS `vip_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `experience` float NOT NULL,
  `instance` int(10) unsigned NOT NULL,
  `duration` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_template`
--

LOCK TABLES `vip_template` WRITE;
/*!40000 ALTER TABLE `vip_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_ai_path`
--

DROP TABLE IF EXISTS `world_ai_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_ai_path` (
  `world` smallint(5) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  PRIMARY KEY (`world`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_ai_path`
--

LOCK TABLES `world_ai_path` WRITE;
/*!40000 ALTER TABLE `world_ai_path` DISABLE KEYS */;
INSERT INTO `world_ai_path` VALUES (34,0,3,43,61),(34,1,3,47,55),(34,2,3,54,46),(34,3,3,63,40),(34,4,3,70,41),(34,5,3,79,33),(34,6,3,79,52),(34,7,3,87,63),(34,8,3,86,81),(34,9,3,82,97),(34,10,3,77,112),(34,11,3,70,112),(34,12,3,80,138),(34,13,3,88,149),(34,14,3,99,169),(34,15,3,108,186),(34,16,3,112,200),(34,17,3,115,168),(34,18,3,120,155),(34,19,3,123,141),(34,20,3,123,126),(34,21,3,120,112),(34,22,3,116,103),(34,23,3,111,98),(34,24,3,116,88),(34,25,3,114,76),(34,26,3,102,76),(34,27,3,136,74),(34,28,3,152,63),(34,29,3,125,75),(34,30,3,145,67),(34,31,3,162,55),(34,32,3,170,47),(34,33,3,173,37),(34,34,3,183,35),(34,35,3,192,42),(34,36,3,199,48),(34,37,3,207,59),(34,38,3,205,49),(34,39,3,212,69),(34,40,3,215,78),(34,41,3,216,89),(34,42,3,227,89),(34,43,3,235,100),(34,44,3,235,121),(34,45,3,222,120),(34,46,3,210,105),(34,47,3,189,83),(34,48,3,175,83),(34,49,3,203,86),(34,50,3,164,85),(34,51,3,154,83),(34,52,3,142,83),(34,53,3,213,116),(34,54,3,207,123),(34,55,3,204,130),(34,56,3,202,138),(34,57,3,197,144),(34,58,3,185,150),(34,59,3,176,151),(34,60,3,166,150),(34,61,3,164,140),(34,62,3,162,127),(34,63,3,158,120),(34,64,3,153,111),(34,65,3,148,104),(34,66,3,144,98),(34,67,3,138,89),(34,68,3,125,86),(34,69,3,158,155),(34,70,3,153,159),(34,71,3,148,164),(34,72,3,145,170),(34,73,3,144,176),(34,74,3,143,182),(34,75,3,142,192),(34,76,3,135,198),(34,77,3,123,201),(34,78,3,156,193),(34,79,3,164,193),(34,80,3,176,194),(34,81,3,184,199),(34,82,3,196,199),(34,83,3,205,200),(34,84,3,217,193),(34,85,3,224,186),(34,86,3,232,174),(34,87,3,235,159),(34,88,3,235,140),(34,89,3,229,128),(34,90,3,235,109),(34,91,3,160,206),(34,92,3,145,204),(34,93,3,153,215),(34,94,3,144,220),(34,95,3,143,211),(34,96,3,169,208),(34,97,3,170,220),(34,98,3,161,224),(34,99,3,111,213),(34,100,3,99,199),(34,101,3,86,201),(34,102,3,81,208),(34,103,3,73,214),(34,104,3,63,209),(34,105,3,54,203),(34,106,3,48,196),(34,107,3,46,183),(34,108,3,47,175),(34,109,3,52,166),(34,110,3,56,159),(34,111,3,62,152),(34,112,3,68,146),(34,113,3,60,113),(34,114,3,52,118),(34,115,3,46,123),(34,116,3,39,126),(34,117,3,31,122),(34,118,3,26,119),(34,119,3,20,114),(34,120,3,22,102),(34,121,3,25,93),(34,122,3,30,84),(34,123,3,34,76),(34,124,3,39,68),(34,125,3,16,123),(34,126,3,15,132),(34,127,3,15,140),(34,128,3,24,130),(34,129,3,15,148),(34,130,3,19,159),(34,131,3,30,170),(34,132,3,38,174),(34,133,3,71,22),(34,134,3,65,29),(34,135,3,94,159),(34,136,3,77,130),(34,137,3,74,123),(34,138,3,85,89),(34,139,3,94,80),(34,140,3,86,71),(34,141,3,140,71),(34,142,3,103,208),(34,143,3,207,94),(34,144,3,176,166),(34,145,3,173,176),(34,146,3,168,185),(34,147,3,75,27),(34,148,3,68,212),(34,149,3,97,178),(34,150,3,93,188),(34,151,3,91,195),(34,152,3,115,181),(34,153,3,65,200),(34,154,3,170,200),(34,155,3,29,133),(34,156,3,120,63),(34,157,3,120,58),(34,158,3,120,52),(34,159,3,120,48),(34,160,3,120,43),(34,161,3,120,38),(34,162,3,113,46),(34,163,3,110,42),(34,164,3,106,38),(34,165,3,84,32),(34,166,3,88,31),(34,167,3,94,31),(34,168,3,99,31),(34,169,3,103,31),(34,170,3,157,32),(34,171,3,152,32),(34,172,3,147,32),(34,173,3,141,31),(34,174,3,136,31),(34,175,3,130,31),(34,176,3,126,31),(34,177,3,124,26),(34,178,3,121,25),(34,179,3,114,31),(34,180,3,109,31),(34,181,3,116,36),(34,182,3,130,21),(34,183,3,126,16),(34,184,3,136,23),(34,185,3,119,15),(34,186,3,111,17),(34,187,3,129,45),(34,188,3,139,38),(34,189,3,128,38),(34,190,3,106,23),(34,191,3,113,22),(34,192,3,117,27),(34,193,3,125,36),(34,194,3,81,28),(34,195,3,75,20),(34,196,3,73,16),(34,197,3,73,36),(34,198,3,81,39),(34,199,3,77,44),(34,200,3,67,36),(34,201,3,178,37),(34,202,3,168,37),(34,203,3,162,32),(34,204,3,165,33),(34,205,3,187,39),(34,206,3,176,32),(34,207,3,170,30),(34,208,3,120,69),(34,209,3,157,59),(34,210,3,119,79),(34,211,3,119,74),(34,212,3,78,24),(34,213,3,83,57),(34,214,3,109,79),(34,215,3,116,69),(34,216,3,164,39),(34,217,3,160,35),(34,218,3,168,43),(34,219,3,135,42),(34,220,3,124,117),(82,0,0,117,126),(82,1,0,114,126),(82,2,0,109,126),(82,3,0,104,126),(82,4,0,99,126),(82,5,0,94,121),(82,6,0,89,116),(82,7,0,86,113),(82,8,0,86,108),(82,9,0,86,103),(82,10,0,86,98),(82,11,0,89,95),(82,12,0,90,90),(82,13,0,90,85),(82,14,0,90,80),(82,15,0,90,76),(82,16,0,86,72),(82,17,0,81,66),(82,18,0,76,66),(82,19,0,71,66),(82,20,0,66,66),(82,21,0,61,66),(82,22,1,128,137),(82,23,1,128,140),(82,24,1,128,145),(82,25,1,128,150),(82,26,1,128,154),(82,27,1,124,158),(82,28,1,120,162),(82,29,1,116,166),(82,30,1,114,167),(82,31,1,109,167),(82,32,1,104,167),(82,33,1,99,167),(82,34,1,95,165),(82,35,1,90,163),(82,36,1,85,163),(82,37,1,80,163),(82,38,1,76,167),(82,39,1,72,171),(82,40,1,68,175),(82,41,1,68,180),(82,42,1,68,185),(82,43,1,68,190),(82,44,1,68,194),(82,45,2,138,126),(82,46,2,140,126),(82,47,2,145,126),(82,48,2,150,126),(82,49,2,155,126),(82,50,2,159,130),(82,51,2,163,134),(82,52,2,167,138),(82,53,2,169,140),(82,54,2,169,145),(82,55,2,169,150),(82,56,2,169,155),(82,57,2,167,157),(82,58,2,167,162),(82,59,2,164,165),(82,60,2,164,170),(82,61,2,164,175),(82,62,2,168,179),(82,63,2,172,183),(82,64,2,175,186),(82,65,2,180,186),(82,66,2,185,186),(82,67,2,190,186),(82,68,2,195,186),(82,69,3,128,116),(82,70,3,128,113),(82,71,3,128,108),(82,72,3,128,103),(82,73,3,128,98),(82,74,3,132,94),(82,75,3,136,90),(82,76,3,140,86),(82,77,3,142,84),(82,78,3,147,84),(82,79,3,152,84),(82,80,3,156,86),(82,81,3,160,87),(82,82,3,164,89),(82,83,3,169,89),(82,84,3,174,89),(82,85,3,178,89),(82,86,3,182,85),(82,87,3,186,81),(82,88,3,187,77),(82,89,3,188,72),(82,90,3,188,67),(82,91,3,188,62),(83,0,0,117,126),(83,1,0,114,126),(83,2,0,109,126),(83,3,0,104,126),(83,4,0,99,126),(83,5,0,94,121),(83,6,0,89,116),(83,7,0,86,113),(83,8,0,86,108),(83,9,0,86,103),(83,10,0,86,98),(83,11,0,89,95),(83,12,0,90,90),(83,13,0,90,85),(83,14,0,90,80),(83,15,0,90,76),(83,16,0,86,72),(83,17,0,81,66),(83,18,0,76,66),(83,19,0,71,66),(83,20,0,66,66),(83,21,0,61,66),(83,22,1,128,137),(83,23,1,128,140),(83,24,1,128,145),(83,25,1,128,150),(83,26,1,128,154),(83,27,1,124,158),(83,28,1,120,162),(83,29,1,116,166),(83,30,1,114,167),(83,31,1,109,167),(83,32,1,104,167),(83,33,1,99,167),(83,34,1,95,165),(83,35,1,90,163),(83,36,1,85,163),(83,37,1,80,163),(83,38,1,76,167),(83,39,1,72,171),(83,40,1,68,175),(83,41,1,68,180),(83,42,1,68,185),(83,43,1,68,190),(83,44,1,68,194),(83,45,2,138,126),(83,46,2,140,126),(83,47,2,145,126),(83,48,2,150,126),(83,49,2,155,126),(83,50,2,159,130),(83,51,2,163,134),(83,52,2,167,138),(83,53,2,169,140),(83,54,2,169,145),(83,55,2,169,150),(83,56,2,169,155),(83,57,2,167,157),(83,58,2,167,162),(83,59,2,164,165),(83,60,2,164,170),(83,61,2,164,175),(83,62,2,168,179),(83,63,2,172,183),(83,64,2,175,186),(83,65,2,180,186),(83,66,2,185,186),(83,67,2,190,186),(83,68,2,195,186),(83,69,3,128,116),(83,70,3,128,113),(83,71,3,128,108),(83,72,3,128,103),(83,73,3,128,98),(83,74,3,132,94),(83,75,3,136,90),(83,76,3,140,86),(83,77,3,142,84),(83,78,3,147,84),(83,79,3,152,84),(83,80,3,156,86),(83,81,3,160,87),(83,82,3,164,89),(83,83,3,169,89),(83,84,3,174,89),(83,85,3,178,89),(83,86,3,182,85),(83,87,3,186,81),(83,88,3,187,77),(83,89,3,188,72),(83,90,3,188,67),(83,91,3,188,62),(84,0,0,117,126),(84,1,0,114,126),(84,2,0,109,126),(84,3,0,104,126),(84,4,0,99,126),(84,5,0,94,121),(84,6,0,89,116),(84,7,0,86,113),(84,8,0,86,108),(84,9,0,86,103),(84,10,0,86,98),(84,11,0,89,95),(84,12,0,90,90),(84,13,0,90,85),(84,14,0,90,80),(84,15,0,90,76),(84,16,0,86,72),(84,17,0,81,66),(84,18,0,76,66),(84,19,0,71,66),(84,20,0,66,66),(84,21,0,61,66),(84,22,1,128,137),(84,23,1,128,140),(84,24,1,128,145),(84,25,1,128,150),(84,26,1,128,154),(84,27,1,124,158),(84,28,1,120,162),(84,29,1,116,166),(84,30,1,114,167),(84,31,1,109,167),(84,32,1,104,167),(84,33,1,99,167),(84,34,1,95,165),(84,35,1,90,163),(84,36,1,85,163),(84,37,1,80,163),(84,38,1,76,167),(84,39,1,72,171),(84,40,1,68,175),(84,41,1,68,180),(84,42,1,68,185),(84,43,1,68,190),(84,44,1,68,194),(84,45,2,138,126),(84,46,2,140,126),(84,47,2,145,126),(84,48,2,150,126),(84,49,2,155,126),(84,50,2,159,130),(84,51,2,163,134),(84,52,2,167,138),(84,53,2,169,140),(84,54,2,169,145),(84,55,2,169,150),(84,56,2,169,155),(84,57,2,167,157),(84,58,2,167,162),(84,59,2,164,165),(84,60,2,164,170),(84,61,2,164,175),(84,62,2,168,179),(84,63,2,172,183),(84,64,2,175,186),(84,65,2,180,186),(84,66,2,185,186),(84,67,2,190,186),(84,68,2,195,186),(84,69,3,128,116),(84,70,3,128,113),(84,71,3,128,108),(84,72,3,128,103),(84,73,3,128,98),(84,74,3,132,94),(84,75,3,136,90),(84,76,3,140,86),(84,77,3,142,84),(84,78,3,147,84),(84,79,3,152,84),(84,80,3,156,86),(84,81,3,160,87),(84,82,3,164,89),(84,83,3,169,89),(84,84,3,174,89),(84,85,3,178,89),(84,86,3,182,85),(84,87,3,186,81),(84,88,3,187,77),(84,89,3,188,72),(84,90,3,188,67),(84,91,3,188,62),(85,0,0,117,126),(85,1,0,114,126),(85,2,0,109,126),(85,3,0,104,126),(85,4,0,99,126),(85,5,0,94,121),(85,6,0,89,116),(85,7,0,86,113),(85,8,0,86,108),(85,9,0,86,103),(85,10,0,86,98),(85,11,0,89,95),(85,12,0,90,90),(85,13,0,90,85),(85,14,0,90,80),(85,15,0,90,76),(85,16,0,86,72),(85,17,0,81,66),(85,18,0,76,66),(85,19,0,71,66),(85,20,0,66,66),(85,21,0,61,66),(85,22,1,128,137),(85,23,1,128,140),(85,24,1,128,145),(85,25,1,128,150),(85,26,1,128,154),(85,27,1,124,158),(85,28,1,120,162),(85,29,1,116,166),(85,30,1,114,167),(85,31,1,109,167),(85,32,1,104,167),(85,33,1,99,167),(85,34,1,95,165),(85,35,1,90,163),(85,36,1,85,163),(85,37,1,80,163),(85,38,1,76,167),(85,39,1,72,171),(85,40,1,68,175),(85,41,1,68,180),(85,42,1,68,185),(85,43,1,68,190),(85,44,1,68,194),(85,45,2,138,126),(85,46,2,140,126),(85,47,2,145,126),(85,48,2,150,126),(85,49,2,155,126),(85,50,2,159,130),(85,51,2,163,134),(85,52,2,167,138),(85,53,2,169,140),(85,54,2,169,145),(85,55,2,169,150),(85,56,2,169,155),(85,57,2,167,157),(85,58,2,167,162),(85,59,2,164,165),(85,60,2,164,170),(85,61,2,164,175),(85,62,2,168,179),(85,63,2,172,183),(85,64,2,175,186),(85,65,2,180,186),(85,66,2,185,186),(85,67,2,190,186),(85,68,2,195,186),(85,69,3,128,116),(85,70,3,128,113),(85,71,3,128,108),(85,72,3,128,103),(85,73,3,128,98),(85,74,3,132,94),(85,75,3,136,90),(85,76,3,140,86),(85,77,3,142,84),(85,78,3,147,84),(85,79,3,152,84),(85,80,3,156,86),(85,81,3,160,87),(85,82,3,164,89),(85,83,3,169,89),(85,84,3,174,89),(85,85,3,178,89),(85,86,3,182,85),(85,87,3,186,81),(85,88,3,187,77),(85,89,3,188,72),(85,90,3,188,67),(85,91,3,188,62),(86,0,0,117,126),(86,1,0,114,126),(86,2,0,109,126),(86,3,0,104,126),(86,4,0,99,126),(86,5,0,94,121),(86,6,0,89,116),(86,7,0,86,113),(86,8,0,86,108),(86,9,0,86,103),(86,10,0,86,98),(86,11,0,89,95),(86,12,0,90,90),(86,13,0,90,85),(86,14,0,90,80),(86,15,0,90,76),(86,16,0,86,72),(86,17,0,81,66),(86,18,0,76,66),(86,19,0,71,66),(86,20,0,66,66),(86,21,0,61,66),(86,22,1,128,137),(86,23,1,128,140),(86,24,1,128,145),(86,25,1,128,150),(86,26,1,128,154),(86,27,1,124,158),(86,28,1,120,162),(86,29,1,116,166),(86,30,1,114,167),(86,31,1,109,167),(86,32,1,104,167),(86,33,1,99,167),(86,34,1,95,165),(86,35,1,90,163),(86,36,1,85,163),(86,37,1,80,163),(86,38,1,76,167),(86,39,1,72,171),(86,40,1,68,175),(86,41,1,68,180),(86,42,1,68,185),(86,43,1,68,190),(86,44,1,68,194),(86,45,2,138,126),(86,46,2,140,126),(86,47,2,145,126),(86,48,2,150,126),(86,49,2,155,126),(86,50,2,159,130),(86,51,2,163,134),(86,52,2,167,138),(86,53,2,169,140),(86,54,2,169,145),(86,55,2,169,150),(86,56,2,169,155),(86,57,2,167,157),(86,58,2,167,162),(86,59,2,164,165),(86,60,2,164,170),(86,61,2,164,175),(86,62,2,168,179),(86,63,2,172,183),(86,64,2,175,186),(86,65,2,180,186),(86,66,2,185,186),(86,67,2,190,186),(86,68,2,195,186),(86,69,3,128,116),(86,70,3,128,113),(86,71,3,128,108),(86,72,3,128,103),(86,73,3,128,98),(86,74,3,132,94),(86,75,3,136,90),(86,76,3,140,86),(86,77,3,142,84),(86,78,3,147,84),(86,79,3,152,84),(86,80,3,156,86),(86,81,3,160,87),(86,82,3,164,89),(86,83,3,169,89),(86,84,3,174,89),(86,85,3,178,89),(86,86,3,182,85),(86,87,3,186,81),(86,88,3,187,77),(86,89,3,188,72),(86,90,3,188,67),(86,91,3,188,62),(87,0,0,117,126),(87,1,0,114,126),(87,2,0,109,126),(87,3,0,104,126),(87,4,0,99,126),(87,5,0,94,121),(87,6,0,89,116),(87,7,0,86,113),(87,8,0,86,108),(87,9,0,86,103),(87,10,0,86,98),(87,11,0,89,95),(87,12,0,90,90),(87,13,0,90,85),(87,14,0,90,80),(87,15,0,90,76),(87,16,0,86,72),(87,17,0,81,66),(87,18,0,76,66),(87,19,0,71,66),(87,20,0,66,66),(87,21,0,61,66),(87,22,1,128,137),(87,23,1,128,140),(87,24,1,128,145),(87,25,1,128,150),(87,26,1,128,154),(87,27,1,124,158),(87,28,1,120,162),(87,29,1,116,166),(87,30,1,114,167),(87,31,1,109,167),(87,32,1,104,167),(87,33,1,99,167),(87,34,1,95,165),(87,35,1,90,163),(87,36,1,85,163),(87,37,1,80,163),(87,38,1,76,167),(87,39,1,72,171),(87,40,1,68,175),(87,41,1,68,180),(87,42,1,68,185),(87,43,1,68,190),(87,44,1,68,194),(87,45,2,138,126),(87,46,2,140,126),(87,47,2,145,126),(87,48,2,150,126),(87,49,2,155,126),(87,50,2,159,130),(87,51,2,163,134),(87,52,2,167,138),(87,53,2,169,140),(87,54,2,169,145),(87,55,2,169,150),(87,56,2,169,155),(87,57,2,167,157),(87,58,2,167,162),(87,59,2,164,165),(87,60,2,164,170),(87,61,2,164,175),(87,62,2,168,179),(87,63,2,172,183),(87,64,2,175,186),(87,65,2,180,186),(87,66,2,185,186),(87,67,2,190,186),(87,68,2,195,186),(87,69,3,128,116),(87,70,3,128,113),(87,71,3,128,108),(87,72,3,128,103),(87,73,3,128,98),(87,74,3,132,94),(87,75,3,136,90),(87,76,3,140,86),(87,77,3,142,84),(87,78,3,147,84),(87,79,3,152,84),(87,80,3,156,86),(87,81,3,160,87),(87,82,3,164,89),(87,83,3,169,89),(87,84,3,174,89),(87,85,3,178,89),(87,86,3,182,85),(87,87,3,186,81),(87,88,3,187,77),(87,89,3,188,72),(87,90,3,188,67),(87,91,3,188,62),(88,0,0,117,126),(88,1,0,114,126),(88,2,0,109,126),(88,3,0,104,126),(88,4,0,99,126),(88,5,0,94,121),(88,6,0,89,116),(88,7,0,86,113),(88,8,0,86,108),(88,9,0,86,103),(88,10,0,86,98),(88,11,0,89,95),(88,12,0,90,90),(88,13,0,90,85),(88,14,0,90,80),(88,15,0,90,76),(88,16,0,86,72),(88,17,0,81,66),(88,18,0,76,66),(88,19,0,71,66),(88,20,0,66,66),(88,21,0,61,66),(88,22,1,128,137),(88,23,1,128,140),(88,24,1,128,145),(88,25,1,128,150),(88,26,1,128,154),(88,27,1,124,158),(88,28,1,120,162),(88,29,1,116,166),(88,30,1,114,167),(88,31,1,109,167),(88,32,1,104,167),(88,33,1,99,167),(88,34,1,95,165),(88,35,1,90,163),(88,36,1,85,163),(88,37,1,80,163),(88,38,1,76,167),(88,39,1,72,171),(88,40,1,68,175),(88,41,1,68,180),(88,42,1,68,185),(88,43,1,68,190),(88,44,1,68,194),(88,45,2,138,126),(88,46,2,140,126),(88,47,2,145,126),(88,48,2,150,126),(88,49,2,155,126),(88,50,2,159,130),(88,51,2,163,134),(88,52,2,167,138),(88,53,2,169,140),(88,54,2,169,145),(88,55,2,169,150),(88,56,2,169,155),(88,57,2,167,157),(88,58,2,167,162),(88,59,2,164,165),(88,60,2,164,170),(88,61,2,164,175),(88,62,2,168,179),(88,63,2,172,183),(88,64,2,175,186),(88,65,2,180,186),(88,66,2,185,186),(88,67,2,190,186),(88,68,2,195,186),(88,69,3,128,116),(88,70,3,128,113),(88,71,3,128,108),(88,72,3,128,103),(88,73,3,128,98),(88,74,3,132,94),(88,75,3,136,90),(88,76,3,140,86),(88,77,3,142,84),(88,78,3,147,84),(88,79,3,152,84),(88,80,3,156,86),(88,81,3,160,87),(88,82,3,164,89),(88,83,3,169,89),(88,84,3,174,89),(88,85,3,178,89),(88,86,3,182,85),(88,87,3,186,81),(88,88,3,187,77),(88,89,3,188,72),(88,90,3,188,67),(88,91,3,188,62),(89,0,0,117,126),(89,1,0,114,126),(89,2,0,109,126),(89,3,0,104,126),(89,4,0,99,126),(89,5,0,94,121),(89,6,0,89,116),(89,7,0,86,113),(89,8,0,86,108),(89,9,0,86,103),(89,10,0,86,98),(89,11,0,89,95),(89,12,0,90,90),(89,13,0,90,85),(89,14,0,90,80),(89,15,0,90,76),(89,16,0,86,72),(89,17,0,81,66),(89,18,0,76,66),(89,19,0,71,66),(89,20,0,66,66),(89,21,0,61,66),(89,22,1,128,137),(89,23,1,128,140),(89,24,1,128,145),(89,25,1,128,150),(89,26,1,128,154),(89,27,1,124,158),(89,28,1,120,162),(89,29,1,116,166),(89,30,1,114,167),(89,31,1,109,167),(89,32,1,104,167),(89,33,1,99,167),(89,34,1,95,165),(89,35,1,90,163),(89,36,1,85,163),(89,37,1,80,163),(89,38,1,76,167),(89,39,1,72,171),(89,40,1,68,175),(89,41,1,68,180),(89,42,1,68,185),(89,43,1,68,190),(89,44,1,68,194),(89,45,2,138,126),(89,46,2,140,126),(89,47,2,145,126),(89,48,2,150,126),(89,49,2,155,126),(89,50,2,159,130),(89,51,2,163,134),(89,52,2,167,138),(89,53,2,169,140),(89,54,2,169,145),(89,55,2,169,150),(89,56,2,169,155),(89,57,2,167,157),(89,58,2,167,162),(89,59,2,164,165),(89,60,2,164,170),(89,61,2,164,175),(89,62,2,168,179),(89,63,2,172,183),(89,64,2,175,186),(89,65,2,180,186),(89,66,2,185,186),(89,67,2,190,186),(89,68,2,195,186),(89,69,3,128,116),(89,70,3,128,113),(89,71,3,128,108),(89,72,3,128,103),(89,73,3,128,98),(89,74,3,132,94),(89,75,3,136,90),(89,76,3,140,86),(89,77,3,142,84),(89,78,3,147,84),(89,79,3,152,84),(89,80,3,156,86),(89,81,3,160,87),(89,82,3,164,89),(89,83,3,169,89),(89,84,3,174,89),(89,85,3,178,89),(89,86,3,182,85),(89,87,3,186,81),(89,88,3,187,77),(89,89,3,188,72),(89,90,3,188,67),(89,91,3,188,62),(90,0,0,117,126),(90,1,0,114,126),(90,2,0,109,126),(90,3,0,104,126),(90,4,0,99,126),(90,5,0,94,121),(90,6,0,89,116),(90,7,0,86,113),(90,8,0,86,108),(90,9,0,86,103),(90,10,0,86,98),(90,11,0,89,95),(90,12,0,90,90),(90,13,0,90,85),(90,14,0,90,80),(90,15,0,90,76),(90,16,0,86,72),(90,17,0,81,66),(90,18,0,76,66),(90,19,0,71,66),(90,20,0,66,66),(90,21,0,61,66),(90,22,1,128,137),(90,23,1,128,140),(90,24,1,128,145),(90,25,1,128,150),(90,26,1,128,154),(90,27,1,124,158),(90,28,1,120,162),(90,29,1,116,166),(90,30,1,114,167),(90,31,1,109,167),(90,32,1,104,167),(90,33,1,99,167),(90,34,1,95,165),(90,35,1,90,163),(90,36,1,85,163),(90,37,1,80,163),(90,38,1,76,167),(90,39,1,72,171),(90,40,1,68,175),(90,41,1,68,180),(90,42,1,68,185),(90,43,1,68,190),(90,44,1,68,194),(90,45,2,138,126),(90,46,2,140,126),(90,47,2,145,126),(90,48,2,150,126),(90,49,2,155,126),(90,50,2,159,130),(90,51,2,163,134),(90,52,2,167,138),(90,53,2,169,140),(90,54,2,169,145),(90,55,2,169,150),(90,56,2,169,155),(90,57,2,167,157),(90,58,2,167,162),(90,59,2,164,165),(90,60,2,164,170),(90,61,2,164,175),(90,62,2,168,179),(90,63,2,172,183),(90,64,2,175,186),(90,65,2,180,186),(90,66,2,185,186),(90,67,2,190,186),(90,68,2,195,186),(90,69,3,128,116),(90,70,3,128,113),(90,71,3,128,108),(90,72,3,128,103),(90,73,3,128,98),(90,74,3,132,94),(90,75,3,136,90),(90,76,3,140,86),(90,77,3,142,84),(90,78,3,147,84),(90,79,3,152,84),(90,80,3,156,86),(90,81,3,160,87),(90,82,3,164,89),(90,83,3,169,89),(90,84,3,174,89),(90,85,3,178,89),(90,86,3,182,85),(90,87,3,186,81),(90,88,3,187,77),(90,89,3,188,72),(90,90,3,188,67),(90,91,3,188,62);
/*!40000 ALTER TABLE `world_ai_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_area_attribute`
--

DROP TABLE IF EXISTS `world_area_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_area_attribute` (
  `world_id` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL DEFAULT '-1',
  `y1` smallint(6) NOT NULL DEFAULT '-1',
  `x2` smallint(6) NOT NULL DEFAULT '-1',
  `y2` smallint(6) NOT NULL DEFAULT '-1',
  `attribute` tinyint(3) unsigned NOT NULL,
  `apply` tinyint(4) unsigned NOT NULL,
  `send` tinyint(4) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_attribute`
--

LOCK TABLES `world_area_attribute` WRITE;
/*!40000 ALTER TABLE `world_area_attribute` DISABLE KEYS */;
INSERT INTO `world_area_attribute` VALUES (202,132,149,135,166,1,0,1),(202,154,126,170,129,1,0,1),(202,132,92,135,107,1,0,1),(202,96,126,112,129,1,0,1),(202,113,107,153,149,1,0,1),(202,120,167,153,180,4,1,1),(202,171,110,187,146,4,1,1),(202,80,111,95,142,4,1,1),(202,110,73,147,91,4,1,1),(203,1,1,255,255,1,0,1),(203,164,26,178,57,4,1,1),(203,209,78,240,90,4,1,1),(204,19,187,77,245,1,0,1),(204,78,213,99,219,12,1,1),(204,43,166,49,186,12,1,1),(206,1,1,255,255,1,0,1),(30,173,212,173,212,20,1,1),(30,174,212,174,212,20,1,1),(30,175,212,175,212,20,1,1),(30,176,212,176,212,20,1,1),(30,177,212,177,212,20,1,1),(30,178,212,178,212,20,1,1),(30,179,212,179,212,20,1,1),(30,174,211,174,211,20,1,1),(30,175,211,175,211,20,1,1),(30,176,211,176,211,20,1,1),(30,177,211,177,211,20,1,1),(30,178,211,178,211,20,1,1),(30,174,213,174,213,20,1,1),(30,175,213,175,213,20,1,1),(30,176,213,176,213,20,1,1),(30,177,213,177,213,20,1,1),(30,178,213,178,213,20,1,1),(30,167,194,167,194,20,1,1),(30,185,194,185,194,20,1,1),(30,176,217,176,217,20,1,1),(30,94,227,94,227,16,1,0),(30,94,182,94,182,16,1,0),(30,82,130,82,130,16,1,0),(30,107,130,107,130,16,1,0),(30,178,215,178,215,20,1,1),(30,175,216,175,216,20,1,1),(41,127,161,128,163,4,1,1),(41,123,163,125,163,4,1,1),(41,125,158,126,159,4,1,1),(41,129,159,129,159,4,1,1),(41,127,166,127,166,4,1,1),(41,122,155,142,170,4,1,1),(30,175,217,175,217,20,1,1),(30,177,217,177,217,20,1,1),(30,175,218,175,218,20,1,1),(30,176,218,176,218,20,1,1),(30,177,218,177,218,20,1,1);
/*!40000 ALTER TABLE `world_area_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_area_restriction`
--

DROP TABLE IF EXISTS `world_area_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_area_restriction` (
  `world` smallint(5) unsigned NOT NULL,
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `range` tinyint(3) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_restriction`
--

LOCK TABLES `world_area_restriction` WRITE;
/*!40000 ALTER TABLE `world_area_restriction` DISABLE KEYS */;
INSERT INTO `world_area_restriction` VALUES (2,209,30,1,1),(2,219,9,1,1),(3,171,104,1,1),(11,10,9,1,1),(12,10,9,1,1),(13,10,9,1,1),(14,10,9,1,1),(15,10,9,1,1),(16,10,9,1,1),(17,10,9,1,1),(52,10,9,1,1),(79,202,54,41,8);
/*!40000 ALTER TABLE `world_area_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_attribute`
--

DROP TABLE IF EXISTS `world_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_attribute` (
  `world` smallint(5) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_attribute`
--

LOCK TABLES `world_attribute` WRITE;
/*!40000 ALTER TABLE `world_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_buff`
--

DROP TABLE IF EXISTS `world_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_buff` (
  `buff` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_buff`
--

LOCK TABLES `world_buff` WRITE;
/*!40000 ALTER TABLE `world_buff` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_buff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_experience`
--

DROP TABLE IF EXISTS `world_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_experience` (
  `world` smallint(5) unsigned NOT NULL,
  `rate_party_member_1` int(11) NOT NULL,
  `rate_party_member_2` int(11) NOT NULL,
  `rate_party_member_3` int(11) NOT NULL,
  `rate_party_member_4` int(11) NOT NULL,
  `rate_party_member_5` int(11) NOT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_experience`
--

LOCK TABLES `world_experience` WRITE;
/*!40000 ALTER TABLE `world_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_free_pk`
--

DROP TABLE IF EXISTS `world_free_pk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_free_pk` (
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_free_pk`
--

LOCK TABLES `world_free_pk` WRITE;
/*!40000 ALTER TABLE `world_free_pk` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_free_pk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_template`
--

DROP TABLE IF EXISTS `world_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_template` (
  `entry` smallint(5) unsigned NOT NULL,
  `display_entry` smallint(5) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `spawn_gate` smallint(5) unsigned NOT NULL,
  `experience_rate` int(10) unsigned NOT NULL,
  `zen_rate` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_template`
--

LOCK TABLES `world_template` WRITE;
/*!40000 ALTER TABLE `world_template` DISABLE KEYS */;
INSERT INTO `world_template` VALUES (0,0,0,'Terrain1.att','Lorencia',17,100,100,89518206,NULL),(1,1,0,'Terrain2.att','Dungeon',17,100,100,89518202,NULL),(2,2,0,'Terrain3.att','Devias',22,100,100,89518206,NULL),(3,3,0,'Terrain4.att','Noria',27,100,100,89518206,NULL),(4,4,0,'Terrain5.att','Losttower',42,100,100,89518202,NULL),(6,6,0,'Terrain7.att','Stadium',50,100,100,5337114,NULL),(7,7,0,'Terrain8.att','Atlans',49,100,100,89518202,NULL),(8,8,0,'Terrain9.att','Tarkan',57,100,100,89518202,NULL),(9,9,0,'Terrain10.att','Devil Square',505,100,0,221586,NULL),(10,10,0,'Terrain11.att','Icarus',22,100,100,18108538,NULL),(11,11,0,'Terrain12.att','Blood Castle 1',504,50,100,221586,NULL),(12,12,0,'Terrain12.att','Blood Castle 2',504,50,100,221586,NULL),(13,13,0,'Terrain12.att','Blood Castle 3',504,50,100,221586,NULL),(14,14,0,'Terrain12.att','Blood Castle 4',504,50,100,221586,NULL),(15,15,0,'Terrain12.att','Blood Castle 5',504,50,100,221586,NULL),(16,16,0,'Terrain12.att','Blood Castle 6',504,50,100,221586,NULL),(17,17,0,'Terrain12.att','Blood Castle 7',504,50,100,221586,NULL),(18,18,0,'Terrain19.att','Chaos Castle 1',503,100,100,131456,NULL),(19,19,0,'Terrain19.att','Chaos Castle 2',503,100,100,131456,NULL),(20,20,0,'Terrain19.att','Chaos Castle 3',503,100,100,131456,NULL),(21,21,0,'Terrain19.att','Chaos Castle 4',503,100,100,131456,NULL),(22,22,0,'Terrain19.att','Chaos Castle 5',503,100,100,131456,NULL),(23,23,0,'Terrain19.att','Chaos Castle 6',503,100,100,131456,NULL),(24,24,0,'Terrain25.att','Kalima 1',17,100,100,18182266,NULL),(25,25,0,'Terrain25.att','Kalima 2',17,100,100,18182266,NULL),(26,26,0,'Terrain25.att','Kalima 3',17,100,100,18182266,NULL),(27,27,0,'Terrain25.att','Kalima 4',17,100,100,18182266,NULL),(28,28,0,'Terrain25.att','Kalima 5',17,100,100,18182266,NULL),(29,29,0,'Terrain25.att','Kalima 6',17,100,100,18182266,NULL),(30,30,0,'Terrain31.att','Valley Of Loren',100,100,100,1142866,NULL),(31,31,0,'Terrain32.att','Land Of Trials',106,100,100,1405042,NULL),(32,32,0,'Terrain33.att','Devil Square',505,100,0,221586,NULL),(33,33,0,'Terrain34.att','Aida',119,100,100,89518202,NULL),(34,34,0,'Terrain35_Peace.att','Crywolf',118,100,100,85323890,'Crywolf Peace Status'),(34,34,1,'Terrain35_Occupied.att','Crywolf',118,100,100,85323890,'Crywolf Occupied Status'),(34,34,2,'Terrain35_War.att','Crywolf',118,100,100,85323890,'Crywolf War Status'),(35,35,0,'Terrain36.att','CrywolfSecondZone',118,100,100,0,NULL),(36,36,0,'Terrain37.att','Kalima 7',17,100,100,152399994,NULL),(37,37,0,'Terrain38.att','Kanturu',138,100,100,89518202,NULL),(38,38,0,'Terrain39.att','Kanturu Core',139,100,100,85323898,NULL),(39,39,0,'Terrain40_Close.att','Kanturu Boss',137,100,100,90258,'Kanturu Boss Close Status'),(39,39,1,'Terrain40_Open.att','Kanturu Boss',137,100,100,90258,'Kanturu Boss Open Status'),(40,40,0,'Terrain41.att','Event Zone',1000,100,100,8250,NULL),(41,41,0,'Terrain42.att','Barracks',256,100,100,18215026,NULL),(42,42,0,'Terrain43.att','Refuge',256,100,100,18182258,NULL),(45,45,0,'Terrain47.att','Illusion Temple 1',267,100,100,384,NULL),(46,46,0,'Terrain47.att','Illusion Temple 2',267,100,100,384,NULL),(47,47,0,'Terrain47.att','Illusion Temple 3',267,100,100,384,NULL),(48,48,0,'Terrain47.att','Illusion Temple 4',267,100,100,384,NULL),(49,49,0,'Terrain47.att','Illusion Temple 5',267,100,100,384,NULL),(50,50,0,'Terrain47.att','Illusion Temple 6',267,100,100,384,NULL),(51,51,0,'Terrain52.att','Elbeland',267,100,100,89518206,NULL),(52,52,0,'Terrain12.att','Blood Castle 8',504,50,100,221586,NULL),(53,53,0,'Terrain19.att','Chaos Castle 7',503,100,100,131456,NULL),(56,56,0,'Terrain57.att','Swamp Of Calmness',273,100,100,219541626,NULL),(57,57,0,'Terrain58.att','Raklion',286,100,100,85323898,NULL),(58,58,0,'Terrain59.att','Raklion Hatchery',286,100,100,135360656,NULL),(62,62,0,'Terrain63.att','XMas',22,100,100,32794,NULL),(63,63,0,'Terrain64.att','Vulcanus',294,100,100,89518203,NULL),(64,64,0,'Terrain65.att','Vulcanus Duel',294,100,100,65664,NULL),(69,69,0,'Terrain70.att','Imperial Fortress 1',508,100,100,221586,NULL),(70,70,0,'Terrain71.att','Imperial Fortress 2',508,100,100,221586,NULL),(71,71,0,'Terrain72.att','Imperial Fortress 3',508,100,100,221586,NULL),(72,72,0,'Terrain73.att','Imperial Fortress 4',508,100,100,221586,NULL),(79,79,0,'Terrain80.att','Loren Market',333,100,100,303126,NULL),(80,80,0,'Terrain81.att','Kalrutan 1',335,100,100,89518202,NULL),(81,81,0,'Terrain82.att','Kalrutan 2',335,100,100,89485434,NULL),(82,82,0,'Terrain83.att','DoubleGoer 1',507,100,100,213392,NULL),(83,83,0,'Terrain83.att','DoubleGoer 2',507,100,100,213392,NULL),(84,84,0,'Terrain83.att','DoubleGoer 3',507,100,100,213392,NULL),(85,85,0,'Terrain83.att','DoubleGoer 4',507,100,100,213392,NULL),(86,86,0,'Terrain83.att','DoubleGoer 5',507,100,100,213392,NULL),(87,87,0,'Terrain83.att','DoubleGoer 6',507,100,100,213392,NULL),(88,88,0,'Terrain83.att','DoubleGoer 7',507,100,100,213392,NULL),(89,89,0,'Terrain83.att','DoubleGoer 8',507,100,100,213392,NULL),(90,90,0,'Terrain83.att','DoubleGoer 9',507,100,100,213392,NULL),(91,91,0,'Terrain92.att','Acheron 1',417,100,100,85323898,NULL),(92,92,0,'Terrain92.att','Acheron 2',426,100,100,1429618,NULL),(95,95,0,'Terrain96.att','DevEnter 1',417,100,100,85291130,NULL),(96,96,0,'Terrain96.att','DevEnter 2',426,100,100,1134706,NULL),(97,97,0,'Terrain19.att','Chaos Castle Final',505,100,100,131200,NULL),(98,98,0,'Terrain99.att','Illusion Temple Final 1',333,100,100,128,NULL),(99,99,0,'Terrain99.att','Illusion Temple Final 2',333,100,100,128,NULL),(100,100,0,'Terrain101.att','Uruk Mountain',417,100,100,219508858,NULL),(101,101,0,'Terrain101.att','Uruk Mountain',426,100,100,1134706,NULL),(102,102,0,'Terrain103.att','Tormented Square',503,100,100,221586,NULL),(103,103,0,'Terrain103.att','Tormented Square',503,100,100,221586,NULL),(104,104,0,'Terrain103.att','Tormented Square',503,100,100,221586,NULL),(105,105,0,'Terrain103.att','Tormented Square',503,100,100,221586,NULL),(106,106,0,'Terrain103.att','Tormented Square',503,100,100,221586,NULL),(110,110,0,'Terrain111.att','Nars',417,100,100,219508858,NULL),(112,112,0,'Terrain113.att','Ferea',509,100,100,219541626,NULL),(113,113,0,'Terrain114.att','Nixies Lake',522,100,100,219275386,NULL),(114,114,0,'Terrain115.att','The labyrinth of Dimensions',503,100,100,221202,NULL),(115,115,0,'Terrain116.att','The labyrinth of Dimensions',503,50,100,221312,NULL),(116,116,0,'Terrain117.att','Deep Dungeon 1',561,100,100,89518202,NULL),(117,117,0,'Terrain118.att','Deep Dungeon 2',562,100,100,89518202,NULL),(118,118,0,'Terrain119.att','Deep Dungeon 3',563,100,100,89518202,NULL),(119,119,0,'Terrain120.att','Deep Dungeon 4',564,100,100,89518202,NULL),(120,120,0,'Terrain121.att','Deep Dungeon 5',565,100,100,89518202,NULL),(121,121,0,'Terrain122.att','Place of Qualification',537,100,100,90128,NULL),(122,122,0,'Terrain123.att','Swamp of Darkness',567,100,100,89518202,NULL),(123,123,0,'Terrain124.att','Kubera Mine',591,100,100,89518202,NULL),(124,124,0,'Terrain124.att','Kubera Mine',591,100,100,89518202,NULL),(125,125,0,'Terrain124.att','Kubera Mine',591,100,100,89518202,NULL),(126,126,0,'Terrain124.att','Kubera Mine',591,100,100,89518202,NULL),(127,127,0,'Terrain124.att','Kubera Mine',591,100,100,89518202,NULL),(128,128,0,'Terrain129.att','Abyss Atlans 1',617,100,100,89518202,NULL),(129,129,0,'Terrain130.att','Abyss Atlans 2',618,100,100,89518202,NULL),(130,130,0,'Terrain131.att','Abyss Atlans 3',619,100,100,89518202,NULL),(131,131,0,'Terrain132.att','Scorched Canyon',620,100,100,89518202,NULL),(132,132,0,'Terrain133.att','Scarlet Icarus',631,100,100,89518202,NULL),(133,133,0,'Terrain134.att','Temple of Arnil',634,100,100,89518202,NULL),(200,32,0,'Terrain33.att','Last Man Standing',503,100,0,131200,NULL),(201,64,0,'Terrain65.att','Arena Ground 1',503,0,0,131200,NULL),(202,0,0,'Terrain1.att','Arena Ground 2',503,0,0,131200,NULL),(203,2,0,'Terrain3.att','Arena Ground 3',503,0,0,131200,NULL),(204,51,0,'Terrain52.att','Arena Ground 5',503,0,0,131200,NULL),(205,42,0,'Terrain43.att','Arena Ground 6',503,0,0,131200,NULL),(206,62,0,'Terrain63.att','Arena Ground 7',503,0,0,131200,NULL),(207,103,0,'Terrain103.att','Special Event Map',503,100,100,90386,'Special Event Map'),(300,1,0,'Terrain2.att','Dungeon Instance',503,100,100,73746,NULL);
/*!40000 ALTER TABLE `world_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 11:10:27
