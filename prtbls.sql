CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
REPLACE  IGNORE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
REPLACE  IGNORE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
REPLACE  IGNORE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2023-01-07 15:31:33.755421'),(2,'auth','0001_initial','2023-01-07 15:31:34.167759'),(3,'admin','0001_initial','2023-01-07 15:31:34.284865'),(4,'admin','0002_logentry_remove_auto_add','2023-01-07 15:31:34.293629'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-07 15:31:34.301647'),(6,'contenttypes','0002_remove_content_type_name','2023-01-07 15:31:34.366871'),(7,'auth','0002_alter_permission_name_max_length','2023-01-07 15:31:34.422239'),(8,'auth','0003_alter_user_email_max_length','2023-01-07 15:31:34.454840'),(9,'auth','0004_alter_user_username_opts','2023-01-07 15:31:34.478427'),(10,'auth','0005_alter_user_last_login_null','2023-01-07 15:31:34.533752'),(11,'auth','0006_require_contenttypes_0002','2023-01-07 15:31:34.537831'),(12,'auth','0007_alter_validators_add_error_messages','2023-01-07 15:31:34.545817'),(13,'auth','0008_alter_user_username_max_length','2023-01-07 15:31:34.586653'),(14,'auth','0009_alter_user_last_name_max_length','2023-01-07 15:31:34.635413'),(15,'auth','0010_alter_group_name_max_length','2023-01-07 15:31:34.655277'),(16,'auth','0011_update_proxy_permissions','2023-01-07 15:31:34.664953'),(17,'auth','0012_alter_user_first_name_max_length','2023-01-07 15:31:34.730341'),(18,'sessions','0001_initial','2023-01-07 15:31:34.773963');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL,
  `id_color` int DEFAULT NULL,
  `about_us_p` varchar(3000) DEFAULT NULL,
  `founder_p` varchar(3000) DEFAULT NULL,
  `name_pic_1` varchar(15) DEFAULT NULL,
  `name_pic_2` varchar(15) DEFAULT NULL,
  `name_pic_3` varchar(15) DEFAULT NULL,
  `name_pic_4` varchar(15) DEFAULT NULL,
  `name_pic_5` varchar(15) DEFAULT NULL,
  `name_pic_6` varchar(15) DEFAULT NULL,
  `two_founder` int DEFAULT NULL,
  `founder_p2` varchar(0) DEFAULT NULL,
  `name_pic_7` varchar(15) DEFAULT NULL,
  `name_pic_8` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_color` (`id_color`),
  CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`id_color`) REFERENCES `tbl_color` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE  IGNORE INTO `settings` (`id`, `id_color`, `about_us_p`, `founder_p`, `name_pic_1`, `name_pic_2`, `name_pic_3`, `name_pic_4`, `name_pic_5`, `name_pic_6`, `two_founder`, `founder_p2`, `name_pic_7`, `name_pic_8`) VALUES (1,1,'امروزه بازار اشتغال مناسب و متناسب با شخصیت، توانمندی و اندوخته علمی افراد صرفا مختص به دارندگان مدارک دانشگاهی و مدارج علمی و آکادمیک نیست. بلکه افرادی صاحب شغل و جایگاه کاری متناسب تری هستند که علاوه بر دانش از سطح مهارت و توانمندی و قابلیت های کاری لازم نیز برخوردارند. با چنین آنالیزی هسته برگزاری دوره های فنی و حرفه ای در حوزه مرتبط با آموزش عالی وارستگان که حوزه علوم پزشکی و پیراپزشکی بود، شکل گرفت. یعنی افراد می توانند با گذراندن دوره های کوتاه مدت و تخصصی فنی و حرفه ای بصورت مهارتی قابلیت های کاری آن مبحث را در خود پرورش داده و هم از لحاظ علمی و هم از لحاظ مهارتی آمادگی های مقبولی جهت اشتغال در خود ایجاد کنند.','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','.png','.png','.jpeg','.jpeg','61020.png','.jpeg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_attendance` (
  `Id` int NOT NULL,
  `id_buy_doreh` int DEFAULT NULL,
  `session` int DEFAULT NULL,
  `presence` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_buy_doreh` (`id_buy_doreh`),
  CONSTRAINT `tbl_attendance_ibfk_1` FOREIGN KEY (`id_buy_doreh`) REFERENCES `tbl_buy_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attendance`
--

LOCK TABLES `tbl_attendance` WRITE;
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_attendance` (`Id`, `id_buy_doreh`, `session`, `presence`) VALUES (96,155,824,2),(97,154,1364,1),(98,150,1364,2);
/*!40000 ALTER TABLE `tbl_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bank`
--

DROP TABLE IF EXISTS `tbl_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bank` (
  `Id` int NOT NULL,
  `id_username` varchar(50) DEFAULT NULL,
  `mablagh` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `model` int DEFAULT NULL,
  `fish` varchar(50) DEFAULT NULL,
  `dyn1` int DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  `id_hesab` int DEFAULT NULL,
  `portal` int DEFAULT NULL,
  `seen` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `dyn1` (`dyn1`),
  KEY `portal` (`portal`),
  KEY `id_record` (`id_record`),
  CONSTRAINT `tbl_bank_ibfk_1` FOREIGN KEY (`dyn1`) REFERENCES `tbl_buy_doreh` (`Id`),
  CONSTRAINT `tbl_bank_ibfk_2` FOREIGN KEY (`portal`) REFERENCES `tbl_portal` (`Id`),
  CONSTRAINT `tbl_bank_ibfk_3` FOREIGN KEY (`id_record`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bank`
--

LOCK TABLES `tbl_bank` WRITE;
/*!40000 ALTER TABLE `tbl_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_buy_doreh`
--

DROP TABLE IF EXISTS `tbl_buy_doreh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_buy_doreh` (
  `Id` int NOT NULL,
  `id_doreh` int DEFAULT NULL,
  `date_buy` datetime DEFAULT NULL,
  `id_username` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `score_t` double DEFAULT NULL,
  `score_a` double DEFAULT NULL,
  `score` double DEFAULT NULL,
  `exam` int DEFAULT NULL,
  `delivery_book` int DEFAULT NULL,
  `cancel` int DEFAULT NULL,
  `penalty_cancel` int DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `card` varchar(25) DEFAULT NULL,
  `portal` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `discount1` int DEFAULT NULL,
  `discount2` int DEFAULT NULL,
  `id_discount2` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `seen` int DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  `adate_delivery_book` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_username` (`id_username`),
  KEY `id_doreh` (`id_doreh`),
  CONSTRAINT `tbl_buy_doreh_ibfk_1` FOREIGN KEY (`id_username`) REFERENCES `tbl_users` (`Id`),
  CONSTRAINT `tbl_buy_doreh_ibfk_2` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_buy_doreh`
--

LOCK TABLES `tbl_buy_doreh` WRITE;
/*!40000 ALTER TABLE `tbl_buy_doreh` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_buy_doreh` (`Id`, `id_doreh`, `date_buy`, `id_username`, `fee`, `score_t`, `score_a`, `score`, `exam`, `delivery_book`, `cancel`, `penalty_cancel`, `cancel_date`, `card`, `portal`, `type`, `discount1`, `discount2`, `id_discount2`, `state`, `seen`, `id_record`, `adate_delivery_book`) VALUES (142,101,'2021-05-06 07:25:31',2,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,20,NULL,NULL,NULL,NULL,NULL),(143,97,'2021-05-06 07:26:02',1,800000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,25,NULL,NULL,NULL,NULL,NULL),(144,98,'2021-05-23 20:58:50',6,800000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,10,NULL,NULL,NULL,NULL,NULL),(145,101,'2022-09-23 16:57:24',2,850000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,'2022-09-29 13:26:04'),(146,97,'2022-09-24 15:52:38',2,800000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,30,NULL,1,1,1,NULL),(147,100,'2022-09-24 19:30:23',2,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,100000,NULL,NULL,1,1,1,NULL),(148,98,'2022-09-24 19:30:30',2,800000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL),(149,101,'2022-09-24 19:49:42',5,850000,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,50000,20,NULL,1,1,1,'2022-09-29 13:28:30'),(150,101,'2022-09-29 14:44:17',6,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL),(151,101,'2022-09-29 14:44:58',7,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL),(152,100,'2022-09-29 14:45:04',1,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,100000,16,NULL,1,1,1,NULL),(153,101,'2022-09-29 14:45:24',8,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL),(154,100,'2022-09-29 14:45:30',8,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,100000,NULL,NULL,1,1,1,NULL),(155,101,'2022-09-29 14:45:53',1,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL),(156,100,'2022-09-29 14:45:55',9,850000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,100000,NULL,NULL,1,1,1,NULL),(157,98,'2022-09-29 14:45:56',1,800000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,50000,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `tbl_buy_doreh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cart` (
  `id` int NOT NULL,
  `ndoc` int DEFAULT NULL,
  `product` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ndoc` (`ndoc`),
  CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`ndoc`) REFERENCES `tbl_cart_doc` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_cart` (`id`, `ndoc`, `product`, `number`, `total_price`, `state`) VALUES (136,39,3,2,10000,1),(137,40,1,1,250000,1),(138,40,5,1,56222,1);
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart_doc`
--

DROP TABLE IF EXISTS `tbl_cart_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cart_doc` (
  `Id` int NOT NULL,
  `adate` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `seen` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart_doc`
--

LOCK TABLES `tbl_cart_doc` WRITE;
/*!40000 ALTER TABLE `tbl_cart_doc` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_cart_doc` (`Id`, `adate`, `username`, `state`, `seen`) VALUES (39,'2021-03-30 18:19:23','36',NULL,NULL),(40,'2021-05-01 07:32:05','79',NULL,NULL);
/*!40000 ALTER TABLE `tbl_cart_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classroom`
--

DROP TABLE IF EXISTS `tbl_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classroom` (
  `Id` int NOT NULL,
  `classroom` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_reshteh` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_reshteh` (`id_reshteh`),
  CONSTRAINT `tbl_classroom_ibfk_1` FOREIGN KEY (`id_reshteh`) REFERENCES `tbl_reshteh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classroom`
--

LOCK TABLES `tbl_classroom` WRITE;
/*!40000 ALTER TABLE `tbl_classroom` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_classroom` (`Id`, `classroom`, `name`, `id_reshteh`) VALUES (1,101,'swer',3),(2,102,'kjg',4),(3,101,'پویا',5);
/*!40000 ALTER TABLE `tbl_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_color` (
  `Id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `main1` varchar(20) DEFAULT NULL,
  `main2` varchar(20) DEFAULT NULL,
  `header` varchar(20) DEFAULT NULL,
  `white` varchar(20) DEFAULT NULL,
  `gray` varchar(20) DEFAULT NULL,
  `black` varchar(20) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `green` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_color` (`Id`, `name`, `main1`, `main2`, `header`, `white`, `gray`, `black`, `login`, `green`) VALUES (1,'قرمز خاکستری','#61001d','#9d9ca0','#b23434','#ffffff','#64625e','#2d3436','#ffffff','#2ecc71'),(7,'x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'سبز و زرد','#05a836','#beff0a','#05570a','#ffffff','#5d5b5b','#000000','#ffffff','#59ff00'),(14,'آبی و مشکی','#011789','#ded9d9','#07266e','#ffffff','#5f5d5d','#000000','#ffffff','#4eb00c');
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_comment` (
  `Id` int NOT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `id_username` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `id_doreh` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_username` (`id_username`),
  KEY `id_doreh` (`id_doreh`),
  CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`id_username`) REFERENCES `tbl_users` (`Id`),
  CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_comment` (`Id`, `comment`, `id_username`, `score`, `id_doreh`, `adate`) VALUES (1,' It was very helpful',2,100,101,'2023-01-01 07:25:31'),(2,'Never buy this ! Its a piece of crack !!!',1,10,100,'2022-12-06 07:25:31'),(3,'I learnt a lot from this wonderful cource',2,95,97,'2022-01-01 07:25:31'),(4,'It was a horrible disaster ! such a waste of time ! never ever buy this filthy thing',1,50,101,'2020-05-06 07:25:31'),(5,'It was not as good as they said it would be',6,60,98,'2021-05-06 07:25:31'),(6,'This is some medicore stuff',6,70,101,'2022-01-01 07:25:31');
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discount`
--

DROP TABLE IF EXISTS `tbl_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_discount` (
  `Id` int NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `pass_code` varchar(50) DEFAULT NULL,
  `percent_discount` int DEFAULT NULL,
  `max_discount` int DEFAULT NULL,
  `min_buy` int DEFAULT NULL,
  `start_discount` varchar(50) DEFAULT NULL,
  `end_discount` varchar(50) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `specific_doreh` int DEFAULT NULL,
  `specific_user` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `specific_doreh` (`specific_doreh`),
  KEY `specific_user` (`specific_user`),
  CONSTRAINT `tbl_discount_ibfk_1` FOREIGN KEY (`specific_doreh`) REFERENCES `tbl_doreh` (`Id`),
  CONSTRAINT `tbl_discount_ibfk_2` FOREIGN KEY (`specific_user`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discount`
--

LOCK TABLES `tbl_discount` WRITE;
/*!40000 ALTER TABLE `tbl_discount` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_discount` (`Id`, `title`, `pass_code`, `percent_discount`, `max_discount`, `min_buy`, `start_discount`, `end_discount`, `state`, `specific_doreh`, `specific_user`) VALUES (1,'a','Salart22@',2,23000,20000,'1399/11/02','1400/02/15',2,97,2),(2,'sdfsd','23',100,41500,2000,'1400/01/03','1400/03/26',1,97,6),(5,'sdfsd','23',30,41500,2000,'1400/01/03','1400/03/26',1,97,6),(6,'sdfsd','40',40,41500,2000,'1400/01/03','1400/03/26',1,97,1),(7,'sdfsd','30',70,41500,2000,'1400/01/03','1400/03/26',1,97,1),(8,'sdfsd','70',80,41500,2000,'1400/01/03','1400/03/26',1,97,2),(9,'a','Salart22@',2,23000,20000,'1399/11/02','1400/02/15',2,97,2),(50,'sdfsd','23',30,41500,2000,'1400/01/03','1400/03/26',1,101,6),(60,'sdfsd','40',40,41500,2000,'1400/01/03','1400/03/26',1,98,1),(70,'sdfsd','30',70,41500,2000,'1400/01/03','1400/03/26',1,100,1),(80,'sdfsd','70',80,41500,2000,'1400/01/03','1400/03/26',1,98,2),(90,'a','Salart22@',2,23000,20000,'1399/11/02','1400/02/15',2,98,2);
/*!40000 ALTER TABLE `tbl_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_doreh`
--

DROP TABLE IF EXISTS `tbl_doreh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_doreh` (
  `Id` int NOT NULL,
  `id_reshteh` int DEFAULT NULL,
  `code_doreh` int DEFAULT NULL,
  `start_doreh` varchar(50) DEFAULT NULL,
  `end_doreh` varchar(50) DEFAULT NULL,
  `name_pic` varchar(15) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `session` int DEFAULT NULL,
  `session_t` int DEFAULT NULL,
  `session_a` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `fee_together` int DEFAULT NULL,
  `payment1` int DEFAULT NULL,
  `payment2` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `absent` int DEFAULT NULL,
  `no_start_date` int DEFAULT NULL,
  `no_seen_title` varchar(50) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `name_pic_2` varchar(15) DEFAULT NULL,
  `virtual` int DEFAULT NULL,
  `private_class` int DEFAULT NULL,
  `color_text` varchar(20) DEFAULT NULL,
  `color_back` varchar(20) DEFAULT NULL,
  `second_exam` int DEFAULT NULL,
  `second_portal` int DEFAULT NULL,
  `closed` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_reshteh` (`id_reshteh`),
  CONSTRAINT `tbl_doreh_ibfk_1` FOREIGN KEY (`id_reshteh`) REFERENCES `tbl_reshteh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_doreh`
--

LOCK TABLES `tbl_doreh` WRITE;
/*!40000 ALTER TABLE `tbl_doreh` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_doreh` (`Id`, `id_reshteh`, `code_doreh`, `start_doreh`, `end_doreh`, `name_pic`, `state`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `capacity`, `absent`, `no_start_date`, `no_seen_title`, `gender`, `name_pic_2`, `virtual`, `private_class`, `color_text`, `color_back`, `second_exam`, `second_portal`, `closed`) VALUES (97,3,NULL,'1400/02/30','1400/03/29','..jpeg',1,12,14,26,800000,750000,350000,400000,10,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,3,NULL,'1400/02/21','1400/05/21',NULL,1,12,14,26,800000,750000,350000,400000,10,12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,4,NULL,'1400/01/05','1400/01/10',NULL,1,3,12,5,850000,750000,400000,400000,10,11,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,4,NULL,'1401/07/04','1401/07/23',NULL,1,3,12,5,850000,800000,400000,400000,10,2,0,'',0,NULL,1,1,'#000000','#000000',3,31,0),(102,5,NULL,'1400/03/08','1400/03/12',NULL,NULL,3,12,5,850000,800000,400000,400000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(970,3,NULL,'2021414124','24124124124','..jpeg',1,12,14,26,800000,124124124,350000,400000,10,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9643,3,NULL,'2022/14/14','2024/24/12',NULL,NULL,NULL,NULL,NULL,120000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9807,3,NULL,'2021414124','14124124',NULL,NULL,NULL,NULL,NULL,124124124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_doreh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_doreh_time`
--

DROP TABLE IF EXISTS `tbl_doreh_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_doreh_time` (
  `Id` int NOT NULL,
  `id_doreh` int DEFAULT NULL,
  `time_s` varchar(10) DEFAULT NULL,
  `time_e` varchar(10) DEFAULT NULL,
  `day` int DEFAULT NULL,
  `noe` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `class` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  CONSTRAINT `tbl_doreh_time_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_doreh_time`
--

LOCK TABLES `tbl_doreh_time` WRITE;
/*!40000 ALTER TABLE `tbl_doreh_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_doreh_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_envelope`
--

DROP TABLE IF EXISTS `tbl_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_envelope` (
  `Id` int NOT NULL,
  `model` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  `id_buy_doreh` int DEFAULT NULL,
  `inf` varchar(400) DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `id_exam_plan` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_buy_doreh` (`id_buy_doreh`),
  CONSTRAINT `tbl_envelope_ibfk_1` FOREIGN KEY (`id_buy_doreh`) REFERENCES `tbl_buy_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_envelope`
--

LOCK TABLES `tbl_envelope` WRITE;
/*!40000 ALTER TABLE `tbl_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ex_buy`
--

DROP TABLE IF EXISTS `tbl_ex_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ex_buy` (
  `Id` int NOT NULL,
  `fee` int DEFAULT NULL,
  `id_username` int DEFAULT NULL,
  `id_doreh` int DEFAULT NULL,
  `date_buy` datetime DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `seen` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  KEY `id_username` (`id_username`),
  KEY `id_record` (`id_record`),
  CONSTRAINT `tbl_ex_buy_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`),
  CONSTRAINT `tbl_ex_buy_ibfk_2` FOREIGN KEY (`id_username`) REFERENCES `tbl_users` (`Id`),
  CONSTRAINT `tbl_ex_buy_ibfk_3` FOREIGN KEY (`id_record`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ex_buy`
--

LOCK TABLES `tbl_ex_buy` WRITE;
/*!40000 ALTER TABLE `tbl_ex_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ex_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_exam_plan`
--

DROP TABLE IF EXISTS `tbl_exam_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_exam_plan` (
  `Id` int NOT NULL,
  `date_exam` varchar(50) DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `koa` int DEFAULT NULL,
  `id_doreh` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_record` (`id_record`),
  CONSTRAINT `tbl_exam_plan_ibfk_1` FOREIGN KEY (`id_record`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_exam_plan`
--

LOCK TABLES `tbl_exam_plan` WRITE;
/*!40000 ALTER TABLE `tbl_exam_plan` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_exam_plan` (`Id`, `date_exam`, `id_record`, `adate`, `koa`, `id_doreh`) VALUES (9,'1401/07/01',1,'2022-09-29 10:23:26',1,100),(10,'1401/07/05',1,'2022-09-29 10:25:02',0,100),(11,'1402/07/01',1,'2022-09-29 14:58:24',1,101),(12,'1401/07/05',1,'2022-09-29 14:59:11',1,101),(13,'1401/07/20',1,'2022-09-29 15:03:03',1,101),(14,'1401/07/04',1,'2022-09-29 16:03:17',0,0);
/*!40000 ALTER TABLE `tbl_exam_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fee`
--

DROP TABLE IF EXISTS `tbl_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_fee` (
  `Id` int NOT NULL,
  `fee` int NOT NULL,
  `id_doreh` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  CONSTRAINT `tbl_fee_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fee`
--

LOCK TABLES `tbl_fee` WRITE;
/*!40000 ALTER TABLE `tbl_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gallery`
--

DROP TABLE IF EXISTS `tbl_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gallery` (
  `Id` int NOT NULL,
  `name_pic` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gallery`
--

LOCK TABLES `tbl_gallery` WRITE;
/*!40000 ALTER TABLE `tbl_gallery` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_gallery` (`Id`, `name_pic`) VALUES (1,'.jpeg'),(2,'.jpeg'),(3,'.jpeg'),(4,'.jpeg'),(5,'.jpeg'),(6,'.jpeg'),(7,'.jpeg');
/*!40000 ALTER TABLE `tbl_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_give_book`
--

DROP TABLE IF EXISTS `tbl_give_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_give_book` (
  `Id` int NOT NULL,
  `name` varchar(0) DEFAULT NULL,
  `id_buy_doreh` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `hsdar` int DEFAULT NULL,
  `hsdar_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_buy_doreh` (`id_buy_doreh`),
  CONSTRAINT `tbl_give_book_ibfk_1` FOREIGN KEY (`id_buy_doreh`) REFERENCES `tbl_buy_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_give_book`
--

LOCK TABLES `tbl_give_book` WRITE;
/*!40000 ALTER TABLE `tbl_give_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_give_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_goods`
--

DROP TABLE IF EXISTS `tbl_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_goods` (
  `Id` int NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_goods`
--

LOCK TABLES `tbl_goods` WRITE;
/*!40000 ALTER TABLE `tbl_goods` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_goods` (`Id`, `Title`) VALUES (1,'خودکار'),(5,'چای'),(6,'کتاب nursing ');
/*!40000 ALTER TABLE `tbl_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ht_rate`
--

DROP TABLE IF EXISTS `tbl_ht_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ht_rate` (
  `Id` int NOT NULL,
  `id_username` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `id_doreh` int DEFAULT NULL,
  `tedad` int DEFAULT NULL,
  `mal` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  KEY `id_username` (`id_username`),
  CONSTRAINT `tbl_ht_rate_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`),
  CONSTRAINT `tbl_ht_rate_ibfk_2` FOREIGN KEY (`id_username`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ht_rate`
--

LOCK TABLES `tbl_ht_rate` WRITE;
/*!40000 ALTER TABLE `tbl_ht_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ht_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_institute`
--

DROP TABLE IF EXISTS `tbl_institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_institute` (
  `Id` int NOT NULL,
  `location` varchar(75) DEFAULT NULL,
  `name` varchar(75) NOT NULL,
  `id_doreh` int NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  CONSTRAINT `tbl_institute_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_institute`
--

LOCK TABLES `tbl_institute` WRITE;
/*!40000 ALTER TABLE `tbl_institute` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_meet`
--

DROP TABLE IF EXISTS `tbl_meet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_meet` (
  `Id` int NOT NULL,
  `id_doreh` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `meet_date` varchar(50) DEFAULT NULL,
  `time_s` varchar(50) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `state` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `id_subject` int DEFAULT NULL,
  `class` int DEFAULT NULL,
  `err` int DEFAULT NULL,
  `err_help` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  KEY `id_subject` (`id_subject`),
  KEY `teacher` (`teacher`),
  CONSTRAINT `tbl_meet_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`),
  CONSTRAINT `tbl_meet_ibfk_2` FOREIGN KEY (`id_subject`) REFERENCES `tbl_subject` (`Id`),
  CONSTRAINT `tbl_meet_ibfk_3` FOREIGN KEY (`teacher`) REFERENCES `tbl_users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_meet`
--

LOCK TABLES `tbl_meet` WRITE;
/*!40000 ALTER TABLE `tbl_meet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_meet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_message`
--

DROP TABLE IF EXISTS `tbl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_message` (
  `Id` int NOT NULL,
  `model` int DEFAULT NULL,
  `from_m` int DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `issue2` int DEFAULT NULL,
  `message` varchar(750) DEFAULT NULL,
  `seen` int DEFAULT NULL,
  `name_pic_1` varchar(15) DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `id_doreh` int DEFAULT NULL,
  `id_envelope` int DEFAULT NULL,
  `dyn` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_doreh` (`id_doreh`),
  KEY `id_envelope` (`id_envelope`),
  CONSTRAINT `tbl_message_ibfk_1` FOREIGN KEY (`id_doreh`) REFERENCES `tbl_doreh` (`Id`),
  CONSTRAINT `tbl_message_ibfk_2` FOREIGN KEY (`id_envelope`) REFERENCES `tbl_envelope` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_message`
--

LOCK TABLES `tbl_message` WRITE;
/*!40000 ALTER TABLE `tbl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_portal`
--

DROP TABLE IF EXISTS `tbl_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_portal` (
  `Id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `Token` varchar(50) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `RRN` varchar(100) DEFAULT NULL,
  `terminal_no` varchar(100) DEFAULT NULL,
  `hash_card` varchar(100) DEFAULT NULL,
  `tsp_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_portal`
--

LOCK TABLES `tbl_portal` WRITE;
/*!40000 ALTER TABLE `tbl_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reshteh`
--

DROP TABLE IF EXISTS `tbl_reshteh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reshteh` (
  `Id` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Detail` varchar(100) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `id_sort` int DEFAULT NULL,
  `name_pic` varchar(15) DEFAULT NULL,
  `session` int DEFAULT NULL,
  `session_t` int DEFAULT NULL,
  `session_a` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `fee_together` int DEFAULT NULL,
  `payment1` int DEFAULT NULL,
  `payment2` int DEFAULT NULL,
  `international_code` varchar(50) DEFAULT NULL,
  `delivery_book` int DEFAULT NULL,
  `give_book` int DEFAULT NULL,
  `exam` int DEFAULT NULL,
  `govahi` int DEFAULT NULL,
  `karvarzi` int DEFAULT NULL,
  `karamozi` int DEFAULT NULL,
  `record_score` int DEFAULT NULL,
  `record_portal` int DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `subset` int DEFAULT NULL,
  `name_pic_2` varchar(15) DEFAULT NULL,
  `virtual` int DEFAULT NULL,
  `private_class` int DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `color_text` varchar(20) DEFAULT NULL,
  `color_back` varchar(20) DEFAULT NULL,
  `absent` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `second_exam` int DEFAULT NULL,
  `second_portal` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reshteh`
--

LOCK TABLES `tbl_reshteh` WRITE;
/*!40000 ALTER TABLE `tbl_reshteh` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_reshteh` (`Id`, `Title`, `Detail`, `state`, `id_sort`, `name_pic`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `international_code`, `delivery_book`, `give_book`, `exam`, `govahi`, `karvarzi`, `karamozi`, `record_score`, `record_portal`, `gender`, `subset`, `name_pic_2`, `virtual`, `private_class`, `label`, `color_text`, `color_back`, `absent`, `capacity`, `second_exam`, `second_portal`) VALUES (3,'کمک های اولیه','',1,1,'.72608.jpeg',12,14,26,800000,750000,350000,400000,'541120470020001',1,1,1,1,1,1,1,1,0,2,NULL,NULL,NULL,'کمک','#000000','#000000',NULL,NULL,NULL,NULL),(4,'sdf','',1,4,'.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'a','',1,4,'.png',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_reshteh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shop`
--

DROP TABLE IF EXISTS `tbl_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_shop` (
  `Id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `detail` varchar(0) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `name_pic` varchar(15) DEFAULT NULL,
  `link` int DEFAULT NULL,
  `name_pic2` varchar(50) DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shop`
--

LOCK TABLES `tbl_shop` WRITE;
/*!40000 ALTER TABLE `tbl_shop` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_shop` (`Id`, `name`, `detail`, `price`, `state`, `name_pic`, `link`, `name_pic2`, `ord`) VALUES (1,'a','',1000,1,'',0,'',1),(2,'b','',2534,1,'',0,'',2);
/*!40000 ALTER TABLE `tbl_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider` (
  `Id` int NOT NULL,
  `Title` varchar(60) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `name_pic` varchar(15) DEFAULT NULL,
  `anim` int DEFAULT NULL,
  `anim_text` int DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider`
--

LOCK TABLES `tbl_slider` WRITE;
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_slider` (`Id`, `Title`, `state`, `name_pic`, `anim`, `anim_text`, `ord`) VALUES (1,'اسلایدر۱',1,'97102.png',15,33,NULL),(2,'sfd',1,'39356.png',1,1,NULL);
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subject`
--

DROP TABLE IF EXISTS `tbl_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subject` (
  `Id` int NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `id_reshteh` int DEFAULT NULL,
  `session` int DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_reshteh` (`id_reshteh`),
  CONSTRAINT `tbl_subject_ibfk_1` FOREIGN KEY (`id_reshteh`) REFERENCES `tbl_reshteh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subject`
--

LOCK TABLES `tbl_subject` WRITE;
/*!40000 ALTER TABLE `tbl_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transfer`
--

DROP TABLE IF EXISTS `tbl_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transfer` (
  `Id` int NOT NULL,
  `id_buy_doreh_st` int DEFAULT NULL,
  `id_buy_doreh_en` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `id_buy_doreh_st` (`id_buy_doreh_st`),
  KEY `id_buy_doreh_en` (`id_buy_doreh_en`),
  CONSTRAINT `tbl_transfer_ibfk_1` FOREIGN KEY (`id_buy_doreh_st`) REFERENCES `tbl_buy_doreh` (`Id`),
  CONSTRAINT `tbl_transfer_ibfk_2` FOREIGN KEY (`id_buy_doreh_en`) REFERENCES `tbl_buy_doreh` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transfer`
--

LOCK TABLES `tbl_transfer` WRITE;
/*!40000 ALTER TABLE `tbl_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `Id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varbinary(256) DEFAULT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `active` int NOT NULL,
  `state` int NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `codemeli` varchar(12) DEFAULT NULL,
  `sh_sh` varchar(12) DEFAULT NULL,
  `father` varchar(25) DEFAULT NULL,
  `ldate` varchar(25) DEFAULT NULL,
  `ms` varchar(25) DEFAULT NULL,
  `marital` int DEFAULT NULL,
  `country` int DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `field` varchar(30) DEFAULT NULL,
  `fixed_phone` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `shaba` varchar(28) DEFAULT NULL,
  `card` varchar(25) DEFAULT NULL,
  `name_pic_1` varchar(15) DEFAULT NULL,
  `name_pic_2` varchar(15) DEFAULT NULL,
  `name_pic_3` varchar(15) DEFAULT NULL,
  `name_pic_4` varchar(15) DEFAULT NULL,
  `name_pic_5` varchar(15) DEFAULT NULL,
  `name_pic_6` varchar(15) DEFAULT NULL,
  `name_pic_7` varchar(15) DEFAULT NULL,
  `know` int DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `name_pic_8` varchar(15) DEFAULT NULL,
  `label` int DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `phone2` varchar(13) DEFAULT NULL,
  `more_inf` varchar(700) DEFAULT NULL,
  `fee_offer` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_users` (`Id`, `username`, `password`, `fname`, `lname`, `active`, `state`, `phone`, `codemeli`, `sh_sh`, `father`, `ldate`, `ms`, `marital`, `country`, `grade`, `field`, `fixed_phone`, `city`, `address`, `email`, `shaba`, `card`, `name_pic_1`, `name_pic_2`, `name_pic_3`, `name_pic_4`, `name_pic_5`, `name_pic_6`, `name_pic_7`, `know`, `gender`, `name_pic_8`, `label`, `post`, `adate`, `phone2`, `more_inf`, `fee_offer`) VALUES (1,'Nimz',_binary '\�ҀYB�!�\��\�a�^','nima','zare',1,3,'09055307841','',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-23 15:56:42',NULL,NULL,NULL),(2,'1',_binary '\�\�B8��#�\r\�P�ou��','Hamid','Zehtab',1,1,'1','0925943037','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-23 16:39:25','','',0),(4,'2',_binary '\�ҀYB�!�\��\�a�^','1','1',1,1,'09940374593',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-24 18:52:59',NULL,NULL,NULL),(5,'34',_binary '\�i�=�f�D\�\���c�','a','b',1,1,'343','34','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-24 19:49:20','','',0),(6,'23',_binary '7i<�t�I\�]��\�ع�\�','Sajjad','Arghaiee',1,1,'34','23','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-29 14:44:10','','',0),(7,'422',_binary '�TT\�\'�\�\\�}$<^�','صثق','234',1,1,'234','422','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-29 14:44:54','','',0),(8,'2342',_binary '#!�M�\�aג\"?dp\0\�_','23','234',1,1,'2342','2342','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-29 14:45:21','','',0),(9,'654',_binary '�#;h.\�Ud�x�\�lT','سیب','تسنمیب',1,4,'464','654','','','','',0,1,'0','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,'','2022-09-29 14:45:50','','',0);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_video` (
  `Id` int NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `detail` varchar(150) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `name_pic_1` varchar(15) DEFAULT NULL,
  `name_pic_2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_video`
--

LOCK TABLES `tbl_video` WRITE;
/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */;
REPLACE  IGNORE INTO `tbl_video` (`Id`, `Title`, `detail`, `state`, `name_pic_1`, `name_pic_2`) VALUES (2,'bs','sdfsdf',1,'35874.png','mp4'),(3,'ad','ad',1,'76005.jpeg','55890.mp4'),(4,'فیلم مهارت','sdf',1,'19779.png','37692.mp4'),(5,'یی','سیس',1,'59131.jpeg','29770.mp4');
/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-04 12:35:00
