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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `award_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `award_given_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,3,'Padma Bhushan','APJ Kalam','Awesome Award','2013-02-06 14:29:52','2013-02-06 14:29:52');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$ptgFit68eG7Jyx0b7Do1Iuq8CrOAtJshwBIN5nAwmVa7fwE7NyH7.',NULL,NULL,NULL,2,'2013-01-22 12:24:59','2013-01-22 12:24:29','127.0.0.1','127.0.0.1','2013-01-22 12:22:45','2013-01-22 12:24:59'),(2,'akashdevaraju@gmail.com','$2a$10$uP/DttLjGLaN3CecpJ69JOhlUdPOgL6w/SJ0GbTq0VnseEv3DJyHC',NULL,NULL,NULL,63,'2013-02-05 14:11:42','2013-02-04 05:40:49','127.0.0.1','127.0.0.1','2013-01-22 12:25:32','2013-02-05 14:11:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `castes`
--

LOCK TABLES `castes` WRITE;
/*!40000 ALTER TABLE `castes` DISABLE KEYS */;
INSERT INTO `castes` VALUES (1,'Scheduled Caste (SC)','2013-02-04 08:22:14','2013-02-04 08:22:14'),(2,'Other Backward Caste (OBC)','2013-02-04 08:22:39','2013-02-04 08:22:39'),(3,'Scheduled Tribe (ST)','2013-02-04 08:22:58','2013-02-04 08:22:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
INSERT INTO `dependents` VALUES (1,3,'Vishakha',1,'2013-01-31',1,'2013-01-31 17:39:55','2013-01-31 17:39:55'),(2,3,'Vasantha',1,'2013-01-31',1,'2013-01-31 17:40:13','2013-01-31 17:40:13'),(3,3,'Sagar',2,'2013-01-31',2,'2013-01-31 17:41:02','2013-01-31 17:41:02'),(4,4,'Devaraju R',5,'2013-01-31',1,'2013-01-31 17:41:26','2013-01-31 17:41:26'),(5,4,'Akash Devaraju',2,'2013-01-31',2,'2013-01-31 17:41:50','2013-01-31 17:41:50'),(6,3,'Mayuri',3,'2013-01-31',1,'2013-01-31 17:45:11','2013-01-31 17:45:11'),(7,10,'Usha Maam',4,'2013-02-05',1,'2013-02-05 07:49:19','2013-02-05 07:49:19'),(8,10,'Rohani',3,'2014-07-17',2,'2013-02-05 07:54:58','2013-02-05 07:54:58'),(9,10,'Murthy',2,'2013-02-05',1,'2013-02-05 08:15:21','2013-02-05 08:15:21'),(10,4,'Akash Devaraju',2,'2013-06-03',2,'2013-02-05 08:49:03','2013-02-05 08:49:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Belgaum','2013-01-25 10:04:52','2013-01-25 10:04:52'),(2,'Alirajpur','2013-01-31 06:50:45','2013-01-31 06:50:45'),(3,'Morena','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Sheopur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Bhind','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Gwalior','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Datia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Shivpuri','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Guna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Ashoknagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Tikamgarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Chhatarpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Panna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Sagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Damoh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Satna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Rewa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Shahdol','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Umaria','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Sidhi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Anuppur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Mandsaur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Neemuch','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Ratlam','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Ujjain','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Shajapur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Dewas','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Jhabua','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Dhar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Indore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Khargone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Badwani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Khandwa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Burhanpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Rajgarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Vidisha','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Bhopal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Sehore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Raisen','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Betul','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Hoshangabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Harda','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Jabalpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Katni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Narsinghpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Mandla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Dindori','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Chhindwara','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Seoni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Balaghat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Alirajpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Singrouli','0000-00-00 00:00:00','0000-00-00 00:00:00');
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
  `emp_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_mname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_fathername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `caste_id` int(11) DEFAULT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `emp_permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_loc_master_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'EMP-002','Akash Devaraju','Akash','D','Devaraju','Devaraju',1,'2013-01-30',1,1,1,1,'Sir MVIT','Haryana','919538220901','919538220901','akashdevaraju@gmail.com','2013-01-30 06:19:15','2013-02-04 09:43:34'),(4,'EMP-003','Sagar Devaraju','Sagar','','Devaraju','Devaraju',1,'2013-01-30',1,1,1,1,'Sir MVIT','Karnataka','919538220901','919538220901','akashdevaraju@gmail.com','2013-01-30 06:20:52','2013-02-04 09:24:27'),(7,'EMP-004','Venkat Mangudi','Venkat','M ','Mangudi','Mangudi',1,'2013-01-31',1,1,1,1,'MVIT Bangalore','Bang','9568554745','524565669858','akashdevaraju@gmail.com','2013-01-31 19:04:17','2013-02-05 06:12:23'),(8,'EMP-005','Spindoctor','Spin','D','Soctor','Devaraju',1,'2013-02-04',1,2,3,3,'sfdsf','sdfdsf','9538220901','9566464','akashdevaraju@gmail.com','2013-02-04 07:31:05','2013-02-04 09:25:10'),(9,'EMP-006','Shweta Tiwari','Sweta','T ','Tiwari','Mr Tiwari',2,'2013-08-16',1,3,2,2,'dsfdsf','dfsdfdf','785412698','458962236','akashdevaraju@gmail.com','2013-02-04 09:21:40','2013-02-04 09:21:40'),(10,'EMP-001','Raghvendra Rao','Raghvendra','R','Rao','Rags',1,'2013-02-04',1,1,3,3,'Flat No.6,1st Floor, SANNIDHYA APARTMENTS,Azad Society Rd,AMBAVADI, Opp.Azad Society Bus-Stop, AHMEDABAD, IN-GJ 380015','43432rwer','918141779895','918141779895','akashdevaraju@gmail.com','2013-02-04 09:40:17','2013-02-04 09:40:17'),(11,'EMP-006','Manjunath Lamani','Manjunath','L','Lamani','dfdf',1,'2013-02-05',1,2,2,1,'dsfdsf','sfsdff','995665656','54654544','akashdevaraju@gmail.com','2013-02-05 06:27:12','2013-02-05 06:27:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Male','2013-02-04 07:11:21','2013-02-04 07:11:21'),(2,'Female','2013-02-04 07:11:34','2013-02-04 07:11:34'),(3,'Other','2013-02-04 07:11:46','2013-02-04 07:11:46');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_masters`
--

LOCK TABLES `institution_masters` WRITE;
/*!40000 ALTER TABLE `institution_masters` DISABLE KEYS */;
INSERT INTO `institution_masters` VALUES (1,1,'Alijapur CM',1,1,2,10,'2013-01-31 07:45:10','2013-02-01 12:07:35'),(2,2,'VMC',4,2,2,65,'2013-01-31 07:49:58','2013-01-31 07:49:58'),(5,5,'Akash',2,2,2,23,'2013-02-01 10:25:50','2013-02-01 10:25:50'),(6,1,'Alijapur-CM & HO Office',5,3,42,21,'2013-02-05 13:38:44','2013-02-05 13:38:44'),(7,1,'Baptist General',1,1,1,19,'2013-02-06 10:38:23','2013-02-06 10:38:23');
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
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Maternity','2013-02-06 13:32:19','2013-02-06 13:32:19'),(2,'Sick','2013-02-06 13:32:52','2013-02-06 13:32:52'),(3,'Study','2013-02-06 13:33:09','2013-02-06 13:33:09');
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaveemps`
--

DROP TABLE IF EXISTS `leaveemps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaveemps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `leave_reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaveemps`
--

LOCK TABLES `leaveemps` WRITE;
/*!40000 ALTER TABLE `leaveemps` DISABLE KEYS */;
INSERT INTO `leaveemps` VALUES (1,3,'2013-02-06','2013-02-18',3,3,'Studying','2013-02-06 13:41:59','2013-02-06 13:41:59'),(2,3,'2013-02-12','2013-02-20',13,2,'Had work pressure','2013-02-06 14:00:22','2013-02-06 14:02:28');
/*!40000 ALTER TABLE `leaveemps` ENABLE KEYS */;
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
  `address` text COLLATE utf8_unicode_ci,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (18,1,'2013-02-05 12:27:44','2013-02-05 12:27:44','Venkat Mangudi Consulting,Bangalore,India',12.9716,77.5946),(19,8,'2013-02-05 12:34:25','2013-02-05 12:34:25','101 JAYSADAN SUKHVILAS COLONY \r\nBARWANI\r\nMadhya Pradesh\r\n',22.033,74.8959),(21,1,'2013-02-05 13:05:40','2013-02-05 13:05:40','Sir MVIT\r\nBangalore',13.1507,77.6072),(22,1,'2013-02-05 13:06:21','2013-02-05 13:06:21','Kendriya Vidyalaya,Malleswaram,Bangalore',13.0094,77.5687),(23,1,'2013-02-06 09:33:46','2013-02-06 09:33:46','The Leela Palace,Bangalore',13.0085,77.5686);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postings`
--

LOCK TABLES `postings` WRITE;
/*!40000 ALTER TABLE `postings` DISABLE KEYS */;
INSERT INTO `postings` VALUES (1,3,1,1,'2013-01-31','2013-01-31','100-2200','2013-01-31 13:35:42','2013-01-31 13:35:42'),(2,3,2,3,'2013-01-21','2013-01-26','200-3666','2013-01-31 13:36:09','2013-01-31 13:36:09'),(3,4,2,5,'2013-01-31','2013-01-31','2200-220000','2013-01-31 13:36:32','2013-01-31 13:36:32'),(4,10,2,3,'2013-02-05','2013-02-05','1000-2200','2013-02-05 07:18:03','2013-02-05 07:18:03'),(5,10,2,4,'2012-02-05','2017-02-05','2000-20000','2013-02-05 07:45:15','2013-02-05 07:45:15'),(6,10,5,4,'2013-02-05','2013-02-05','5660-25585','2013-02-05 07:46:33','2013-02-05 07:48:19'),(7,9,7,3,'2014-10-08','2015-09-20','1000-2200','2013-02-06 11:12:21','2013-02-06 11:12:21');
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
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `current_payscale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `new_payscale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,3,'1000-5666',4,'20000-214465',1698,'2013-02-06 15:29:41','2013-02-06 15:29:41');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifications`
--

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;
INSERT INTO `qualifications` VALUES (1,3,1,1,1,1991,1,'Awesome Student\r\n','2013-01-31 20:35:47','2013-01-31 20:35:47'),(2,3,2,3,2,2009,3,'Brilliant','2013-01-31 20:36:16','2013-01-31 20:36:16'),(3,4,1,2,2,2010,2,'Best Student','2013-01-31 20:36:48','2013-01-31 20:36:48'),(4,8,1,1,1,16961,1,'awesome','2013-02-04 07:33:35','2013-02-04 07:33:35'),(5,9,2,3,2,2009,1,'Good ','2013-02-04 10:41:47','2013-02-04 10:42:59'),(6,10,2,2,2,2009,2,'Great Student','2013-02-04 13:07:14','2013-02-04 13:07:58'),(7,3,3,3,2,2013,2,'Working','2013-02-05 05:50:51','2013-02-05 05:50:51'),(12,3,1,1,1,3424,1,'3fssdf','2013-02-05 06:00:43','2013-02-05 06:00:43'),(14,3,2,2,2,3698,1,'adsad','2013-02-05 06:06:59','2013-02-05 06:06:59'),(15,7,2,2,2,2013,1,'dsdasd','2013-02-05 06:12:46','2013-02-05 06:12:46'),(16,9,1,1,1,1369,1,'','2013-02-05 06:18:55','2013-02-05 06:18:55'),(17,7,1,1,1,1996,1,'sdsad','2013-02-05 06:25:51','2013-02-05 06:25:51'),(18,11,1,3,2,1991,1,'dsfdsfdsf','2013-02-05 06:27:38','2013-02-05 06:27:38'),(19,4,1,1,1,1991,1,'dasd','2013-02-05 06:31:25','2013-02-05 06:31:25'),(20,4,3,3,2,1998,1,'dfsdfsfd','2013-02-05 06:32:06','2013-02-05 06:32:06'),(21,7,1,2,2,1983,1,'158333sadsd','2013-02-05 06:35:57','2013-02-05 06:35:57'),(22,7,1,2,2,1983,1,'158333sadsd','2013-02-05 06:36:30','2013-02-05 06:36:30'),(23,4,1,1,1,1986,1,'','2013-02-05 06:38:17','2013-02-05 06:38:17'),(24,7,1,1,1,1985,1,'dsadsad','2013-02-05 06:40:28','2013-02-05 06:40:28'),(25,3,3,2,3,1569,1,'fdsfsdf','2013-02-05 06:44:17','2013-02-05 06:44:17'),(26,7,1,1,1,1987,1,'dfdsf','2013-02-05 06:45:40','2013-02-05 06:45:40'),(27,9,1,1,1,2015,187,'Outstanding Student\r\n','2013-02-05 06:47:39','2013-02-06 11:13:16'),(28,10,1,1,1,1895,1,'Edited','2013-02-05 06:49:58','2013-02-05 07:18:42'),(29,10,1,3,2,1983,1,'dsdsd','2013-02-05 06:59:22','2013-02-05 06:59:22'),(30,10,1,1,1,8989,1,'back workingh','2013-02-05 07:05:23','2013-02-05 07:05:23'),(31,10,2,3,3,1997,1,'Works ','2013-02-05 07:12:15','2013-02-05 07:12:15'),(32,10,1,1,1,1789,1,'1546','2013-02-05 07:13:16','2013-02-05 07:19:38'),(33,7,1,1,1,1968,229,'Awesome','2013-02-06 09:04:29','2013-02-06 09:06:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religions`
--

LOCK TABLES `religions` WRITE;
/*!40000 ALTER TABLE `religions` DISABLE KEYS */;
INSERT INTO `religions` VALUES (1,'Hindu','2013-02-04 08:20:44','2013-02-04 08:20:44'),(2,'Muslim','2013-02-04 08:20:55','2013-02-04 08:20:55'),(3,'Sikh','2013-02-04 08:21:09','2013-02-04 08:21:09'),(4,'Jain','2013-02-04 08:21:20','2013-02-04 08:21:20');
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
INSERT INTO `schema_migrations` VALUES ('20130122074428'),('20130122122125'),('20130122122137'),('20130122122138'),('20130123073241'),('20130123080742'),('20130123095633'),('20130124114744'),('20130125060040'),('20130125060220'),('20130125060243'),('20130125062906'),('20130125063013'),('20130125063114'),('20130125072410'),('20130125090212'),('20130125090239'),('20130125090310'),('20130125090334'),('20130125090409'),('20130125095432'),('20130125114045'),('20130125114130'),('20130125114216'),('20130125115619'),('20130128071738'),('20130128071804'),('20130128071830'),('20130128110922'),('20130128112512'),('20130128124933'),('20130130101926'),('20130130121618'),('20130131065258'),('20130131070349'),('20130131073358'),('20130131113812'),('20130131115457'),('20130131125437'),('20130131131201'),('20130131170004'),('20130131170107'),('20130131171902'),('20130131173351'),('20130131200632'),('20130131200728'),('20130131200807'),('20130131200948'),('20130131202409'),('20130204063637'),('20130204065417'),('20130204091652'),('20130204093301'),('20130205115917'),('20130206125851'),('20130206130312'),('20130206132601'),('20130206132909'),('20130206142117'),('20130206145543'),('20130206151811');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcauses`
--

DROP TABLE IF EXISTS `showcauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcauses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `case_no` int(11) DEFAULT NULL,
  `district_authority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SC_date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcauses`
--

LOCK TABLES `showcauses` WRITE;
/*!40000 ALTER TABLE `showcauses` DISABLE KEYS */;
INSERT INTO `showcauses` VALUES (1,3,12136,'Major Vallab','2013-02-06','Misuse of property','Big details','2013-02-06 15:03:43','2013-02-06 15:03:43');
/*!40000 ALTER TABLE `showcauses` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialisations`
--

LOCK TABLES `specialisations` WRITE;
/*!40000 ALTER TABLE `specialisations` DISABLE KEYS */;
INSERT INTO `specialisations` VALUES (1,'Medical','2013-01-31 20:19:04','2013-01-31 20:19:04'),(2,'Engineering','2013-01-31 20:19:18','2013-01-31 20:19:18'),(3,'Arts','2013-01-31 20:19:37','2013-01-31 20:19:37'),(4,'None','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Anesthesiology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Aviation Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Anatomy','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Biochemistry','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Biophysics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Community Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Dermatology, Venerology and Leprosy','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Family Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Forensic Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'General Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Geriatrics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Health Administration','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Hospital Administration','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Immuno Haematology and Blood Transfusion','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Medical Genetics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Microbiology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Nuclear Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Pathology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Paediatrics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Pharmacology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Physical Medicine Rehabilitation','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Physiology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Psychiatry','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Radio-diagnosis','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Radio-therapy','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Rheumatology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Sports Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Tropical Medicine','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Tuberculosis & Respiratory Medicine or Pulmonary Medicine.','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Otorhinolaryngology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'General Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Ophthalmology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Orthopedics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Obstetrics & Gynecology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Cardiology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Clinical Hematology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Clinical Pharmacology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Endocrinology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Immunology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Medical Gastroenterology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Medical Genetics','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Medical Oncology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Neonatology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Nephrology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Neurology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Neuro-radiology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Cardio vascular & Thoracic Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Urology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Neuro-Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Paediatrics Surgery.','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Plastic & Reconstructive Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Surgical Gastroenterology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Surgical Oncology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Endocrine Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Gynecological Oncology','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Vascular Surgery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Anesthesiology (D.A.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Clinical Pathology (D.C.P.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Community Medicine (D.C.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Dermatology, Venerology and Leprosy (DDVL)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Forensic Medicine (D.F.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Health Education (D.H.E.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'Health Administration (D.H.A.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Immuno-Haematology & Blood Transfusion (D.I.H.B.T.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Marine Medicine (Dip. M.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Microbiology (D.Micro)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Nutrition (D.N.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Obstetrics & Gynecology (D.G.O.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Occupational Health (D.O.H.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Ophthalmology (D.O.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Orthopedics (D.Ortho.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'Oto-Rhino0Laryngology(D.L.O.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'Paediatrics( D.C.H.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Physical Medicine & Rehabilitation (D.Phy. Med. & R.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'Psychiatry (D.P.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Public Health (D.P.H.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Radio-diagnosis (D.M.R.D.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Radio-therapy (D.M.R.T.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Radiological Physics (D.R.P.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Sport Medicine (D.S.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Tropical Medicine & Health (D.T.M. & H.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Tuberculosis & Chest Diseases (D.T.C.D.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Virology (D.Vir.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Radiation Medicine (D.R.M.)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Neuro-pathology (DNP)','0000-00-00 00:00:00','0000-00-00 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Karnataka/कर्नाटक','2013-01-25 10:03:34','2013-01-30 06:42:50'),(2,'Maharashtra/महाराष्ट्र','2013-01-25 11:36:46','2013-01-30 06:43:21'),(3,'Pune/पुना','2013-01-28 11:22:02','2013-01-30 06:45:55'),(4,'Tamil Nadu/तमिलनाडु','2013-01-28 12:40:26','2013-01-30 06:46:33'),(6,'Mahabalipuram/महाबलीपुरम','2013-01-30 11:36:17','2013-01-30 13:07:44'),(7,'Gujarat/गुजरात','2013-01-30 13:06:17','2013-01-30 13:08:22'),(8,'Madhya Pradesh','2013-02-05 12:33:51','2013-02-05 12:33:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'Sir M Visvesvaraya Institute','2013-01-31 20:34:31','2013-01-31 20:34:31'),(2,'Kendriya Vidyalaya','2013-01-31 20:34:50','2013-01-31 20:34:50'),(3,'Bharatiya Vidhya Bhavan','2013-01-31 20:35:15','2013-01-31 20:35:15'),(4,'Nizamâ€™s Institute of Medical Sciences, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'All India Institute of Medical Sciences,New Delhi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Rajasthan University of Health Sciences','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Manipal University','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Amrita Vishwa Vidyapeetham University','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Padamshree Dr. D.Y.Patil University, Navi Mumbai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Armed Forces Medical College,Pune','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Sree Chitra Thirunal Institute for Medical Science and Technology,Thiruvananthapuram','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Baba Faridkot University of Health Sciences','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Sri Ramachandra University, Chennai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Sanjay Gandhi Postgraduate Institute of Medical Sciences,Lucknow','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'West Bengal University of Health Sciences,Kolkata','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Postgraduate Institute of Medical Education & Research,Chandigarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'MS University of Baroda','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Sumandeep Vidyapeeth University, Vadodra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Veer Narmad South Gujarat University','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Maharishi Marakandeshwar Univ. Ambala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'KLE University (Deemed Univ.), Belgaun','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Vinayaka Mission University, Pondicherry','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Bharath University, Chennai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Santosh University, Ghaziabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Acharya N.G. Ranga Agricultural University, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Andhra Pradesh University of Health Sciences, VijayawadaÂ  ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Andhra University, Visakhapatnam','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Dr. B.R. Ambedkar Open University, Jubilee Hills, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Dravidian University, Kuppam ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Hyderabad University, Hyderabad (Central University)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Jawaharlal Nehru Technological University, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Kakatiya University, Warangal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Maulana Azad National Urdu University, Hyderabad (Central University)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Nagarjuna University, Guntur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'National Academy of Legal Studies & Research University, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Osmania University, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Potti Sreeramulu Telugu University, Hyderabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Sri Krishnadevaraya University, Anantapur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Sri Padmavathi Mahila Vishwavidyalayam, Tirupati','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Sri Venkateswara University, Tirupati','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Arunachal University, Itanagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Assam Agricultural University, Jorhat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Assam University, Silchar (Central University)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Dibrugarh University, Dibrugarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Gauhati University, Guwahati','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Tezpur University, Tezpur (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Babasaheb Bhimrao Ambedkar Bizaree University, Muzaffarpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Bhupendra Narayana Mandal University, Madhepura ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Jai Prakash Narian University, Chhapra ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'K.S. Darbhanga Sanskrit Vishwavidyalaya, Darbanga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Lalit Naryan Mithila University, Darbhanga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Magadh University, Bodh Gaya','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Nalanda Open University, Patna ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Patna University, Patna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Rajendra Agricultural University, Samastipur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'T.M. Bhagalpur University, Bhagalpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Veer Kunwar Singh University, Arrah ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Guru Ghasidas University, Bilaspur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Hidayatullah National Law University, Civil Lines, Raipur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Indira Gandhi Krishi Vishwavidyalaya, Raipur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Indira Kala Sangeet Vishwavidyalaya, Khairagarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Pt. Ravishankar Shukla University, Raipur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Goa University, Goa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Bhavnagar University, Bhavnagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Dr. Babasaheb Ambedkar Open University, Ahmedabad ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Gujarat Agricultural University, Sardar Krushinagar, Banaskantha','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'Gujarat Ayurveda University, Jamnagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Gujarat University, Ahmedabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Maharaja Sayajirao University of Baroda, Vadodara','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Hemchandracharya North Gujarat University, PBNo.21,University Road, Patan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Sardar Patel University, Vallabh Vidyanagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Saurashtra University, Rajkot','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'South Gujarat University, Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Kachchh University, CS-60, Jubilee Ground, Bhuj-Kachchh-370 001','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Chaudhary Devi Lal University, Sirsa ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'Choudhary Charan Singh Haryana Agricultural University, Hisar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'Guru Jhambeshwar University, Hisar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Kurukshetra University, Kurukshetra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'Maharishi Dayanand University, Rohtak','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Dr. Y.S. Parmar University of Horticulture & Forestry, Nauni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Himachal Pradesh Agricultural University, Palampur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Himachal Pradesh University, Shimla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Jaypee University of Information Technology, District-Solan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Jammu University, Jammu Tawi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Kashmir University, Srinagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Sher-e-Kashmir University of Agricultural Science & Technology, Srinagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Birsa Agricultural University, Ranchi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Ranchi University, Ranchi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Sidhu Kanhu University, Dumka ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Vinoba Bhave University, Hazaribagh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Bangalore University, Bangalore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Gulbarga University, Gulbarga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Kannada University, Kamalapura','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Karnataka University, Dharwad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Karnataka State Open University, Mysore ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Kuvempu University, Shankaraghatta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Mangalore University, Mangalore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Mysore University, Mysore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'National Law School of India University, Bangalore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Rajiv Gandhi University of Health Sciences, Bangalore ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'University of Agricultural Sciences, Bangalore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'University of Agricultural Sciences, Dharwad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'Vesveswaraiah Technological University, Belgaum ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Women University, Bijapur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'Calicut University, Kozhikode','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'Cochin University of Science & Technology, Kochi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'Kannur University, Kannur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'Kerala Agricultural University, Thrissur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'Kerala University, Thiruvananthapuram','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'Mahatma Gandhi University, Kottayam','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'Shree Sankaracharya University of Sanskrit, Kalady ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'Awadesh Pratap Singh University, Rewa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'Barkatullah University, Bhopal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Devi Ahilya Vishwavidyalaya, Indore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Dr. Hari Singh Gour Vishwavidyalaya, Sagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Jawaharlal Nehru Krishi Vishwavidyalaya, Jabalpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Jiwaji University, Gwalior','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'M.G. Gramodaya Vishwavidyalaya, Chitrakoot','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'M.P. Bhoj University, Bhopal ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Maharishi Mahesh Yogi Vedic Vishwavidyalaya, Jabalpur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Makhanlal Chaturvedi Rashtriya Patrakarita National University of Journalism, Bhopal ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'National Law Institute University, Bhopal ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Rajiv Gandhi Prodoyogiki Vishwavidyalaya, Bhopal ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'Rani Durgavati Vishwavidyalaya, Jabalpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'Vikram University, Ujjain','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'Amravati University, Amravati','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'Dr. Babasaheb Ambedkar Marathwada University, Aurangabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'Dr. Babasaheb Ambedkar Technological University, Lonere ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'Dr. Punjabrao Deshmukh Krishi Vidyapeeth, Akola','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'Kavi Gulguru Kalidas Sanskrit Vishwavidyalaya, Nagpur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'Konkan Krishi Vidyapeeth, Dapoli','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'Maharashtra Animal & Fishery Sciences University, Seminary Hills, Nagpur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'Maharashtra University of Health Sciences, Nashik ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'Mahatma Gandhi Antrrashtriya Hindi Vishwavidyalay, Wardha (Central University)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'Mahatma Phule Krishi Vidyapeeth, Rahuri','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'Marathwada Agricultural University, Parbhani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'Mumbai University, Mumbai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'Nagpur University, Nagpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'North Maharashtra University, Jalgaon','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'Pune University, Pune','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'Shivaji University, Kolhapur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'Smt. Nathibai Damodar Thackersey Womenâ€™s University, Mumbai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'Swami Ramanand Teerth Marathwada University, Nanded','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'Yashwant Rao Chavan Maharashtra Open University, Nashik','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'Central Agricultural University, Imphal (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'Manipur University, Imphal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'North Eastern Hill University, Shilong (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'Mizoram University, Aizawal (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'Nagaland University, Nagaland (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'Berhampur University, Berhampur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'Biju Patnaik University of Technology, Rourkela ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'Fakir Mohan University, Balasore ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'North Orissa University, Bhubaneswar ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'Orissa University of Agriculture & Technology, Bhubaneswar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'Sambalpur University, Sambalpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'Shri Jagannath Sanskrit Vishwavidyalaya, Puri','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'Utkal University, Bhubaneswar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'Utkal University of Culture, Bhubaneswar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'Baba Farid University of Health & Medical Sciences, Kotkapura, ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'Guru Nanak Dev University, Amritsar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'Punjab Agricultural University, Ludhiana','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'Punjab Technical University, Jalandhar ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'Punjabi University,Â  Patiala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'Jai Narain Vyas University, Jodhpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'Kota Open University, Kota','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'Maharishi Dayanand Saraswati University, Ajmer','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'Mohan Lal Sukhadia University, Udaipur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'Rajasthan Agricultural University, Bikaner','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'Rajasthan University, Jaipur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'Maharana Pratap University of Agriculture & Technology, Udaipur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'Rajasthan Sanskrit University, 2-2A, Jhalana Doongari, Jaipur-302 004 ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'University of Bikaner, 23, Civil Lines, Bikaner ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'University of Kota, Kota (Rajashtan)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'Rajasthan Ayurveda University, Jodhpur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'National Law University, Jodhpur ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'Sikkim-Manipal University of Health, Medical & Technological Sciences, Gangtok ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'Alagappa University, Alagappa Nagar, Karaikudi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'Anna University, Guindy, Chennai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'Annamalai University, Annamalainagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'Bharathiar University, Coimbatore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'Bharathidasan University, Tiruchirappalli','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'Madras University, Chennai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Madurai Kamraj University, Madurai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'Manonmaniam Sundarnar University, Thirunelveli','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'Mother Teresa Womenâ€™s University, Kodaikanal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'Periyar University, Salem ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'Tamil University, Thanjavur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'Tamilnadu Agricultural University, Coimbatore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'Tamilnadu Dr. Ambedkar Law University, Chennai ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'Tamilnadu Dr. M.G.R. Medical University, Anna Salai, Chennai ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'Tamilnadu Veterinary & Animal Sciences University, Chennai','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'Thiruvalluvar University, Fort, Vellore â€“ 632 004 ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'Tripura University, Agartala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'Allahabad University, Allahabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'Banaras Hindu University, Varanasi (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'Aligarh Muslim University, Aligarh (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'Lucknow University, Lucknow','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'Dr. B.R. Ambedkar University, Agra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'Deen Dayal Upadhyay Gorakhpur University, Gorakhpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'Sampurnanand Sanskrit Vishwavidyalaya, Varanasi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'Choudhary Charan Singh University, Meerut','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'Chatrapati Sahuji Maharaj Kanpur University, Kanpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'Chandra Shekhar Azad University of Agriculture & Technology, Kanpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'Mahatma Gandhi Kashi Vidyapeeth, Varanasi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'Babasaheb Bhimrao Ambedkar University, Lucknow (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'Bundelkhand University, Jhansi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'Chhatrapati Shahu Ji Maharaj Medical University, Lucknow ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'Dr. Ram Manohar Lohia Awadh University, Faizabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'Jagadguru Rambhadracharya Handicapped University, Chitrakoot Dham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'M.J.P. Rohilkhand University, Bareilly','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'Narendra Deo University of Agriculture & Technology, Faizabad','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'Uttar Pradesh Technical University, Sitapur Raod, Lucknow ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'Veer Bahadur Singh Purvanchal University, Jaunpur','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'Dev Sanskriti Vishwavidyalaya, Gayatrikunj, Shantikunj, Hardwar ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'G.B. Pant University of Agriculture and Technology, Pantnagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'H.N. Bahuguna Garhwal University, Srinagar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'Kumaun University, Nainital','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'Bidhan Chandra Krishi Vishwavidyalaya, Mohanpur, Nadia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'Burdwan University, Rajbati, Burdwan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Calcutta University, Kolkata','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'Jadavpur University, Calcutta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'Kalyani University, Kalyani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'Netaji Subhash Open University, Kolkata ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'North Bengal University, Raja Ram Mohanpur, Darjeeling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'Rabindra Bharati University, Kolkata','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'Uttar Banga Krishi Vishwavidyalaya, District-Cooch Behar ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'Vidya Sagar University, Midnapore','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'Vishwa Bharati University, Shanti Niketan (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'West Bengal University of Animal and Fishery Sciences, Belgachia, Kolkata ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'West Bengal University of Technology, KolkataÂ  ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'Delhi University, Delhi (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'Guru Gobind Singh Indraprastha Vishwavidyalaya, Kashmere Gate, Delhi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'Indira Gandhi National Open University, New Delhi (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'Jamia Mallia Islamia University, New Delhi (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'Jawaharlal Nehru University, New Delhi (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'Panjab University, Chandigarh','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'Pondicherry University, Pondicherry (Central University) ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'NTR University of Health Sciences','0000-00-00 00:00:00','0000-00-00 00:00:00');
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

-- Dump completed on 2013-02-06 21:11:36
