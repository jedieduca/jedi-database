SET SQL_MODE = "";
SET FOREIGN_KEY_CHECKS = 0;
CREATE DATABASE  IF NOT EXISTS `jedi-communications` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ ;
USE `jedi-communications`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: jedi-communications
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `system_document`
--

DROP TABLE IF EXISTS `system_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_document` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` text,
  `submission_date` date DEFAULT NULL,
  `archive_date` date DEFAULT NULL,
  `filename` varchar(512) DEFAULT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_id` int DEFAULT NULL,
  `content` text,
  `content_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_document_user_idx` (`system_user_id`),
  KEY `sys_document_folder_idx` (`system_folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_document`
--

LOCK TABLES `system_document` WRITE;
/*!40000 ALTER TABLE `system_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_document_bookmark`
--

DROP TABLE IF EXISTS `system_document_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_document_bookmark` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_document_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_document_bookmark_user_idx` (`system_user_id`),
  KEY `sys_document_bookmark_document_idx` (`system_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_document_bookmark`
--

LOCK TABLES `system_document_bookmark` WRITE;
/*!40000 ALTER TABLE `system_document_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_document_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_document_group`
--

DROP TABLE IF EXISTS `system_document_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_document_group` (
  `id` int NOT NULL,
  `document_id` int DEFAULT NULL,
  `system_group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_document_group_document_idx` (`document_id`),
  KEY `sys_document_group_group_idx` (`system_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_document_group`
--

LOCK TABLES `system_document_group` WRITE;
/*!40000 ALTER TABLE `system_document_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_document_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_document_user`
--

DROP TABLE IF EXISTS `system_document_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_document_user` (
  `id` int NOT NULL,
  `document_id` int DEFAULT NULL,
  `system_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_document_user_document_idx` (`document_id`),
  KEY `sys_document_user_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_document_user`
--

LOCK TABLES `system_document_user` WRITE;
/*!40000 ALTER TABLE `system_document_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_document_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_folder`
--

DROP TABLE IF EXISTS `system_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_folder` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_folder_user_id_idx` (`system_user_id`),
  KEY `sys_folder_name_idx` (`name`(250)),
  KEY `sys_folder_parend_id_idx` (`system_folder_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_folder`
--

LOCK TABLES `system_folder` WRITE;
/*!40000 ALTER TABLE `system_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_folder_bookmark`
--

DROP TABLE IF EXISTS `system_folder_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_folder_bookmark` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_folder_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_folder_bookmark_user_idx` (`system_user_id`),
  KEY `sys_folder_bookmark_folder_idx` (`system_folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_folder_bookmark`
--

LOCK TABLES `system_folder_bookmark` WRITE;
/*!40000 ALTER TABLE `system_folder_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_folder_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_folder_group`
--

DROP TABLE IF EXISTS `system_folder_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_folder_group` (
  `id` int NOT NULL,
  `system_folder_id` int DEFAULT NULL,
  `system_group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_folder_group_folder_idx` (`system_folder_id`),
  KEY `sys_folder_group_group_idx` (`system_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_folder_group`
--

LOCK TABLES `system_folder_group` WRITE;
/*!40000 ALTER TABLE `system_folder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_folder_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_folder_user`
--

DROP TABLE IF EXISTS `system_folder_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_folder_user` (
  `id` int NOT NULL,
  `system_folder_id` int DEFAULT NULL,
  `system_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_folder_user_folder_idx` (`system_folder_id`),
  KEY `sys_folder_user_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_folder_user`
--

LOCK TABLES `system_folder_user` WRITE;
/*!40000 ALTER TABLE `system_folder_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_folder_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_message`
--

DROP TABLE IF EXISTS `system_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_message` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_user_to_id` int DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text,
  `dt_message` varchar(20) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL,
  `removed` char(1) DEFAULT NULL,
  `viewed` char(1) DEFAULT NULL,
  `attachments` text,
  PRIMARY KEY (`id`),
  KEY `sys_message_user_id_idx` (`system_user_id`),
  KEY `sys_message_user_to_idx` (`system_user_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_message`
--

LOCK TABLES `system_message` WRITE;
/*!40000 ALTER TABLE `system_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_message_tag`
--

DROP TABLE IF EXISTS `system_message_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_message_tag` (
  `id` int NOT NULL,
  `system_message_id` int NOT NULL,
  `tag` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_message_tag_msg_idx` (`system_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_message_tag`
--

LOCK TABLES `system_message_tag` WRITE;
/*!40000 ALTER TABLE `system_message_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_message_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notification`
--

DROP TABLE IF EXISTS `system_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_notification` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_user_to_id` int DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text,
  `dt_message` varchar(20) DEFAULT NULL,
  `action_url` text,
  `action_label` varchar(256) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_notification_user_id_idx` (`system_user_id`),
  KEY `sys_notification_user_to_idx` (`system_user_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notification`
--

LOCK TABLES `system_notification` WRITE;
/*!40000 ALTER TABLE `system_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post`
--

DROP TABLE IF EXISTS `system_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  KEY `sys_post_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post`
--

LOCK TABLES `system_post` WRITE;
/*!40000 ALTER TABLE `system_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post_comment`
--

DROP TABLE IF EXISTS `system_post_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post_comment` (
  `id` int NOT NULL,
  `comment` text NOT NULL,
  `system_user_id` int NOT NULL,
  `system_post_id` int NOT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_post_comment_user_idx` (`system_user_id`),
  KEY `sys_post_comment_post_idx` (`system_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post_comment`
--

LOCK TABLES `system_post_comment` WRITE;
/*!40000 ALTER TABLE `system_post_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_post_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post_like`
--

DROP TABLE IF EXISTS `system_post_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post_like` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_post_id` int NOT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_post_like_user_idx` (`system_user_id`),
  KEY `sys_post_like_post_idx` (`system_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post_like`
--

LOCK TABLES `system_post_like` WRITE;
/*!40000 ALTER TABLE `system_post_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_post_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post_share_group`
--

DROP TABLE IF EXISTS `system_post_share_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post_share_group` (
  `id` int NOT NULL,
  `system_group_id` int DEFAULT NULL,
  `system_post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_post_share_group_group_idx` (`system_group_id`),
  KEY `sys_post_share_group_post_idx` (`system_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post_share_group`
--

LOCK TABLES `system_post_share_group` WRITE;
/*!40000 ALTER TABLE `system_post_share_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_post_share_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post_tag`
--

DROP TABLE IF EXISTS `system_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post_tag` (
  `id` int NOT NULL,
  `system_post_id` int NOT NULL,
  `tag` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_post_tag_post_idx` (`system_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post_tag`
--

LOCK TABLES `system_post_tag` WRITE;
/*!40000 ALTER TABLE `system_post_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_schedule`
--

DROP TABLE IF EXISTS `system_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_schedule` (
  `id` int NOT NULL,
  `schedule_type` char(1) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `method` varchar(256) DEFAULT NULL,
  `monthday` char(2) DEFAULT NULL,
  `weekday` char(1) DEFAULT NULL,
  `hour` char(2) DEFAULT NULL,
  `minute` char(2) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_schedule`
--

LOCK TABLES `system_schedule` WRITE;
/*!40000 ALTER TABLE `system_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_wiki_page`
--

DROP TABLE IF EXISTS `system_wiki_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_wiki_page` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `content` text NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `searchable` char(1) NOT NULL DEFAULT 'Y',
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_wiki_page_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_wiki_page`
--

LOCK TABLES `system_wiki_page` WRITE;
/*!40000 ALTER TABLE `system_wiki_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_wiki_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_wiki_share_group`
--

DROP TABLE IF EXISTS `system_wiki_share_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_wiki_share_group` (
  `id` int NOT NULL,
  `system_group_id` int DEFAULT NULL,
  `system_wiki_page_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_wiki_share_group_group_idx` (`system_group_id`),
  KEY `sys_wiki_share_group_page_idx` (`system_wiki_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_wiki_share_group`
--

LOCK TABLES `system_wiki_share_group` WRITE;
/*!40000 ALTER TABLE `system_wiki_share_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_wiki_share_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_wiki_tag`
--

DROP TABLE IF EXISTS `system_wiki_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_wiki_tag` (
  `id` int NOT NULL,
  `system_wiki_page_id` int NOT NULL,
  `tag` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_wiki_tag_page_idx` (`system_wiki_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_wiki_tag`
--

LOCK TABLES `system_wiki_tag` WRITE;
/*!40000 ALTER TABLE `system_wiki_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_wiki_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-09 16:30:39
