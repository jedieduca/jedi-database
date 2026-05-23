SET SQL_MODE = "";
SET FOREIGN_KEY_CHECKS = 0;
CREATE DATABASE  IF NOT EXISTS `jedi-permissions` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ ;
USE `jedi-permissions`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: jedi-permissions
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
-- Table structure for table `system_group`
--

DROP TABLE IF EXISTS `system_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_group` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_group_name_idx` (`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_group`
--

LOCK TABLES `system_group` WRITE;
/*!40000 ALTER TABLE `system_group` DISABLE KEYS */;
INSERT INTO `system_group` VALUES (1,'Template - Admin'),(2,'Template - Users'),(3,'Application - Programs'),(4,'Gestor - JEDi Educa');
/*!40000 ALTER TABLE `system_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_group_program`
--

DROP TABLE IF EXISTS `system_group_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_group_program` (
  `id` int NOT NULL,
  `system_group_id` int DEFAULT NULL,
  `system_program_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_group_program_program_idx` (`system_program_id`),
  KEY `sys_group_program_group_idx` (`system_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_group_program`
--

LOCK TABLES `system_group_program` WRITE;
/*!40000 ALTER TABLE `system_group_program` DISABLE KEYS */;
INSERT INTO `system_group_program` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,2,46),(47,2,47),(48,2,48),(49,2,49),(50,2,50),(51,2,51),(52,2,52),(53,2,53),(54,2,54),(55,2,55),(56,2,56),(57,2,57),(58,2,58),(59,2,59),(60,2,60),(61,2,61),(62,2,62),(63,2,63),(64,2,64),(65,1,65),(66,1,66),(67,1,67),(76,1,68),(77,1,70),(78,1,71),(71,1,69),(81,1,72),(80,1,73),(82,1,74),(83,1,75),(84,1,76),(85,1,77),(86,1,78),(89,1,79),(90,1,80),(91,1,81),(92,1,82),(93,1,83),(94,4,65),(95,4,66),(96,4,67),(97,4,68),(98,4,69),(99,4,70),(100,4,71),(101,4,72),(102,4,73),(103,4,75),(104,4,76),(105,4,77),(106,4,78),(107,4,79),(108,4,80),(109,4,81),(110,4,82),(111,4,83);
/*!40000 ALTER TABLE `system_group_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_preference`
--

DROP TABLE IF EXISTS `system_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_preference` (
  `id` varchar(256) DEFAULT NULL,
  `value` text,
  KEY `sys_preference_id_idx` (`id`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_preference`
--

LOCK TABLES `system_preference` WRITE;
/*!40000 ALTER TABLE `system_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_program`
--

DROP TABLE IF EXISTS `system_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_program` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `controller` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_program_name_idx` (`name`(250)),
  KEY `sys_program_controller_idx` (`controller`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_program`
--

LOCK TABLES `system_program` WRITE;
/*!40000 ALTER TABLE `system_program` DISABLE KEYS */;
INSERT INTO `system_program` VALUES (1,'System Administration Dashboard','SystemAdministrationDashboard'),(2,'System Program Form','SystemProgramForm'),(3,'System Program List','SystemProgramList'),(4,'System Group Form','SystemGroupForm'),(5,'System Group List','SystemGroupList'),(6,'System Unit Form','SystemUnitForm'),(7,'System Unit List','SystemUnitList'),(8,'System Role Form','SystemRoleForm'),(9,'System Role List','SystemRoleList'),(10,'System User Form','SystemUserForm'),(11,'System User List','SystemUserList'),(12,'System Preference form','SystemPreferenceForm'),(13,'System Log Dashboard','SystemLogDashboard'),(14,'System Access Log','SystemAccessLogList'),(15,'System ChangeLog View','SystemChangeLogView'),(16,'System Sql Log','SystemSqlLogList'),(17,'System Request Log','SystemRequestLogList'),(18,'System Request Log View','SystemRequestLogView'),(19,'System PHP Error','SystemPHPErrorLogView'),(20,'System Session vars','SystemSessionVarsView'),(21,'System Database Browser','SystemDatabaseExplorer'),(22,'System Table List','SystemTableList'),(23,'System Data Browser','SystemDataBrowser'),(24,'System SQL Panel','SystemSQLPanel'),(25,'System Modules','SystemModulesCheckView'),(26,'System files diff','SystemFilesDiff'),(27,'System Information','SystemInformationView'),(28,'System PHP Info','SystemPHPInfoView'),(29,'Common Page','CommonPage'),(30,'Welcome View','WelcomeView'),(31,'Welcome dashboard','WelcomeDashboardView'),(32,'System Profile View','SystemProfileView'),(33,'System Profile Form','SystemProfileForm'),(34,'System Notification List','SystemNotificationList'),(35,'System Notification Form View','SystemNotificationFormView'),(36,'System Support form','SystemSupportForm'),(37,'System Profile 2FA Form','SystemProfile2FAForm'),(38,'System Wiki list','SystemWikiList'),(39,'System Wiki form','SystemWikiForm'),(40,'System Wiki page picker','SystemWikiPagePicker'),(41,'System Post list','SystemPostList'),(42,'System Post form','SystemPostForm'),(43,'System schedule list','SystemScheduleList'),(44,'System schedule form','SystemScheduleForm'),(45,'System schedule log','SystemScheduleLogList'),(46,'System Message Form','SystemMessageForm'),(47,'System Message List','SystemMessageList'),(48,'System Message Form View','SystemMessageFormView'),(49,'System Documents','SystemDriveList'),(50,'System Folder form','SystemFolderForm'),(51,'System Share folder','SystemFolderShareForm'),(52,'System Share document','SystemDocumentShareForm'),(53,'System Document properties','SystemDocumentFormWindow'),(54,'System Folder properties','SystemFolderFormView'),(55,'System Document upload','SystemDriveDocumentUploadForm'),(56,'Post View list','SystemPostFeedView'),(57,'Post Comment form','SystemPostCommentForm'),(58,'Post Comment list','SystemPostCommentList'),(59,'System Wiki search','SystemWikiSearchList'),(60,'System Wiki view','SystemWikiView'),(61,'System Message Tag form','SystemMessageTagForm'),(62,'System Contacts list','SystemContactsList'),(63,'Text document editor','SystemTextDocumentEditor'),(64,'System document create form','SystemDriveDocumentCreateForm'),(65,'Association Rules','AssociationRulesView'),(66,'Apriori View','AprioriView'),(67,'Association Rules Form','AssociationRulesForm'),(68,'Statistics Avaliation View','StatisticsAvaliationView'),(69,'Statistics Avaliation Form','StatisticsAvaliationForm'),(70,'Statistics Category View','StatisticsCategoryView'),(71,'Statistics Category Form','StatisticsCategoryForm'),(72,'Statistics Match School Form','StatisticsMatchSchoolForm'),(73,'Statistics Match School View','StatisticsMatchSchoolView'),(74,'Jedi Educa Rest Data View','JediEducaRestDataView'),(75,'Distribution News Category View','DistributionNewsCategoryView'),(76,'Distribution News Category Form','DistributionNewsCategoryForm'),(77,'Textual Characteristics News View','TextualCharacteristicsNewsView'),(78,'Textual Characteristics News Form','TextualCharacteristicsNewsForm'),(79,'Class Profile Form','ClassProfileForm'),(80,'Class Profile View','ClassProfileView'),(81,'Match Summary Form','MatchSummaryForm'),(82,'Match Summary View','MatchSummaryView'),(83,'Cloud Word View','CloudWordView');
/*!40000 ALTER TABLE `system_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_program_method_role`
--

DROP TABLE IF EXISTS `system_program_method_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_program_method_role` (
  `id` int NOT NULL,
  `system_program_id` int DEFAULT NULL,
  `system_role_id` int DEFAULT NULL,
  `method_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_program_method_role_program_idx` (`system_program_id`),
  KEY `sys_program_method_role_role_idx` (`system_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_program_method_role`
--

LOCK TABLES `system_program_method_role` WRITE;
/*!40000 ALTER TABLE `system_program_method_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_program_method_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role`
--

DROP TABLE IF EXISTS `system_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_role_name_idx` (`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role`
--

LOCK TABLES `system_role` WRITE;
/*!40000 ALTER TABLE `system_role` DISABLE KEYS */;
INSERT INTO `system_role` VALUES (1,'Role A',''),(2,'Role B','');
/*!40000 ALTER TABLE `system_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_unit`
--

DROP TABLE IF EXISTS `system_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_unit` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `connection_name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_unit_name_idx` (`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_unit`
--

LOCK TABLES `system_unit` WRITE;
/*!40000 ALTER TABLE `system_unit` DISABLE KEYS */;
INSERT INTO `system_unit` VALUES (1,'Unit A','unit_a',NULL),(2,'Unit B','unit_b',NULL);
/*!40000 ALTER TABLE `system_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_group`
--

DROP TABLE IF EXISTS `system_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_group` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_group_group_idx` (`system_group_id`),
  KEY `sys_user_group_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_group`
--

LOCK TABLES `system_user_group` WRITE;
/*!40000 ALTER TABLE `system_user_group` DISABLE KEYS */;
INSERT INTO `system_user_group` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,3,4);
/*!40000 ALTER TABLE `system_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_old_password`
--

DROP TABLE IF EXISTS `system_user_old_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_old_password` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_old_password_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_old_password`
--

LOCK TABLES `system_user_old_password` WRITE;
/*!40000 ALTER TABLE `system_user_old_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_user_old_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_program`
--

DROP TABLE IF EXISTS `system_user_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_program` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_program_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_program_program_idx` (`system_program_id`),
  KEY `sys_user_program_user_idx` (`system_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_program`
--

LOCK TABLES `system_user_program` WRITE;
/*!40000 ALTER TABLE `system_user_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_user_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_role`
--

DROP TABLE IF EXISTS `system_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_role` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_role_user_idx` (`system_user_id`),
  KEY `sys_user_role_role_idx` (`system_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_role`
--

LOCK TABLES `system_user_role` WRITE;
/*!40000 ALTER TABLE `system_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_unit`
--

DROP TABLE IF EXISTS `system_user_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_unit` (
  `id` int NOT NULL,
  `system_user_id` int DEFAULT NULL,
  `system_unit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_unit_user_idx` (`system_user_id`),
  KEY `sys_user_unit_unit_idx` (`system_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_unit`
--

LOCK TABLES `system_user_unit` WRITE;
/*!40000 ALTER TABLE `system_user_unit` DISABLE KEYS */;
INSERT INTO `system_user_unit` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2);
/*!40000 ALTER TABLE `system_user_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_users`
--

DROP TABLE IF EXISTS `system_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_users` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `accepted_term_policy` char(1) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `function_name` varchar(256) DEFAULT NULL,
  `about` text,
  `accepted_term_policy_at` varchar(20) DEFAULT NULL,
  `accepted_term_policy_data` text,
  `frontpage_id` int DEFAULT NULL,
  `system_unit_id` int DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL,
  `otp_secret` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_program_idx` (`frontpage_id`),
  KEY `sys_users_name_idx` (`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_users`
--

LOCK TABLES `system_users` WRITE;
/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
INSERT INTO `system_users` VALUES (1,'Administrator','admin','$2y$10$xuR3XEc3J6tpv7myC9gPj.Ab5GacSeHSZoYUTYtOg.cEc22G.iBwa','admin@admin.net','Y','+123 456 789','Admin Street, 123','Administrator','I\'m the administrator',NULL,NULL,30,NULL,'Y',NULL,NULL),(2,'User','user','$2y$10$MUYN29LOSHrCSGhrzvYG8O/PtAjbWvCubaUSTJGhVTJhm69WNFJs.','user@user.net','Y','+123 456 789','User Street, 123','End user','I\'m the end user',NULL,NULL,30,NULL,'Y',NULL,NULL),(3,'Gestor - JEDi Educa','gestor.jedi','$2y$10$O5LKH3NvKykRugjD.MAgpevQFEqRBGOEEXWy0/3OdONuusVhuACka','contato@jedieduca.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL);
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-09 16:26:50
