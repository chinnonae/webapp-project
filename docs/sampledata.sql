-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 35.229.131.72    Database: webapp
-- ------------------------------------------------------
-- Server version	5.7.14-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `substitute_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `leaves_substitute_id_foreign` (`substitute_id`),
  KEY `leaves_user_id_foreign` (`user_id`),
  CONSTRAINT `leaves_substitute_id_foreign` FOREIGN KEY (`substitute_id`) REFERENCES `users` (`id`),
  CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,'requested','Vacation leave','2018-05-03','2018-05-18','2018-05-03 08:25:41','2018-05-03 08:25:41',4,2),(2,'requested','Vacation leave','2018-05-03','2018-05-04','2018-05-03 09:05:33','2018-05-03 09:05:33',6,8);
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (13,'2014_10_12_000000_create_users_table',1),(14,'2014_10_12_100000_create_password_resets_table',1),(15,'2016_06_01_000001_create_oauth_auth_codes_table',1),(16,'2016_06_01_000002_create_oauth_access_tokens_table',1),(17,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(18,'2016_06_01_000004_create_oauth_clients_table',1),(19,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(20,'2018_04_29_091859_create_tasks_table',1),(21,'2018_04_29_091932_create_leaves_table',1),(22,'2018_05_01_183400_add_type',1),(23,'2018_05_02_153839_add_facebook_and_phone_number',1),(24,'2018_05_02_213449_add_department',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('05f492b793db5f34cd8679a72dc610e37ee95a8905eb9f001d029dbc321acf50048cf1940dc21421',1,3,'token','[]',0,'2018-05-03 08:49:16','2018-05-03 08:49:16','2019-05-03 08:49:16'),('0937edecfcfc2bf6d46edd6516c21a8c30d942272334054ba2e59041a30426cf3581909b9c1e1f53',1,3,'token','[]',0,'2018-05-03 09:22:56','2018-05-03 09:22:56','2019-05-03 09:22:56'),('236a0e294f599c1f0d449979178b3db3446a91679c105e2300864b8e68314fa46c12146713d1c893',1,3,'token','[]',0,'2018-05-03 09:24:30','2018-05-03 09:24:30','2019-05-03 09:24:30'),('2da06578e545859afdb1d6232519760616e4d4e2c5387b4997b6dc40196aa32a0158885a72584e3a',1,3,'token','[]',0,'2018-05-03 08:00:19','2018-05-03 08:00:19','2019-05-03 08:00:19'),('36bdc0dd5e635b4752d3aa214dd698918901ddec70df3b30fb9d00d67f00d4383cdfdc6e47a54461',1,3,'token','[]',0,'2018-05-03 08:00:46','2018-05-03 08:00:46','2019-05-03 08:00:46'),('4b09b7e36b47fdd784a3a0066f27760b2c2ba80fe90922cc73136ada37b696406f1bdbc925610597',3,3,'token','[]',0,'2018-05-03 08:40:19','2018-05-03 08:40:19','2019-05-03 08:40:19'),('51560c12bbbbc3ca0a1283be951263f368b8f6e65a169a0a17836f81673ae3d5c660db40d2b5bb2d',8,3,'token','[]',0,'2018-05-03 09:02:02','2018-05-03 09:02:02','2019-05-03 09:02:02'),('6ad892d349b5577e9761f4be81bf145c92d698871b9211f82d30953072aabcf993ce63c175b7748f',1,1,'token','[]',0,'2018-05-03 07:59:07','2018-05-03 07:59:07','2019-05-03 07:59:07'),('74c2eafb79c612794e58f70236484d67b91078af9b8e417ae84d8f4adcfd949c53cb2a47752e1d8d',8,3,'token','[]',0,'2018-05-03 08:56:02','2018-05-03 08:56:02','2019-05-03 08:56:02'),('a39c36a7e95d82d8bfeb4e836685a7b08c99300d925b8eebcd4e5c8bd2bdc6799a6c7562e44605d6',2,3,'token','[]',0,'2018-05-03 08:24:06','2018-05-03 08:24:06','2019-05-03 08:24:06'),('aeaf7652bc2e09ae5957a61afd2680612847a3a9752306d8532cb5728dd058104270d6e65d869f87',1,1,'token','[]',0,'2018-05-03 07:59:12','2018-05-03 07:59:12','2019-05-03 07:59:12'),('ceda57cdf573b4dd8174fec5fff23b87d9b02827e034bb2cff5a903829dc7f16a508ad5997e4f167',2,3,'token','[]',0,'2018-05-03 08:07:17','2018-05-03 08:07:17','2019-05-03 08:07:17'),('e4d0d9bfea6dd4c4773ea19b341ec5ac8cbf88e8043aa0e32e31863c0d618933ba1756289f8d8fac',3,3,'token','[]',0,'2018-05-03 08:58:54','2018-05-03 08:58:54','2019-05-03 08:58:54'),('fa2348a27b7fc16fef76d7124f95dd62423eb290ea55f1eb7b9b61e6dd37f07d65dceff112d39931',2,3,'token','[]',0,'2018-05-03 08:02:52','2018-05-03 08:02:52','2019-05-03 08:02:52');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','JMp68ZRFLlQSca3tqUiIvDeBMUbAgOoC9uUB2Blp','http://localhost',1,0,0,'2018-05-03 07:58:57','2018-05-03 07:58:57'),(2,NULL,'Laravel Password Grant Client','TpDKZn4qiF181sQvoFWPeCfl9tH55IkoOkqTb8uY','http://localhost',0,1,0,'2018-05-03 07:58:58','2018-05-03 07:58:58'),(3,NULL,'Laravel Personal Access Client','SNZl0ptpr3njUlavQ8gdRqHuu9UuX228vBhkDsdG','http://localhost',1,0,0,'2018-05-03 07:59:55','2018-05-03 07:59:55'),(4,NULL,'Laravel Password Grant Client','3fJxfxjcbatddhRMe0RJyi5q0RH5fuLpgsSDMwFQ','http://localhost',0,1,0,'2018-05-03 07:59:57','2018-05-03 07:59:57');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-05-03 07:58:58','2018-05-03 07:58:58'),(2,3,'2018-05-03 07:59:56','2018-05-03 07:59:56');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assignee_id` int(10) unsigned NOT NULL,
  `assignor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_assignee_id_foreign` (`assignee_id`),
  KEY `tasks_assignor_id_foreign` (`assignor_id`),
  CONSTRAINT `tasks_assignee_id_foreign` FOREIGN KEY (`assignee_id`) REFERENCES `users` (`id`),
  CONSTRAINT `tasks_assignor_id_foreign` FOREIGN KEY (`assignor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Task 1','Task description','2018-05-03','2018-05-25','2018-05-03 09:00:16','2018-05-03 09:00:16',8,3);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lineid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supervisor_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_lineid_unique` (`lineid`),
  KEY `users_supervisor_id_foreign` (`supervisor_id`),
  CONSTRAINT `users_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@admin.com','admin',NULL,'Bangkok',1,'$2y$10$/GmhKOm6X3GDdhu/SN9hjOiaLG2gFxcknJKDJ8naTqt0a0MUY.85.',NULL,'2018-05-03 07:58:45','2018-05-03 07:58:45',NULL,'admin','System Admin','0924421593','System Administration'),(2,'Patinya','patinya@gmail.com','nottypty','0','Lum-Luk-Ka, Pathum Thani',0,'$2y$10$g9DpugTGmPlrm7FES49E0O.BONHJ4tmYL9kRrsZS9rUeJdIliKvAq',NULL,'2018-05-03 08:01:05','2018-05-03 08:47:04',NULL,'subordinate','Patinya Y.','0841256743','IUP'),(3,'Adam','adam@adam.com','adam','0','0',0,'$2y$10$cmozWys0ExysfML2Aw32Be/D3Qw.OLcE600Hg7UygcYWyh6rCO5TS',NULL,'2018-05-03 08:01:24','2018-05-03 08:02:58',NULL,'supervisor','08928772','www.facebook.com','Computer'),(4,'boss','boss@gmail.com','boss','0','0',0,'$2y$10$bOh48nTG.TBwE5MNyksKrOE5xlrikryZjtWGeyGY8TY18VJAA7k1C',NULL,'2018-05-03 08:04:37','2018-05-03 08:22:27',NULL,'supervisor','0892274','www.facebook.com/boss',NULL),(5,'Hela','hela@gmail.com','hela.line','0','44/55 Tuktuk',0,'$2y$10$QcimhQDFtI7XyOgwjRffZ.QuS1BEfOH.f7xZR78BV1DfAEOLZ/UxW',NULL,'2018-05-03 08:10:43','2018-05-03 08:28:35',NULL,'supervisor','www.facebook.com/hela','089289284','Engineering'),(6,'Net','net@gmail.com','net','0','123/312 Wung-hin',0,'$2y$10$ewEepQAqV4oSKxG6Ay4tnuWbvae875ySLiY0eCVLkcUNPbVHD8Dxm',NULL,'2018-05-03 08:44:23','2018-05-03 08:44:23',3,'subordinate','www.facebook.com/net','082984294',NULL),(7,'Makam','makan@gmail.com','makam','0','23/55 Central ladpoa',0,'$2y$10$jAzjjxDdpApXZsjbU.apEek6gRHyJql1h5Ao6oOW43agfWNUiIMmS',NULL,'2018-05-03 08:45:38','2018-05-03 08:45:38',3,'subordinate','www.facebook.com/','0240284242',NULL),(8,'Supanat','supanat@hotmail.com','supanat','0','0',0,'$2y$10$AUUHcRG7Ch25oACCBHC4Yu0BQW0JifOk6JXKZEV8eQxGu4iOyeYDK',NULL,'2018-05-03 08:55:22','2018-05-03 08:56:49',3,'subordinate','987654321','Supanat Pok',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-03 16:25:55
