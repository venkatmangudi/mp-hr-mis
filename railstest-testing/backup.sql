-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: beautyness_development
-- ------------------------------------------------------
-- Server version	5.1.66-0ubuntu0.10.04.3

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$ptgFit68eG7Jyx0b7Do1Iuq8CrOAtJshwBIN5nAwmVa7fwE7NyH7.',NULL,NULL,NULL,2,'2013-01-22 12:24:59','2013-01-22 12:24:29','127.0.0.1','127.0.0.1','2013-01-22 12:22:45','2013-01-22 12:24:59'),(2,'akashdevaraju@gmail.com','$2a$10$uP/DttLjGLaN3CecpJ69JOhlUdPOgL6w/SJ0GbTq0VnseEv3DJyHC',NULL,NULL,NULL,62,'2013-02-04 05:40:49','2013-02-01 06:54:30','127.0.0.1','127.0.0.1','2013-01-22 12:25:32','2013-02-04 05:40:49');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_groups`
--

DROP TABLE IF EXISTS `blood_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_groups`
--

LOCK TABLES `blood_groups` WRITE;
/*!40000 ALTER TABLE `blood_groups` DISABLE KEYS */;
INSERT INTO `blood_groups` VALUES (1,'A+','2013-01-25 11:50:06','2013-01-25 11:50:06'),(2,'AB+','2013-01-25 11:50:37','2013-01-25 11:50:37'),(3,'B+','2013-01-25 11:51:04','2013-01-25 11:51:04');
/*!40000 ALTER TABLE `blood_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `castes`
--

DROP TABLE IF EXISTS `castes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `castes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caste_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castes`
--

LOCK TABLES `castes` WRITE;
/*!40000 ALTER TABLE `castes` DISABLE KEYS */;
/*!40000 ALTER TABLE `castes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General','2013-01-30 09:36:06','2013-01-30 09:36:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (2,'Bangalore','2013-01-25 09:17:53','2013-01-25 09:17:53'),(3,'Kolkata','2013-01-25 12:31:12','2013-01-25 12:31:12'),(6,'Pune','2013-01-29 10:04:28','2013-01-29 10:04:28'),(8,'Mumbai','2013-01-30 07:21:40','2013-01-30 07:21:40');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `Dependent_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
INSERT INTO `dependents` VALUES (1,3,'Vishakha',1,'2013-01-31',1,'2013-01-31 17:39:55','2013-01-31 17:39:55'),(2,3,'Vasantha',1,'2013-01-31',1,'2013-01-31 17:40:13','2013-01-31 17:40:13'),(3,3,'Sagar',2,'2013-01-31',2,'2013-01-31 17:41:02','2013-01-31 17:41:02'),(4,4,'Devaraju R',5,'2013-01-31',1,'2013-01-31 17:41:26','2013-01-31 17:41:26'),(5,4,'Akash Devaraju',2,'2013-01-31',2,'2013-01-31 17:41:50','2013-01-31 17:41:50'),(6,3,'Mayuri',3,'2013-01-31',1,'2013-01-31 17:45:11','2013-01-31 17:45:11');
/*!40000 ALTER TABLE `dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Designation_Hindi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Designation_English` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (1,'जिला स्वास्थ्य अधिकारी','District Health Officer','1','2013-01-31 13:03:38','2013-01-31 13:03:38'),(3,'प्राचार्य','Principal','1','2013-01-31 13:04:07','2013-01-31 13:04:07'),(4,'निदेशक','Director','2','2013-01-31 13:04:31','2013-01-31 13:04:31'),(5,'अधीक्षक','Superintendant','1','2013-01-31 13:05:00','2013-01-31 13:05:00');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Belgaum','2013-01-25 10:04:52','2013-01-25 10:04:52'),(2,'Alirajpur','2013-01-31 06:50:45','2013-01-31 06:50:45');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_adds`
--

DROP TABLE IF EXISTS `emp_adds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_adds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_martial_status_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_present_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_identification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_pannum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_dlnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_passportnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_alt_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_alt_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_alt_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_present_loc_master_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_adds`
--

LOCK TABLES `emp_adds` WRITE;
/*!40000 ALTER TABLE `emp_adds` DISABLE KEYS */;
INSERT INTO `emp_adds` VALUES (1,'ad','dasd','asd','ads','asd','dassd','sad','sdad@fm.com','adsad','sads','sfsdf','2013-01-23 10:00:22','2013-01-23 10:00:22'),(2,NULL,NULL,'asd','asdsd','sdasad','sdasada','asdsdsa','asdsd','sadsad','sadsad',NULL,'2013-01-23 10:02:40','2013-01-23 10:02:40');
/*!40000 ALTER TABLE `emp_adds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_edus`
--

DROP TABLE IF EXISTS `emp_edus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_edus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_specialisation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_remarks` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_edus`
--

LOCK TABLES `emp_edus` WRITE;
/*!40000 ALTER TABLE `emp_edus` DISABLE KEYS */;
INSERT INTO `emp_edus` VALUES (1,'Akash','BE','Web Development','Awesome ','2013-01-24 11:53:17','2013-01-24 11:53:17'),(2,'Spin','BE','Python','Awesome employee','2013-01-24 11:57:18','2013-01-24 11:57:18');
/*!40000 ALTER TABLE `emp_edus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_new_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_mname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_fathername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_gender_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_dob` datetime DEFAULT NULL,
  `emp_category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_religion_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_caste_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_bloodgroup_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_loc_master_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'1','123','1234','Akash Devaraju','Akash','D','Devaraju','Devaraju','M','2013-01-30 06:17:00','General','Hindu','SC','AB+','Sir MVIT','Haryana','919538220901','919538220901','akashdevaraju@gmail.com','2013-01-30 06:19:15','2013-01-31 18:31:13'),(4,'2','146','4631','Sagar Devaraju','Sagar','','Devaraju','Devaraju','M','2013-01-30 06:19:00','General','Hindu','SC','AB+','Sir MVIT','Karnataka','919538220901','919538220901','akashdevaraju@gmail.com','2013-01-30 06:20:52','2013-01-30 06:20:52'),(7,'3','569','5421','Venkat Mangudi','Venkat','M ','Mangudi','Mangudi','M','2013-01-31 19:02:00','General','Hindu','Gen','AB+','MVIT Bangalore','Bang','9568554745','524565669858','akashdevaraju@gmail.com','2013-01-31 19:04:17','2013-01-31 19:04:17');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_masters`
--

DROP TABLE IF EXISTS `institution_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode_id` int(11) DEFAULT NULL,
  `Institution_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Institution_type_id` int(11) DEFAULT NULL,
  `Special_Cadre_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `Beds` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_masters`
--

LOCK TABLES `institution_masters` WRITE;
/*!40000 ALTER TABLE `institution_masters` DISABLE KEYS */;
INSERT INTO `institution_masters` VALUES (1,1,'Alijapur CM',1,1,2,10,'2013-01-31 07:45:10','2013-02-01 12:07:35'),(2,2,'VMC',4,2,2,65,'2013-01-31 07:49:58','2013-01-31 07:49:58'),(5,5,'Akash',2,2,2,23,'2013-02-01 10:25:50','2013-02-01 10:25:50');
/*!40000 ALTER TABLE `institution_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_types`
--

DROP TABLE IF EXISTS `institution_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_types`
--

LOCK TABLES `institution_types` WRITE;
/*!40000 ALTER TABLE `institution_types` DISABLE KEYS */;
INSERT INTO `institution_types` VALUES (1,'1 Administrative Office','2013-01-31 07:06:33','2013-01-31 07:06:33'),(2,'2 Civil Surgeon Office','2013-01-31 07:06:54','2013-01-31 07:06:54'),(3,'9 Training Centers','2013-01-31 07:07:17','2013-01-31 07:07:17'),(4,'10 Other District Offices','2013-01-31 07:07:51','2013-01-31 07:07:51'),(5,'4 Civil/Other Hospital','2013-01-31 07:08:12','2013-01-31 07:08:12'),(6,'5 Civil Dispensary','2013-01-31 07:08:28','2013-01-31 07:08:28'),(7,'7 CHC','2013-01-31 07:08:40','2013-01-31 07:08:40'),(8,'8 PHC','2013-01-31 07:08:56','2013-01-31 07:08:56');
/*!40000 ALTER TABLE `institution_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (2,6,'2013-01-29 10:43:38','2013-01-30 12:02:55'),(3,4,'2013-01-29 10:43:49','2013-01-30 12:03:08'),(6,3,'2013-01-30 12:01:17','2013-01-30 12:01:17'),(7,2,'2013-01-30 12:01:34','2013-01-30 12:01:34'),(11,2,'2013-01-30 12:43:56','2013-01-30 12:43:56'),(12,4,'2013-01-30 12:46:14','2013-01-30 12:46:14'),(13,7,'2013-01-30 13:06:41','2013-01-30 13:06:41'),(14,3,'2013-01-31 06:30:00','2013-01-31 06:30:00');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `martial_stats`
--

DROP TABLE IF EXISTS `martial_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `martial_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `martial_status_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `martial_stats`
--

LOCK TABLES `martial_stats` WRITE;
/*!40000 ALTER TABLE `martial_stats` DISABLE KEYS */;
INSERT INTO `martial_stats` VALUES (1,'Married','2013-01-25 12:00:27','2013-01-25 12:00:27'),(2,'Divorced','2013-01-25 12:01:12','2013-01-28 07:36:03'),(3,'Engaged','2013-01-25 12:01:35','2013-01-25 12:01:35');
/*!40000 ALTER TABLE `martial_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pincodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincodes`
--

LOCK TABLES `pincodes` WRITE;
/*!40000 ALTER TABLE `pincodes` DISABLE KEYS */;
INSERT INTO `pincodes` VALUES (1,562157,'2013-01-25 10:05:12','2013-01-25 10:05:12'),(2,698547,'2013-01-25 11:33:24','2013-01-25 11:33:24'),(5,562159,'2013-01-30 09:35:20','2013-01-30 09:35:20');
/*!40000 ALTER TABLE `pincodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postings`
--

DROP TABLE IF EXISTS `postings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `institution_master_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `posting_from` date DEFAULT NULL,
  `posting_to` date DEFAULT NULL,
  `payscale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postings`
--

LOCK TABLES `postings` WRITE;
/*!40000 ALTER TABLE `postings` DISABLE KEYS */;
INSERT INTO `postings` VALUES (1,3,1,1,'2013-01-31','2013-01-31','100-2200','2013-01-31 13:35:42','2013-01-31 13:35:42'),(2,3,2,3,'2013-01-21','2013-01-26','200-3666','2013-01-31 13:36:09','2013-01-31 13:36:09'),(3,4,2,5,'2013-01-31','2013-01-31','2200-220000','2013-01-31 13:36:32','2013-01-31 13:36:32');
/*!40000 ALTER TABLE `postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,'Vishakha','hah','Akash is aweseome','2013-01-22 07:46:20','2013-01-22 11:07:30'),(3,'Spinster','sdads','dsfdsf','2013-01-22 07:46:31','2013-01-24 09:43:29'),(4,'zxc','czc','zxczxc','2013-01-22 10:04:33','2013-01-22 10:04:33'),(5,'Akash ','check','dffdfdf','2013-01-22 12:47:50','2013-01-22 12:47:50'),(8,'Sky','sadsadsd','sdsadsad','2013-01-22 13:42:46','2013-01-22 13:42:46'),(9,'Venkat Sir','sadsdsd','fsdfdf','2013-01-22 14:11:25','2013-01-22 14:11:25'),(10,'Usha Maam','HR Head Main','dfsdfdfx','2013-01-22 14:13:49','2013-01-24 09:26:53'),(11,'Vishu','dsdasdsad','dfcsdfd','2013-01-22 14:19:15','2013-01-22 14:19:15'),(12,'ad','adsdsda','sads','2013-01-24 07:17:02','2013-01-24 07:17:02'),(13,'spil','dsddsda','sdsd','2013-01-24 07:27:48','2013-01-24 07:27:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_names`
--

DROP TABLE IF EXISTS `qualification_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification_names`
--

LOCK TABLES `qualification_names` WRITE;
/*!40000 ALTER TABLE `qualification_names` DISABLE KEYS */;
INSERT INTO `qualification_names` VALUES (1,'MBBS','2013-01-31 20:16:41','2013-01-31 20:16:41'),(2,'MS','2013-01-31 20:16:58','2013-01-31 20:16:58'),(3,'PhD','2013-01-31 20:17:17','2013-01-31 20:17:17');
/*!40000 ALTER TABLE `qualification_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_types`
--

DROP TABLE IF EXISTS `qualification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification_types`
--

LOCK TABLES `qualification_types` WRITE;
/*!40000 ALTER TABLE `qualification_types` DISABLE KEYS */;
INSERT INTO `qualification_types` VALUES (1,'Graduate','2013-01-31 20:15:47','2013-01-31 20:15:47'),(2,'Post Graduate','2013-01-31 20:16:02','2013-01-31 20:16:02'),(3,'Other Graduate','2013-01-31 20:16:17','2013-01-31 20:16:17');
/*!40000 ALTER TABLE `qualification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualifications`
--

DROP TABLE IF EXISTS `qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `qualification_type_id` int(11) DEFAULT NULL,
  `qualification_name_id` int(11) DEFAULT NULL,
  `specialisation_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `Remarks` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifications`
--

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;
INSERT INTO `qualifications` VALUES (1,3,1,1,1,1991,1,'Awesome Student\r\n','2013-01-31 20:35:47','2013-01-31 20:35:47'),(2,3,2,3,2,2009,3,'Brilliant','2013-01-31 20:36:16','2013-01-31 20:36:16'),(3,4,1,2,2,2010,2,'Best Student','2013-01-31 20:36:48','2013-01-31 20:36:48');
/*!40000 ALTER TABLE `qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Relation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1,'Wife','2013-01-31 17:04:58','2013-01-31 17:04:58'),(2,'Brother','2013-01-31 17:05:12','2013-01-31 17:05:12'),(3,'Daughter','2013-01-31 17:05:32','2013-01-31 17:05:32'),(4,'Sister','2013-01-31 17:05:50','2013-01-31 17:05:50'),(5,'Father','2013-01-31 17:07:23','2013-01-31 17:07:23'),(6,'Mother','2013-01-31 17:07:55','2013-01-31 17:07:55');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religions`
--

DROP TABLE IF EXISTS `religions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `religions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religions`
--

LOCK TABLES `religions` WRITE;
/*!40000 ALTER TABLE `religions` DISABLE KEYS */;
/*!40000 ALTER TABLE `religions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130122074428'),('20130122122125'),('20130122122137'),('20130122122138'),('20130123073241'),('20130123080742'),('20130123095633'),('20130124114744'),('20130125060040'),('20130125060220'),('20130125060243'),('20130125062906'),('20130125063013'),('20130125063114'),('20130125072410'),('20130125090212'),('20130125090239'),('20130125090310'),('20130125090334'),('20130125090409'),('20130125095432'),('20130125114045'),('20130125114130'),('20130125114216'),('20130125115619'),('20130128071738'),('20130128071804'),('20130128071830'),('20130128110922'),('20130128112512'),('20130128124933'),('20130130101926'),('20130130121618'),('20130131065258'),('20130131070349'),('20130131073358'),('20130131113812'),('20130131115457'),('20130131125437'),('20130131131201'),('20130131170004'),('20130131170107'),('20130131171902'),('20130131173351'),('20130131200632'),('20130131200728'),('20130131200807'),('20130131200948'),('20130131202409');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_cadres`
--

DROP TABLE IF EXISTS `special_cadres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_cadres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Special_Cadre_Type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_cadres`
--

LOCK TABLES `special_cadres` WRITE;
/*!40000 ALTER TABLE `special_cadres` DISABLE KEYS */;
INSERT INTO `special_cadres` VALUES (1,'Non CEMoNC','2013-01-31 07:00:08','2013-01-31 07:00:08'),(2,'CEMoNC','2013-01-31 07:00:27','2013-01-31 07:00:27'),(3,'BEMoNC','2013-01-31 07:00:46','2013-01-31 07:00:46'),(4,'Non BEMoNC','2013-01-31 07:01:02','2013-01-31 07:01:02');
/*!40000 ALTER TABLE `special_cadres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialisations`
--

DROP TABLE IF EXISTS `specialisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialisations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Specialisation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialisations`
--

LOCK TABLES `specialisations` WRITE;
/*!40000 ALTER TABLE `specialisations` DISABLE KEYS */;
INSERT INTO `specialisations` VALUES (1,'Medical','2013-01-31 20:19:04','2013-01-31 20:19:04'),(2,'Engineering','2013-01-31 20:19:18','2013-01-31 20:19:18'),(3,'Arts','2013-01-31 20:19:37','2013-01-31 20:19:37');
/*!40000 ALTER TABLE `specialisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Karnataka/कर्नाटक','2013-01-25 10:03:34','2013-01-30 06:42:50'),(2,'Maharashtra/महाराष्ट्र','2013-01-25 11:36:46','2013-01-30 06:43:21'),(3,'Pune/पुना','2013-01-28 11:22:02','2013-01-30 06:45:55'),(4,'Tamil Nadu/तमिलनाडु','2013-01-28 12:40:26','2013-01-30 06:46:33'),(6,'Mahabalipuram/महाबलीपुरम','2013-01-30 11:36:17','2013-01-30 13:07:44'),(7,'Gujarat/गुजरात','2013-01-30 13:06:17','2013-01-30 13:08:22');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Status_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Service','2013-01-31 17:13:29','2013-01-31 17:13:29'),(2,'Studying','2013-01-31 17:13:43','2013-01-31 17:13:43'),(3,'Freelancing','2013-01-31 17:14:14','2013-01-31 17:14:14');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taluks`
--

DROP TABLE IF EXISTS `taluks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taluks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taluk_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taluks`
--

LOCK TABLES `taluks` WRITE;
/*!40000 ALTER TABLE `taluks` DISABLE KEYS */;
INSERT INTO `taluks` VALUES (1,'Dharwad','2013-01-25 10:04:29','2013-01-25 10:04:29');
/*!40000 ALTER TABLE `taluks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempus`
--

DROP TABLE IF EXISTS `tempus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempus`
--

LOCK TABLES `tempus` WRITE;
/*!40000 ALTER TABLE `tempus` DISABLE KEYS */;
INSERT INTO `tempus` VALUES (1,'Karnataka','2013-01-28 12:52:29','2013-01-28 12:52:29'),(2,'Maharashtra','2013-01-28 12:59:15','2013-01-28 12:59:15');
/*!40000 ALTER TABLE `tempus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `University_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'Sir M Visvesvaraya Institute','2013-01-31 20:34:31','2013-01-31 20:34:31'),(2,'Kendriya Vidyalaya','2013-01-31 20:34:50','2013-01-31 20:34:50'),(3,'Bharatiya Vidhya Bhavan','2013-01-31 20:35:15','2013-01-31 20:35:15');
/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-04 12:11:28
