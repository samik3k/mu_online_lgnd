-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mu_online_characters
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
-- Table structure for table `account_buff`
--

DROP TABLE IF EXISTS `account_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_buff` (
  `account_id` int(11) unsigned NOT NULL,
  `buff` smallint(6) unsigned NOT NULL,
  `effect_1` tinyint(4) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `effect_2` tinyint(4) unsigned NOT NULL,
  `value_2` int(11) NOT NULL,
  `effect_3` tinyint(4) unsigned NOT NULL,
  `value_3` int(11) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `flags` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_buff`
--

LOCK TABLES `account_buff` WRITE;
/*!40000 ALTER TABLE `account_buff` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_buff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_cash_shop_gift`
--

DROP TABLE IF EXISTS `account_cash_shop_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_cash_shop_gift` (
  `account_id` int(11) unsigned NOT NULL,
  `product` int(11) unsigned NOT NULL,
  `option` int(11) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `serial_cash_shop` int(11) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_cash_shop_gift`
--

LOCK TABLES `account_cash_shop_gift` WRITE;
/*!40000 ALTER TABLE `account_cash_shop_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_cash_shop_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_cash_shop_item`
--

DROP TABLE IF EXISTS `account_cash_shop_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_cash_shop_item` (
  `account_id` int(11) unsigned NOT NULL,
  `product` int(11) unsigned NOT NULL,
  `option` int(11) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `serial_cash_shop` int(11) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  `gift` tinyint(4) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_cash_shop_item`
--

LOCK TABLES `account_cash_shop_item` WRITE;
/*!40000 ALTER TABLE `account_cash_shop_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_cash_shop_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_data`
--

DROP TABLE IF EXISTS `account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_data` (
  `account_id` int(11) unsigned NOT NULL,
  `vip_status` int(11) NOT NULL,
  `vip_duration` bigint(20) NOT NULL,
  `expanded_warehouse` tinyint(4) unsigned NOT NULL,
  `expanded_warehouse_time` bigint(20) NOT NULL,
  `special_character` smallint(6) unsigned NOT NULL,
  `credits` int(11) unsigned NOT NULL,
  `web_credits` int(11) unsigned NOT NULL,
  `current_character` int(11) unsigned NOT NULL,
  `current_type` tinyint(4) unsigned NOT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int(11) unsigned NOT NULL,
  `current_server` smallint(6) unsigned NOT NULL,
  `cash_shop_discount_wc` tinyint(4) unsigned NOT NULL,
  `cash_shop_discount_gp` tinyint(4) unsigned NOT NULL,
  `cash_shop_discount_date` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_data`
--

LOCK TABLES `account_data` WRITE;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
INSERT INTO `account_data` VALUES (1,-1,0,0,0,0,0,0,9,0,'192.168.1.60','B4:2E:99:C7:D5:A3',1519512988,0,0,0,0),(2,-1,0,0,0,0,0,0,6,0,'192.168.1.60','B4:2E:99:C7:D5:A3',1519512988,0,0,0,0);
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_warehouse`
--

DROP TABLE IF EXISTS `account_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_warehouse` (
  `account_id` int(11) unsigned NOT NULL,
  `money` int(11) unsigned NOT NULL,
  `password` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_warehouse`
--

LOCK TABLES `account_warehouse` WRITE;
/*!40000 ALTER TABLE `account_warehouse` DISABLE KEYS */;
INSERT INTO `account_warehouse` VALUES (1,0,0),(2,0,0);
/*!40000 ALTER TABLE `account_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arka_war_data`
--

DROP TABLE IF EXISTS `arka_war_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arka_war_data` (
  `id` tinyint(4) unsigned NOT NULL,
  `guild` int(11) unsigned NOT NULL,
  `attribute` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`,`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arka_war_data`
--

LOCK TABLES `arka_war_data` WRITE;
/*!40000 ALTER TABLE `arka_war_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `arka_war_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castle_siege_data`
--

DROP TABLE IF EXISTS `castle_siege_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_data` (
  `owner` int(11) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  `tax_hunt` int(11) NOT NULL,
  `tax_chaos` tinyint(4) unsigned NOT NULL,
  `tax_store` tinyint(4) unsigned NOT NULL,
  `hunt_allowed` tinyint(4) NOT NULL,
  `money` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castle_siege_data`
--

LOCK TABLES `castle_siege_data` WRITE;
/*!40000 ALTER TABLE `castle_siege_data` DISABLE KEYS */;
INSERT INTO `castle_siege_data` VALUES (0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `castle_siege_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castle_siege_guild`
--

DROP TABLE IF EXISTS `castle_siege_guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_guild` (
  `guild` int(11) unsigned NOT NULL,
  `side` tinyint(4) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`guild`,`side`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castle_siege_guild`
--

LOCK TABLES `castle_siege_guild` WRITE;
/*!40000 ALTER TABLE `castle_siege_guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `castle_siege_guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castle_siege_npc`
--

DROP TABLE IF EXISTS `castle_siege_npc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_npc` (
  `npc` smallint(6) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `defense_level` tinyint(4) unsigned NOT NULL,
  `regen_level` tinyint(4) unsigned NOT NULL,
  `life_level` tinyint(4) unsigned NOT NULL,
  `life` int(11) NOT NULL,
  PRIMARY KEY (`npc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castle_siege_npc`
--

LOCK TABLES `castle_siege_npc` WRITE;
/*!40000 ALTER TABLE `castle_siege_npc` DISABLE KEYS */;
/*!40000 ALTER TABLE `castle_siege_npc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castle_siege_registered_guild`
--

DROP TABLE IF EXISTS `castle_siege_registered_guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_registered_guild` (
  `guild` int(11) unsigned NOT NULL,
  `marks` int(11) unsigned NOT NULL,
  `register_id` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `level_master` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castle_siege_registered_guild`
--

LOCK TABLES `castle_siege_registered_guild` WRITE;
/*!40000 ALTER TABLE `castle_siege_registered_guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `castle_siege_registered_guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaos_castle_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `chaos_castle_survival_hall_of_fame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaos_castle_survival_hall_of_fame` (
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaos_castle_survival_hall_of_fame`
--

LOCK TABLES `chaos_castle_survival_hall_of_fame` WRITE;
/*!40000 ALTER TABLE `chaos_castle_survival_hall_of_fame` DISABLE KEYS */;
/*!40000 ALTER TABLE `chaos_castle_survival_hall_of_fame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaos_castle_survival_ranking`
--

DROP TABLE IF EXISTS `chaos_castle_survival_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaos_castle_survival_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `score` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaos_castle_survival_ranking`
--

LOCK TABLES `chaos_castle_survival_ranking` WRITE;
/*!40000 ALTER TABLE `chaos_castle_survival_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `chaos_castle_survival_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_buff`
--

DROP TABLE IF EXISTS `character_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_buff` (
  `char_id` int(11) unsigned NOT NULL,
  `buff` smallint(6) unsigned NOT NULL,
  `effect_1` tinyint(4) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `effect_2` tinyint(4) unsigned NOT NULL,
  `value_2` int(11) NOT NULL,
  `effect_3` tinyint(4) unsigned NOT NULL,
  `value_3` int(11) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `flags` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_buff`
--

LOCK TABLES `character_buff` WRITE;
/*!40000 ALTER TABLE `character_buff` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_buff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_chat_block`
--

DROP TABLE IF EXISTS `character_chat_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_chat_block` (
  `char_id` int(11) unsigned NOT NULL,
  `blocked` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_chat_block`
--

LOCK TABLES `character_chat_block` WRITE;
/*!40000 ALTER TABLE `character_chat_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_chat_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_date`
--

DROP TABLE IF EXISTS `character_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_date` (
  `char_id` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_date`
--

LOCK TABLES `character_date` WRITE;
/*!40000 ALTER TABLE `character_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_deleted`
--

DROP TABLE IF EXISTS `character_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_deleted` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_deleted`
--

LOCK TABLES `character_deleted` WRITE;
/*!40000 ALTER TABLE `character_deleted` DISABLE KEYS */;
INSERT INTO `character_deleted` VALUES (1,1,'test'),(1,2,'test2'),(1,3,'test3');
/*!40000 ALTER TABLE `character_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_event_count`
--

DROP TABLE IF EXISTS `character_event_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_event_count` (
  `char_id` int(11) unsigned NOT NULL,
  `event_id` tinyint(4) unsigned NOT NULL,
  `count` tinyint(4) unsigned NOT NULL,
  `day` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`event_id`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_event_count`
--

LOCK TABLES `character_event_count` WRITE;
/*!40000 ALTER TABLE `character_event_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_event_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_friend`
--

DROP TABLE IF EXISTS `character_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_friend` (
  `char_id` int(11) unsigned NOT NULL,
  `friend_name` varchar(255) NOT NULL,
  PRIMARY KEY (`char_id`,`friend_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_friend`
--

LOCK TABLES `character_friend` WRITE;
/*!40000 ALTER TABLE `character_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gameoption`
--

DROP TABLE IF EXISTS `character_gameoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gameoption` (
  `char_id` int(11) unsigned NOT NULL,
  `game_option` tinyint(4) unsigned NOT NULL,
  `chat_window` tinyint(4) unsigned NOT NULL,
  `q_key` tinyint(4) unsigned NOT NULL,
  `w_key` tinyint(4) unsigned NOT NULL,
  `e_key` tinyint(4) unsigned NOT NULL,
  `r_key` tinyint(4) unsigned NOT NULL,
  `qwer_level` int(11) NOT NULL,
  `skill_bind_0` smallint(6) unsigned NOT NULL,
  `skill_bind_1` smallint(6) unsigned NOT NULL,
  `skill_bind_2` smallint(6) unsigned NOT NULL,
  `skill_bind_3` smallint(6) unsigned NOT NULL,
  `skill_bind_4` smallint(6) unsigned NOT NULL,
  `skill_bind_5` smallint(6) unsigned NOT NULL,
  `skill_bind_6` smallint(6) unsigned NOT NULL,
  `skill_bind_7` smallint(6) unsigned NOT NULL,
  `skill_bind_8` smallint(6) unsigned NOT NULL,
  `skill_bind_9` smallint(6) unsigned NOT NULL,
  `extra_data` bigint(20) unsigned NOT NULL,
  `change_skin` tinyint(4) unsigned NOT NULL,
  `additional_options` smallint(6) unsigned NOT NULL,
  `button_bind_1` tinyint(4) unsigned NOT NULL,
  `button_bind_2` tinyint(4) unsigned NOT NULL,
  `button_bind_3` tinyint(4) unsigned NOT NULL,
  `button_bind_4` tinyint(4) unsigned NOT NULL,
  `button_bind_5` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gameoption`
--

LOCK TABLES `character_gameoption` WRITE;
/*!40000 ALTER TABLE `character_gameoption` DISABLE KEYS */;
INSERT INTO `character_gameoption` VALUES (0,29,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,10,0,10,11,8,1),(4,29,0,255,255,255,255,0,65535,22,42,41,43,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(5,0,0,255,255,255,255,0,65535,9,14,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(6,0,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(7,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(8,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(9,0,0,3,3,3,3,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1);
/*!40000 ALTER TABLE `character_gameoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gens`
--

DROP TABLE IF EXISTS `character_gens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gens` (
  `char_id` int(11) unsigned NOT NULL,
  `family` tinyint(4) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `contribution` int(11) NOT NULL,
  `reward_date` bigint(20) NOT NULL,
  `join_date` bigint(20) NOT NULL,
  `left_date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gens`
--

LOCK TABLES `character_gens` WRITE;
/*!40000 ALTER TABLE `character_gens` DISABLE KEYS */;
INSERT INTO `character_gens` VALUES (4,0,14,0,0,0,0),(5,0,14,0,0,0,0),(6,0,14,0,0,0,0),(7,0,14,0,0,0,0),(8,0,14,0,0,0,0),(9,0,14,0,0,0,0);
/*!40000 ALTER TABLE `character_gens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gens_kill`
--

DROP TABLE IF EXISTS `character_gens_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gens_kill` (
  `char_id` int(11) unsigned NOT NULL,
  `killed_id` int(11) unsigned NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gens_kill`
--

LOCK TABLES `character_gens_kill` WRITE;
/*!40000 ALTER TABLE `character_gens_kill` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gens_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_helper` (
  `char_id` int(11) unsigned NOT NULL,
  `option_flag_1` int(11) unsigned NOT NULL,
  `option_flag_2` int(11) unsigned NOT NULL,
  `item_pick_flag` tinyint(4) unsigned NOT NULL,
  `hunting_range` tinyint(4) unsigned NOT NULL,
  `item_pick_range` tinyint(4) unsigned NOT NULL,
  `distance` smallint(6) unsigned NOT NULL,
  `attack_skill_1` smallint(6) unsigned NOT NULL,
  `attack_sec_skill_1` smallint(6) unsigned NOT NULL,
  `attack_sec_skill_2` smallint(6) unsigned NOT NULL,
  `attack_sec_delay_1` smallint(6) unsigned NOT NULL,
  `attack_sec_delay_2` smallint(6) unsigned NOT NULL,
  `buff_skill_1` smallint(6) unsigned NOT NULL,
  `buff_skill_2` smallint(6) unsigned NOT NULL,
  `buff_skill_3` smallint(6) unsigned NOT NULL,
  `time_space_casting` smallint(6) unsigned NOT NULL,
  `percent_autopot` tinyint(4) unsigned NOT NULL,
  `percent_autoheal` tinyint(4) unsigned NOT NULL,
  `percent_partyheal` tinyint(4) unsigned NOT NULL,
  `percent_drainlife` tinyint(4) unsigned NOT NULL,
  `item_list` smallint(6) unsigned NOT NULL,
  `buff_item_1` smallint(6) unsigned NOT NULL,
  `buff_item_2` smallint(6) unsigned NOT NULL,
  `buff_item_3` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_helper`
--

LOCK TABLES `character_helper` WRITE;
/*!40000 ALTER TABLE `character_helper` DISABLE KEYS */;
INSERT INTO `character_helper` VALUES (4,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(5,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(6,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(7,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(8,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(9,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535);
/*!40000 ALTER TABLE `character_helper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_hunting_record`
--

DROP TABLE IF EXISTS `character_hunting_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_hunting_record` (
  `char_id` int(11) unsigned NOT NULL,
  `world` smallint(6) unsigned NOT NULL,
  `year` smallint(6) unsigned NOT NULL,
  `month` tinyint(4) unsigned NOT NULL,
  `day` tinyint(4) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  `duration` int(11) unsigned NOT NULL,
  `damage` bigint(20) unsigned NOT NULL,
  `elemental_damage` bigint(20) unsigned NOT NULL,
  `healing` int(11) unsigned NOT NULL,
  `killed_count` int(11) unsigned NOT NULL,
  `earned_experience` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_hunting_record`
--

LOCK TABLES `character_hunting_record` WRITE;
/*!40000 ALTER TABLE `character_hunting_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_hunting_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_info`
--

DROP TABLE IF EXISTS `character_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_info` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL,
  `authority` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(4) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint(4) NOT NULL,
  `level` smallint(6) NOT NULL,
  `level_master` smallint(6) NOT NULL DEFAULT '0',
  `level_majestic` smallint(6) NOT NULL DEFAULT '0',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `experience_master` bigint(20) NOT NULL DEFAULT '0',
  `experience_majestic` bigint(20) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  `points_master` int(11) NOT NULL DEFAULT '0',
  `points_majestic` int(11) NOT NULL DEFAULT '0',
  `strength` int(11) unsigned NOT NULL,
  `agility` int(11) unsigned NOT NULL,
  `vitality` int(11) unsigned NOT NULL,
  `energy` int(11) unsigned NOT NULL,
  `leadership` int(11) unsigned NOT NULL,
  `world` smallint(6) unsigned NOT NULL,
  `world_x` smallint(6) NOT NULL,
  `world_y` smallint(6) NOT NULL,
  `direction` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `life` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `shield` int(11) NOT NULL DEFAULT '0',
  `stamina` int(11) NOT NULL DEFAULT '0',
  `add_fruit_points` int(11) NOT NULL DEFAULT '0',
  `dec_fruit_points` int(11) NOT NULL DEFAULT '0',
  `expanded_inventory` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `mute_time` bigint(20) NOT NULL DEFAULT '0',
  `admin_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `pk_level` tinyint(4) unsigned NOT NULL DEFAULT '3',
  `pk_count` int(11) NOT NULL DEFAULT '0',
  `pk_points` int(11) NOT NULL DEFAULT '0',
  `first_time` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `santa_claus_gift` bigint(20) NOT NULL DEFAULT '0',
  `personal_store_name` varchar(255) DEFAULT NULL,
  `personal_store_open` tinyint(4) NOT NULL DEFAULT '0',
  `goblin_points` int(11) unsigned NOT NULL DEFAULT '0',
  `last_use` bigint(20) NOT NULL DEFAULT '0',
  `kick_time` bigint(20) NOT NULL DEFAULT '0',
  `post_count` int(11) NOT NULL DEFAULT '0',
  `post_day` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `post_month` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ruud_money` int(11) unsigned NOT NULL DEFAULT '0',
  `hunting_log_visible` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `create_date` bigint(20) NOT NULL DEFAULT '0',
  `online` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `server_code` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_info`
--

LOCK TABLES `character_info` WRITE;
/*!40000 ALTER TABLE `character_info` DISABLE KEYS */;
INSERT INTO `character_info` VALUES (4,1,0,23,'test',0,400,400,400,0,0,0,20,0,0,32000,32000,32000,32000,0,0,172,129,2,249891972,98433,32609,0,52800,0,0,0,0,0,3,0,0,0,0,'U2VsbCBpdGVtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616708850,1615473057,0,0,0,0,0,0,0,65535),(5,1,0,7,'grow',1,400,400,400,0,0,0,0,0,0,32000,32000,32000,32000,0,2,215,84,3,250101829,65229,66398,0,35200,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616708617,1615503467,0,0,0,0,0,0,0,65535),(6,1,0,39,'guntest',2,400,400,400,0,0,0,0,0,0,32000,32000,32000,32000,0,0,146,140,3,250000000,100,80,0,31,0,0,0,0,0,0,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1615546540,1615546185,0,0,0,0,0,0,0,65535),(7,1,0,64,'dltest',3,1,0,0,0,0,0,0,0,0,26,20,20,15,25,0,150,127,2,0,90,40,129,23,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616710434,1616710393,0,0,0,0,0,0,0,65535),(8,1,0,48,'mgtest',4,1,0,0,0,0,0,0,0,0,26,26,26,26,0,0,140,122,5,0,110,60,130,23,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616710520,1616710497,0,0,0,0,0,0,0,65535),(9,1,0,160,'guntest2',5,1,0,0,0,0,0,0,0,0,20,18,20,25,0,51,53,225,1,0,100,80,103,31,0,0,0,0,0,3,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1616710633,1616710620,0,0,0,0,0,0,0,65535);
/*!40000 ALTER TABLE `character_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_item_delay`
--

DROP TABLE IF EXISTS `character_item_delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item_delay` (
  `char_id` int(11) unsigned NOT NULL,
  `item` smallint(6) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_item_delay`
--

LOCK TABLES `character_item_delay` WRITE;
/*!40000 ALTER TABLE `character_item_delay` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_item_delay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_jewel_bingo`
--

DROP TABLE IF EXISTS `character_jewel_bingo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_jewel_bingo` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `box` tinyint(4) unsigned NOT NULL,
  `count` tinyint(4) unsigned NOT NULL,
  `jewel` tinyint(4) unsigned NOT NULL,
  `score1` int(11) NOT NULL,
  `score2` int(11) NOT NULL,
  `score3` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_jewel_bingo`
--

LOCK TABLES `character_jewel_bingo` WRITE;
/*!40000 ALTER TABLE `character_jewel_bingo` DISABLE KEYS */;
INSERT INTO `character_jewel_bingo` VALUES (4,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `character_jewel_bingo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_jewel_bingo_grid`
--

DROP TABLE IF EXISTS `character_jewel_bingo_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_jewel_bingo_grid` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `slot` tinyint(4) unsigned NOT NULL,
  `value` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_jewel_bingo_grid`
--

LOCK TABLES `character_jewel_bingo_grid` WRITE;
/*!40000 ALTER TABLE `character_jewel_bingo_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_jewel_bingo_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_kick`
--

DROP TABLE IF EXISTS `character_kick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_kick` (
  `char_id` int(11) unsigned NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_kick`
--

LOCK TABLES `character_kick` WRITE;
/*!40000 ALTER TABLE `character_kick` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_kick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_labyrinth`
--

DROP TABLE IF EXISTS `character_labyrinth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth` (
  `char_id` int(11) unsigned NOT NULL,
  `stage` tinyint(4) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  `killed_monsters` int(11) NOT NULL,
  `earned_experience` bigint(20) NOT NULL,
  `completed_missions` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `goblin_state` tinyint(4) unsigned NOT NULL,
  `day_first` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_labyrinth`
--

LOCK TABLES `character_labyrinth` WRITE;
/*!40000 ALTER TABLE `character_labyrinth` DISABLE KEYS */;
INSERT INTO `character_labyrinth` VALUES (4,0,255,0,0,0,0,0,0,0,0),(5,0,255,0,0,0,0,0,0,0,0),(6,0,255,0,0,0,0,0,0,0,0),(7,0,255,0,0,0,0,0,0,0,0),(8,0,255,0,0,0,0,0,0,0,0),(9,0,255,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `character_labyrinth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_labyrinth_level`
--

DROP TABLE IF EXISTS `character_labyrinth_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth_level` (
  `char_id` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_labyrinth_level`
--

LOCK TABLES `character_labyrinth_level` WRITE;
/*!40000 ALTER TABLE `character_labyrinth_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_labyrinth_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_labyrinth_zone`
--

DROP TABLE IF EXISTS `character_labyrinth_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth_zone` (
  `char_id` int(11) unsigned NOT NULL,
  `idx` tinyint(4) unsigned NOT NULL,
  `subidx` tinyint(4) unsigned NOT NULL,
  `mission_id_1` tinyint(4) unsigned NOT NULL,
  `mission_id_2` tinyint(4) unsigned NOT NULL,
  `mission_id_3` tinyint(4) unsigned NOT NULL,
  `mission_id_4` tinyint(4) unsigned NOT NULL,
  `mission_id_5` tinyint(4) unsigned NOT NULL,
  `mission_count_1` int(11) NOT NULL,
  `mission_count_2` int(11) NOT NULL,
  `mission_count_3` int(11) NOT NULL,
  `mission_count_4` int(11) NOT NULL,
  `mission_count_5` int(11) NOT NULL,
  PRIMARY KEY (`char_id`,`idx`,`subidx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_labyrinth_zone`
--

LOCK TABLES `character_labyrinth_zone` WRITE;
/*!40000 ALTER TABLE `character_labyrinth_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_labyrinth_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mail`
--

DROP TABLE IF EXISTS `character_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mail` (
  `id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint(4) unsigned NOT NULL,
  `action` tinyint(4) unsigned NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int(11) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  `opened` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mail`
--

LOCK TABLES `character_mail` WRITE;
/*!40000 ALTER TABLE `character_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_majestic_stats`
--

DROP TABLE IF EXISTS `character_majestic_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_majestic_stats` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_majestic_stats`
--

LOCK TABLES `character_majestic_stats` WRITE;
/*!40000 ALTER TABLE `character_majestic_stats` DISABLE KEYS */;
INSERT INTO `character_majestic_stats` VALUES (4,0,0),(4,1,0),(4,2,0),(4,3,0),(5,0,0),(5,1,0),(5,2,0),(5,3,0),(6,0,0),(6,1,0),(6,2,0),(6,3,0),(7,0,0),(7,1,0),(7,2,0),(7,3,0),(8,0,0),(8,1,0),(8,2,0),(8,3,0),(9,0,0),(9,1,0),(9,2,0),(9,3,0);
/*!40000 ALTER TABLE `character_majestic_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_majestic_tree`
--

DROP TABLE IF EXISTS `character_majestic_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_majestic_tree` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `section` tinyint(4) unsigned NOT NULL,
  `id` smallint(6) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_majestic_tree`
--

LOCK TABLES `character_majestic_tree` WRITE;
/*!40000 ALTER TABLE `character_majestic_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_majestic_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mini_bomb`
--

DROP TABLE IF EXISTS `character_mini_bomb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mini_bomb` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `score` smallint(6) unsigned NOT NULL,
  `total_score` int(11) NOT NULL,
  `cdate` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mini_bomb`
--

LOCK TABLES `character_mini_bomb` WRITE;
/*!40000 ALTER TABLE `character_mini_bomb` DISABLE KEYS */;
INSERT INTO `character_mini_bomb` VALUES (4,1,0,0,1616141554),(5,1,0,0,1616706480),(6,1,0,0,0),(7,1,0,0,0),(8,1,0,0,0),(9,1,0,0,0);
/*!40000 ALTER TABLE `character_mini_bomb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mini_bomb_grid`
--

DROP TABLE IF EXISTS `character_mini_bomb_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mini_bomb_grid` (
  `char_id` int(11) unsigned NOT NULL,
  `cell` tinyint(4) unsigned NOT NULL,
  `value` tinyint(4) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mini_bomb_grid`
--

LOCK TABLES `character_mini_bomb_grid` WRITE;
/*!40000 ALTER TABLE `character_mini_bomb_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_mini_bomb_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_monster_soul`
--

DROP TABLE IF EXISTS `character_monster_soul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_monster_soul` (
  `char_id` int(11) unsigned NOT NULL,
  `type` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_monster_soul`
--

LOCK TABLES `character_monster_soul` WRITE;
/*!40000 ALTER TABLE `character_monster_soul` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_monster_soul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mu_roomy`
--

DROP TABLE IF EXISTS `character_mu_roomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mu_roomy` (
  `char_id` int(11) unsigned NOT NULL,
  `playing` tinyint(4) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `score` smallint(6) unsigned NOT NULL,
  `card_count` tinyint(4) unsigned NOT NULL,
  `special_card_count` tinyint(4) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mu_roomy`
--

LOCK TABLES `character_mu_roomy` WRITE;
/*!40000 ALTER TABLE `character_mu_roomy` DISABLE KEYS */;
INSERT INTO `character_mu_roomy` VALUES (4,0,0,0,0,0,1616141554),(5,0,0,0,0,0,1616706480),(6,0,0,0,0,0,1615546185),(7,0,0,0,0,0,1616710393),(8,0,0,0,0,0,1616710497),(9,0,0,0,0,0,1616710620);
/*!40000 ALTER TABLE `character_mu_roomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mu_roomy_deck`
--

DROP TABLE IF EXISTS `character_mu_roomy_deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mu_roomy_deck` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `slot` tinyint(4) unsigned NOT NULL,
  `color` tinyint(4) unsigned NOT NULL,
  `number` tinyint(4) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `play_slot` tinyint(4) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mu_roomy_deck`
--

LOCK TABLES `character_mu_roomy_deck` WRITE;
/*!40000 ALTER TABLE `character_mu_roomy_deck` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_mu_roomy_deck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_numeric_baseball`
--

DROP TABLE IF EXISTS `character_numeric_baseball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_numeric_baseball` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `number_1` tinyint(4) unsigned NOT NULL,
  `number_2` tinyint(4) unsigned NOT NULL,
  `number_3` tinyint(4) unsigned NOT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `strikes` varchar(255) DEFAULT NULL,
  `balls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_numeric_baseball`
--

LOCK TABLES `character_numeric_baseball` WRITE;
/*!40000 ALTER TABLE `character_numeric_baseball` DISABLE KEYS */;
INSERT INTO `character_numeric_baseball` VALUES (4,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(5,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(6,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(7,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(8,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(9,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 ');
/*!40000 ALTER TABLE `character_numeric_baseball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_quest_evo`
--

DROP TABLE IF EXISTS `character_quest_evo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_evo` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `kill_count_1` int(11) NOT NULL,
  `kill_count_2` int(11) NOT NULL,
  `kill_count_3` int(11) NOT NULL,
  `kill_count_4` int(11) NOT NULL,
  `kill_count_5` int(11) NOT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_quest_evo`
--

LOCK TABLES `character_quest_evo` WRITE;
/*!40000 ALTER TABLE `character_quest_evo` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_quest_evo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_quest_guided`
--

DROP TABLE IF EXISTS `character_quest_guided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_guided` (
  `char_id` int(11) unsigned NOT NULL,
  `quest` smallint(6) unsigned NOT NULL,
  `count` int(11) NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_quest_guided`
--

LOCK TABLES `character_quest_guided` WRITE;
/*!40000 ALTER TABLE `character_quest_guided` DISABLE KEYS */;
INSERT INTO `character_quest_guided` VALUES (4,11,0,1,0),(5,11,0,1,0),(6,13,0,1,0),(7,11,0,1,0),(8,11,0,1,0),(9,13,0,1,0);
/*!40000 ALTER TABLE `character_quest_guided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_quest_mu`
--

DROP TABLE IF EXISTS `character_quest_mu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_mu` (
  `char_id` int(11) unsigned NOT NULL,
  `quest_id` smallint(6) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `objective` smallint(6) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_quest_mu`
--

LOCK TABLES `character_quest_mu` WRITE;
/*!40000 ALTER TABLE `character_quest_mu` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_quest_mu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_restriction`
--

DROP TABLE IF EXISTS `character_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_restriction` (
  `char_id` int(11) unsigned NOT NULL,
  `restriction` int(11) unsigned NOT NULL,
  `time` bigint(20) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_restriction`
--

LOCK TABLES `character_restriction` WRITE;
/*!40000 ALTER TABLE `character_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_score`
--

DROP TABLE IF EXISTS `character_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_score` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `level` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_score`
--

LOCK TABLES `character_score` WRITE;
/*!40000 ALTER TABLE `character_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `skill` smallint(6) unsigned NOT NULL,
  `skill_level` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
INSERT INTO `character_skill` VALUES (4,0,41,0),(4,0,42,0),(4,0,43,0),(4,0,44,0),(4,0,47,0),(4,0,48,0),(4,0,67,0),(4,0,68,0),(4,0,69,0),(4,0,70,0),(4,0,71,0),(4,0,72,0),(5,0,5,0),(5,0,8,0),(5,0,9,0),(5,0,10,0),(5,0,12,0),(5,0,13,0),(5,0,14,0),(5,0,15,0),(5,0,16,0),(5,0,17,0),(5,0,38,0),(5,0,39,0),(5,0,45,0),(5,0,67,0),(5,0,68,0),(5,0,69,0),(5,0,70,0),(5,0,71,0),(5,0,72,0),(7,0,60,0),(7,0,67,0),(7,0,68,0),(7,0,69,0),(7,0,70,0),(7,0,71,0),(7,0,72,0),(7,0,74,0),(8,0,57,0),(8,0,67,0),(8,0,68,0),(8,0,69,0),(8,0,70,0),(8,0,71,0),(8,0,72,0),(8,0,73,0);
/*!40000 ALTER TABLE `character_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_statistics`
--

DROP TABLE IF EXISTS `character_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_statistics` (
  `char_id` int(11) unsigned NOT NULL,
  `statistic_id` int(11) unsigned NOT NULL,
  `count` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_statistics`
--

LOCK TABLES `character_statistics` WRITE;
/*!40000 ALTER TABLE `character_statistics` DISABLE KEYS */;
INSERT INTO `character_statistics` VALUES (4,0,16),(5,0,12);
/*!40000 ALTER TABLE `character_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_warp_favorite_list`
--

DROP TABLE IF EXISTS `character_warp_favorite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_warp_favorite_list` (
  `char_id` int(11) unsigned NOT NULL,
  `slot` tinyint(4) unsigned NOT NULL,
  `data` smallint(6) unsigned NOT NULL,
  `warp_id` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_warp_favorite_list`
--

LOCK TABLES `character_warp_favorite_list` WRITE;
/*!40000 ALTER TABLE `character_warp_favorite_list` DISABLE KEYS */;
INSERT INTO `character_warp_favorite_list` VALUES (4,0,65535,65535),(5,0,65535,65535),(6,0,65535,65535),(7,0,65535,65535),(8,0,65535,65535),(9,0,65535,65535);
/*!40000 ALTER TABLE `character_warp_favorite_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crywolf_data`
--

DROP TABLE IF EXISTS `crywolf_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crywolf_data` (
  `state` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crywolf_data`
--

LOCK TABLES `crywolf_data` WRITE;
/*!40000 ALTER TABLE `crywolf_data` DISABLE KEYS */;
INSERT INTO `crywolf_data` VALUES (0);
/*!40000 ALTER TABLE `crywolf_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_arka_war_kill`
--

DROP TABLE IF EXISTS `event_arka_war_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_arka_war_kill` (
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned NOT NULL,
  `world_x` smallint(6) NOT NULL,
  `world_y` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_arka_war_kill`
--

LOCK TABLES `event_arka_war_kill` WRITE;
/*!40000 ALTER TABLE `event_arka_war_kill` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_arka_war_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_arka_war_ranking`
--

DROP TABLE IF EXISTS `event_arka_war_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_arka_war_ranking` (
  `guild_id_01` int(11) unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_arka_war_ranking`
--

LOCK TABLES `event_arka_war_ranking` WRITE;
/*!40000 ALTER TABLE `event_arka_war_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_arka_war_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_castle_siege_kill`
--

DROP TABLE IF EXISTS `event_castle_siege_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_kill` (
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned NOT NULL,
  `world_x` smallint(6) NOT NULL,
  `world_y` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_castle_siege_kill`
--

LOCK TABLES `event_castle_siege_kill` WRITE;
/*!40000 ALTER TABLE `event_castle_siege_kill` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_castle_siege_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_castle_siege_ranking`
--

DROP TABLE IF EXISTS `event_castle_siege_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_ranking` (
  `guild_id` int(11) unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `character_count` int(11) NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_castle_siege_ranking`
--

LOCK TABLES `event_castle_siege_ranking` WRITE;
/*!40000 ALTER TABLE `event_castle_siege_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_castle_siege_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_castle_siege_time`
--

DROP TABLE IF EXISTS `event_castle_siege_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_time` (
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned NOT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int(11) unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `time` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_castle_siege_time`
--

LOCK TABLES `event_castle_siege_time` WRITE;
/*!40000 ALTER TABLE `event_castle_siege_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_castle_siege_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon_instance`
--

DROP TABLE IF EXISTS `event_dungeon_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon_instance` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon_instance`
--

LOCK TABLES `event_dungeon_instance` WRITE;
/*!40000 ALTER TABLE `event_dungeon_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_jewel_bingo_ranking`
--

DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_jewel_bingo_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `score1` int(11) NOT NULL,
  `score2` int(11) NOT NULL,
  `score3` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_jewel_bingo_ranking`
--

LOCK TABLES `event_jewel_bingo_ranking` WRITE;
/*!40000 ALTER TABLE `event_jewel_bingo_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_jewel_bingo_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_league`
--

DROP TABLE IF EXISTS `event_labyrinth_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_league` (
  `category` tinyint(4) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_class` tinyint(4) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `league_score` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_league`
--

LOCK TABLES `event_labyrinth_league` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_league` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_schedule`
--

DROP TABLE IF EXISTS `event_labyrinth_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_schedule` (
  `server` smallint(6) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `start_date` bigint(20) NOT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_schedule`
--

LOCK TABLES `event_labyrinth_schedule` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mini_bomb_ranking`
--

DROP TABLE IF EXISTS `event_mini_bomb_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mini_bomb_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned NOT NULL,
  `score` smallint(6) unsigned NOT NULL,
  `bombs_founded` tinyint(4) unsigned NOT NULL,
  `bombs_failed` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mini_bomb_ranking`
--

LOCK TABLES `event_mini_bomb_ranking` WRITE;
/*!40000 ALTER TABLE `event_mini_bomb_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mini_bomb_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mu_roomy_ranking`
--

DROP TABLE IF EXISTS `event_mu_roomy_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mu_roomy_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `score` smallint(6) unsigned NOT NULL,
  `remain_card` tinyint(4) unsigned NOT NULL,
  `remain_special_card` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mu_roomy_ranking`
--

LOCK TABLES `event_mu_roomy_ranking` WRITE;
/*!40000 ALTER TABLE `event_mu_roomy_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mu_roomy_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_numeric_baseball_ranking`
--

DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_numeric_baseball_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_numeric_baseball_ranking`
--

LOCK TABLES `event_numeric_baseball_ranking` WRITE;
/*!40000 ALTER TABLE `event_numeric_baseball_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_numeric_baseball_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_race_ranking`
--

DROP TABLE IF EXISTS `event_race_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_race_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `race` varchar(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_race_ranking`
--

LOCK TABLES `event_race_ranking` WRITE;
/*!40000 ALTER TABLE `event_race_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_race_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_ranking`
--

DROP TABLE IF EXISTS `event_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_ranking` (
  `event_id` tinyint(4) unsigned NOT NULL,
  `event_ground` tinyint(4) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `score` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_ranking`
--

LOCK TABLES `event_ranking` WRITE;
/*!40000 ALTER TABLE `event_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_ranking_labyrinth`
--

DROP TABLE IF EXISTS `event_ranking_labyrinth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_ranking_labyrinth` (
  `char_id` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `stage` tinyint(4) unsigned NOT NULL,
  `index` tinyint(4) unsigned NOT NULL,
  `killed_monsters` int(11) NOT NULL,
  `earned_experience` bigint(20) NOT NULL,
  `completed_missions` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_ranking_labyrinth`
--

LOCK TABLES `event_ranking_labyrinth` WRITE;
/*!40000 ALTER TABLE `event_ranking_labyrinth` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_ranking_labyrinth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_scramble_ranking`
--

DROP TABLE IF EXISTS `event_scramble_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_scramble_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `shuffle_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_scramble_ranking`
--

LOCK TABLES `event_scramble_ranking` WRITE;
/*!40000 ALTER TABLE `event_scramble_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_scramble_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_stage`
--

DROP TABLE IF EXISTS `event_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_stage` (
  `event_id` tinyint(4) unsigned NOT NULL,
  `stage` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_stage`
--

LOCK TABLES `event_stage` WRITE;
/*!40000 ALTER TABLE `event_stage` DISABLE KEYS */;
INSERT INTO `event_stage` VALUES (16,0);
/*!40000 ALTER TABLE `event_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_ranking` (
  `family` tinyint(4) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `ranking` int(11) NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`family`,`char_id`)
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
-- Table structure for table `guild_list`
--

DROP TABLE IF EXISTS `guild_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_list` (
  `guid` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `emblem` varchar(255) DEFAULT NULL,
  `hostil` int(11) unsigned NOT NULL,
  `alliance` int(11) unsigned NOT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_list`
--

LOCK TABLES `guild_list` WRITE;
/*!40000 ALTER TABLE `guild_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_matching`
--

DROP TABLE IF EXISTS `guild_matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_matching` (
  `guild_id` int(11) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `interest_type` tinyint(4) unsigned NOT NULL,
  `level_range` tinyint(4) unsigned NOT NULL,
  `class_type` smallint(6) unsigned NOT NULL,
  `board_number` int(11) unsigned NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_matching`
--

LOCK TABLES `guild_matching` WRITE;
/*!40000 ALTER TABLE `guild_matching` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_matching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_members`
--

DROP TABLE IF EXISTS `guild_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_members` (
  `guild_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `ranking` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`guild_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_members`
--

LOCK TABLES `guild_members` WRITE;
/*!40000 ALTER TABLE `guild_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_score`
--

DROP TABLE IF EXISTS `guild_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_score` (
  `guild_id` int(11) unsigned NOT NULL,
  `score` bigint(20) NOT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_score`
--

LOCK TABLES `guild_score` WRITE;
/*!40000 ALTER TABLE `guild_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_data`
--

DROP TABLE IF EXISTS `item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_data` (
  `id` int(10) unsigned NOT NULL,
  `box` tinyint(3) unsigned NOT NULL,
  `slot` int(10) unsigned NOT NULL,
  `entry` smallint(5) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `serial` int(10) unsigned NOT NULL,
  `serial_cash_shop` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `durability_state` int(11) NOT NULL DEFAULT '0',
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `option_380` tinyint(3) unsigned NOT NULL,
  `harmony` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `socket_bonus` tinyint(3) unsigned NOT NULL,
  `locked` tinyint(3) unsigned NOT NULL,
  `data_1` int(11) NOT NULL DEFAULT '0',
  `data_2` int(11) NOT NULL DEFAULT '0',
  `data_3` int(11) NOT NULL DEFAULT '0',
  `personal_store_price` int(10) unsigned NOT NULL DEFAULT '0',
  `personal_store_job` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personal_store_jos` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personal_store_joc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `expire_date` bigint(20) NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`box`,`slot`) USING BTREE,
  UNIQUE KEY `DupeInv` (`server`,`serial`,`serial_cash_shop`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `box` (`box`) USING BTREE,
  KEY `slot` (`slot`) USING BTREE,
  KEY `idx_id_and_box` (`id`,`box`) USING BTREE,
  KEY `idx_id_and_box_and_slot` (`id`,`box`,`slot`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_data`
--

LOCK TABLES `item_data` WRITE;
/*!40000 ALTER TABLE `item_data` DISABLE KEYS */;
INSERT INTO `item_data` VALUES (4,1,0,29,0,25,0,0,80,0,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,1,36,0,26,0,0,90,0,1,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,2,3630,0,21,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,3,4142,0,20,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,4,4654,0,23,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,5,5166,0,24,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,6,5678,0,22,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(4,1,17,6188,0,32,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,0,2570,0,53,0,15,229,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,1,3092,0,49,0,0,51,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,2,3636,0,46,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,3,4148,0,47,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,4,4660,0,50,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,5,5172,0,51,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,6,5684,0,48,0,0,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,1,28,7698,0,41,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(5,12,0,7717,0,45,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,5600,0,0,0,1616792939,0),(5,12,1,3096,0,52,0,0,90,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,100500,0,0,0,1616792990,0),(7,1,0,1,0,59,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,1,3072,0,60,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,2,3610,0,78,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,3,4122,0,79,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,4,4634,0,80,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,5,5146,0,81,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,6,5658,0,82,0,5,62,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,7,6274,0,66,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,12,6732,0,61,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,13,6736,0,62,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,14,6763,0,63,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,15,6778,0,64,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,16,6779,0,65,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142393,0),(7,1,17,7171,0,67,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,18,7171,0,68,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,19,7171,0,69,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,20,7171,0,70,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,21,7171,0,71,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,22,7174,0,72,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,23,7174,0,73,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,24,7174,0,74,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,25,7174,0,75,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,26,7174,0,76,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(7,1,27,7454,0,77,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,0,1,0,83,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,1,3072,0,84,0,0,22,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,3,4111,0,102,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,4,4623,0,103,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,5,5135,0,104,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,6,5647,0,105,0,5,86,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,7,6278,0,90,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,12,6732,0,85,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,13,6736,0,86,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,14,6763,0,87,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,15,6778,0,88,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,16,6779,0,89,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142497,0),(8,1,17,7171,0,91,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,18,7171,0,92,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,19,7171,0,93,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,20,7171,0,94,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,21,7171,0,95,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,22,7174,0,96,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,23,7174,0,97,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,24,7174,0,98,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,25,7174,0,99,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,26,7174,0,100,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(8,1,27,7454,0,101,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,0,2090,0,106,0,0,70,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,1,2090,0,107,0,0,70,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,2,3792,0,108,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,3,4304,0,109,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,4,4816,0,110,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,5,5328,0,111,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,6,5840,0,112,0,5,48,0,0,1,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,7,6277,0,113,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,12,6732,0,114,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,13,6736,0,115,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,14,6763,0,116,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,15,6778,0,117,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,16,6779,0,118,0,0,255,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,1617142620,0),(9,1,17,7171,0,119,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,18,7171,0,120,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,19,7171,0,121,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,20,7171,0,122,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,21,7171,0,123,0,0,10,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,22,7174,0,124,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,23,7174,0,125,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,24,7174,0,126,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,25,7174,0,127,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,26,7174,0,128,0,0,30,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0),(9,1,27,7454,0,129,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,255,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_data_my`
--

DROP TABLE IF EXISTS `item_data_my`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_data_my` (
  `id` int(11) unsigned NOT NULL,
  `box` tinyint(4) unsigned NOT NULL,
  `slot` int(11) unsigned NOT NULL,
  `entry` smallint(6) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `serial_cash_shop` int(11) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `durability` tinyint(4) unsigned NOT NULL,
  `durability_state` int(11) NOT NULL,
  `skill` tinyint(4) unsigned NOT NULL,
  `luck` tinyint(4) unsigned NOT NULL,
  `option` tinyint(4) unsigned NOT NULL,
  `excellent` tinyint(4) unsigned NOT NULL,
  `ancient` tinyint(4) unsigned NOT NULL,
  `option_380` tinyint(4) unsigned NOT NULL,
  `harmony` tinyint(4) unsigned NOT NULL,
  `socket_1` smallint(6) unsigned NOT NULL,
  `socket_2` smallint(6) unsigned NOT NULL,
  `socket_3` smallint(6) unsigned NOT NULL,
  `socket_4` smallint(6) unsigned NOT NULL,
  `socket_5` smallint(6) unsigned NOT NULL,
  `socket_bonus` tinyint(4) unsigned NOT NULL,
  `locked` tinyint(4) unsigned NOT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL,
  `personal_store_price` int(11) unsigned NOT NULL,
  `personal_store_job` smallint(6) unsigned NOT NULL,
  `personal_store_jos` smallint(6) unsigned NOT NULL,
  `personal_store_joc` smallint(6) unsigned NOT NULL,
  `expire_date` bigint(20) NOT NULL,
  `flags` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`,`box`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_data_my`
--

LOCK TABLES `item_data_my` WRITE;
/*!40000 ALTER TABLE `item_data_my` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_data_my` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pentagram_data`
--

DROP TABLE IF EXISTS `item_pentagram_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pentagram_data` (
  `id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `index` tinyint(4) unsigned NOT NULL,
  `attribute` tinyint(4) unsigned NOT NULL,
  `item_type` tinyint(4) unsigned NOT NULL,
  `item_index` smallint(6) unsigned NOT NULL,
  `item_level` tinyint(4) unsigned NOT NULL,
  `option_index_rank_1` tinyint(4) unsigned NOT NULL,
  `option_level_rank_1` tinyint(4) unsigned NOT NULL,
  `option_index_rank_2` tinyint(4) unsigned NOT NULL,
  `option_level_rank_2` tinyint(4) unsigned NOT NULL,
  `option_index_rank_3` tinyint(4) unsigned NOT NULL,
  `option_level_rank_3` tinyint(4) unsigned NOT NULL,
  `option_index_rank_4` tinyint(4) unsigned NOT NULL,
  `option_level_rank_4` tinyint(4) unsigned NOT NULL,
  `option_index_rank_5` tinyint(4) unsigned NOT NULL,
  `option_level_rank_5` tinyint(4) unsigned NOT NULL,
  `serial_server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `flags` int(11) unsigned NOT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pentagram_data`
--

LOCK TABLES `item_pentagram_data` WRITE;
/*!40000 ALTER TABLE `item_pentagram_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_pentagram_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_recovery`
--

DROP TABLE IF EXISTS `item_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_recovery` (
  `char_id` int(11) unsigned NOT NULL,
  `item` smallint(6) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `durability` tinyint(4) unsigned NOT NULL,
  `skill` tinyint(4) unsigned NOT NULL,
  `luck` tinyint(4) unsigned NOT NULL,
  `option` tinyint(4) unsigned NOT NULL,
  `excellent` tinyint(4) unsigned NOT NULL,
  `ancient` tinyint(4) unsigned NOT NULL,
  `harmony` tinyint(4) unsigned NOT NULL,
  `option_380` tinyint(4) unsigned NOT NULL,
  `socket_1` smallint(6) unsigned NOT NULL,
  `socket_2` smallint(6) unsigned NOT NULL,
  `socket_3` smallint(6) unsigned NOT NULL,
  `socket_4` smallint(6) unsigned NOT NULL,
  `socket_5` smallint(6) unsigned NOT NULL,
  `socket_bonus` tinyint(4) unsigned NOT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL,
  `serial_server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `serial_cash_shop` int(11) unsigned NOT NULL,
  `flags` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_recovery`
--

LOCK TABLES `item_recovery` WRITE;
/*!40000 ALTER TABLE `item_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_respawn`
--

DROP TABLE IF EXISTS `monster_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_respawn` (
  `server` smallint(6) unsigned NOT NULL,
  `guid` smallint(6) unsigned NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`server`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_respawn`
--

LOCK TABLES `monster_respawn` WRITE;
/*!40000 ALTER TABLE `monster_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `guid` smallint(6) unsigned NOT NULL,
  `server` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_member`
--

DROP TABLE IF EXISTS `party_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_member` (
  `server` smallint(6) unsigned NOT NULL,
  `party` smallint(6) unsigned NOT NULL,
  `member` int(11) unsigned NOT NULL,
  `position` tinyint(4) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_member`
--

LOCK TABLES `party_member` WRITE;
/*!40000 ALTER TABLE `party_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serial_check`
--

DROP TABLE IF EXISTS `serial_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_check` (
  `server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(11) unsigned NOT NULL,
  PRIMARY KEY (`serial`,`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serial_check`
--

LOCK TABLES `serial_check` WRITE;
/*!40000 ALTER TABLE `serial_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `serial_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_signal`
--

DROP TABLE IF EXISTS `server_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_signal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server` smallint(6) unsigned NOT NULL,
  `signal` smallint(6) unsigned NOT NULL,
  `data_1` int(11) NOT NULL,
  `data_2` int(11) NOT NULL,
  `data_3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_signal`
--

LOCK TABLES `server_signal` WRITE;
/*!40000 ALTER TABLE `server_signal` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_signal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tormented_square_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `tormented_square_survival_hall_of_fame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_hall_of_fame` (
  `char_id_1` int(11) unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`char_id_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tormented_square_survival_hall_of_fame`
--

LOCK TABLES `tormented_square_survival_hall_of_fame` WRITE;
/*!40000 ALTER TABLE `tormented_square_survival_hall_of_fame` DISABLE KEYS */;
/*!40000 ALTER TABLE `tormented_square_survival_hall_of_fame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tormented_square_survival_ranking`
--

DROP TABLE IF EXISTS `tormented_square_survival_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_ranking` (
  `type` tinyint(4) unsigned NOT NULL,
  `ranking` int(11) NOT NULL,
  `char_id_1` int(11) unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tormented_square_survival_ranking`
--

LOCK TABLES `tormented_square_survival_ranking` WRITE;
/*!40000 ALTER TABLE `tormented_square_survival_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tormented_square_survival_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tormented_square_survival_team`
--

DROP TABLE IF EXISTS `tormented_square_survival_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_team` (
  `char_id_1` int(11) unsigned NOT NULL,
  `char_id_2` int(11) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `type` tinyint(4) unsigned NOT NULL,
  `enter_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tormented_square_survival_team`
--

LOCK TABLES `tormented_square_survival_team` WRITE;
/*!40000 ALTER TABLE `tormented_square_survival_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `tormented_square_survival_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  1:35:51
