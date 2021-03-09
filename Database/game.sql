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
-- Table structure for table `event_contribution_reward`
--

DROP TABLE IF EXISTS `event_contribution_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_contribution_reward` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `contribution_min` int(11) DEFAULT NULL,
  `contribution_max` int(11) DEFAULT NULL,
  `reward_box` smallint(5) unsigned DEFAULT NULL,
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
  `position` tinyint(3) unsigned DEFAULT NULL,
  `exprience_1` int(10) unsigned DEFAULT NULL,
  `zen_1` int(10) unsigned DEFAULT NULL,
  `exprience_2` int(10) unsigned DEFAULT NULL,
  `zen_2` int(10) unsigned DEFAULT NULL,
  `exprience_3` int(10) unsigned DEFAULT NULL,
  `zen_3` int(10) unsigned DEFAULT NULL,
  `exprience_4` int(10) unsigned DEFAULT NULL,
  `zen_4` int(10) unsigned DEFAULT NULL,
  `exprience_5` int(10) unsigned DEFAULT NULL,
  `zen_5` int(10) unsigned DEFAULT NULL,
  `exprience_6` int(10) unsigned DEFAULT NULL,
  `zen_6` int(10) unsigned DEFAULT NULL,
  `exprience_7` int(10) unsigned DEFAULT NULL,
  `zen_7` int(10) unsigned DEFAULT NULL,
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
  `level_min` tinyint(4) DEFAULT NULL,
  `level_max` tinyint(4) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `larva_rate` tinyint(3) unsigned DEFAULT NULL,
  `larva_count` int(11) DEFAULT NULL,
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
  `level` smallint(6) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_min` int(11) DEFAULT NULL,
  `attack_max` int(11) DEFAULT NULL,
  `attack_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_rate` int(11) DEFAULT NULL,
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
  `world` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `gate` smallint(5) unsigned DEFAULT NULL,
  `main_chest_x` smallint(6) DEFAULT NULL,
  `main_chest_y` smallint(6) DEFAULT NULL,
  `secondary_chest_x_1` smallint(6) DEFAULT NULL,
  `secondary_chest_y_1` smallint(6) DEFAULT NULL,
  `secondary_chest_x_2` smallint(6) DEFAULT NULL,
  `secondary_chest_y_2` smallint(6) DEFAULT NULL,
  `secondary_chest_x_3` smallint(6) DEFAULT NULL,
  `secondary_chest_y_3` smallint(6) DEFAULT NULL,
  `secondary_chest_x_4` smallint(6) DEFAULT NULL,
  `secondary_chest_y_4` smallint(6) DEFAULT NULL,
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
  `min_level` smallint(6) DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success` float DEFAULT NULL,
  `defense_success` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success` float DEFAULT NULL,
  `elemental_defense_success` float DEFAULT NULL,
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
  `count` tinyint(3) unsigned DEFAULT NULL,
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
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
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
  `monster` smallint(5) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `power_1` int(11) DEFAULT NULL,
  `power_2` int(11) DEFAULT NULL,
  `power_3` int(11) DEFAULT NULL,
  `power_4` int(11) DEFAULT NULL,
  `attack_min` int(11) DEFAULT NULL,
  `attack_max` int(11) DEFAULT NULL,
  `attack_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_rate` int(11) DEFAULT NULL,
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
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `element` tinyint(3) unsigned DEFAULT NULL,
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
  `group` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
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
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
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
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `row_count` tinyint(3) unsigned DEFAULT NULL,
  `column_count` tinyint(3) unsigned DEFAULT NULL,
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
  `world_index` smallint(5) unsigned DEFAULT NULL,
  `area_type` tinyint(3) unsigned DEFAULT NULL,
  `mission_id` tinyint(3) unsigned DEFAULT NULL,
  `gate_1` tinyint(3) unsigned DEFAULT NULL,
  `gate_2` tinyint(3) unsigned DEFAULT NULL,
  `gate_3` tinyint(3) unsigned DEFAULT NULL,
  `gate_4` tinyint(3) unsigned DEFAULT NULL,
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
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
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
  `level` int(11) DEFAULT NULL,
  `first_score` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
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
  `area_type` tinyint(3) unsigned DEFAULT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `type_4` tinyint(3) unsigned DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `type_5` tinyint(3) unsigned DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `type_6` tinyint(3) unsigned DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `monster_1` smallint(5) unsigned DEFAULT NULL,
  `count_1` int(11) DEFAULT NULL,
  `monster_2` smallint(5) unsigned DEFAULT NULL,
  `count_2` int(11) DEFAULT NULL,
  `monster_3` smallint(5) unsigned DEFAULT NULL,
  `count_3` int(11) DEFAULT NULL,
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
  `level` float DEFAULT NULL,
  `life` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success_rate` float DEFAULT NULL,
  `defense_success_rate` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success_rate` float DEFAULT NULL,
  `elemental_defense_success_rate` float DEFAULT NULL,
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
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `race` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
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
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `normal_level_min` smallint(6) DEFAULT NULL,
  `normal_level_max` smallint(6) DEFAULT NULL,
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
  `invasion` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `notify_time` int(11) DEFAULT NULL,
  `hour` tinyint(3) unsigned DEFAULT NULL,
  `minute` tinyint(3) unsigned DEFAULT NULL,
  `day_of_week` tinyint(3) unsigned DEFAULT NULL,
  `day_of_month` tinyint(3) unsigned DEFAULT NULL,
  `season_event` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `exclusive_server` smallint(5) unsigned DEFAULT NULL,
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
  `score_min` smallint(5) unsigned DEFAULT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
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
  `score_min` smallint(5) unsigned DEFAULT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
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
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL
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
  `start_date` bigint(20) unsigned DEFAULT NULL,
  `end_date` bigint(20) unsigned DEFAULT NULL,
  `ocurrence` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
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
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `reward` smallint(5) unsigned DEFAULT NULL,
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
  `stand_by` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
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
-- Table structure for table `filter_text`
--

DROP TABLE IF EXISTS `filter_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_text` (
  `word` varchar(255) NOT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
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
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `target_id` smallint(5) unsigned DEFAULT NULL,
  `direction` tinyint(3) unsigned DEFAULT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_template`
--

LOCK TABLES `gate_template` WRITE;
/*!40000 ALTER TABLE `gate_template` DISABLE KEYS */;
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
  `min` smallint(6) DEFAULT NULL,
  `max` smallint(6) DEFAULT NULL,
  `points_add_1` int(11) DEFAULT NULL,
  `points_add_2` int(11) DEFAULT NULL,
  `points_add_3` int(11) DEFAULT NULL,
  `points_add_4` int(11) DEFAULT NULL,
  `points_add_5` int(11) DEFAULT NULL,
  `points_dec_1` int(11) DEFAULT NULL,
  `points_dec_2` int(11) DEFAULT NULL,
  `points_dec_3` int(11) DEFAULT NULL,
  `points_dec_4` int(11) DEFAULT NULL,
  `points_dec_5` int(11) DEFAULT NULL,
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
  `level` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
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
  `level` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `data_1` int(10) unsigned DEFAULT NULL,
  `data_2` int(10) unsigned DEFAULT NULL,
  `data_3` int(10) unsigned DEFAULT NULL,
  `data_4` int(10) unsigned DEFAULT NULL,
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
  `monster_level_min` smallint(6) DEFAULT NULL,
  `mosnter_level_max` smallint(6) DEFAULT NULL,
  `player_level_min` smallint(6) DEFAULT NULL,
  `player_level_max` smallint(6) DEFAULT NULL
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
  `disabled` tinyint(4) DEFAULT NULL,
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
-- Table structure for table `mini_map`
--

DROP TABLE IF EXISTS `mini_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mini_map` (
  `world` smallint(5) unsigned NOT NULL,
  `index` tinyint(3) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
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
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `value` tinyint(3) unsigned DEFAULT NULL,
  `item_rate` smallint(5) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_count` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_rate` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_index` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_count` smallint(5) unsigned DEFAULT NULL,
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
  `start_hour` tinyint(3) unsigned DEFAULT NULL,
  `start_minute` tinyint(3) unsigned DEFAULT NULL,
  `end_hour` tinyint(3) unsigned DEFAULT NULL,
  `end_minute` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL
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
  `id` tinyint(3) unsigned DEFAULT NULL,
  `main_item_type` tinyint(3) unsigned DEFAULT NULL,
  `main_item_index` smallint(5) unsigned DEFAULT NULL,
  `main_item_level` tinyint(3) unsigned DEFAULT NULL,
  `main_item_durability` tinyint(3) unsigned DEFAULT NULL,
  `material_item_type_1` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_1` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_1` int(11) DEFAULT NULL,
  `material_item_type_2` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_2` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_2` int(11) DEFAULT NULL,
  `material_item_type_3` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_3` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_3` int(11) DEFAULT NULL,
  `material_item_type_4` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_4` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_4` int(11) DEFAULT NULL,
  `material_item_type_5` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_5` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_5` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `success_rate` int(11) DEFAULT NULL,
  `result_item_type` tinyint(3) unsigned DEFAULT NULL,
  `result_item_index` smallint(5) unsigned DEFAULT NULL,
  `result_level` tinyint(3) unsigned DEFAULT NULL,
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
  `ide` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  `mix_money` int(10) unsigned DEFAULT NULL,
  `unmix_money` int(10) unsigned DEFAULT NULL,
  `pack_type` tinyint(3) unsigned DEFAULT NULL,
  `pack_index` smallint(5) unsigned DEFAULT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`ide`)
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
  `ticket_level` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
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
  `count` smallint(5) unsigned DEFAULT NULL,
  `rate_1` smallint(5) unsigned DEFAULT NULL,
  `rate_2` smallint(5) unsigned DEFAULT NULL,
  `rate_3` smallint(5) unsigned DEFAULT NULL,
  `rate_4` smallint(5) unsigned DEFAULT NULL,
  `rate_5` smallint(5) unsigned DEFAULT NULL,
  `rate_6` smallint(5) unsigned DEFAULT NULL,
  `rate_7` smallint(5) unsigned DEFAULT NULL,
  `rate_8` smallint(5) unsigned DEFAULT NULL,
  `rate_9` smallint(5) unsigned DEFAULT NULL,
  `rate_10` smallint(5) unsigned DEFAULT NULL,
  `rate_11` smallint(5) unsigned DEFAULT NULL,
  `rate_12` smallint(5) unsigned DEFAULT NULL,
  `rate_13` smallint(5) unsigned DEFAULT NULL,
  `rate_14` smallint(5) unsigned DEFAULT NULL,
  `rate_15` smallint(5) unsigned DEFAULT NULL,
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
  `guid` smallint(5) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `spawn_delay` int(10) unsigned DEFAULT NULL,
  `spawn_distance` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `respawn_id` int(10) unsigned DEFAULT NULL,
  `move_distance` tinyint(3) unsigned DEFAULT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`guid`,`id`,`type`)
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
  `priority` tinyint(3) unsigned DEFAULT NULL,
  `current_state` tinyint(3) unsigned DEFAULT NULL,
  `next_state` tinyint(3) unsigned DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL,
  `transaction_rate` tinyint(3) unsigned DEFAULT NULL,
  `transaction_value_type` int(11) DEFAULT NULL,
  `transition_value` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_automata`
--

LOCK TABLES `monster_ai_automata` WRITE;
/*!40000 ALTER TABLE `monster_ai_automata` DISABLE KEYS */;
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
  `id` int(10) unsigned DEFAULT NULL,
  `ai_order_1` int(10) unsigned DEFAULT NULL,
  `ai_order_2` int(10) unsigned DEFAULT NULL,
  `ai_order_3` int(10) unsigned DEFAULT NULL,
  `ai_order_4` int(10) unsigned DEFAULT NULL,
  `ai_time_1` int(10) unsigned DEFAULT NULL,
  `ai_time_2` int(10) unsigned DEFAULT NULL,
  `ai_time_3` int(10) unsigned DEFAULT NULL,
  `ai_time_4` int(10) unsigned DEFAULT NULL,
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
  `state` tinyint(3) unsigned DEFAULT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `delay` int(10) unsigned DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_element`
--

LOCK TABLES `monster_ai_element` WRITE;
/*!40000 ALTER TABLE `monster_ai_element` DISABLE KEYS */;
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
  `delay` int(10) unsigned DEFAULT NULL,
  `automatia` int(11) DEFAULT NULL,
  `ai_class_1` int(11) DEFAULT NULL,
  `ai_class_2` int(11) DEFAULT NULL,
  `ai_class_3` int(11) DEFAULT NULL,
  `ai_class_4` int(11) DEFAULT NULL,
  `ai_class_5` int(11) DEFAULT NULL,
  `ai_class_6` int(11) DEFAULT NULL,
  `ai_class_7` int(11) DEFAULT NULL,
  `ai_class_8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_unit`
--

LOCK TABLES `monster_ai_unit` WRITE;
/*!40000 ALTER TABLE `monster_ai_unit` DISABLE KEYS */;
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
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `excellent_ancient` tinyint(3) unsigned DEFAULT NULL,
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
  `id` smallint(5) unsigned NOT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `spawn_delay` int(10) unsigned DEFAULT NULL,
  `spawn_distance` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time` int(10) unsigned DEFAULT NULL,
  `respawn_id` int(10) unsigned DEFAULT NULL,
  `move_distance` tinyint(3) unsigned DEFAULT NULL,
  `event_id` tinyint(3) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `data_4` int(11) DEFAULT NULL,
  `data_5` int(11) DEFAULT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `ai_group` int(10) unsigned DEFAULT NULL,
  `ai_group_member` int(10) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `add_count` int(11) DEFAULT NULL,
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
  `group` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
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
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_converter`
--

LOCK TABLES `monster_soul_converter` WRITE;
/*!40000 ALTER TABLE `monster_soul_converter` DISABLE KEYS */;
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
  `sub_id` tinyint(3) unsigned DEFAULT NULL,
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
  `monster` smallint(5) unsigned DEFAULT NULL,
  `required_soul` int(11) DEFAULT NULL,
  `drop_rate` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_transformation`
--

LOCK TABLES `monster_soul_transformation` WRITE;
/*!40000 ALTER TABLE `monster_soul_transformation` DISABLE KEYS */;
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
  `model` smallint(5) unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `min_level` smallint(5) unsigned DEFAULT NULL,
  `max_level` smallint(5) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `attack_min_damage` int(11) DEFAULT NULL,
  `attack_max_damage` int(11) DEFAULT NULL,
  `magic_min_damage` int(11) DEFAULT NULL,
  `magic_max_damage` int(11) DEFAULT NULL,
  `excellent_damage_rate` int(11) DEFAULT NULL,
  `excellent_damage_add` int(11) DEFAULT NULL,
  `attack_success` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_magic` int(11) DEFAULT NULL,
  `defense_success` int(11) DEFAULT NULL,
  `move_range` int(10) unsigned DEFAULT NULL,
  `move_speed` int(10) unsigned DEFAULT NULL,
  `attack_range` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(11) DEFAULT NULL,
  `view_range` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `zen_rate` int(11) DEFAULT NULL,
  `item_max_level` int(11) DEFAULT NULL,
  `life_regen_power` float DEFAULT NULL,
  `life_regen_time` int(10) unsigned DEFAULT NULL,
  `mana_regen_power` float DEFAULT NULL,
  `mana_regen_time` int(10) unsigned DEFAULT NULL,
  `shield_regen_power` float DEFAULT NULL,
  `shiled_regen_time` int(10) unsigned DEFAULT NULL,
  `stamina_regen_power` float DEFAULT NULL,
  `stamina_regen_time` int(10) unsigned DEFAULT NULL,
  `faction` tinyint(3) unsigned DEFAULT NULL,
  `faction_level` tinyint(3) unsigned DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_pattern` int(11) DEFAULT NULL,
  `elemental_defense` int(11) DEFAULT NULL,
  `elemental_damage_min` int(11) DEFAULT NULL,
  `elemental_damage_max` int(11) DEFAULT NULL,
  `elemental_attack_rate` int(11) DEFAULT NULL,
  `elemental_defense_rate` int(11) DEFAULT NULL,
  `radiance_immune` tinyint(3) unsigned DEFAULT NULL,
  `debuff_resistance` int(11) DEFAULT NULL,
  `debuff_defense` int(11) DEFAULT NULL,
  `critical_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `damage_absorb` tinyint(3) unsigned DEFAULT NULL,
  `elite` tinyint(4) DEFAULT NULL,
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
  `model` smallint(5) unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `min_level` smallint(5) unsigned DEFAULT NULL,
  `max_level` smallint(5) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `attack_min_damage` int(11) DEFAULT NULL,
  `attack_max_damage` int(11) DEFAULT NULL,
  `magic_min_damage` int(11) DEFAULT NULL,
  `magic_max_damage` int(11) DEFAULT NULL,
  `excellent_damage_rate` int(11) DEFAULT NULL,
  `excellent_damage_add` int(11) DEFAULT NULL,
  `attack_success` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_magic` int(11) DEFAULT NULL,
  `defense_success` int(11) DEFAULT NULL,
  `move_range` int(10) unsigned DEFAULT NULL,
  `move_speed` int(10) unsigned DEFAULT NULL,
  `attack_range` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(11) DEFAULT NULL,
  `view_range` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `zen_rate` int(11) DEFAULT NULL,
  `item_max_level` int(11) DEFAULT NULL,
  `life_regen_power` float DEFAULT NULL,
  `life_regen_time` int(10) unsigned DEFAULT NULL,
  `mana_regen_power` float DEFAULT NULL,
  `mana_regen_time` int(10) unsigned DEFAULT NULL,
  `shield_regen_power` float DEFAULT NULL,
  `shiled_regen_time` int(10) unsigned DEFAULT NULL,
  `stamina_regen_power` float DEFAULT NULL,
  `stamina_regen_time` int(10) unsigned DEFAULT NULL,
  `faction` tinyint(3) unsigned DEFAULT NULL,
  `faction_level` tinyint(3) unsigned DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_pattern` int(11) DEFAULT NULL,
  `elemental_defense` int(11) DEFAULT NULL,
  `elemental_damage_min` int(11) DEFAULT NULL,
  `elemental_damage_max` int(11) DEFAULT NULL,
  `elemental_attack_rate` int(11) DEFAULT NULL,
  `elemental_defense_rate` int(11) DEFAULT NULL,
  `radiance_immune` tinyint(3) unsigned DEFAULT NULL,
  `debuff_resistance` int(11) DEFAULT NULL,
  `debuff_defense` int(11) DEFAULT NULL,
  `critical_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `damage_absorb` tinyint(3) unsigned DEFAULT NULL,
  `elite` tinyint(4) DEFAULT NULL,
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
  `required_item` smallint(5) unsigned DEFAULT NULL,
  `required_zen` int(10) unsigned DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `enabled` tinyint(3) unsigned DEFAULT NULL,
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
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
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
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `option_index` tinyint(3) unsigned DEFAULT NULL,
  `special_option_type` tinyint(3) unsigned DEFAULT NULL,
  `special_option_value` int(11) DEFAULT NULL,
  `evolution_item_index` smallint(5) unsigned DEFAULT NULL,
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
  `rating` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  `value_3` tinyint(3) unsigned DEFAULT NULL,
  `value_4` tinyint(3) unsigned DEFAULT NULL,
  `value_5` tinyint(3) unsigned DEFAULT NULL,
  `evolution_value` tinyint(3) unsigned DEFAULT NULL
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
  `count` tinyint(3) unsigned DEFAULT NULL,
  `muun` smallint(5) unsigned DEFAULT NULL,
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
  `option_value_1` int(11) DEFAULT NULL,
  `option_value_2` int(11) DEFAULT NULL,
  `option_value_3` int(11) DEFAULT NULL,
  `option_value_4` int(11) DEFAULT NULL,
  `option_value_5` int(11) DEFAULT NULL,
  `max_option_value` int(11) DEFAULT NULL,
  `max_zone` smallint(5) unsigned DEFAULT NULL,
  `play_time` int(11) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `min_hour` int(11) DEFAULT NULL,
  `max_hour` int(11) DEFAULT NULL,
  `min_level` int(11) DEFAULT NULL,
  `max_level` int(11) DEFAULT NULL,
  `min_master_level` int(11) DEFAULT NULL,
  `max_master_level` int(11) DEFAULT NULL,
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
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `group` smallint(5) unsigned DEFAULT NULL,
  `sub_group` smallint(5) unsigned DEFAULT NULL,
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
  `server_code` smallint(5) unsigned DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
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
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
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
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
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
  `value` tinyint(3) unsigned DEFAULT NULL,
  `fix` tinyint(3) unsigned DEFAULT NULL,
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
  `mod` tinyint(3) unsigned DEFAULT NULL,
  `original` tinyint(3) unsigned DEFAULT NULL,
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
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `rank_number` tinyint(3) unsigned DEFAULT NULL,
  `rank_option` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `unknown` tinyint(4) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `upgrade_rate_1` smallint(5) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `upgrade_rate_2` smallint(5) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `upgrade_rate_3` smallint(5) unsigned DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `upgrade_rate_4` smallint(5) unsigned DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `upgrade_rate_5` smallint(5) unsigned DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `upgrade_rate_6` smallint(5) unsigned DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `upgrade_rate_7` smallint(5) unsigned DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `upgrade_rate_8` smallint(5) unsigned DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `upgrade_rate_9` smallint(5) unsigned DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `upgrade_rate_10` smallint(5) unsigned DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `upgrade_rate_11` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `variable_type` tinyint(3) unsigned DEFAULT NULL,
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
  `mix_rate_1` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_2` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_3` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_4` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_5` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_remove`
--

LOCK TABLES `pentagram_jewel_remove` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_remove` DISABLE KEYS */;
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
  `mix_money` int(10) unsigned DEFAULT NULL,
  `mix_rate_1` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_2` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_3` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_4` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_5` smallint(5) unsigned DEFAULT NULL,
  `required_elemental_rune_1` int(11) DEFAULT NULL,
  `required_elemental_rune_2` int(11) DEFAULT NULL,
  `required_elemental_rune_3` int(11) DEFAULT NULL,
  `required_elemental_rune_4` int(11) DEFAULT NULL,
  `required_elemental_rune_5` int(11) DEFAULT NULL,
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
  `mix_money` int(10) unsigned DEFAULT NULL,
  `mix_rate` smallint(5) unsigned DEFAULT NULL,
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
  `value` smallint(5) unsigned DEFAULT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `rank_1` tinyint(3) unsigned DEFAULT NULL,
  `level_1` tinyint(3) unsigned DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `rank_2` tinyint(3) unsigned DEFAULT NULL,
  `level_2` tinyint(3) unsigned DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `rank_3` tinyint(3) unsigned DEFAULT NULL,
  `level_3` tinyint(3) unsigned DEFAULT NULL,
  `type_4` tinyint(3) unsigned DEFAULT NULL,
  `rank_4` tinyint(3) unsigned DEFAULT NULL,
  `level_4` tinyint(3) unsigned DEFAULT NULL,
  `type_5` tinyint(3) unsigned DEFAULT NULL,
  `rank_5` tinyint(3) unsigned DEFAULT NULL,
  `level_5` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_option`
--

LOCK TABLES `pentagram_option` WRITE;
/*!40000 ALTER TABLE `pentagram_option` DISABLE KEYS */;
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
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `option_3` tinyint(3) unsigned DEFAULT NULL,
  `option_4` tinyint(3) unsigned DEFAULT NULL,
  `option_5` tinyint(3) unsigned DEFAULT NULL,
  `option_6` tinyint(3) unsigned DEFAULT NULL,
  `option_7` tinyint(3) unsigned DEFAULT NULL,
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
  `condition_id` int(11) DEFAULT NULL,
  `required_quest_id` tinyint(3) unsigned DEFAULT NULL,
  `min_level` int(10) unsigned DEFAULT NULL,
  `max_level` int(10) unsigned DEFAULT NULL,
  `required_zen` int(10) unsigned DEFAULT NULL,
  `context_start` tinyint(3) unsigned DEFAULT NULL,
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
  `objective_type` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_level` tinyint(3) unsigned DEFAULT NULL,
  `count` smallint(5) unsigned DEFAULT NULL,
  `monster_id` smallint(6) DEFAULT NULL,
  `monster_min_level` smallint(6) DEFAULT NULL,
  `monster_max_level` smallint(6) DEFAULT NULL,
  `monster_slot` tinyint(3) unsigned DEFAULT NULL,
  `drop_rate` smallint(5) unsigned DEFAULT NULL,
  `reward_type` smallint(5) unsigned DEFAULT NULL,
  `reward_sub_type` smallint(5) unsigned DEFAULT NULL,
  `reward_count` smallint(5) unsigned DEFAULT NULL,
  `condition_index` smallint(6) DEFAULT NULL,
  `context_before_reg` smallint(5) unsigned DEFAULT NULL,
  `context_after_reg` smallint(5) unsigned DEFAULT NULL,
  `context_complete_quest` smallint(5) unsigned DEFAULT NULL,
  `context_clear_quest` smallint(5) unsigned DEFAULT NULL,
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
  `class_flag` int(10) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `qurability` tinyint(3) unsigned DEFAULT NULL,
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
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
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
  `type` tinyint(3) unsigned DEFAULT NULL,
  `npc` smallint(5) unsigned DEFAULT NULL,
  `party` tinyint(3) unsigned DEFAULT NULL,
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
  `server` smallint(5) unsigned DEFAULT NULL,
  `day` tinyint(3) unsigned DEFAULT NULL,
  `template_type_1` tinyint(3) unsigned DEFAULT NULL,
  `chapter` tinyint(3) unsigned DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT NULL,
  `importance` tinyint(3) unsigned DEFAULT NULL,
  `start_type` tinyint(3) unsigned DEFAULT NULL,
  `start_sub_type` smallint(5) unsigned DEFAULT NULL,
  `level_min` smallint(5) unsigned DEFAULT NULL,
  `level_max` smallint(5) unsigned DEFAULT NULL,
  `repeat_cycle` tinyint(4) DEFAULT NULL,
  `precedence_quest` smallint(6) DEFAULT NULL,
  `start_item_type` tinyint(4) DEFAULT NULL,
  `start_item_index` smallint(6) DEFAULT NULL,
  `check_gens` tinyint(4) DEFAULT NULL,
  `zen` int(11) DEFAULT NULL,
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
  `add_class` tinyint(3) unsigned DEFAULT NULL,
  `template_type_2` tinyint(3) unsigned DEFAULT NULL,
  `objective_type` tinyint(3) unsigned DEFAULT NULL,
  `objective_main_type` smallint(6) DEFAULT NULL,
  `objective_main_sub_type` smallint(6) DEFAULT NULL,
  `target_number` smallint(6) DEFAULT NULL,
  `target_max_level` smallint(6) DEFAULT NULL,
  `drop_rate` smallint(6) DEFAULT NULL,
  `gate_id` smallint(5) unsigned DEFAULT NULL,
  `map_id` smallint(5) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  `reward_experience` int(11) DEFAULT NULL,
  `reward_zen` int(11) DEFAULT NULL,
  `reward_gens_points` tinyint(3) unsigned DEFAULT NULL,
  `reward_item_type_1` tinyint(4) DEFAULT NULL,
  `reward_item_index_1` smallint(6) DEFAULT NULL,
  `reward_item_count_1` smallint(6) DEFAULT NULL,
  `reward_item_type_2` tinyint(4) DEFAULT NULL,
  `reward_item_index_2` smallint(6) DEFAULT NULL,
  `reward_item_count_2` smallint(6) DEFAULT NULL,
  `reward_item_type_3` tinyint(4) DEFAULT NULL,
  `reward_item_index_3` smallint(6) DEFAULT NULL,
  `reward_item_count_3` smallint(6) DEFAULT NULL,
  `reward_type` smallint(6) DEFAULT NULL,
  `reward_sub_type` smallint(6) DEFAULT NULL,
  `reward_number` smallint(6) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
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
INSERT INTO `settings` VALUES (-1,'Account.ConnectCheckResetOnAction','0'),(-1,'Account.ConnectCheckTime','0'),(-1,'Account.DarkLordCreate','0'),(-1,'Account.DisconnectTime','0'),(-1,'Account.GameCloseTime','0'),(-1,'Account.GrowLancerCreate','0'),(-1,'Account.MagicGladiatorCreate','0'),(-1,'Account.MaxLoginAttempts','0'),(-1,'Account.RageFighterCreate','0'),(-1,'Account.ServerMoveKickTime','0'),(-1,'Account.Warehouse.GetMoney','0'),(-1,'Account.Warehouse.Lock','0'),(-1,'Account.Warehouse.MaxMoney','0'),(-1,'Account.Warehouse.SaveMoney','0'),(-1,'AntiHack.CoordinateAttackCheck','0'),(-1,'AntiHack.CoordinateVerify','0'),(-1,'AntiHack.CoordinateVerifyTime','0'),(-1,'AntiHack.SkillContinue','0'),(-1,'AntiHack.SkillCount','0'),(-1,'AntiHack.SkillCountContinue','2'),(-1,'AntiHack.SkillHeadcodeCheck','0'),(-1,'AntiHack.SkillKick','0'),(-1,'AntiHack.SkillLogCount','3'),(-1,'AntiHack.WalkCheck1','0'),(-1,'AntiHack.WalkCheck2','0'),(-1,'AntiHack.WalkCheck3','0'),(-1,'AntiHack.WalkCheck4','0'),(-1,'AntiHack.WalkCheck5','0'),(-1,'AntiHack.WalkCheckDistance1','0'),(-1,'AntiHack.WalkCheckError1','0'),(-1,'AntiMacro.ComboEnabled','0'),(-1,'AntiMacro.ComboTime','0'),(-1,'AntiMacro.Enabled','0'),(-1,'AntiMacro.Time','0'),(-1,'ArkaWar.DamageReductionAlly','0'),(-1,'ArkaWar.DamageReductionEnemy','0'),(-1,'ArkaWar.MinGuilds','0'),(-1,'ArkaWar.RegisterMaxMembers','0'),(-1,'ArkaWar.RegisterMinMembers','0'),(-1,'ArkaWar.Server','9999'),(-1,'AttackRangeTolerance','1'),(-1,'AttackTime.NullKick','1'),(-1,'Barracks.MoveCost','0'),(-1,'Barracks.MoveEnabled','0'),(-1,'Barracks.MoveMinLevel','0'),(-1,'Barracks.MoveParty','0'),(-1,'BloodCastle.DeliverWeaponTime','0'),(-1,'BloodCastle.Enabled','0'),(-1,'BloodCastle.RewardScore','0'),(-1,'BloodCastle.SkillRushCheck','0'),(-1,'CashShop.BannerDir',''),(-1,'CashShop.BannerDirTest',''),(-1,'CashShop.BannerIp',''),(-1,'CashShop.BannerMonth','0'),(-1,'CashShop.BannerNumber','0'),(-1,'CashShop.BannerYear','0'),(-1,'CashShop.CoinUpdateTime','0'),(-1,'CashShop.DiscountDate','0'),(-1,'CashShop.DiscountGP','0'),(-1,'CashShop.DiscountWC','0'),(-1,'CashShop.Enabled','0'),(-1,'CashShop.GiftUpdateTime','0'),(-1,'CashShop.ItemDir',''),(-1,'CashShop.ItemDirTest',''),(-1,'CashShop.ItemIp',''),(-1,'CashShop.ItemListMonth','0'),(-1,'CashShop.ItemListNumber','0'),(-1,'CashShop.ItemListYear','0'),(-1,'CashShop.SafeZone','0'),(-1,'CashShop.UseJoin','0'),(-1,'CastleDeep.Enabled','0'),(-1,'CastleSiege.CrownTime','0'),(-1,'CastleSiege.Enabled','0'),(-1,'CastleSiege.LordMixMax','0'),(-1,'CastleSiege.MachineEnabled','0'),(-1,'CastleSiege.ParticipantRewardMinutes','0'),(-1,'CastleSiege.ReduceDamageDifSide','0'),(-1,'CastleSiege.ReduceDamageSameSide','0'),(-1,'CastleSiege.RegisterEnabled','0'),(-1,'CastleSiege.RegisterMinLevel','0'),(-1,'CastleSiege.RegisterMinMembers','0'),(-1,'CastleSiege.RegisterSignEnabled','0'),(-1,'ChaosCastle.Enabled','0'),(-1,'ChaosCastle.SurvivalMaxPerPC','0'),(-1,'ChaosCastle.SurvivalOfTheFittestEnabled','0'),(-1,'Character.AGAutorecuperationCount','0'),(-1,'Character.AGAutorecuperationCountRest','0'),(-1,'Character.AGAutorecuperationEnabled','0'),(-1,'Character.AGAutorecuperationMaxLevel','0'),(-1,'Character.AutoSaveOfflineTime','0'),(-1,'Character.AutosaveTime','0'),(-1,'Character.DieExperienceDecrease','0'),(-1,'Character.DieZenDecrease','0'),(-1,'Character.DKDamageModPVE','0'),(-1,'Character.DKDamageModPVP','0'),(-1,'Character.DLDamageModPVE','0'),(-1,'Character.DLDamageModPVP','0'),(-1,'Character.DWDamageModPVE','0'),(-1,'Character.DWDamageModPVP','0'),(-1,'Character.FEDamageModPVE','0'),(-1,'Character.FEDamageModPVP','0'),(-1,'Character.GCDamageModPVE','100'),(-1,'Character.GCDamageModPVP','100'),(-1,'Character.GLDamageModPVE','0'),(-1,'Character.GLDamageModPVP','0'),(-1,'Character.HeroCount','0'),(-1,'Character.HeroTime','0'),(-1,'Character.HPAutorecuperationCount','0'),(-1,'Character.HPAutorecuperationCountRest','0'),(-1,'Character.HPAutorecuperationEnabled','0'),(-1,'Character.HPAutorecuperationMaxLevel','0'),(-1,'Character.MaxAgility','0'),(-1,'Character.MaxAttackSpeedDK','0'),(-1,'Character.MaxAttackSpeedDL','0'),(-1,'Character.MaxAttackSpeedDW','0'),(-1,'Character.MaxAttackSpeedELF','0'),(-1,'Character.MaxAttackSpeedGC','280'),(-1,'Character.MaxAttackSpeedGL','0'),(-1,'Character.MaxAttackSpeedMG','0'),(-1,'Character.MaxAttackSpeedRF','0'),(-1,'Character.MaxAttackSpeedRW','0'),(-1,'Character.MaxAttackSpeedSL','0'),(-1,'Character.MaxAttackSpeedSUM','0'),(-1,'Character.MaxEnergy','0'),(-1,'Character.MaxExpandedInventory','0'),(-1,'Character.MaxLeadership','0'),(-1,'Character.MaxLevelMajestic','0'),(-1,'Character.MaxLevelMaster','0'),(-1,'Character.MaxLevelNormal','0'),(-1,'Character.MaxStrength','0'),(-1,'Character.MaxVitality','0'),(-1,'Character.MaxZen','0'),(-1,'Character.MGDamageModPVE','0'),(-1,'Character.MGDamageModPVP','0'),(-1,'Character.MinMonsterLevelMajestic','0'),(-1,'Character.MinMonsterLevelMaster','0'),(-1,'Character.MPAutorecuperationCount','0'),(-1,'Character.MPAutorecuperationCountRest','0'),(-1,'Character.MPAutorecuperationEnabled','0'),(-1,'Character.MPAutorecuperationMaxLevel','0'),(-1,'Character.MultiAttackFireScream','0'),(-1,'Character.MultiAttackPenetration','0'),(-1,'Character.MurderCount','0'),(-1,'Character.MurderLimitCount','0'),(-1,'Character.MurderTime','0'),(-1,'Character.OfflineAttack','0'),(-1,'Character.OfflineAttackBuffItem','0'),(-1,'Character.OfflineAttackCount','0'),(-1,'Character.OfflineAttackDetailAutoloot','0'),(-1,'Character.OfflineAttackFlag','0'),(-1,'Character.OfflineAttackGoblinPointsGain','0'),(-1,'Character.OfflineAttackIPCount','0'),(-1,'Character.OfflineAttackMaxLevel','0'),(-1,'Character.OfflineAttackMinLevel','0'),(-1,'Character.OfflineAttackMonsterAICheck','0'),(-1,'Character.OfflineAttackOnDisconnect','0'),(-1,'Character.OfflineAttackTime','0'),(-1,'Character.OfflineAttackZenLoot','0'),(-1,'Character.OfflineCloseWhenWrongLevel','0'),(-1,'Character.OfflineDieDisconnectTime','0'),(-1,'Character.OfflineDisconnectTime','0'),(-1,'Character.OfflineMove','0'),(-1,'Character.OfflineSkillTime','0'),(-1,'Character.PKItemDrop','0'),(-1,'Character.PKItemDrop380','0'),(-1,'Character.PKItemDropAncient','0'),(-1,'Character.PKItemDropExcellent','0'),(-1,'Character.PKItemDropHarmony','0'),(-1,'Character.PKItemDropItemMaxLevel','0'),(-1,'Character.PKItemDropMinLevel','0'),(-1,'Character.PKWarpCostIncrease','0'),(-1,'Character.PVPEnabled','0'),(-1,'Character.PVPMinLevel','0'),(-1,'Character.RepairButton.Enabled','0'),(-1,'Character.RepairButton.MinLevel','0'),(-1,'Character.RFDamageModPVE','0'),(-1,'Character.RFDamageModPVP','0'),(-1,'Character.RWDamageModPVE','0'),(-1,'Character.RWDamageModPVP','0'),(-1,'Character.SD.AttackSuccessRate','0'),(-1,'Character.SD.ComboMissInit','0'),(-1,'Character.SD.DamageToShield','0'),(-1,'Character.SDAutorecuperationCount','0'),(-1,'Character.SDAutorecuperationCountRest','0'),(-1,'Character.SDAutorecuperationEnabled','0'),(-1,'Character.SDAutorecuperationMaxLevel','0'),(-1,'Character.SelfDefenseEnabled','0'),(-1,'Character.SelfDefenseTime','0'),(-1,'Character.SLDamageModPVE','0'),(-1,'Character.SLDamageModPVP','0'),(-1,'Character.SMDamageModPVE','0'),(-1,'Character.SMDamageModPVP','0'),(-1,'CheatScan.Ban','0'),(-1,'CheatScan.Count','0'),(-1,'CheatScan.Enabled','0'),(-1,'CheatScan.Kick','0'),(-1,'CheatScan.Time','0'),(-1,'ComboCheck.Count','0'),(-1,'ComboCheck.DatabaseLog','0'),(-1,'ComboCheck.Enabled','0'),(-1,'ComboCheck.Kick','0'),(-1,'ComboCheck.Stop','0'),(-1,'ComboCheck.TimeDiff','0'),(-1,'Command.AddStat.Cost','0'),(-1,'Command.AddStat.Enabled','0'),(-1,'Command.AddStat.MinLevel','0'),(-1,'Command.Gold.Enabled','0'),(-1,'Command.Gold.MaxDays','0'),(-1,'Command.Gold.Price','0'),(-1,'Command.Master','0'),(-1,'Command.Post.Cost','0'),(-1,'Command.Post.Delay','0'),(-1,'Command.Post.Enabled','0'),(-1,'Command.Post.Head','$name: [POST][$server]: $message'),(-1,'Command.Post.MinLevel','0'),(-1,'Command.Post.Type','0'),(-1,'Command.Refresh.Enabled','0'),(-1,'Command.Refresh.Time','0'),(-1,'Common.FenrirRepairRate','0'),(-1,'Common.ItemDrop.ExeMaxOption','2'),(-1,'Common.ItemDrop.ExeMinOption','1'),(-1,'Common.ItemDrop.LuckRateExe','0'),(-1,'Common.ItemDrop.LuckRateNormal','0'),(-1,'Common.ItemDrop.RateExe','0'),(-1,'Common.ItemDrop.RateNormal','0'),(-1,'Common.ItemDrop.SkillRateNormal','0'),(-1,'Common.ItemDrop.Socket1RateExe','0'),(-1,'Common.ItemDrop.Socket1RateNormal','0'),(-1,'Common.ItemDrop.Socket2RateExe','0'),(-1,'Common.ItemDrop.Socket2RateNormal','0'),(-1,'Common.ItemDrop.Socket3RateExe','0'),(-1,'Common.ItemDrop.Socket3RateNormal','0'),(-1,'Common.ItemDrop.Socket4RateExe','0'),(-1,'Common.ItemDrop.Socket4RateNormal','0'),(-1,'Common.ItemDrop.Socket5RateExe','0'),(-1,'Common.ItemDrop.Socket5RateNormal','0'),(-1,'Common.ItemDurationTime','0'),(-1,'Common.JewelOfLife.Enabled','0'),(-1,'Common.JewelOfLife.Max','0'),(-1,'Common.JewelOfLife.MaxRate','0'),(-1,'Common.JewelOfLife.RateAncient','0'),(-1,'Common.JewelOfLife.RateExe','0'),(-1,'Common.JewelOfLife.RateNormal','0'),(-1,'Common.JewelOfLife.RateSocket','0'),(-1,'Common.JewelOfLife.Reset','0'),(-1,'Common.JewelOfLife.ResetRate','0'),(-1,'Common.JewelOfLife.ResetWarning',''),(-1,'Common.JewelOfSoul.Enabled','0'),(-1,'Common.JewelOfSoul.Rate','0'),(-1,'Common.JewelOfSoul.RateLuck','0'),(-1,'Common.LootingTime','0'),(-1,'Common.PersonalMerchantShop',''),(-1,'Crywolf.AIChange.Time','0'),(-1,'Crywolf.Altar.ContractValidationTime','0'),(-1,'Crywolf.Altar.ContractWaitTime','0'),(-1,'Crywolf.Altar.MaxContract','0'),(-1,'Crywolf.Altar.MinLevel','0'),(-1,'Crywolf.Altar.Score','0'),(-1,'Crywolf.Balgass.StartTime','0'),(-1,'Crywolf.Benefit.Apply','0'),(-1,'Crywolf.Benefit.KundunRefill','0'),(-1,'Crywolf.Benefit.MonsterHp','0'),(-1,'Crywolf.Benefit.PlusRate','0'),(-1,'Crywolf.Enabled','0'),(-1,'Crywolf.Penalty.Apply','0'),(-1,'Crywolf.Penalty.DropGem','0'),(-1,'Crywolf.Penalty.ExpGain','0'),(-1,'CustomBoss.SummonCount','0'),(-1,'CustomBoss.SummonDespawnTime','0'),(-1,'CustomBoss.SummonTime','0'),(-1,'DevilSquare.Enabled','0'),(-1,'Doppelganger.Enabled','0'),(-1,'Doppelganger.MonsterSpeed','0'),(-1,'Doppelganger.PKCheck','0'),(-1,'Doppelganger.PKLevelMax','0'),(-1,'Duel.BuffDisabled','0'),(-1,'Duel.Classic','0'),(-1,'Duel.Damage','0'),(-1,'Duel.Duration','0'),(-1,'Duel.Enabled','0'),(-1,'Duel.MaxWaitInterval','0'),(-1,'Duel.MinLevel','0'),(-1,'Duel.MuunDisabled','0'),(-1,'Duel.PentagramDisabled','0'),(-1,'Duel.RequiredZen','0'),(-1,'Duel.RoundStandby','0'),(-1,'Duel.StandByTime','0'),(-1,'Duel.TestLevel','0'),(-1,'Dungeon.Duration','0'),(-1,'Dungeon.Enabled','0'),(-1,'Dungeon.EndGate','0'),(-1,'Dungeon.GAP','0'),(-1,'Dungeon.MaxPerPC','0'),(-1,'Dungeon.MinParty','0'),(-1,'Dungeon.SilverChestMonster','0'),(-1,'Dungeon.SimpleTrapDamage','0'),(-1,'Dungeon.SimpleTrapTime','0'),(-1,'Dungeon.WaitTime','0'),(-1,'DungeonRace.Enabled','999'),(-1,'DungeonRace.Reward',''),(-1,'Event.KillRankingEnabled','0'),(-1,'Event.TimeRankingEnabled','0'),(-1,'EventInventory.Enabled','0'),(-1,'Evomon.Enabled','0'),(-1,'Evomon.PartyReward','0'),(-1,'Evomon.PartySpecialReward','0'),(-1,'Evomon.Send','0'),(-1,'Friend.AddMinLevel','0'),(-1,'Friend.Enabled','0'),(-1,'Friend.MailCost','0'),(-1,'Friend.MailEnabled','0'),(-1,'Friend.MailUpdateInterval','0'),(-1,'GameServer.Active','0'),(-1,'GameServer.AdministratorAuthorization','0'),(-1,'GameServer.AntiDupeBlock','0'),(-1,'GameServer.AntiDupeBoxCheckTime','0'),(-1,'GameServer.AntiDupeBoxEnabled','0'),(-1,'GameServer.AntiDupeBoxRemove','0'),(-1,'GameServer.AntiDupeBoxServer','9999'),(-1,'GameServer.AntiDupeKick','0'),(-1,'GameServer.AntiFloodCount','0'),(-1,'GameServer.AntiFloodKick','0'),(-1,'GameServer.AntiSpam.Count','0'),(-1,'GameServer.AntiSpam.Enabled','0'),(-1,'GameServer.AntiSpam.MuteTime','0'),(-1,'GameServer.AntiSpam.Time','0'),(-1,'GameServer.AttackDebuffFirstHit','0'),(-1,'GameServer.AttackSafeCount','0'),(-1,'GameServer.AttackSafeEnabled','0'),(-1,'GameServer.AttackSafeKick','0'),(-1,'GameServer.AttackSafeTime','0'),(-1,'GameServer.AttackSpeedBan','0'),(-1,'GameServer.AttackSpeedCheck','0'),(-1,'GameServer.AttackSpeedCount','0'),(-1,'GameServer.AttackSpeedKick','0'),(-1,'GameServer.AttackSpeedRange','0'),(-1,'GameServer.AttackSpeedSendTime','0'),(-1,'GameServer.AttackStunCheck','0'),(-1,'GameServer.AuthServerReconnectEnabled','0'),(-1,'GameServer.AuthServerReconnectTime','0'),(-1,'GameServer.AutoLoginEnabled','0'),(-1,'GameServer.AutoLoginRandomTime','0'),(-1,'GameServer.AutoLoginTime','0'),(-1,'GameServer.BossStackCheck','0'),(-1,'GameServer.ChannelChangeEnabled','0'),(-1,'GameServer.ChaosMachineSafeItemMove','0'),(-1,'GameServer.CharacterOnlineOnLogin','0'),(-1,'GameServer.ConnectServerReconnectEnabled','0'),(-1,'GameServer.ConnectServerReconnectTime','0'),(-1,'GameServer.ConnectTimeKick','0'),(-1,'GameServer.CriticalDamageRateLimit','0'),(-1,'GameServer.DarkRavenAutorepair','0'),(-1,'GameServer.DebuffStopCheck','0'),(-1,'GameServer.Debug','0'),(-1,'GameServer.DecreaseDamageRateLimit','0'),(-1,'GameServer.DobleFrustrum','0'),(-1,'GameServer.DupeCompleteBan','0'),(-1,'GameServer.DuplicatedCharacterCheck','0'),(-1,'GameServer.ElfSkillWeaponCheck','0'),(-1,'GameServer.ElfSoldierMaxLevel','0'),(-1,'GameServer.ElfSoldierRemoveOnDie','0'),(-1,'GameServer.ElfSoldierUpdate','0'),(-1,'GameServer.ExcellentDamageRateLimit','0'),(-1,'GameServer.FereaBossHPRecoveryCount','0'),(-1,'GameServer.FereaBossHPRecoveryTime','0'),(-1,'GameServer.FullInventoryToGremoryCase','0'),(-1,'GameServer.GateHandle','0'),(-1,'GameServer.HackCheckBan','0'),(-1,'GameServer.HackCheckCount','0'),(-1,'GameServer.HackCheckEnabled','0'),(-1,'GameServer.HackCheckFrameCount','0'),(-1,'GameServer.HackCheckFullBan','0'),(-1,'GameServer.HackCheckKick','0'),(-1,'GameServer.HackCheckLoopTime','0'),(-1,'GameServer.HackCheckResetTime','0'),(-1,'GameServer.HackCheckTime','0'),(-1,'GameServer.HostilCancelCommand','0'),(-1,'GameServer.IgnoreDefenseRateLimit','0'),(-1,'GameServer.InactiveTime','0'),(-1,'GameServer.InventoryMountTime','0'),(-1,'GameServer.ItemBuffCheck','0'),(-1,'GameServer.ItemBuyLogDB','0'),(-1,'GameServer.ItemDropLogDB','0'),(-1,'GameServer.ItemLootLogDB','0'),(-1,'GameServer.ItemSellLogDB','0'),(-1,'GameServer.ItemSplitEnabled','0'),(-1,'GameServer.JoinItemsWithExpireTime','0'),(-1,'GameServer.LogDB.PersonalStore','0'),(-1,'GameServer.LogDB.Trade','0'),(-1,'GameServer.LoginDiskSerialMacCheck','0'),(-1,'GameServer.LogRecvPacket','0'),(-1,'GameServer.LogSendPacket','0'),(-1,'GameServer.LuckyItemMixCheck','0'),(-1,'GameServer.MajesticExperienceRate','0'),(-1,'GameServer.MajesticZenRate','0'),(-1,'GameServer.MasterExperienceRate','0'),(-1,'GameServer.MasterZenRate','0'),(-1,'GameServer.MaxMonsters','1000'),(-1,'GameServer.MaxPlayers','1000'),(-1,'GameServer.MaxSocketWear','0'),(-1,'GameServer.MonsterAttackWallCheck','0'),(-1,'GameServer.MonsterStopAction','0'),(-1,'GameServer.MonsterTeleportOutOfRange','0'),(-1,'GameServer.MonsterViewportControl','0'),(-1,'GameServer.MultiAttackSkillCheck','0'),(-1,'GameServer.NormalExperienceRate','0'),(-1,'GameServer.NormalMonsterMovement','0'),(-1,'GameServer.NormalZenRate','0'),(-1,'GameServer.PentagramErrtelFix','0'),(-1,'GameServer.PersonalStoreLockSamePC','0'),(-1,'GameServer.PetComboExperience','0'),(-1,'GameServer.PKBossServer','9999'),(-1,'GameServer.PKBossTime','0'),(-1,'GameServer.PostManager.Count','0'),(-1,'GameServer.PostManager.Enabled','0'),(-1,'GameServer.PostManagerMAC.Count','0'),(-1,'GameServer.PostManagerMAC.Enabled','0'),(-1,'GameServer.RecvPacketQueueKick','0'),(-1,'GameServer.RecvPacketQueueMax','0'),(-1,'GameServer.ReflectDamageRateLimit','0'),(-1,'GameServer.ReflectFix','0'),(-1,'GameServer.ReservedMonsters','500'),(-1,'GameServer.ReservedPlayers','500'),(-1,'GameServer.SecurityCode','0'),(-1,'GameServer.Serial',''),(-1,'GameServer.ServerLinkServerReconnectEnabled','0'),(-1,'GameServer.ServerLinkServerReconnectTime','0'),(-1,'GameServer.ServerWarpTransactionCheck1','0'),(-1,'GameServer.ServerWarpTransactionCheck2','0'),(-1,'GameServer.ServerWarpTransactionCheck3','0'),(-1,'GameServer.SessionTimeout','0'),(-1,'GameServer.ShieldDefenseRateLimit','0'),(-1,'GameServer.ShutdownCheck','0'),(-1,'GameServer.SkillBlessStrenghtenerFix','0'),(-1,'GameServer.SkillCheckEnabled','0'),(-1,'GameServer.SpawnMonsterTime','0'),(-1,'GameServer.StackExpirableItemsOnLoot','0'),(-1,'GameServer.TempDualWeaponDmg1','0'),(-1,'GameServer.TempDualWeaponDmg2','0'),(-1,'GameServer.TestEnabled','0'),(-1,'GameServer.TestKey','0'),(-1,'GameServer.TestKickTime','0'),(-1,'GameServer.TimeCheck','0'),(-1,'GameServer.TimeCheckLevelMax','0'),(-1,'GameServer.TimeCheckLevelMin','0'),(-1,'GameServer.TimeCheckTime','0'),(-1,'GameServer.TradeInterfaceCancelBan','0'),(-1,'GameServer.TransactionRollbackCurrency','0'),(-1,'GameServer.Version','1.00.50'),(-1,'GameServer.ViewportFrustrum','0'),(-1,'GameServer.WalkSpeedBan','0'),(-1,'GameServer.WalkSpeedCount','0'),(-1,'GameServer.WalkSpeedDistance','0'),(-1,'GameServer.WalkSpeedFix','0'),(-1,'GameServer.WalkSpeedKick','0'),(-1,'GameServer.WelcomeMessage',''),(-1,'GameServer.WelcomeNotice','0'),(-1,'GameServer.WhisperLog','0'),(-1,'GameServer.WrongDecryptCount','0'),(-1,'GameServer.WrongDecryptTime','0'),(-1,'GameServer.WrongSerialCount','0'),(-1,'GameServer.WrongSerialTime','0'),(-1,'Gen.ChangeFamilyTime','0'),(-1,'Gen.JoinMinLevel','0'),(-1,'Gen.Penalization','0'),(-1,'Gen.PenalizationCount','0'),(-1,'Gen.PenalizationTime','0'),(-1,'GLElementalDamageFix','1'),(-1,'GoblinPoint.Enabled','0'),(-1,'GoblinPoint.KillTime','0'),(-1,'GoblinPoint.RequiredTime','0'),(-1,'GoblinPoint.RequiredTimeOffline','0'),(-1,'GremoryCase.FreeSpaceCheck','1'),(-1,'Guardian.DisassembleItemBag',''),(-1,'Guild.Alliance.CastleSiegeCheck','0'),(-1,'Guild.Alliance.Gens','0'),(-1,'Guild.Alliance.Max','0'),(-1,'Guild.Alliance.MinMembers','0'),(-1,'Guild.BattleSoccer.Duration','0'),(-1,'Guild.BattleSoccer.Enabled','0'),(-1,'Guild.BattleSoccer.GoalPoints','0'),(-1,'Guild.BattleSoccer.KillAssistantPoints','0'),(-1,'Guild.BattleSoccer.KillBattlePoints','0'),(-1,'Guild.BattleSoccer.KillMasterPoints','0'),(-1,'Guild.BattleSoccer.KillPoints','0'),(-1,'Guild.BattleSoccer.MaxScore','0'),(-1,'Guild.CreateGens','0'),(-1,'Guild.CreateMinLevel','0'),(-1,'Guild.Delete','0'),(-1,'Guild.Enabled','0'),(-1,'Guild.Hostil.EventKill','0'),(-1,'Guild.JoinGens','0'),(-1,'Guild.MaxWaitInterval','0'),(-1,'Guild.War.Enabled','0'),(-1,'Guild.War.IntervalTime','0'),(-1,'Guild.War.KillAssistantPoints','0'),(-1,'Guild.War.KillBattlePoints','0'),(-1,'Guild.War.KillMasterPoints','0'),(-1,'Guild.War.KillPoints','0'),(-1,'Guild.War.Max','0'),(-1,'Guild.War.MaxPoints','0'),(-1,'Guild.War.MaxWaitInterval','0'),(-1,'GuildScore.ArkaWar','0'),(-1,'GuildScore.CastleSiege','0'),(-1,'GuildScore.CastleSiegeMembers','0'),(-1,'HappyHour.DropAdd','0'),(-1,'HappyHour.ExperienceAdd','0'),(-1,'Harmony.Enabled','0'),(-1,'Harmony.OnAncient','0'),(-1,'Harmony.RefineRate','0'),(-1,'Harmony.SmeltExeRate','0'),(-1,'Harmony.SmeltNormalRate','0'),(-1,'Harmony.StrengthenRate','0'),(-1,'Harmony.StrengthenUpdateExeRate','0'),(-1,'Harmony.StrengthenUpdateNormalRate','0'),(-1,'Helper.AutoLootEnabled','0'),(-1,'Helper.BuffItemUseCheck','0'),(-1,'Helper.LootEnabled','0'),(-1,'Helper.PotionUseEnabled','0'),(-1,'Helper.RepairEnabled','0'),(-1,'HuntingRecord.Clear','0'),(-1,'ImperialFortress.Day','-1'),(-1,'ImperialFortress.Enabled','0'),(-1,'ImperialFortress.EndTime','0'),(-1,'ImperialFortress.InParty','0'),(-1,'ImperialFortress.MoveToPrevious','0'),(-1,'ImperialFortress.PKCheck','0'),(-1,'ImperialFortress.PKLevelMax','0'),(-1,'ImperialFortress.PlayTime','0'),(-1,'ImperialFortress.StandbyTime','0'),(-1,'ImperialFortress.TeleportCheck','0'),(-1,'ImperialFortress.TimeZone1','0'),(-1,'ImperialFortress.TimeZone2','0'),(-1,'ImperialFortress.TimeZone3','0'),(-1,'ImperialFortress.TimeZone4','0'),(-1,'ImperialFortress.WalkCheck','0'),(-1,'ItemUpgrade.SuccessRate10','60'),(-1,'ItemUpgrade.SuccessRate11','60'),(-1,'ItemUpgrade.SuccessRate12','55'),(-1,'ItemUpgrade.SuccessRate13','55'),(-1,'ItemUpgrade.SuccessRate14','50'),(-1,'ItemUpgrade.SuccessRate15','50'),(-1,'JewelBingo.Enabled','0'),(-1,'JewelBingo.RequiredTicket','0'),(-1,'JewelBingo.Reward','0'),(-1,'JewelBingo.ScoreD','0'),(-1,'JewelBingo.ScoreH','0'),(-1,'JewelBingo.ScoreNotMatched','0'),(-1,'JewelBingo.ScoreSpecialH','0'),(-1,'JewelBingo.ScoreSpecialV','0'),(-1,'JewelBingo.ScoreV','0'),(-1,'Kanturu.Enabled','0'),(-1,'Kanturu.MaxPlayers','0'),(-1,'Kanturu.Maya.IceStormRate','0'),(-1,'Kanturu.Maya.SkillTime','0'),(-1,'Kick.Enabled','0'),(-1,'Kick.Type','0'),(-1,'Kundun.RefillHp','0'),(-1,'Kundun.RefillHpSec','0'),(-1,'Kundun.RefillTime','0'),(-1,'LabyrinthOfDimensions.DayFirstScore','0'),(-1,'LabyrinthOfDimensions.GoblinScore','0'),(-1,'LabyrinthOfDimensions.GoblinStage','0'),(-1,'LabyrinthOfDimensions.MissionTime','0'),(-1,'LabyrinthOfDimensions.MoveBronze','0'),(-1,'LabyrinthOfDimensions.MoveGold','0'),(-1,'LabyrinthOfDimensions.MoveLegend','0'),(-1,'LabyrinthOfDimensions.MoveOnFail','0'),(-1,'LabyrinthOfDimensions.MoveSilver','0'),(-1,'LabyrinthOfDimensions.RequiredLevel','0'),(-1,'LabyrinthOfDimensions.RequiredMaster','0'),(-1,'LabyrinthOfDimensions.Server','9999'),(-1,'LabyrinthOfDimensions.StateDuration','0'),(-1,'LabyrinthOfDimensions.TimeScore','0'),(-1,'LastManStanding.Classic','0'),(-1,'LastManStanding.DamageReduction','0'),(-1,'LastManStanding.Duration','0'),(-1,'LastManStanding.HideCharacter','0'),(-1,'LastManStanding.KillScore','0'),(-1,'LastManStanding.LevelRange','0'),(-1,'LastManStanding.MaxPerPC','0'),(-1,'LastManStanding.MinLevel','0'),(-1,'LastManStanding.Server','9999'),(-1,'LastManStanding.WinScore','0'),(-1,'Log.DamagePVP','0'),(-1,'Log.DamagePVPToDB','0'),(-1,'LosttowerRace.Enabled','999'),(-1,'LosttowerRace.Reward',''),(-1,'LuckyItem.Fix','0'),(-1,'LuckyItem.FixCount','0'),(-1,'MajesticAddDamageNormal','1'),(-1,'MajesticSkillDamageNormal','1'),(-1,'MiniBomb.ClearScore','0'),(-1,'MiniBomb.Enabled','0'),(-1,'MiniBomb.FailScore','0'),(-1,'MiniBomb.FoundedBombsScore','0'),(-1,'MiniBomb.RequiredTicket','0'),(-1,'MiniBomb.RevealScore','0'),(-1,'MiniBomb.Reward','0'),(-1,'MiniBomb.WrongBombsScore','0'),(-1,'Mix.GreaterSpellStonePriceDivision','0'),(-1,'Mix.GreaterSpellStoneRate','0'),(-1,'Mix.LesserSpellStonePriceDivision','0'),(-1,'Mix.LesserSpellStoneRate','0'),(-1,'Mix.MediumSpellStonePriceDivision','0'),(-1,'Mix.MediumSpellStoneRate','0'),(-1,'Mix.SealedBloodAngelExcellentMax','0'),(-1,'Mix.SealedBloodAngelExcellentMin','0'),(-1,'MixRecovery.Enabled','0'),(-1,'MixRecovery.ErrtelMixFailCount','1'),(-1,'MixRecovery.ErrtelOnFail','0'),(-1,'MixRecovery.ErrtelRemoveFailCount','5'),(-1,'MixRecovery.FailTime','0'),(-1,'MixRecovery.PriceBless','0'),(-1,'MixRecovery.PriceWC','0'),(-1,'MixRecovery.Time','0'),(-1,'MixRecovery.Warning','0'),(-1,'MonsterSoul.DurationTime','0'),(-1,'MonsterSoul.PurchaseAmount','0'),(-1,'MossMerchant.Enabled','0'),(-1,'MossMerchant.ItemBag.Bow',''),(-1,'MossMerchant.ItemBag.Scepter',''),(-1,'MossMerchant.ItemBag.Staff',''),(-1,'MossMerchant.ItemBag.Stick',''),(-1,'MossMerchant.ItemBag.Sword',''),(-1,'MuRoomy.Enabled','0'),(-1,'MuRoomy.RewardMoneyAmount','0'),(-1,'MuRoomy.SpecialEnabled','0'),(-1,'MuRoomy.TicketRequired','0'),(-1,'Muun.Attack.Delay','0'),(-1,'Muun.Attack.Enabled','0'),(-1,'Muun.Attack.HitDelay','0'),(-1,'Muun.Attack.Range','0'),(-1,'Muun.DurabilityRate','0'),(-1,'Muun.EvolveBonus','0'),(-1,'Muun.EvolveBonusTime','0'),(-1,'Muun.MountTime','0'),(-1,'Network.BindIP','0.0.0.0'),(-1,'Network.MaxConnectionPerIP','0'),(-1,'NixiesLake.BattleTime','0'),(-1,'NixiesLake.BossRecoveryPercent','0'),(-1,'NixiesLake.BossRecoveryStandyTime','0'),(-1,'NixiesLake.BossRecoveryTime','0'),(-1,'NixiesLake.ClosedTime','0'),(-1,'NixiesLake.Free','0'),(-1,'NixiesLake.ItemBag1',''),(-1,'NixiesLake.ItemBag2',''),(-1,'NixiesLake.ItemBag3',''),(-1,'NixiesLake.ItemBag4',''),(-1,'NixiesLake.ItemBag5',''),(-1,'NixiesLake.Server','9999'),(-1,'NixiesLake.StandbyTime','0'),(-1,'NumericBaseball.Enabled','0'),(-1,'NumericBaseball.RequiredTicket','0'),(-1,'NumericBaseball.Reward','0'),(-1,'NumericBaseball.Score1','0'),(-1,'NumericBaseball.Score2','0'),(-1,'NumericBaseball.Score3','0'),(-1,'NumericBaseball.Score4','0'),(-1,'NumericBaseball.Score5','0'),(-1,'NumericBaseball.ScoreBall','0'),(-1,'NumericBaseball.ScoreStrike','0'),(-1,'OnlyBaseStatForEquipment','1'),(-1,'Option380.Enabled','0'),(-1,'Option380.Price','0'),(-1,'Option380.RateGrade1','0'),(-1,'Option380.RateGrade2','0'),(-1,'Option380.RateGrade3','0'),(-1,'Party.AllowDifGens','0'),(-1,'Party.AllowPK','0'),(-1,'Party.BonusExperience2','0'),(-1,'Party.BonusExperience3','0'),(-1,'Party.BonusExperience4','0'),(-1,'Party.BonusExperience5','0'),(-1,'Party.Enabled','0'),(-1,'Party.Experience2','0'),(-1,'Party.Experience3','0'),(-1,'Party.Experience4','0'),(-1,'Party.Experience5','0'),(-1,'Party.InBattlezone','0'),(-1,'Party.LeaderChange','0'),(-1,'Party.MatchingEnabled','0'),(-1,'Party.MatchingLeaderChange','0'),(-1,'Party.MaxLevelDif','0'),(-1,'Party.MaxWaitInterval','0'),(-1,'Party.MemberOfflineInterval','1'),(-1,'Party.MoveCost','0'),(-1,'Party.MoveEnabled','0'),(-1,'PersonalStore.Disconnect','0'),(-1,'PersonalStore.Enabled','0'),(-1,'PersonalStore.MinLevel','0'),(-1,'PersonalStore.Off','0'),(-1,'PersonalStore.OffCount','0'),(-1,'PersonalStore.OffDuration','0'),(-1,'PersonalStore.OffTotalCount','0'),(-1,'PlayerWalkSpeed','400'),(-1,'ProtectorOfAcheron.Enabled','0'),(-1,'QuestMU.Enabled','0'),(-1,'Radiance.BindingDuration','5'),(-1,'Radiance.BleedingDuration','10'),(-1,'Radiance.BleedingRate','5'),(-1,'Radiance.BlindingDuration','10'),(-1,'Radiance.BlindingRate','5'),(-1,'Radiance.ParalysisEffect','90'),(-1,'Radiance.ParalysisRate','5'),(-1,'Raklion.Enabled','0'),(-1,'Raklion.FailTimeMax','0'),(-1,'Raklion.FailTimeMin','0'),(-1,'Raklion.SuccessTimeMax','0'),(-1,'Raklion.SuccessTimeMin','0'),(-1,'RareIceDragonRate','5'),(-1,'Refuge.MoveCost','0'),(-1,'Refuge.MoveEnabled','0'),(-1,'Refuge.MoveMinLevel','0'),(-1,'Refuge.MoveParty','0'),(-1,'SantaVillage.CheckSeason','0'),(-1,'SantaVillage.Enabled','0'),(-1,'SantaVillage.SantaClaus.Enabled','0'),(-1,'SantaVillage.SantaClaus.GiftTime','0'),(-1,'SantaVillage.SantaClaus.ItemBag',''),(-1,'SantaVillage.Season','0'),(-1,'Scramble.Enabled','999'),(-1,'Scramble.RepeatWordCount','0'),(-1,'Scramble.Reward',''),(-1,'Scramble.TotalWordCount','0'),(-1,'SecretShop.List',''),(-1,'SecretShop.WarpTime','0'),(-1,'Skill.AbsorbHPRate','0'),(-1,'Skill.AbsorbSDRate','0'),(-1,'Skill.ArchangelWillDamage','0'),(-1,'Skill.ArchangelWillDuration','0'),(-1,'Skill.ArchangelWillSkillDamage','0'),(-1,'Skill.BastionRate','0'),(-1,'Skill.BastionReduction','0'),(-1,'Skill.BastionSD','0'),(-1,'Skill.BlindAdd','0'),(-1,'Skill.BlindDiv','0'),(-1,'Skill.BlindTime','0'),(-1,'Skill.BlindValue','0'),(-1,'Skill.BloodHowlingDamage','0'),(-1,'Skill.BloodHowlingDuration','0'),(-1,'Skill.BloodHowlingRate','0'),(-1,'Skill.BossDebuffBlow','0'),(-1,'Skill.BurstRWDurationAdd','0'),(-1,'Skill.BurstRWDurationDiv','0'),(-1,'Skill.BurstRWEffect1Div','0'),(-1,'Skill.BurstRWEffect2Div','0'),(-1,'Skill.CircleShieldDuration','0'),(-1,'Skill.CircleShieldReduceAG','0'),(-1,'Skill.CircleShieldReduceAGRate','0'),(-1,'Skill.CureBuffRate','0'),(-1,'Skill.DarkPlasmaAttackDistance','8'),(-1,'Skill.DarkPlasmaAttackSpeed','5'),(-1,'Skill.DarkPlasmaTargetCount','5'),(-1,'Skill.DetectionRange','0'),(-1,'Skill.EarthPrisonStunRate','0'),(-1,'Skill.ElementalBerserkerI','0'),(-1,'Skill.ElementalBerserkerIDamage','0'),(-1,'Skill.ElementalBerserkerIDefense','0'),(-1,'Skill.ElementalImmuneI','0'),(-1,'Skill.ElementalImmuneII','0'),(-1,'Skill.EnergyCheck','0'),(-1,'Skill.FireScreamExplosionRate','0'),(-1,'Skill.FixPowersOnBuff','0'),(-1,'Skill.HasteRWDurationAdd','0'),(-1,'Skill.HasteRWDurationDiv','0'),(-1,'Skill.HasteRWEffect1Div','0'),(-1,'Skill.HasteRWEffect2Div','0'),(-1,'Skill.IllusionDuration','0'),(-1,'Skill.IronDefenseDuration','0'),(-1,'Skill.IronDefenseValue1','0'),(-1,'Skill.IronDefenseValue2','0'),(-1,'Skill.LeadershipCheck','0'),(-1,'Skill.MagicArrowProjectiles','0'),(-1,'Skill.MagicArrowSplashDamage','0'),(-1,'Skill.MagicArrowSplashDistance','0'),(-1,'Skill.MagicArrowSplashTargets','0'),(-1,'Skill.MagicPinExplosionDamage','0'),(-1,'Skill.MagicPinExplosionRate','0'),(-1,'Skill.ManaShieldCastleSiegeLimit','0'),(-1,'Skill.ManaShieldLimit','0'),(-1,'Skill.MultiAttackCount','0'),(-1,'Skill.MultiAttackNew','0'),(-1,'Skill.MultiAttackTime','0'),(-1,'Skill.ParalizeDebuffRate','0'),(-1,'Skill.PlasmaBallAttackCount','0'),(-1,'Skill.PlasmaBallAttackDistance','0'),(-1,'Skill.PlasmaBallAttackSpeed','0'),(-1,'Skill.PlasmaBallMoveDistance','0'),(-1,'Skill.PlasmaBallMoveSpeed','0'),(-1,'Skill.PlasmaBallTargetCount','0'),(-1,'Skill.PoisonArrowDebuffRate','0'),(-1,'Skill.PunishFirstHit','0'),(-1,'Skill.PunishFrequencyPVM','0'),(-1,'Skill.PunishFrequencyPVP','0'),(-1,'Skill.PunishMaxDamage','0'),(-1,'Skill.PunishRatePVM','0'),(-1,'Skill.PunishRatePVP','0'),(-1,'Skill.ReflectLimit','25'),(-1,'Skill.SleepLimit','70'),(-1,'Skill.SleepLimitTime','70'),(-1,'Skill.SleepReuseTime','1000'),(-1,'Skill.SplashDamagePercent','0'),(-1,'SkillTeleport.StateAttack0','0'),(-1,'SkillTeleport.StateAttack1','0'),(-1,'SkillTeleport.StateAttack2','0'),(-1,'SkillTeleport.StateAttack3','0'),(-1,'SkillTeleport.StateRemoveVP0','0'),(-1,'SkillTeleport.StateRemoveVP1','0'),(-1,'SkillTeleport.StateRemoveVP2','0'),(-1,'SkillTeleport.StateRemoveVP3','0'),(-1,'SkillTeleport.StateTime0','0'),(-1,'SkillTeleport.StateTime1','0'),(-1,'SkillTeleport.StateTime2','0'),(-1,'SkillTeleport.StateTime3','0'),(-1,'SpecialMap.CharacterCount','0'),(-1,'SpecialMap.PVP','0'),(-1,'SwampOfDarkness.BattleTime','0'),(-1,'SwampOfDarkness.BossAppearTime','0'),(-1,'SwampOfDarkness.ClosedTimeMax','0'),(-1,'SwampOfDarkness.ClosedTimeMin','0'),(-1,'SwampOfDarkness.Enabled','0'),(-1,'SwampOfDarkness.MaxPlayers','0'),(-1,'TeleportCoordinateBuff','57 241'),(-1,'TeleportFix','1'),(-1,'TeleportRestrictBuff','61 72 146 147'),(-1,'TormentedSquare.Enabled','0'),(-1,'TormentedSquareSurvival.Enabled','0'),(-1,'Trade.Enabled','0'),(-1,'Trade.MaxWaitInterval','0'),(-1,'Trade.MaxZen','0'),(-1,'Transaction.DuplicatedSerialDelete','0'),(-1,'Transaction.SharedDuplicatedSerialDelete','0'),(-1,'Transfer.Enabled','0'),(-1,'Transfer.PartyServer','-1'),(-1,'Transfer.Server','-1'),(-1,'WorldBoss.AOERange','0'),(-1,'WorldBoss.Enabled','0'),(-1,'WorldBoss.GuildPK','0'),(-1,'WorldBoss.IncreaseDamagePerPoint','0'),(-1,'WorldBoss.ItemBag',''),(-1,'WorldBoss.MaxPKPoints','0'),(-1,'WorldBoss.NormalRespawn','0'),(-1,'WorldBoss.PKGAP','0'),(-1,'WorldBoss.PKRange','0'),(-1,'WorldBoss.RequiredPlayer','0'),(-1,'WorldBoss.RequiredPointsToAttack','0'),(-1,'WorldBoss.StartNotification','0');
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
  `price` int(10) unsigned DEFAULT NULL,
  `shop` smallint(5) unsigned DEFAULT NULL
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

--
-- Table structure for table `summon_scroll`
--

DROP TABLE IF EXISTS `summon_scroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon_scroll` (
  `index` smallint(5) unsigned NOT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
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
  `group` tinyint(3) unsigned DEFAULT NULL,
  `monster_class` smallint(5) unsigned DEFAULT NULL,
  `create_rate` smallint(5) unsigned DEFAULT NULL,
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
  `language` tinyint(3) unsigned DEFAULT NULL,
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
  `zen` int(10) unsigned DEFAULT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `gate` smallint(5) unsigned DEFAULT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleport_template`
--

LOCK TABLES `teleport_template` WRITE;
/*!40000 ALTER TABLE `teleport_template` DISABLE KEYS */;
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
  `experience` float DEFAULT NULL,
  `instance` int(10) unsigned DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
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
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_ai_path`
--

LOCK TABLES `world_ai_path` WRITE;
/*!40000 ALTER TABLE `world_ai_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_ai_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_area_attribute`
--

DROP TABLE IF EXISTS `world_area_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_area_attribute` (
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `apply` tinyint(4) DEFAULT NULL,
  `send` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_attribute`
--

LOCK TABLES `world_area_attribute` WRITE;
/*!40000 ALTER TABLE `world_area_attribute` DISABLE KEYS */;
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
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `range` tinyint(3) unsigned DEFAULT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_restriction`
--

LOCK TABLES `world_area_restriction` WRITE;
/*!40000 ALTER TABLE `world_area_restriction` DISABLE KEYS */;
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
  `state` tinyint(3) unsigned DEFAULT NULL,
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
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
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
  `rate_party_member_1` int(11) DEFAULT NULL,
  `rate_party_member_2` int(11) DEFAULT NULL,
  `rate_party_member_3` int(11) DEFAULT NULL,
  `rate_party_member_4` int(11) DEFAULT NULL,
  `rate_party_member_5` int(11) DEFAULT NULL,
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
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
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
  `display_entry` smallint(5) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `spawn_gate` smallint(5) unsigned DEFAULT NULL,
  `experience` int(10) unsigned DEFAULT NULL,
  `zen_rate` int(10) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_template`
--

LOCK TABLES `world_template` WRITE;
/*!40000 ALTER TABLE `world_template` DISABLE KEYS */;
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

-- Dump completed on 2021-03-09 18:56:34
