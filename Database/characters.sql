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
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` tinyint(4) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `flags` tinyint(4) unsigned DEFAULT NULL,
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
  `account_id` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned DEFAULT NULL,
  `option` int(11) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
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
  `account_id` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned DEFAULT NULL,
  `option` int(11) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `gift` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
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
  `vip_status` int(11) DEFAULT NULL,
  `vip_duration` bigint(20) DEFAULT NULL,
  `expanded_warehouse` tinyint(4) unsigned DEFAULT NULL,
  `expanded_warehouse_time` bigint(20) DEFAULT NULL,
  `special_character` smallint(6) unsigned DEFAULT NULL,
  `credits` int(11) unsigned DEFAULT NULL,
  `web_credits` int(11) unsigned DEFAULT NULL,
  `current_character` int(11) unsigned DEFAULT NULL,
  `current_type` tinyint(4) unsigned DEFAULT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int(11) unsigned DEFAULT NULL,
  `current_server` smallint(6) unsigned DEFAULT NULL,
  `cash_shop_discount_wc` tinyint(4) unsigned DEFAULT NULL,
  `cash_shop_discount_gp` tinyint(4) unsigned DEFAULT NULL,
  `cash_shop_discount_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_data`
--

LOCK TABLES `account_data` WRITE;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
INSERT INTO `account_data` VALUES (1,-1,0,0,0,0,0,NULL,4,0,'192.168.1.60','B4:2E:99:C7:D5:A3',1519512988,0,NULL,NULL,NULL),(2,-1,0,0,0,0,0,NULL,6,0,'192.168.1.60','B4:2E:99:C7:D5:A3',1519512988,0,NULL,NULL,NULL);
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
  `money` int(11) unsigned DEFAULT NULL,
  `password` smallint(6) unsigned DEFAULT NULL,
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
  `attribute` tinyint(4) unsigned DEFAULT NULL,
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
  `status` tinyint(4) unsigned DEFAULT NULL,
  `tax_hunt` int(11) DEFAULT NULL,
  `tax_chaos` tinyint(4) unsigned DEFAULT NULL,
  `tax_store` tinyint(4) unsigned DEFAULT NULL,
  `hunt_allowed` tinyint(4) DEFAULT NULL,
  `money` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castle_siege_data`
--

LOCK TABLES `castle_siege_data` WRITE;
/*!40000 ALTER TABLE `castle_siege_data` DISABLE KEYS */;
INSERT INTO `castle_siege_data` VALUES (0,0,NULL,NULL,NULL,NULL,NULL);
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
  `score` int(11) DEFAULT NULL,
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
  `id` tinyint(4) unsigned DEFAULT NULL,
  `defense_level` tinyint(4) unsigned DEFAULT NULL,
  `regen_level` tinyint(4) unsigned DEFAULT NULL,
  `life_level` tinyint(4) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
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
  `marks` int(11) unsigned DEFAULT NULL,
  `register_id` int(11) unsigned DEFAULT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `level_master` smallint(6) unsigned DEFAULT NULL,
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
  `score` int(11) DEFAULT NULL,
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
  `score` bigint(20) DEFAULT NULL,
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
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` tinyint(4) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `flags` tinyint(4) unsigned DEFAULT NULL,
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
  `date` bigint(20) DEFAULT NULL,
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
  `count` tinyint(4) unsigned DEFAULT NULL,
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
  `game_option` tinyint(4) unsigned DEFAULT NULL,
  `chat_window` tinyint(4) unsigned DEFAULT NULL,
  `q_key` tinyint(4) unsigned DEFAULT NULL,
  `w_key` tinyint(4) unsigned DEFAULT NULL,
  `e_key` tinyint(4) unsigned DEFAULT NULL,
  `r_key` tinyint(4) unsigned DEFAULT NULL,
  `qwer_level` int(11) DEFAULT NULL,
  `skill_bind_0` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_1` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_2` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_3` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_4` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_5` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_6` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_7` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_8` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_9` smallint(6) unsigned DEFAULT NULL,
  `extra_data` bigint(20) unsigned DEFAULT NULL,
  `change_skin` tinyint(4) unsigned DEFAULT NULL,
  `additional_options` smallint(6) unsigned DEFAULT NULL,
  `button_bind_1` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_2` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_3` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_4` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_5` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gameoption`
--

LOCK TABLES `character_gameoption` WRITE;
/*!40000 ALTER TABLE `character_gameoption` DISABLE KEYS */;
INSERT INTO `character_gameoption` VALUES (0,29,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,54794,0,10,11,8,1),(4,29,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(5,0,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1),(6,0,0,255,255,255,255,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,1,778,0,10,11,8,1);
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
  `level` tinyint(4) unsigned DEFAULT NULL,
  `contribution` int(11) DEFAULT NULL,
  `reward_date` bigint(20) DEFAULT NULL,
  `join_date` bigint(20) DEFAULT NULL,
  `left_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gens`
--

LOCK TABLES `character_gens` WRITE;
/*!40000 ALTER TABLE `character_gens` DISABLE KEYS */;
INSERT INTO `character_gens` VALUES (4,0,14,0,0,0,0),(5,0,14,0,0,0,0),(6,0,14,0,0,0,0);
/*!40000 ALTER TABLE `character_gens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gens_kill`
--

DROP TABLE IF EXISTS `character_gens_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gens_kill` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `killed_id` int(11) unsigned DEFAULT NULL,
  `count` int(11) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
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
  `option_flag_1` int(11) unsigned DEFAULT NULL,
  `option_flag_2` int(11) unsigned DEFAULT NULL,
  `item_pick_flag` tinyint(4) unsigned DEFAULT NULL,
  `hunting_range` tinyint(4) unsigned DEFAULT NULL,
  `item_pick_range` tinyint(4) unsigned DEFAULT NULL,
  `distance` smallint(6) unsigned DEFAULT NULL,
  `attack_skill_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_skill_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_skill_2` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_delay_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_delay_2` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_1` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_2` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_3` smallint(6) unsigned DEFAULT NULL,
  `time_space_casting` smallint(6) unsigned DEFAULT NULL,
  `percent_autopot` tinyint(4) unsigned DEFAULT NULL,
  `percent_autoheal` tinyint(4) unsigned DEFAULT NULL,
  `percent_partyheal` tinyint(4) unsigned DEFAULT NULL,
  `percent_drainlife` tinyint(4) unsigned DEFAULT NULL,
  `item_list` smallint(6) unsigned DEFAULT NULL,
  `buff_item_1` smallint(6) unsigned DEFAULT NULL,
  `buff_item_2` smallint(6) unsigned DEFAULT NULL,
  `buff_item_3` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_helper`
--

LOCK TABLES `character_helper` WRITE;
/*!40000 ALTER TABLE `character_helper` DISABLE KEYS */;
INSERT INTO `character_helper` VALUES (4,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(5,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535),(6,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,50,50,50,50,0,65535,65535,65535);
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
  `year` smallint(6) unsigned DEFAULT NULL,
  `month` tinyint(4) unsigned DEFAULT NULL,
  `day` tinyint(4) unsigned DEFAULT NULL,
  `level` int(11) unsigned DEFAULT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  `damage` bigint(20) unsigned DEFAULT NULL,
  `elemental_damage` bigint(20) unsigned DEFAULT NULL,
  `healing` int(11) unsigned DEFAULT NULL,
  `killed_count` int(11) unsigned DEFAULT NULL,
  `earned_experience` bigint(20) unsigned DEFAULT NULL,
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
  `account_id` int(11) unsigned DEFAULT NULL,
  `authority` tinyint(4) unsigned DEFAULT NULL,
  `race` tinyint(4) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `level_master` smallint(6) DEFAULT NULL,
  `level_majestic` smallint(6) DEFAULT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `experience_master` bigint(20) DEFAULT NULL,
  `experience_majestic` bigint(20) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `points_master` int(11) DEFAULT NULL,
  `points_majestic` int(11) DEFAULT NULL,
  `strength` int(11) unsigned DEFAULT NULL,
  `agility` int(11) unsigned DEFAULT NULL,
  `vitality` int(11) unsigned DEFAULT NULL,
  `energy` int(11) unsigned DEFAULT NULL,
  `leadership` int(11) unsigned DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) unsigned DEFAULT NULL,
  `money` int(11) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `add_fruit_points` int(11) DEFAULT NULL,
  `dec_fruit_points` int(11) DEFAULT NULL,
  `expanded_inventory` tinyint(4) unsigned DEFAULT NULL,
  `mute_time` bigint(20) DEFAULT NULL,
  `admin_flags` int(11) unsigned DEFAULT NULL,
  `pk_level` tinyint(4) unsigned DEFAULT NULL,
  `pk_count` int(11) DEFAULT NULL,
  `pk_points` int(11) DEFAULT NULL,
  `first_time` tinyint(4) unsigned DEFAULT NULL,
  `santa_claus_gift` bigint(20) DEFAULT NULL,
  `personal_store_name` varchar(255) DEFAULT NULL,
  `personal_store_open` tinyint(4) DEFAULT NULL,
  `goblin_points` int(11) unsigned DEFAULT NULL,
  `last_use` bigint(20) DEFAULT NULL,
  `kick_time` bigint(20) DEFAULT NULL,
  `post_count` int(11) DEFAULT NULL,
  `post_day` tinyint(4) unsigned DEFAULT NULL,
  `post_month` tinyint(4) unsigned DEFAULT NULL,
  `ruud_money` int(11) unsigned DEFAULT NULL,
  `hunting_log_visible` tinyint(4) unsigned DEFAULT NULL,
  `create_date` bigint(20) DEFAULT NULL,
  `online` tinyint(4) DEFAULT NULL,
  `server_code` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_info`
--

LOCK TABLES `character_info` WRITE;
/*!40000 ALTER TABLE `character_info` DISABLE KEYS */;
INSERT INTO `character_info` VALUES (4,1,0,16,'test',0,1,0,0,0,0,0,30,0,0,60,60,50,50,0,0,143,122,3,0,185,80,0,86,0,0,0,0,0,0,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1615619342,1615473057,0,0,0,0,0,NULL,0,65535),(5,1,0,112,'grow',1,1,0,0,0,0,0,0,0,0,30,30,25,24,0,0,145,140,5,0,110,40,0,42,0,0,0,0,0,0,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1615546544,1615503467,0,0,0,0,0,NULL,0,65535),(6,2,0,160,'guntest',0,1,0,0,0,0,0,0,0,0,20,18,20,25,0,0,146,140,3,0,100,80,0,31,0,0,0,0,0,0,0,0,0,0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',0,0,1615546540,1615546185,0,0,0,0,0,NULL,0,65535);
/*!40000 ALTER TABLE `character_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_item_delay`
--

DROP TABLE IF EXISTS `character_item_delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item_delay` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `item` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `box` tinyint(4) unsigned DEFAULT NULL,
  `count` tinyint(4) unsigned DEFAULT NULL,
  `jewel` tinyint(4) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_jewel_bingo`
--

LOCK TABLES `character_jewel_bingo` WRITE;
/*!40000 ALTER TABLE `character_jewel_bingo` DISABLE KEYS */;
INSERT INTO `character_jewel_bingo` VALUES (4,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0);
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `value` tinyint(4) unsigned DEFAULT NULL,
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
  `stage` tinyint(4) unsigned DEFAULT NULL,
  `id` tinyint(4) unsigned DEFAULT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `status` tinyint(4) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `goblin_state` tinyint(4) unsigned DEFAULT NULL,
  `day_first` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_labyrinth`
--

LOCK TABLES `character_labyrinth` WRITE;
/*!40000 ALTER TABLE `character_labyrinth` DISABLE KEYS */;
INSERT INTO `character_labyrinth` VALUES (4,0,255,0,0,0,0,0,0,0,0),(5,0,255,0,0,0,0,0,0,0,0),(6,0,255,0,0,0,0,0,0,0,0);
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
  `level` smallint(6) unsigned DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
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
  `mission_id_1` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_2` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_3` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_4` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_5` tinyint(4) unsigned DEFAULT NULL,
  `mission_count_1` int(11) DEFAULT NULL,
  `mission_count_2` int(11) DEFAULT NULL,
  `mission_count_3` int(11) DEFAULT NULL,
  `mission_count_4` int(11) DEFAULT NULL,
  `mission_count_5` int(11) DEFAULT NULL,
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
  `char_id` int(11) unsigned DEFAULT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint(4) unsigned DEFAULT NULL,
  `action` tinyint(4) unsigned DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int(11) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `opened` tinyint(4) unsigned DEFAULT NULL,
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
  `level` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_majestic_stats`
--

LOCK TABLES `character_majestic_stats` WRITE;
/*!40000 ALTER TABLE `character_majestic_stats` DISABLE KEYS */;
INSERT INTO `character_majestic_stats` VALUES (4,0,0),(4,1,0),(4,2,0),(4,3,0),(5,0,0),(5,1,0),(5,2,0),(5,3,0),(6,0,0),(6,1,0),(6,2,0),(6,3,0);
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `section` tinyint(4) unsigned DEFAULT NULL,
  `id` smallint(6) unsigned NOT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `cdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mini_bomb`
--

LOCK TABLES `character_mini_bomb` WRITE;
/*!40000 ALTER TABLE `character_mini_bomb` DISABLE KEYS */;
INSERT INTO `character_mini_bomb` VALUES (4,1,0,0,1615500359),(5,1,0,0,1615546141),(6,1,0,0,0);
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
  `cell` tinyint(4) unsigned DEFAULT NULL,
  `value` tinyint(4) unsigned DEFAULT NULL,
  `status` tinyint(4) unsigned DEFAULT NULL,
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
  `type` int(11) unsigned DEFAULT NULL,
  `id` int(11) unsigned NOT NULL,
  `amount` int(11) DEFAULT NULL,
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
  `playing` tinyint(4) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `card_count` tinyint(4) unsigned DEFAULT NULL,
  `special_card_count` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_mu_roomy`
--

LOCK TABLES `character_mu_roomy` WRITE;
/*!40000 ALTER TABLE `character_mu_roomy` DISABLE KEYS */;
INSERT INTO `character_mu_roomy` VALUES (4,0,0,0,0,0,1615473057),(5,0,0,0,0,0,1615503467),(6,0,0,0,0,0,1615546185);
/*!40000 ALTER TABLE `character_mu_roomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_mu_roomy_deck`
--

DROP TABLE IF EXISTS `character_mu_roomy_deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mu_roomy_deck` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `color` tinyint(4) unsigned DEFAULT NULL,
  `number` tinyint(4) unsigned DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `play_slot` tinyint(4) unsigned DEFAULT NULL
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `number_1` tinyint(4) unsigned DEFAULT NULL,
  `number_2` tinyint(4) unsigned DEFAULT NULL,
  `number_3` tinyint(4) unsigned DEFAULT NULL,
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
INSERT INTO `character_numeric_baseball` VALUES (4,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(5,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 '),(6,0,0,255,255,255,'255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 ','0 0 0 0 0 ','0 0 0 0 0 ');
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `kill_count_1` int(11) DEFAULT NULL,
  `kill_count_2` int(11) DEFAULT NULL,
  `kill_count_3` int(11) DEFAULT NULL,
  `kill_count_4` int(11) DEFAULT NULL,
  `kill_count_5` int(11) DEFAULT NULL,
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
  `count` int(11) DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_quest_guided`
--

LOCK TABLES `character_quest_guided` WRITE;
/*!40000 ALTER TABLE `character_quest_guided` DISABLE KEYS */;
INSERT INTO `character_quest_guided` VALUES (4,11,0,1,0),(5,11,0,1,0),(6,13,0,1,0);
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `objective` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
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
  `restriction` int(11) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `skill` smallint(6) unsigned NOT NULL,
  `skill_level` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`skill`)
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
-- Table structure for table `character_statistics`
--

DROP TABLE IF EXISTS `character_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_statistics` (
  `char_id` int(11) unsigned NOT NULL,
  `statistic_id` int(11) unsigned NOT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_statistics`
--

LOCK TABLES `character_statistics` WRITE;
/*!40000 ALTER TABLE `character_statistics` DISABLE KEYS */;
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
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `data` smallint(6) unsigned DEFAULT NULL,
  `warp_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_warp_favorite_list`
--

LOCK TABLES `character_warp_favorite_list` WRITE;
/*!40000 ALTER TABLE `character_warp_favorite_list` DISABLE KEYS */;
INSERT INTO `character_warp_favorite_list` VALUES (4,0,65535,65535),(5,0,65535,65535),(6,0,65535,65535);
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
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
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
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int(11) DEFAULT NULL
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
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
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
  `character_count` int(11) DEFAULT NULL,
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
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int(11) unsigned DEFAULT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL
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
  `id` tinyint(4) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
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
  `char_class` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `league_score` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
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
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `bombs_founded` tinyint(4) unsigned DEFAULT NULL,
  `bombs_failed` tinyint(4) unsigned DEFAULT NULL,
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `remain_card` tinyint(4) unsigned DEFAULT NULL,
  `remain_special_card` tinyint(4) unsigned DEFAULT NULL,
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
  `score` int(11) DEFAULT NULL,
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
  `event_ground` tinyint(4) unsigned DEFAULT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
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
  `level` smallint(6) unsigned DEFAULT NULL,
  `stage` tinyint(4) unsigned DEFAULT NULL,
  `index` tinyint(4) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
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
  `stage` tinyint(4) unsigned DEFAULT NULL,
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
  `level` tinyint(4) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
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
  `hostil` int(11) unsigned DEFAULT NULL,
  `alliance` int(11) unsigned DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
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
  `interest_type` tinyint(4) unsigned DEFAULT NULL,
  `level_range` tinyint(4) unsigned DEFAULT NULL,
  `class_type` smallint(6) unsigned DEFAULT NULL,
  `board_number` int(11) unsigned DEFAULT NULL,
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
  `id` tinyint(4) unsigned DEFAULT NULL,
  `ranking` tinyint(4) unsigned DEFAULT NULL,
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
  `score` bigint(20) DEFAULT NULL,
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
  `id` int(11) unsigned NOT NULL,
  `box` tinyint(4) unsigned NOT NULL,
  `slot` int(11) unsigned NOT NULL,
  `entry` smallint(6) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `durability` tinyint(4) unsigned DEFAULT NULL,
  `durability_state` int(11) DEFAULT NULL,
  `skill` tinyint(4) unsigned DEFAULT NULL,
  `luck` tinyint(4) unsigned DEFAULT NULL,
  `option` tinyint(4) unsigned DEFAULT NULL,
  `excellent` tinyint(4) unsigned DEFAULT NULL,
  `ancient` tinyint(4) unsigned DEFAULT NULL,
  `option_380` tinyint(4) unsigned DEFAULT NULL,
  `harmony` tinyint(4) unsigned DEFAULT NULL,
  `socket_1` smallint(6) unsigned DEFAULT NULL,
  `socket_2` smallint(6) unsigned DEFAULT NULL,
  `socket_3` smallint(6) unsigned DEFAULT NULL,
  `socket_4` smallint(6) unsigned DEFAULT NULL,
  `socket_5` smallint(6) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(4) unsigned DEFAULT NULL,
  `locked` tinyint(4) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `personal_store_price` int(11) unsigned DEFAULT NULL,
  `personal_store_job` smallint(6) unsigned DEFAULT NULL,
  `personal_store_jos` smallint(6) unsigned DEFAULT NULL,
  `personal_store_joc` smallint(6) unsigned DEFAULT NULL,
  `expire_date` bigint(20) DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`box`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_data`
--

LOCK TABLES `item_data` WRITE;
/*!40000 ALTER TABLE `item_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_data_test`
--

DROP TABLE IF EXISTS `item_data_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_data_test` (
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
  `personal_store_price` int(10) unsigned NOT NULL,
  `personal_store_job` smallint(5) unsigned NOT NULL,
  `personal_store_jos` smallint(5) unsigned NOT NULL,
  `personal_store_joc` smallint(5) unsigned NOT NULL,
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
-- Dumping data for table `item_data_test`
--

LOCK TABLES `item_data_test` WRITE;
/*!40000 ALTER TABLE `item_data_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_data_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pentagram_data`
--

DROP TABLE IF EXISTS `item_pentagram_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pentagram_data` (
  `id` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `index` tinyint(4) unsigned DEFAULT NULL,
  `attribute` tinyint(4) unsigned DEFAULT NULL,
  `item_type` tinyint(4) unsigned DEFAULT NULL,
  `item_index` smallint(6) unsigned DEFAULT NULL,
  `item_level` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_1` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_1` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_2` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_2` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_3` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_3` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_4` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_4` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_5` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_5` tinyint(4) unsigned DEFAULT NULL,
  `serial_server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL
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
  `level` tinyint(4) unsigned DEFAULT NULL,
  `durability` tinyint(4) unsigned DEFAULT NULL,
  `skill` tinyint(4) unsigned DEFAULT NULL,
  `luck` tinyint(4) unsigned DEFAULT NULL,
  `option` tinyint(4) unsigned DEFAULT NULL,
  `excellent` tinyint(4) unsigned DEFAULT NULL,
  `ancient` tinyint(4) unsigned DEFAULT NULL,
  `harmony` tinyint(4) unsigned DEFAULT NULL,
  `option_380` tinyint(4) unsigned DEFAULT NULL,
  `socket_1` smallint(6) unsigned DEFAULT NULL,
  `socket_2` smallint(6) unsigned DEFAULT NULL,
  `socket_3` smallint(6) unsigned DEFAULT NULL,
  `socket_4` smallint(6) unsigned DEFAULT NULL,
  `socket_5` smallint(6) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(4) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `serial_server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  `id` int(11) unsigned DEFAULT NULL,
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
  `date` bigint(20) DEFAULT NULL,
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
  `server` smallint(6) unsigned DEFAULT NULL,
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
  `server` smallint(6) unsigned DEFAULT NULL,
  `party` smallint(6) unsigned DEFAULT NULL,
  `member` int(11) unsigned DEFAULT NULL,
  `position` tinyint(4) unsigned DEFAULT NULL
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(11) unsigned DEFAULT NULL,
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
  `server` smallint(6) unsigned DEFAULT NULL,
  `signal` smallint(6) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
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
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
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
  `type` tinyint(4) unsigned DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
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
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `enter_count` int(11) DEFAULT NULL
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

-- Dump completed on 2021-03-13 12:01:47
