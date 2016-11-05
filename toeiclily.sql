-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: toeiclily
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add word type',8,'add_wordtype'),(20,'Can change word type',8,'change_wordtype'),(21,'Can delete word type',8,'delete_wordtype'),(22,'Can add type',9,'add_type'),(23,'Can change type',9,'change_type'),(24,'Can delete type',9,'delete_type'),(25,'Can add level',7,'add_level'),(26,'Can change level',7,'change_level'),(27,'Can delete level',7,'delete_level'),(28,'Can add topic',10,'add_topic'),(29,'Can change topic',10,'change_topic'),(30,'Can delete topic',10,'delete_topic'),(31,'Can add test',11,'add_test'),(32,'Can change test',11,'change_test'),(33,'Can delete test',11,'delete_test'),(34,'Can add grammar topic',12,'add_grammartopic'),(35,'Can change grammar topic',12,'change_grammartopic'),(36,'Can delete grammar topic',12,'delete_grammartopic'),(37,'Can add vocab',13,'add_vocab'),(38,'Can change vocab',13,'change_vocab'),(39,'Can delete vocab',13,'delete_vocab'),(40,'Can add passage',14,'add_passage'),(41,'Can change passage',14,'change_passage'),(42,'Can delete passage',14,'delete_passage'),(43,'Can add question',15,'add_question'),(44,'Can change question',15,'change_question'),(45,'Can delete question',15,'delete_question'),(46,'Can add answer',16,'add_answer'),(47,'Can change answer',16,'change_answer'),(48,'Can delete answer',16,'delete_answer'),(49,'Can add listening topic',17,'add_listeningtopic'),(50,'Can change listening topic',17,'change_listeningtopic'),(51,'Can delete listening topic',17,'delete_listeningtopic'),(52,'Can add video',18,'add_video'),(53,'Can change video',18,'change_video'),(54,'Can delete video',18,'delete_video'),(55,'Can add user answer',19,'add_useranswer'),(56,'Can change user answer',19,'change_useranswer'),(57,'Can delete user answer',19,'delete_useranswer'),(58,'Can add user vocab',20,'add_uservocab'),(59,'Can change user vocab',20,'change_uservocab'),(60,'Can delete user vocab',20,'delete_uservocab'),(61,'Can add user answer grammar quiz',21,'add_useranswergrammarquiz'),(62,'Can change user answer grammar quiz',21,'change_useranswergrammarquiz'),(63,'Can delete user answer grammar quiz',21,'delete_useranswergrammarquiz');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$PJvh98N80sIc$imXlgMGfY34SpxR57qcTdZ3pi4sLbj58+CPEo+/q1ps=','2016-10-11 04:02:07.127000',1,'doof','','','',1,1,'2016-10-11 04:01:15.907000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-10-11 04:03:02.460000','1','beginner',1,'Added.',7,1),(2,'2016-10-11 04:03:09.376000','2','intermediate',1,'Added.',7,1),(3,'2016-10-11 04:03:13.419000','3','advanced',1,'Added.',7,1),(4,'2016-10-11 04:03:32.870000','1','Home',1,'Added.',10,1),(5,'2016-10-11 04:03:40.096000','2','Office',1,'Added.',10,1),(6,'2016-10-11 04:03:44.313000','3','Construction',1,'Added.',10,1),(7,'2016-10-11 04:04:00.988000','1','Grammar',1,'Added.',9,1),(8,'2016-10-11 04:04:05.932000','2','Vocabulary',1,'Added.',9,1),(9,'2016-10-11 04:04:17.240000','3','Listening',1,'Added.',9,1),(10,'2016-10-11 04:04:21.364000','4','Reading',1,'Added.',9,1),(11,'2016-10-11 04:05:02.351000','1','noun',1,'Added.',8,1),(12,'2016-10-11 04:05:05.408000','2','verb',1,'Added.',8,1),(13,'2016-10-11 04:05:09.217000','3','adjective',1,'Added.',8,1),(14,'2016-10-11 04:05:12.068000','4','adverb',1,'Added.',8,1),(15,'2016-10-11 04:05:24.135000','5','idiom',1,'Added.',8,1),(16,'2016-10-11 05:18:49.306000','1','Passive - Bị động',1,'Added.',12,1),(17,'2016-10-11 05:19:05.267000','1','Bị động',2,'Changed title.',12,1),(18,'2016-10-11 05:19:46.349000','1','Bị động',2,'Changed level.',12,1),(19,'2016-10-11 05:32:58.476000','2','Câu tường thuật',1,'Added.',12,1),(20,'2016-10-11 05:45:41.331000','1','Bị động',2,'Changed text.',12,1),(21,'2016-10-11 05:46:37.026000','1','Economy 4 - Test 2',1,'Added.',11,1),(22,'2016-10-11 05:47:05.992000','1','Economy 4 - Test 2 - Câu 1 đến 15',2,'Changed text.',11,1),(23,'2016-10-11 07:59:12.368000','1','Economy 4 - Test 2 - Câu 1 đến 15',3,'',11,1),(24,'2016-10-11 07:59:45.510000','2','Economy 4 - Test 2 - Grammar',1,'Added.',11,1),(25,'2016-10-11 08:00:02.453000','3','Economy 4 - Test 2 - Vocabulary',1,'Added.',11,1),(26,'2016-10-11 08:21:15.022000','1','abc',1,'Added.',15,1),(27,'2016-10-11 08:21:48.805000','1','abc',3,'',15,1),(28,'2016-10-11 08:49:59.567000','3','Danh từ',1,'Added.',12,1),(29,'2016-10-11 08:58:51.270000','4','Hotel',1,'Added.',10,1),(30,'2016-10-11 08:59:05.515000','1','pool',1,'Added.',13,1),(31,'2016-10-11 08:59:10.994000','2','Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.',1,'Added.',15,1),(32,'2016-10-11 09:02:19.051000','1','pool',2,'Changed image.',13,1),(33,'2016-10-11 11:15:26.074000','4','Thì của động từ',1,'Added.',12,1),(34,'2016-10-11 12:17:37.341000','5','Electronics',1,'Added.',10,1),(35,'2016-10-11 12:17:43.963000','2','semiconductor',1,'Added.',13,1),(36,'2016-10-11 12:22:55.066000','6','Important verbs',1,'Added.',10,1),(37,'2016-10-11 12:47:41.286000','3','expect',1,'Added.',13,1),(38,'2016-10-11 12:50:30.332000','7','Important nouns',1,'Added.',10,1),(39,'2016-10-11 12:50:45.705000','4','recovery',1,'Added.',13,1),(40,'2016-10-11 12:51:15.915000','3','Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.',1,'Added.',15,1),(41,'2016-10-11 13:37:31.464000','8','Education',1,'Added.',10,1),(42,'2016-10-11 13:37:34.868000','5','instructor',1,'Added.',13,1),(43,'2016-10-12 00:55:35.446000','5','In, On, At (Địa điểm)',1,'Added.',12,1),(44,'2016-10-12 00:56:58.333000','4','Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.',1,'Added.',15,1),(45,'2016-10-12 01:18:08.147000','3','Danh từ và cấu trúc bổ nghĩa cho danh từ',2,'Changed title.',12,1),(46,'2016-10-12 01:30:57.772000','3','Danh từ và cấu trúc bổ nghĩa cho danh từ',2,'Changed text.',12,1),(47,'2016-10-12 01:44:56.655000','6','Tính từ',1,'Added.',12,1),(48,'2016-10-12 01:52:34.805000','6','apartment',1,'Added.',13,1),(49,'2016-10-12 01:53:34.352000','7','exterior',1,'Added.',13,1),(50,'2016-10-12 01:54:26.944000','9','Architecture & Design',1,'Added.',10,1),(51,'2016-10-12 01:54:38.956000','8','furnishing',1,'Added.',13,1),(52,'2016-10-12 01:55:18.338000','10','Important adjectives',1,'Added.',10,1),(53,'2016-10-12 01:55:23.787000','9','stylish',1,'Added.',13,1),(54,'2016-10-12 01:55:50.667000','10','interior',1,'Added.',13,1),(55,'2016-10-12 01:55:54.115000','5','This apartment complex has an ----- exterior design and stylish interior furnishings.',1,'Added.',15,1),(56,'2016-10-12 01:56:32.084000','2','Office & Workplace',2,'Changed text.',10,1),(57,'2016-10-12 01:57:23.325000','11','Event',1,'Added.',10,1),(58,'2016-10-12 02:01:58.693000','11','perform',1,'Added.',13,1),(59,'2016-10-12 02:03:05.335000','12','admit',1,'Added.',13,1),(60,'2016-10-12 02:16:04.945000','13','participate',1,'Added.',13,1),(61,'2016-10-12 02:16:51.583000','12','Advertising & Communication',1,'Added.',10,1),(62,'2016-10-12 02:16:56.792000','14','public',1,'Added.',13,1),(63,'2016-10-12 02:21:13.852000','13','Products and Services',1,'Added.',10,1),(64,'2016-10-12 02:21:29.779000','15','sales',1,'Added.',13,1),(65,'2016-10-12 02:22:40.427000','16','benefit',1,'Added.',13,1),(66,'2016-10-12 02:23:07.505000','17','fund',1,'Added.',13,1),(67,'2016-10-12 02:23:28.139000','18','scholarship',1,'Added.',13,1),(68,'2016-10-12 02:23:33.229000','6','The public is invited to ----- the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.',1,'Added.',15,1),(69,'2016-10-12 02:35:11.096000','7','Trạng từ',1,'Added.',12,1),(70,'2016-10-12 02:45:18.071000','8','So & Such',1,'Added.',12,1),(71,'2016-10-12 02:48:00.877000','9','Các dạng bổ sung ý nghĩa cho tính từ',1,'Added.',12,1),(72,'2016-10-12 02:59:14.352000','5','Giới từ (Địa điểm)',2,'Changed title.',12,1),(73,'2016-10-12 03:00:34.712000','8','Trạng từ: So & Such',2,'Changed title.',12,1),(74,'2016-10-12 03:00:44.462000','9','Tính từ: Các dạng bổ sung ý nghĩa cho tính từ',2,'Changed title.',12,1),(75,'2016-10-12 03:00:58.159000','5','Giới từ: Địa điểm',2,'Changed title.',12,1),(76,'2016-10-12 03:01:17.470000','4','Động từ: Thì của động từ',2,'Changed title and text.',12,1),(77,'2016-10-12 03:02:09.089000','1','Động từ: Thể bị động',2,'Changed title.',12,1),(78,'2016-10-12 03:17:26.499000','14','Important adverbs',1,'Added.',10,1),(79,'2016-10-12 03:17:34.058000','19','regularly',1,'Added.',13,1),(80,'2016-10-12 03:18:28.854000','20','deliver',1,'Added.',13,1),(81,'2016-10-12 03:18:58.131000','21','speech',1,'Added.',13,1),(82,'2016-10-12 03:19:22.828000','22','workshop',1,'Added.',13,1),(83,'2016-10-12 03:20:53.817000','23','customer satisfaction',1,'Added.',13,1),(84,'2016-10-12 03:21:15.176000','24','strategy',1,'Added.',13,1),(85,'2016-10-12 03:22:00.811000','25','building',1,'Added.',13,1),(86,'2016-10-12 03:23:53.551000','26','relationship',1,'Added.',13,1),(87,'2016-10-12 03:24:20.816000','27','profitable',1,'Added.',13,1),(88,'2016-10-12 03:24:27.816000','7','He ----- delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.',1,'Added.',15,1),(89,'2016-10-12 03:31:58.958000','10','Tính từ và đại từ bất định',1,'Added.',12,1),(90,'2016-10-12 03:35:40.749000','28','attendee',1,'Added.',13,1),(91,'2016-10-12 03:36:14.666000','29','required',1,'Added.',13,1),(92,'2016-10-12 03:38:49.054000','30','sample',1,'Added.',13,1),(93,'2016-10-12 03:39:08.570000','8','Attendees will be required to work ----- alone and in groups when performing study sample analyses.',1,'Added.',15,1),(94,'2016-10-12 03:48:16.566000','11','So sánh',1,'Added.',12,1),(95,'2016-10-12 03:52:31.950000','31','unfortunately',1,'Added.',13,1),(96,'2016-10-12 03:53:00.895000','32','rise',1,'Added.',13,1),(97,'2016-10-12 03:53:26.467000','33','popularity',1,'Added.',13,1),(98,'2016-10-12 03:53:49.700000','34','used to',1,'Added.',13,1),(99,'2016-10-12 03:53:51.702000','9','Unfortunately, with the rise of the popularity of soft drinks, tea is not ----- popular as it used to be.',1,'Added.',15,1),(100,'2016-10-12 04:26:48.522000','12','Tính từ và đại từ sở hữu, phản thân',1,'Added.',12,1),(101,'2016-10-12 05:00:24.694000','6','preposition',1,'Added.',8,1),(102,'2016-10-12 05:00:43.486000','15','Important prepositions',1,'Added.',10,1),(103,'2016-10-12 05:00:53.584000','35','as',1,'Added.',13,1),(104,'2016-10-12 05:02:44.430000','16','Economics',1,'Added.',10,1),(105,'2016-10-12 05:02:53.141000','36','demand',1,'Added.',13,1),(106,'2016-10-12 05:03:17.740000','17','Agriculture',1,'Added.',10,1),(107,'2016-10-12 05:03:19.920000','37','wheat',1,'Added.',13,1),(108,'2016-10-12 05:07:39.455000','38','producer',1,'Added.',13,1),(109,'2016-10-12 05:08:14.799000','39','income',1,'Added.',13,1),(110,'2016-10-12 05:10:08.338000','40','decline',1,'Added.',13,1),(111,'2016-10-12 05:10:16.028000','10','As demand for ----- wheat-based products falls, local producers earn less and less and the total income of the country declines.',1,'Added.',15,1),(112,'2016-10-12 05:11:56.638000','18','Politics',1,'Added.',10,1),(113,'2016-10-12 05:15:44.364000','19','Cooking',1,'Added.',10,1),(114,'2016-10-12 05:15:52.885000','41','chief',1,'Added.',13,1),(115,'2016-10-12 05:16:42.512000','20','Police & Military',1,'Added.',10,1),(116,'2016-10-12 05:16:59.355000','42','police',1,'Added.',13,1),(117,'2016-10-12 05:17:40.221000','43','secure',1,'Added.',13,1),(118,'2016-10-12 05:19:25.647000','21','Medicine and Drug',1,'Added.',10,1),(119,'2016-10-12 05:19:38.665000','44','drug',1,'Added.',13,1),(120,'2016-10-12 05:20:23.996000','45','treatment',1,'Added.',13,1),(121,'2016-10-12 05:20:50.262000','46','initiative',1,'Added.',13,1),(122,'2016-10-12 05:20:57.544000','11','Ottawa Police Chief Vern White has ----- Mr.McDonald for securing $1million for the city\'s drug treatment initiative.',1,'Added.',15,1),(123,'2016-10-12 05:40:50.933000','47','state',1,'Added.',13,1),(124,'2016-10-12 05:41:21.145000','48','committee',1,'Added.',13,1),(125,'2016-10-12 05:41:47.282000','49','effective',1,'Added.',13,1),(126,'2016-10-12 05:41:57.645000','12','Ms James stated that ----- must work together to make sure the committee is effective.',1,'Added.',15,1),(127,'2016-10-12 05:45:04.447000','50','adjustable',1,'Added.',13,1),(128,'2016-10-12 05:45:46.431000','51','consider',1,'Added.',13,1),(129,'2016-10-12 05:46:13.458000','52','specific',1,'Added.',13,1),(130,'2016-10-12 05:46:37.007000','53','height',1,'Added.',13,1),(131,'2016-10-12 05:47:19.614000','54','material',1,'Added.',13,1),(132,'2016-10-12 05:47:42.198000','22','Insurance',1,'Added.',10,1),(133,'2016-10-12 05:47:45.973000','55','warranty',1,'Added.',13,1),(134,'2016-10-12 05:47:53.194000','13','When you are buying an adjustable bed, you should consider ----- features such as bed height, size, material and warranty.',1,'Added.',15,1),(135,'2016-10-12 07:37:49.926000','56','management',1,'Added.',13,1),(136,'2016-10-12 07:38:12.084000','57','belief',1,'Added.',13,1),(137,'2016-10-12 07:38:46.112000','58','direction',1,'Added.',13,1),(138,'2016-10-12 07:39:13.473000','59','firm',1,'Added.',13,1),(139,'2016-10-12 07:39:48.734000','60','strategic',1,'Added.',13,1),(140,'2016-10-12 07:40:52.947000','61','sound',1,'Added.',13,1),(141,'2016-10-12 07:41:31.160000','62','exceed',1,'Added.',13,1),(142,'2016-10-12 07:42:04.530000','63','shareholder',1,'Added.',13,1),(143,'2016-10-12 07:42:29.953000','64','expectation',1,'Added.',13,1),(144,'2016-10-12 07:42:43.591000','14','The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder -----.',1,'Added.',15,1),(145,'2016-10-12 07:52:06.450000','1','construction',1,'Added.',16,1),(146,'2016-10-12 07:52:36.853000','2','constructed',1,'Added.',16,1),(147,'2016-10-12 07:53:06.721000','3','constructs',1,'Added.',16,1),(148,'2016-10-12 07:53:21.227000','4','constructive',1,'Added.',16,1),(149,'2016-10-12 07:53:56.497000','5','announced',1,'Added.',16,1),(150,'2016-10-12 07:54:14.912000','6','have announced',1,'Added.',16,1),(151,'2016-10-12 07:54:26.456000','7','announcing',1,'Added.',16,1),(152,'2016-10-12 07:54:38.957000','8','announce',1,'Added.',16,1),(153,'2016-10-12 08:00:20.136000','2','Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.',2,'Changed answers.',15,1),(154,'2016-10-12 08:00:34.587000','3','Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.',2,'Changed answers.',15,1),(155,'2016-10-12 08:02:55.454000','4','Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.',2,'No fields changed.',15,1),(156,'2016-10-12 08:03:07.818000','3','Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.',2,'No fields changed.',15,1),(157,'2016-10-12 08:06:23.353000','65','fill out a form',1,'Added.',13,1),(158,'2016-10-12 08:07:12.700000','66','reserve',1,'Added.',13,1),(159,'2016-10-12 08:07:41.406000','66','reserve',2,'Changed topic.',13,1),(160,'2016-10-12 08:08:23.119000','9','at',1,'Added.',16,1),(161,'2016-10-12 08:08:35.814000','10','into',1,'Added.',16,1),(162,'2016-10-12 08:08:44.796000','11','among',1,'Added.',16,1),(163,'2016-10-12 08:08:56.263000','12','after',1,'Added.',16,1),(164,'2016-10-12 08:09:57.545000','4','Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.',2,'Changed translation, vocabs and answers.',15,1),(165,'2016-10-12 08:10:46.591000','13','attract',1,'Added.',16,1),(166,'2016-10-12 08:10:52.308000','14','attractive',1,'Added.',16,1),(167,'2016-10-12 08:11:45.758000','14','attractive',2,'Changed isTrue.',16,1),(168,'2016-10-12 08:12:09.911000','15','attracted',1,'Added.',16,1),(169,'2016-10-12 08:12:15.411000','16','attraction',1,'Added.',16,1),(170,'2016-10-12 08:12:36.016000','67','attractive',1,'Added.',13,1),(171,'2016-10-12 08:12:52.541000','68','attraction',1,'Added.',13,1),(172,'2016-10-12 08:13:27.818000','69','attract',1,'Added.',13,1),(173,'2016-10-12 08:13:58.806000','5','This apartment complex has an ----- exterior design and stylish interior furnishings.',2,'Changed vocabs, tests and answers.',15,1),(174,'2016-10-12 08:14:22.266000','17','perform',1,'Added.',16,1),(175,'2016-10-12 08:14:29.441000','18','admit',1,'Added.',16,1),(176,'2016-10-12 08:14:38.150000','19','attend',1,'Added.',16,1),(177,'2016-10-12 08:14:44.423000','20','participate',1,'Added.',16,1),(178,'2016-10-12 08:15:08.843000','6','The public is invited to ----- the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.',2,'Changed answers.',15,1),(179,'2016-10-12 08:44:04.337000','1','Động từ: Thể bị động',2,'Changed text.',12,1),(180,'2016-10-12 08:44:22.813000','4','Động từ: Thì của động từ',2,'Changed text.',12,1),(181,'2016-10-12 08:45:20.477000','4','Động từ: Thì của động từ',2,'Changed text.',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(16,'toeic','answer'),(12,'toeic','grammartopic'),(7,'toeic','level'),(17,'toeic','listeningtopic'),(14,'toeic','passage'),(15,'toeic','question'),(11,'toeic','test'),(10,'toeic','topic'),(9,'toeic','type'),(19,'toeic','useranswer'),(21,'toeic','useranswergrammarquiz'),(20,'toeic','uservocab'),(18,'toeic','video'),(13,'toeic','vocab'),(8,'toeic','wordtype');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-10-11 03:10:08.439000'),(2,'auth','0001_initial','2016-10-11 03:10:17.512000'),(3,'admin','0001_initial','2016-10-11 03:10:19.601000'),(4,'admin','0002_logentry_remove_auto_add','2016-10-11 03:10:19.692000'),(5,'contenttypes','0002_remove_content_type_name','2016-10-11 03:10:21.032000'),(6,'auth','0002_alter_permission_name_max_length','2016-10-11 03:10:21.736000'),(7,'auth','0003_alter_user_email_max_length','2016-10-11 03:10:22.563000'),(8,'auth','0004_alter_user_username_opts','2016-10-11 03:10:22.610000'),(9,'auth','0005_alter_user_last_login_null','2016-10-11 03:10:23.290000'),(10,'auth','0006_require_contenttypes_0002','2016-10-11 03:10:23.320000'),(11,'auth','0007_alter_validators_add_error_messages','2016-10-11 03:10:23.351000'),(12,'sessions','0001_initial','2016-10-11 03:10:23.915000'),(13,'toeic','0001_initial','2016-10-11 04:02:45.675000'),(14,'toeic','0002_grammartopic_test_vocab','2016-10-11 04:27:51.587000'),(15,'toeic','0003_auto_20161011_1502','2016-10-11 08:03:43.611000'),(16,'toeic','0004_auto_20161011_1508','2016-10-11 08:08:44.102000'),(17,'toeic','0005_auto_20161011_1520','2016-10-11 08:20:45.096000'),(18,'toeic','0006_vocab_image','2016-10-11 09:01:19.626000'),(19,'toeic','0007_auto_20161011_1946','2016-10-11 12:47:24.172000'),(20,'toeic','0008_auto_20161012_0905','2016-10-12 02:06:05.059000'),(21,'toeic','0009_listeningtopic_video','2016-10-12 06:05:17.937000'),(22,'toeic','0010_useranswer_useranswergrammarquiz_uservocab','2016-10-12 07:50:29.316000'),(23,'toeic','0011_remove_answer_question','2016-10-12 07:58:13.535000'),(24,'toeic','0012_question_answers','2016-10-12 07:59:31.163000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('zkip344ijrssx8a6gagp8wgj9x6rnaow','ZWExNzQ1ZjUzNTFkYThlMTIwNzM5OGFjNTRkZDM5NThkOGYxZDMzMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU3NjlhODdlZWZjZDQ4NDg4OTVhZGQ5YTgwMDVkMjc3NjBlYjExMDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-10-25 04:02:07.219000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_answer`
--

DROP TABLE IF EXISTS `toeic_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `isTrue` tinyint(1) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_answer`
--

LOCK TABLES `toeic_answer` WRITE;
/*!40000 ALTER TABLE `toeic_answer` DISABLE KEYS */;
INSERT INTO `toeic_answer` VALUES (1,'construction',1,'2016-10-12 07:52:06.420000'),(2,'constructed',0,'2016-10-12 07:52:36.841000'),(3,'constructs',0,'2016-10-12 07:53:06.706000'),(4,'constructive',0,'2016-10-12 07:53:21.210000'),(5,'announced',1,'2016-10-12 07:53:56.487000'),(6,'have announced',0,'2016-10-12 07:54:14.897000'),(7,'announcing',0,'2016-10-12 07:54:26.442000'),(8,'announce',0,'2016-10-12 07:54:38.915000'),(9,'at',1,'2016-10-12 08:08:23.118000'),(10,'into',0,'2016-10-12 08:08:35.813000'),(11,'among',0,'2016-10-12 08:08:44.757000'),(12,'after',0,'2016-10-12 08:08:56.220000'),(13,'attract',0,'2016-10-12 08:10:46.555000'),(14,'attractive',1,'2016-10-12 08:10:52.267000'),(15,'attracted',0,'2016-10-12 08:12:09.875000'),(16,'attraction',0,'2016-10-12 08:12:15.387000'),(17,'perform',0,'2016-10-12 08:14:22.242000'),(18,'admit',0,'2016-10-12 08:14:29.428000'),(19,'attend',1,'2016-10-12 08:14:38.136000'),(20,'participate',0,'2016-10-12 08:14:44.388000');
/*!40000 ALTER TABLE `toeic_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_grammartopic`
--

DROP TABLE IF EXISTS `toeic_grammartopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_grammartopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_grammartopic_level_id_cfb2f385_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_grammartopic_level_id_cfb2f385_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_grammartopic`
--

LOCK TABLES `toeic_grammartopic` WRITE;
/*!40000 ALTER TABLE `toeic_grammartopic` DISABLE KEYS */;
INSERT INTO `toeic_grammartopic` VALUES (1,'Động từ: Thể bị động','<p><img src=\"http://mividaen.sampere.com/wp-content/uploads/2015/02/The-passive-voice.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho passive voice\" width=\"588\" height=\"277\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Quan s&aacute;t c&aacute;c v&iacute; dụ sau:</strong></p>\r\n<p><img src=\"http://hocmai.vn/file.php/370/Anh/Anh_bai_giang/active-voice-vs-passive-voice.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho passive voice\" width=\"569\" height=\"379\" /></p>\r\n<p class=\"MsoNormal\">You <strong>stole</strong> the cookie from the jaz ( bạn đ&atilde; lấy cắp một c&aacute;i b&aacute;nh quy từ hũ. đ&acirc;y l&agrave; c&acirc;u chủ động)</p>\r\n<p class=\"MsoNormal\">The cookie <strong>was stolen</strong> from the jaz ( c&aacute;i b&aacute;nh đ&atilde; bị lấy cắp từ hũ. đ&acirc;y l&agrave; c&acirc;u bị động)</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">This house <strong>was built</strong> in 1935. (Ng&ocirc;i nh&agrave; n&agrave;y được x&acirc;y v&agrave;o năm 1935)</p>\r\n<p class=\"MsoNormal\">Ở đ&acirc;y, \"was built\" l&agrave; thể bị động: ng&ocirc;i nh&agrave; \"đ&atilde; được x&acirc;y\".</p>\r\n<p class=\"MsoNormal\">Somebody <strong>built</strong> this house in 1935. (Ai đ&oacute; đ&atilde; x&acirc;y ng&ocirc;i nh&agrave; n&agrave;y v&agrave;o năm 1935)</p>\r\n<p class=\"MsoNormal\">\"built\" l&agrave; động từ ở thể chủ động: ai đ&oacute; \"đ&atilde; x&acirc;y\" nh&agrave;.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Khi ch&uacute;ng ta d&ugrave;ng thể bị động, ta quan t&acirc;m đến chủ ngữ l&agrave;m g&igrave;:&nbsp;</strong></p>\r\n<p class=\"MsoNormal\">My grandfather was a builder. He built this house in 1935.</p>\r\n<p class=\"MsoNormal\"><em><span lang=\"FR\">&Ocirc;ng t&ocirc;i l&agrave; thợ x&acirc;y. &Ocirc;ng đ&atilde; x&acirc;y c&aacute;i nh&agrave; n&agrave;y v&agrave;o năm 1935.</span></em></p>\r\n<p class=\"MsoNormal\">It&rsquo;s a big company. It employs two hundred people.</p>\r\n<p class=\"MsoNormal\"><em>Đ&oacute; l&agrave; một c&ocirc;ng ty lớn. N&oacute; thu&ecirc; 200 người.&nbsp;</em></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Khi ch&uacute;ng ta d&ugrave;ng thể bị động, ta quan t&acirc;m đến điều g&igrave; đ&atilde; xảy ra với chủ ngữ:</strong></p>\r\n<p class=\"MsoNormal\">This house is quite old. It was built in 1935.</p>\r\n<p class=\"MsoNormal\"><em>Ng&ocirc;i nh&agrave; n&agrave;y kh&aacute; l&agrave; cổ. N&oacute; đ&atilde; được x&acirc;y v&agrave;o năm 1935.</em></p>\r\n<p class=\"MsoNormal\">Two hundred people are employed by the company.</p>\r\n<p class=\"MsoNormal\"><em>Hai trăm người được thu&ecirc; bởi c&ocirc;ng ty.</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Cấu tạo của thể bị động:</strong></p>\r\n<p><img src=\"http://memoria.vn/pic/New/images/C%C3%A2u%20b%E1%BB%8B%20%C4%91%E1%BB%99ng%20(Passive%20Voice).png\" alt=\"Kết quả h&igrave;nh ảnh cho passive voice\" width=\"218\" height=\"124\" /></p>\r\n<p>Chia động từ ở thể bị động như sau: Be + ph&acirc;n từ II (done/cleaned/seen&hellip;).</p>\r\n<p><strong>Ch&uacute; &yacute;:</strong> động từ \"be\" chia giống thời của động từ trong c&acirc;u chủ động ( ở đ&acirc;y \"opens\" chia ở hiện tại n&ecirc;n \"is\" cũng ở hiện tại).</p>\r\n<p class=\"MsoNormal\">Somebody <strong>cleans</strong> this room every day. &gt;&gt;&gt;&gt; This room <strong>is cleaned</strong> every day. (C&acirc;u chủ động ờ thời hiện tại &gt;&gt; động từ \"be\" trong c&acirc;u bị động cũng phải chia ở thời hiện tại)</p>\r\n<p class=\"MsoNormal\">Somebody cleaned this room every day &gt;&gt;&gt;&gt; This room was cleaned every day.(C&acirc;u chủ động ờ th&igrave; qu&aacute; khứ &gt;&gt; động từ \"be\" trong c&acirc;u bị động cũng phải chia ở th&igrave; qu&aacute; khứ)&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Bảng t&oacute;m tắt động từ ở thể chủ động v&agrave; bị động tương ứng:</strong></p>\r\n<p><img src=\"http://image.slidesharecdn.com/passivegrammarpowerpoint-131112102414-phpapp01/95/passive-grammar-powerpoint-6-638.jpg?cb=1384251892\" alt=\"Kết quả h&igrave;nh ảnh cho passive voice\" width=\"647\" height=\"486\" />&nbsp;</p>\r\n<p><strong>Hai t&acirc;n ngữ</strong></p>\r\n<p>Một v&agrave;i động từ c&oacute; thể c&oacute; 2 t&acirc;n ngữ (t&uacute;c từ):&nbsp;</p>\r\n<p>Somebody gave the police the information. (ai đ&oacute; đưa th&ocirc;ng tin cho cảnh s&aacute;t)</p>\r\n<p>&nbsp;Do đ&oacute;, ta c&oacute; thể c&oacute; 2 c&acirc;u bị động:&nbsp;</p>\r\n<p>The police were given the information. (cảnh s&aacute;t đ&atilde; được đưa th&ocirc;ng tin)</p>\r\n<p>The information was given to the police. (th&ocirc;ng tin đ&atilde; được đưa cho cảnh s&aacute;t)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Thay be = get</strong></p>\r\n<p>Ta c&oacute; thể thay be trong thời bị động = get:&nbsp;</p>\r\n<p>I was invited &nbsp;= I got invited.&nbsp;</p>\r\n<p>Cấu tr&uacute;c đặc biệt:&nbsp;</p>\r\n<p>Get married = cưới&nbsp;</p>\r\n<p>Get divorced = li dị</p>\r\n<p>Get dressed = get changed = mặc đồ</p>\r\n<p>Get lost = bị lạc</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Have something done</strong></p>\r\n<p>Đ&acirc;y l&agrave; c&acirc;u tr&uacute;c nhờ ai, mượn ai l&agrave;m g&igrave; cho m&igrave;nh (tức l&agrave; m&igrave;nh kh&ocirc;ng trực tiếp l&agrave;m m&agrave; c&oacute; người kh&aacute;c l&agrave;m)</p>\r\n<p>Lisa repaired the roof ( Lisa tự sửa nh&agrave;)</p>\r\n<p>Lisa had the roof repaired (Lisa nhờ/thu&ecirc; người sửa nh&agrave;)&nbsp;</p>\r\n<p>Ch&uacute; &yacute; cấu tr&uacute;c : Lisa has+ the roof + ph&acirc;n từ II&nbsp;</p>\r\n<p>Lisa had the roof repaired, Lisa has the roof repaired, Lisa will have the roof repaired, Lisa has had the roof repaired&hellip;..</p>\r\n<p>(tất cả c&aacute;c c&acirc;u tr&ecirc;n đều c&oacute; nghĩa l&agrave; Lisa nhờ hoặc mượn ai sửa m&aacute;i nh&agrave; cho m&igrave;nh)</p>\r\n<p>&nbsp;</p>','2016-10-11 05:18:49.283000',1),(2,'Câu tường thuật','<p><strong>Khi n&agrave;o d&ugrave;ng c&acirc;u tường thuật?</strong></p>\r\n<p>Ch&uacute;ng ta d&ugrave;ng c&acirc;u tường thuật khi ch&uacute;ng ta nhắc lại lời n&oacute;i của người kh&aacute;c ( c&ocirc; ấy n&oacute;i rằng - she said that....)</p>\r\n<p><img src=\"http://cep.com.vn/uploads/images/tu-vung-va-ngu-phap-pho-thong/reportedconversation.png\" alt=\"Kết quả h&igrave;nh ảnh cho reported speech\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://www.eslteachersboard.com/webbbs/images/free-teachers/pic1022.png\" alt=\"Kết quả h&igrave;nh ảnh cho reported speech\" width=\"415\" height=\"203\" /></p>\r\n<p><strong>V&iacute; dụ</strong></p>\r\n<p>Paul says: I am felling ill.(Paul n&oacute;i: T&ocirc;i kh&ocirc;ng được khỏe).</p>\r\n<p>C&acirc;u tường thuật lại: Paul says that he is felling ill. (Paul n&oacute;i rằng T&ocirc;i kh&ocirc;ng được khỏe)</p>\r\n<p class=\"MsoNormal\">Paul said: I am felling ill.(Paul đ&atilde; n&oacute;i: T&ocirc;i kh&ocirc;ng được khỏe).</p>\r\n<p class=\"MsoNormal\">&gt;&gt;&gt;&gt; Paul said that he was felling ill.</p>\r\n<p class=\"MsoNormal\">Paul thought: I&rsquo;m going to learn to drive (Pau đ&atilde; nghĩ: M&igrave;nh sẽ học l&aacute;i xe).</p>\r\n<p class=\"MsoNormal\">&gt;&gt;&gt;&gt; Paul thought that he was going to learn to drive.</p>\r\n<p class=\"MsoNormal\">Paul told me: John has a new job (Paul đ&atilde; n&oacute;i với t&ocirc;i: John c&oacute; một c&ocirc;ng việc mới).</p>\r\n<p class=\"MsoNormal\">&gt;&gt;&gt;&gt; Paul told me that John has a new job</p>\r\n<p class=\"MsoNormal\">Paul confirmed: I can&rsquo;t come to the party (Paul đ&atilde; x&aacute;c nhận : t&ocirc;i kh&ocirc;ng thể đến bữa tiệc)</p>\r\n<p class=\"MsoNormal\">&gt;&gt;&gt;&gt; Paul confirmed that he can&rsquo;t come to the party</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>T&oacute;m lại, khi tường thuật c&acirc;u ở thời qu&aacute; khứ, ch&uacute; &yacute; l&ugrave;i thời của động từ sao cho ph&ugrave; hợp:</strong></p>\r\n<p class=\"MsoNormal\"><img src=\"http://4.bp.blogspot.com/-tSKvjxnl7X8/UvU6ClvHI2I/AAAAAAAAAn4/9ogaZ2zAdhg/s1600/11.png\" alt=\"Kết quả h&igrave;nh ảnh cho reported speech\" width=\"553\" height=\"309\" /></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Ch&uacute; &yacute; kh&ocirc;ng phải l&uacute;c n&agrave;o cũng l&ugrave;i thời của động từ về qu&aacute; khứ khi tường thuật sự kiện qu&aacute; khứ:</strong></p>\r\n<p class=\"MsoNormal\">Helen said: I want to go to Paris.</p>\r\n<p class=\"MsoNormal\">&gt;&gt;&gt; Helen said that she wants to go to Paris. (Helen n&oacute;i rằng c&ocirc; ấy muốn đến Paris. ở đ&acirc;y &ldquo;want&rdquo; &ndash; &ldquo;muốn&rdquo; chia ở hiện tại v&igrave; l&uacute;c n&agrave;o c&ocirc; ấy cũng muốn, chứ kh&ocirc;ng phải chỉ ở trong qu&aacute; khứ.)</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Ch&uacute; &yacute; c&aacute;ch d&ugrave;ng \"that\" hoặc d&ugrave;ng \"to\":</strong></p>\r\n<p class=\"MsoNormal\">b&aacute;c sỹ đ&atilde; bảo t&ocirc;i phải nằm nghỉ mấy ng&agrave;y, c&oacute; 2 c&aacute;ch diễn đạt:</p>\r\n<p class=\"MsoNormal\">The doctor told me that I stayed in bed for few days. = The doctor told me to stay in bed for few days. (1 c&acirc;u d&ugrave;ng &ldquo;that + c&acirc;u&rdquo;, 1 c&acirc;u d&ugrave;ng &ldquo;to + verb&rdquo;)</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>','2016-10-11 05:32:58.449000',1),(3,'Danh từ và cấu trúc bổ nghĩa cho danh từ','<p><strong>Danh từ để chỉ một người, địa điểm, vật hoặc &yacute; tưởng, kh&aacute;i niệm</strong></p>\r\n<p><img src=\"http://1.bp.blogspot.com/-rH4UQG8twS0/VoUzrFyal9I/AAAAAAAA6-8/NTrBcFUmcko/s1600/noun.png\" alt=\"Kết quả h&igrave;nh ảnh cho noun\" width=\"281\" height=\"90\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Vị tr&iacute; của danh từ trong c&acirc;u</strong></p>\r\n<p>The boy is eating an apple (Cậu b&eacute; đang ăn một quả t&aacute;o)</p>\r\n<p>Ta thấy danh từ c&oacute; thể l&agrave;m chủ ngữ, đi trước động từ (the boy)</p>\r\n<p>danh từ cũng c&oacute; thể đi sau động từ (an apple)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ph&acirc;n t&iacute;ch cụm danh từ</strong></p>\r\n<p>Ta xuất ph&aacute;t từ danh từ \"woman\"</p>\r\n<p>đi trước danh từ c&oacute; thể l&agrave; mạo từ (a woman, the woman), t&iacute;nh từ bất định (some women, any women), t&iacute;nh từ (a beautiful young woman)...</p>\r\n<p>đi sau danh từ c&oacute; thể l&agrave; cụm giới từ + danh từ (women of this country); c&oacute; thể l&agrave; mệnh đề (women who live in this country); c&oacute; thể l&agrave; lối r&uacute;t gọn mệnh đề (women living in this country, women admired by everyone)&nbsp;</p>\r\n<p>Bảng sau chỉ ra tất cả c&aacute;c cấu tr&uacute;c trước v&agrave; sau danh từ:&nbsp;</p>\r\n<table class=\"MsoTableGrid\" style=\"width: 100.0%; border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-table-lspace: 9.0pt; margin-left: .1in; mso-table-rspace: 9.0pt; margin-right: .1in; mso-table-anchor-vertical: page; mso-table-anchor-horizontal: margin; mso-table-left: left; mso-table-top: 210.05pt; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: .4in;\">\r\n<td style=\"width: 32.42%; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" valign=\"top\" width=\"32%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>Mạo từ </em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>A, an, the</em></p>\r\n</td>\r\n<td style=\"width: 23.44%; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" rowspan=\"5\" width=\"23%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>***Adj</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>&nbsp;Smart</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>Old chinese</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>**Adv + adj</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>&nbsp;amazingly beautiful</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>*Adj + adj</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>&nbsp;Beautiful young</em></p>\r\n</td>\r\n<td style=\"width: 9.48%; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" rowspan=\"5\" width=\"9%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>N</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>&nbsp;Women</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em><span style=\"font-size: 9.0pt; mso-bidi-font-size: 11.0pt;\">N + N </span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\" align=\"center\"><em><span style=\"font-size: 9.0pt; mso-bidi-font-size: 11.0pt;\">University Teacher</span></em></p>\r\n</td>\r\n<td style=\"width: 34.64%; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" valign=\"top\" width=\"34%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>Giới từ + danh từ</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>of this country</em></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; height: .4in;\">\r\n<td style=\"width: 32.42%; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" valign=\"top\" width=\"32%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>T&iacute;nh từ sở hữu</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>My, your, her, his, its, our, their</em></p>\r\n</td>\r\n<td style=\"width: 34.64%; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" valign=\"top\" width=\"34%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>Mệnh đề</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>who live in this country ( which, that, whom)</em></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2; height: .4in;\">\r\n<td style=\"width: 32.42%; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" valign=\"top\" width=\"32%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>Sở hữu c&aacute;ch</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>My father&rsquo;s </em></p>\r\n</td>\r\n<td style=\"width: 34.64%; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: .4in;\" rowspan=\"3\" valign=\"top\" width=\"34%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>R&uacute;t gọn mệnh đề</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>living in this country</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>= who live in this country</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>admired by everyone</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>= who is admired by everyone</em></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; height: 18.65pt;\">\r\n<td style=\"width: 32.42%; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 18.65pt;\" valign=\"top\" width=\"32%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>T&iacute;nh từ bất định</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>Some(một v&agrave;i), each (mỗi), any (bất cứ), every (mọi), no(kh&ocirc;ng) all (tất cả), one (một)</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;other(c&aacute;i kh&aacute;c), another (một c&aacute;i kh&aacute;c), others ( những c&aacute;i c&ograve;n lại)</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>much (nhiều &ndash; kh&ocirc;ng đếm được), many ( nhiều &ndash; đếm được), a lot of, lots of( nhiều &ndash; cả đếm được v&agrave; kh&ocirc;ng đếm được&hellip;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>neither (kh&ocirc;ng g&igrave; cả) </em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>either ( c&aacute;i n&agrave;o cũng được)</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>enough, few/ a few, little</em></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 4; mso-yfti-lastrow: yes; height: 18.65pt;\">\r\n<td style=\"width: 32.42%; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 18.65pt;\" valign=\"top\" width=\"32%\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>T&iacute;nh từ chỉ định (c&aacute;i n&agrave;y)</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-top: 210.05pt; mso-height-rule: exactly;\"><em>This, that, these, those</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>z</p>\r\n<p><strong>B&agrave;i tập mở rộng danh từ</strong></p>\r\n<p>Xuất ph&aacute;t từ c&acirc;u đơn giản: Company fired employees</p>\r\n<p>C&oacute; thể th&ecirc;m c&aacute;c th&agrave;nh phần bổ nghĩa để mở rộng như sau</p>\r\n<p class=\"MsoNormal\"><strong>My</strong> company fired<strong> some</strong> employees</p>\r\n<p class=\"MsoNormal\"><strong>Mr Park&rsquo;s</strong> company fired <strong>many </strong>employees</p>\r\n<p class=\"MsoNormal\"><strong>The</strong> <strong>accounting</strong>company fired <strong>several</strong> employees (accounting company l&agrave; danh từ gh&eacute;p)</p>\r\n<p class=\"MsoNormal\"><strong>The </strong>company<strong> that have financial difficulty</strong> fired <strong>all</strong> employees</p>\r\n<p class=\"MsoNormal\"><strong>The </strong>company<strong> having financial difficulty</strong> fired<strong> all</strong> employees</p>\r\n<p class=\"MsoNormal\"><strong>The </strong>company<strong> founded in 1999</strong> fired<strong> all</strong> employees</p>\r\n<p class=\"MsoNormal\"><strong>The big</strong> company fired <strong>some</strong> employees.&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>&Aacute;p dụng v&agrave;o b&agrave;i thi toeic:&nbsp;</strong></p>\r\n<p class=\"MsoNormal\">Ch&uacute;ng ta sẽ hay gặp c&aacute;c dạng như sau</p>\r\n<p class=\"MsoNormal\"><strong>mạo từ + ... + danh từ:</strong> 90% sẽ điền t&iacute;nh từ trong trường hợp n&agrave;y (a big company), c&ograve;n thỉnh thoảng sẽ gặp trường hợp bắt điền danh từ để tạo th&agrave;nh danh từ gh&eacute;p, v&iacute; dụ an ... company c&oacute; thể điền accounting để tạo th&agrave;nh cụm c&ocirc;ng ty kế to&aacute;n (accounting company).</p>\r\n<p class=\"MsoNormal\"><strong>mạo từ +.... + t&iacute;nh từ + danh từ:</strong> 90% sẽ điền một trạng từ trong trường hợp n&agrave;y để bổ sung &yacute; nghĩa cho t&iacute;nh từ. (ch&uacute; &yacute; l&agrave; trạng từ bổ sung &yacute; nghĩa cho t&iacute;nh từ hoặc động từ). V&iacute; dụ: an increasingly poplular hobby: một sở th&iacute;ch ng&agrave;y c&agrave;ng phổ biến. Ngo&agrave;i ra, rất hiếm khi sẽ gặp dạng t&iacute;nh từ + t&iacute;nh từ + danh từ ( a beautiful asian girl).&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>mạo từ + trạng từ + .... + danh từ:</strong> 100% điền t&iacute;nh từ ( v&igrave; trạng từ kh&ocirc;ng bổ sung &yacute; nghĩa cho danh từ, chỉ bổ sung &yacute; nghĩa cho t&iacute;nh từ &gt;&gt; đ&acirc;y l&agrave; vị tr&iacute; của t&iacute;nh từ).</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Danh từ gh&eacute;p</strong></p>\r\n<p class=\"MsoNormal\">Danh từ gh&eacute;p được tạo th&agrave;nh bởi 2 hoặc nhiều danh từ:&nbsp;</p>\r\n<p class=\"MsoNormal\">Business meeting</p>\r\n<p class=\"MsoNormal\">Budget report</p>\r\n<p class=\"MsoNormal\">Sales representatives</p>\r\n<p class=\"MsoNormal\">Security guard</p>\r\n<p class=\"MsoNormal\">Human resources department</p>\r\n<p class=\"MsoNormal\">Accounting department</p>\r\n<p class=\"MsoNormal\">Replacement part</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Danh từ đếm được v&agrave; kh&ocirc;ng đếm được</strong></p>\r\n<p><img src=\"https://www.easypacelearning.com/design/images/countableuncoutable.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho countable and uncountable nouns\" width=\"586\" height=\"420\" /></p>\r\n<p>Danh từ kh&ocirc;ng đếm được c&aacute;c danh từ kh&ocirc;ng thể d&ugrave;ng với mạo từ a, an ( an apple - một quả t&aacute;o l&agrave; danh từ đếm được, rice - gạo l&agrave; danh từ kh&ocirc;ng đếm được).</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Một số danh từ kh&ocirc;ng đếm được th&ocirc;ng dụng:</p>\r\n<p class=\"MsoNormal\">Information: th&ocirc;ng tin</p>\r\n<p class=\"MsoNormal\">News: th&ocirc;ng tin</p>\r\n<p class=\"MsoNormal\">Luggage: h&agrave;nh l&yacute;</p>\r\n<p class=\"MsoNormal\">Equipment: thiết bị</p>\r\n<p class=\"MsoNormal\">Merchandise: h&agrave;ng h&oacute;a</p>\r\n<p class=\"MsoNormal\">Knowledge: kiến thức</p>\r\n<p class=\"MsoNormal\">Advice: lời khuy&ecirc;n</p>\r\n<p class=\"MsoNormal\">Homework: b&agrave;i tập về nh&agrave;</p>\r\n<p class=\"MsoNormal\"><span lang=\"FR\">Furniture: đồ đạc</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR\">Pollution: sự &ocirc; nhiễm</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\">C&aacute;c &ldquo;sự kh&aacute;c&rdquo;: sự ph&acirc;n phối (distribution), sự thực h&agrave;nh (practice), &hellip;.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p>&nbsp;</p>','2016-10-11 08:49:59.284000',1),(4,'Động từ: Thì của động từ','<p><strong>C&aacute;c th&igrave; v&agrave; c&aacute;ch chia</strong></p>\r\n<p><img src=\"https://www.easypacelearning.com/design/images/verbtenses.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho verb tense\" width=\"926\" height=\"587\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>C&aacute;ch d&ugrave;ng c&aacute;c th&igrave;</strong></p>\r\n<p><img src=\"http://www.idioms4you.com/img/zz-Verb-Tense-Diagrams-770.gif\" alt=\"Kết quả h&igrave;nh ảnh cho verb tense\" width=\"912\" height=\"705\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Th&igrave; hiện tại đơn v&agrave; th&igrave; hiện tại tiếp diễn<em>&nbsp;</em></strong><em>(present simple and present continuous)&nbsp;</em></p>\r\n<ul>\r\n<li>Th&igrave; hiện tại đơn diễn đạt th&oacute;i quen</li>\r\n</ul>\r\n<p>Eg: He always takes the subways to work</p>\r\n<p>Dấu hiệu: always (lu&ocirc;n lu&ocirc;n), usually (lu&ocirc;n lu&ocirc;n), often (thường xuy&ecirc;n), sometimes (thỉnh thoảng), never (kh&ocirc;ng bao giờ), seldom(hiếm kh&iacute;), rarely(hiếm khi), hardly( hầu như kh&ocirc;ng bao giờ), every (mỗi).&nbsp;</p>\r\n<ul>\r\n<li>Th&igrave; hiện tại đơn diễn đạt một lịch tr&igrave;nh (t&agrave;u, xe)&nbsp;</li>\r\n</ul>\r\n<p>Eg: the train arrives at 10 a.m tomorrow</p>\r\n<p>Dấu hiệu: l&uacute;c 10 giờ ng&agrave;y mai &gt;&gt; đ&acirc;y l&agrave; lịch tr&igrave;nh c&oacute; sẵn, n&ecirc;n d&ugrave; c&oacute; tomorrow cũng kh&ocirc;ng chia ở tương lailast year( năm ngo&aacute;i), last month(th&aacute;ng trước), yesterday(ng&agrave;y h&ocirc;m qua), 2 months ago (2 th&aacute;ng trước)&hellip;</p>\r\n<ul>\r\n<li>Th&igrave; hiện tại tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra tại thời điểm n&oacute;i.&nbsp;</li>\r\n</ul>\r\n<p>Eg: he is taking the subway to work now</p>\r\n<p>Dấu hiệu: now, at this time ( tại l&uacute;c n&agrave;y), at the moment (tại thời điểm n&agrave;y), at present (hiện tại), right now (ngay l&uacute;c n&agrave;y)</p>\r\n<ul>\r\n<li>Th&igrave; hiện tại tiếp diễn c&ograve;n dung để chỉ một h&agrave;nh động đ&atilde; được sắp xếp, l&ecirc;n lịch sẵn, chắc chắn sẽ xảy ra trong tương lai.&nbsp;</li>\r\n</ul>\r\n<p>Eg: I&rsquo;ve bought 2 tickets. I&rsquo;m flying to London tomorrow.&nbsp;T&ocirc;i đ&atilde; mua 2 v&eacute;, t&ocirc;i sẽ bay đến London v&agrave;o ng&agrave;y mai. (chắc chắn t&ocirc;i sẽ bay v&igrave; t&ocirc;i đ&atilde; mua v&eacute;, l&ecirc;n lịch rồi)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Th&igrave; hiện tại ho&agrave;n th&agrave;nh: Present perfect</strong></p>\r\n<ul>\r\n<li>Nhấn mạnh t&iacute;nh kết quả của h&agrave;nh động: h&agrave;nh động xảy ra trong qu&aacute; khứ nhưng kết quả c&ograve;n ở hiện tại</li>\r\n</ul>\r\n<p>Eg: Why her hair is so short? she has just cut her hair.&nbsp;</p>\r\n<p>Tại sao t&oacute;c c&ocirc; ấy ngắn vậy? C&ocirc; ấy mới cắt t&oacute;c. H&agrave;nh động cắt t&oacute;c xảy ra trong qu&aacute; khứ nhưng kết quả của n&oacute; th&igrave; ở hiện tại ( giờ t&oacute;c c&ocirc; ấy rất ngắn)</p>\r\n<p>C&aacute;ch chia: have + Ved (ph&acirc;n từ II)</p>\r\n<p>Eg: &nbsp;She has written many letters.&nbsp;</p>\r\n<p>They have gone already.</p>\r\n<p>I&rsquo;ve had lunch ( r&uacute;t gọn của I have had lunch)</p>\r\n<p>Dấu hiệu : just(vừa mới), already(đ&atilde; rồi), yet(cho đến l&uacute;c n&agrave;y), recently(gần d&acirc;y), lately(dạo n&agrave;y), for(trong), since(kể từ), never(kh&ocirc;ng bao giờ)</p>\r\n<p>Just: Are you hungry? No, I have just had lunch. Bạn c&oacute; đ&oacute;i kh&ocirc;ng? Kh&ocirc;ng , t&ocirc;i vừa ăn xong</p>\r\n<p>Already: &lsquo;Don&rsquo;t forget to send the letter&rsquo;. &lsquo;I&rsquo;ve already sent it&rsquo; Đừng qu&ecirc;n gửi thư nh&eacute;. T&ocirc;i đ&atilde; gửi n&oacute; rồi. Ở đ&acirc;y &ldquo;đ&atilde; rồi&rdquo; c&oacute; nghĩa l&agrave; h&agrave;nh động xảy ra sớm hơn dự kiến. V&iacute; dụ: T&ocirc;i đ&atilde; l&agrave;m b&agrave;i tập rồi n&ecirc;n đừng c&oacute; hỏi nữa nh&eacute; &gt;&gt; I have already done the homework, don&rsquo;t ask anymore!</p>\r\n<p>Yet: &lsquo;Has it stopped raining yet?&rsquo; Cho đến l&uacute;c n&agrave;y, trời đ&atilde; tạnh mưa chưa. I have not send the letters yet = Cho đến l&uacute;c n&agrave;y, t&ocirc;i vẫn chưa gửi thư.</p>\r\n<p>For: &lsquo;They have been married for ten years&rsquo; Họ đ&atilde; cưới được 10 năm/ từ 10 năm rồi.&nbsp;</p>\r\n<p>&lsquo;I&rsquo;ve lived here for 20 years&rsquo; T&ocirc;i đ&atilde; ở đ&acirc;y được 20 năm rồi.</p>\r\n<p>Since: &lsquo;They have been married since 2000&rsquo; Họ đ&atilde; cưới từ năm 2000. Nếu for l&agrave; khoảng thời gian th&igrave; since l&agrave; mốc thời gian.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Qu&aacute; khứ đơn v&agrave; qu&aacute; khứ tiếp diễn: Past simple and past continuous</strong></p>\r\n<ul>\r\n<li>Qu&aacute; khứ đơn diễn đạt h&agrave;nh động đ&atilde; chấm dứt, thuộc về qu&aacute; khứ</li>\r\n</ul>\r\n<p>Eg: she traveled in Europe last year. C&ocirc; ấy đi du lịch ch&acirc;u &Acirc;u năm ngo&aacute;i.&nbsp;</p>\r\n<p>Dấu hiệu nhận biết: last year( năm ngo&aacute;i), last month(th&aacute;ng trước), yesterday(ng&agrave;y h&ocirc;m qua), 2 months ago (2 th&aacute;ng trước)&hellip;</p>\r\n<ul>\r\n<li>Qu&aacute; khứ đơn diễn đạt những h&agrave;nh động xảy ra li&ecirc;n tiếp thuộc về qu&aacute; khứ</li>\r\n</ul>\r\n<p>Eg: He knocked her down, grabbed her purse and ran away (anh ấy đ&aacute;nh gục c&ocirc; ấy, t&oacute;m lấy t&uacute;i của c&ocirc; ấy v&agrave; chạy mất)</p>\r\n<ul>\r\n<li>Qu&aacute; khứ tiếp diễn diễn đạt 2 h&agrave;nh động song song trong qu&aacute; khứ</li>\r\n</ul>\r\n<p>Eg: While she is cooking, her husband was fixing his car. Trong khi c&ocirc; ấy đang nấu ăn, chồng c&ocirc; ấy sửa xe (cả 2 h&agrave;nh động ở trong qu&aacute; khứ)</p>\r\n<p>Dấu hiệu: While (trong khi)</p>\r\n<ul>\r\n<li>Qu&aacute; khứ tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra th&igrave; h&agrave;nh động kh&aacute;c xen v&agrave;o</li>\r\n</ul>\r\n<p>Eg: We were having dinner when she came. Ch&uacute;ng t&ocirc;i đang ăn tối th&igrave; c&ocirc; ấy t&oacute;i ( cả 2 h&agrave;nh động trong qu&aacute; khứ)</p>\r\n<p>Dấu hiệu: when she came&nbsp;</p>\r\n<ul>\r\n<li>Qu&aacute; khứ tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra tại một thời điểm trong qu&aacute; khứ</li>\r\n</ul>\r\n<p>Eg: I was eating at 7 o&rsquo;clock yesterday( l&uacute;c 7 giờ h&ocirc;m qua t&ocirc;i đang ăn)</p>\r\n<p>She was lying on the beach at this time last summer(C&ocirc; ấy đang nằm tr&ecirc;n b&atilde;i biển v&agrave;o l&uacute;c n&agrave;y h&egrave; năm ngo&aacute;i)</p>\r\n<p>Dấu hiệu: at this time last summer(v&agrave;o l&uacute;c n&agrave;y h&egrave; năm ngo&aacute;i), at present last night ( tại thời điển n&agrave;y đ&ecirc;m h&ocirc;m qua), at this moment 2 months ago ( v&agrave;o tầm n&agrave;y 2 th&aacute;ng trước)&hellip;.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Tương lai v&agrave; tương lai gần: Future tense and the near future</strong></p>\r\n<ul>\r\n<li>Tương lai đơn diễn đạt một h&agrave;nh động ở thời tương lai</li>\r\n</ul>\r\n<p>Eg: the price will change next month. Gi&aacute; sẽ thay đổi th&aacute;ng tới.&nbsp;</p>\r\n<ul>\r\n<li>Tương lai đơn (simple future) diễn đạt một quyết định tại thời điểm n&oacute;i</li>\r\n</ul>\r\n<p>Eg: Ok, I will accept your offer. (được rồi, t&ocirc;i sẽ chấp nhận lời đề nghị của &ocirc;ng)&nbsp;</p>\r\n<ul>\r\n<li>Tương lai đơn diễn đạt một lời dự đo&aacute;n</li>\r\n</ul>\r\n<p>Eg: I think it will rain soon</p>\r\n<p>Dấu hiệu: I think&hellip;.</p>\r\n<ul>\r\n<li>Tương lai gần diễn đạt dự định đ&atilde; l&ecirc;n kế hoạch</li>\r\n</ul>\r\n<p>Eg: I have a plan of holding a party this weekend. I am going to invite a lot of friends. T&ocirc;i c&oacute; dự định tổ chức một bữa tiệc cuối tuần n&agrave;y, t&ocirc;i sẽ mời rất nhiều bạn.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>C&aacute;c th&igrave; kh&oacute;&nbsp;</strong></p>\r\n<ul>\r\n<li>Qu&aacute; khứ ho&agrave;n th&agrave;nh(Past perfect): diễn tả một h&agrave;nh động xảy ra trước một h&agrave;nh động kh&aacute;c trong qu&aacute; khứ</li>\r\n</ul>\r\n<p>Cấu tr&uacute;c: had + PII</p>\r\n<p>Before I went to school, I had eaten breakfast: trước khi t&ocirc;i đến trường, t&ocirc;i đ&atilde; ăn s&aacute;ng</p>\r\n<ul>\r\n<li>Tương lai ho&agrave;n th&agrave;nh (future perfect) diễn tả một h&agrave;nh động xảy ra trước một h&agrave;nh động kh&aacute;c trong tương lai</li>\r\n</ul>\r\n<p>Cấu tr&uacute;c: will have + PII</p>\r\n<p>By this summer, they will have finished building the bridge. (v&agrave;o m&ugrave;a h&egrave;/trước m&ugrave;a h&egrave; n&agrave;y, họ sẽ xong việc x&acirc;y c&aacute;i cầu)</p>\r\n<p>Dấu hiệu: by this summer, by next month, by the time you come (ch&uacute; &yacute;: come ở đ&acirc;y chia ở hiện tại nhưng thực ra l&agrave; để chỉ tương lai) &hellip;.&nbsp;</p>\r\n<ul>\r\n<li>Tương lai tiếp diễn: diễn tả 1 h&agrave;nh động xảy ra tại một thời điểm x&aacute;c định trong tương lai</li>\r\n</ul>\r\n<p>Cấu tr&uacute;c: will be + Ving</p>\r\n<p>At this time tomorrow, I will be lying on the beach. ( v&agrave;o thời điểm n&agrave;y ng&agrave;y mai, t&ocirc;i sẽ đang nằm d&agrave;i tr&ecirc;n b&atilde;i biển)</p>\r\n<p>Dấu hiệu: at this time tomorrow, at present next summer, at this moment next Friday</p>\r\n<p>&nbsp;</p>','2016-10-11 11:15:25.974000',1),(5,'Giới từ: Địa điểm','<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\"><strong>Ch&uacute;ng ta d&ugrave;ng \"at\"</strong></p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;Để &aacute;m chỉ một địa điểm m&agrave; ch&uacute;ng ta coi n&oacute; như một điểm, mốc (to refer to a position or location which we see as a point):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">I was sitting at my desk.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;Để n&oacute;i về c&ocirc;ng ty hoặc c&ocirc;ng sở m&agrave; ch&uacute;ng ta coi n&oacute; như một nơi gắn với h&agrave;nh động (to talk about locations at companies, workplaces when we see them as a place of activity):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">How many people are working at Microsoft?</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để n&oacute;i về hoạt động li&ecirc;n quan đến một nh&oacute;m người (to refer to activities which involve a group of people):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">Were you at Lisa&rsquo;s party? (also at the cinema, at the theatre)</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;with school/college/university:</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">She always did well at school.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;khi nhắc đến địa điểm (to refer to an address):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">They once lived at number 12 South George&rsquo;s Street.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;khi n&oacute;i đến địa điểm c&ocirc;ng cộng (to talk about public places where we get treatments, such as a hairdresser&rsquo;s or doctor&rsquo;s surgery):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">I can&rsquo;t meet at four. I&rsquo;ll be at the hairdresser&rsquo;s until five.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;khi n&oacute;i đến c&aacute;c cửa h&agrave;ng (to refer to most shops):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">Look what I bought at the butcher&rsquo;s today.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&nbsp;</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\"><strong>Ch&uacute;ng ta d&ugrave;ng on</strong></p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;khi nhắc đến vị tr&iacute; tr&ecirc;n bất k&igrave; bề mặt n&agrave;o (to refer to a position on any surface):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">I know I left my wallet on the table.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để mi&ecirc;u tả một vị tr&iacute; dọc đường hoặc cạnh s&ocirc;ng, biển, hồ (to describe a position along a road or river or by the sea or by a lake):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">Dublin is on the east coast of Ireland.</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để n&oacute;i về một tầng của t&ograve;a nh&agrave; (to talk about a floor in a building):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">They live on the 15th floor!</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để n&oacute;i về việc d&ugrave;ng phương tiện c&ocirc;ng cộng (to talk about being physically on public transport):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">I was on the train when she phoned. (but to talk about ways of travelling, we use by: I went to Rome by train.)</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&nbsp;</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\"><strong>Ch&uacute;ng ta d&ugrave;ng \"in\":</strong></p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để n&oacute;i về địa điểm c&oacute; kh&ocirc;ng gian (to talk about locations within a larger area):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">I know my book is somewhere in this room. Can anyone see it?</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;để n&oacute;i về nơi l&agrave;m việc khi ch&uacute;ng ta coi n&oacute; l&agrave; một địa điểm thực tế (to talk about workplaces when we see them as a physical location):</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">She works in an open-plan office. (but we use on when we talk about a farm: I&rsquo;ve always wanted to work on a farm.)</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">&bull;with class:</p>\r\n<p class=\"p\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 11.25pt; margin-left: 0in;\">He found it difficult to concentrate in class.</p>\r\n<p>&nbsp;</p>','2016-10-12 00:55:35.136000',1),(6,'Tính từ','<p><strong>Vị tr&iacute; của t&iacute;nh từ</strong></p>\r\n<ul>\r\n<li>T&iacute;nh từ bổ nghĩa cho danh từ hoặc động từ li&ecirc;n kết (linking verb).</li>\r\n</ul>\r\n<p>A wonderful life: t&iacute;nh từ wonderful bổ nghĩa cho danh từ life</p>\r\n<p>Life is wonderful: t&iacute;nh từ wonderful đi sau linking verb \"be\"&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>T&iacute;nh từ lu&ocirc;n đứng trước danh từ được bổ nghĩa, c&oacute; thể c&oacute; nhiều t&iacute;nh từ bổ sung &yacute; nghĩa cho 1 danh từ:</li>\r\n</ul>\r\n<p>That is my <strong>new red</strong> car. (t&iacute;nh từ new v&agrave; red đều bổ nghĩa cho danh từ \"car\")</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>T&iacute;nh từ c&oacute; thể kết hợp với &ldquo;the&rdquo; để tạo th&agrave;nh danh từ&nbsp;</li>\r\n</ul>\r\n<p>V&iacute; dụ: The poor : người ngh&egrave;o;&nbsp;The rich: người giầu</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Th&agrave;nh phần bổ nghĩa cho t&iacute;nh từ</strong></p>\r\n<p>Chỉ c&oacute; trạng từ l&agrave; bổ sung &yacute; nghĩa cho t&iacute;nh từ:&nbsp;</p>\r\n<p>My newly painted car: c&aacute;i xe mới sơn của t&ocirc;i. (xe sơn: painted car, nhưng v&igrave; l&agrave; mới sơn n&ecirc;n th&ecirc;m trạng từ \"newly\" bổ nghĩa cho t&iacute;nh từ \"painted\").&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>T&iacute;nh từ kết th&uacute;c bằng &ndash;ing v&agrave; &ndash;ed&nbsp;</strong></p>\r\n<p>C&oacute; rất nhiều t&iacute;nh từ kết th&uacute;c bằng &ndash;ing v&agrave; &ndash;ed, v&iacute; dụ như : boring v&agrave; bored. V&iacute; dụ:&nbsp;</p>\r\n<p>Jane phải l&agrave;m một c&ocirc;ng việc lặp đi lặp lại h&agrave;ng ng&agrave;y. C&ocirc; ấy kh&ocirc;ng hề th&iacute;ch c&ocirc;ng việc đ&oacute; v&agrave; muốn l&agrave;m một c&ocirc;ng việc kh&aacute;c.</p>\r\n<p>Ch&uacute;ng ta n&oacute;i: C&ocirc;ng việc của c&ocirc; ấy thật đ&aacute;ng ch&aacute;n/&gt;&gt; Jane&rsquo;s job is boring.&nbsp;</p>\r\n<p>Jane bị ch&aacute;n (c&ocirc;ng việc của c&ocirc; ấy)&gt;&gt; Jane is bored (with her job)</p>\r\n<p>Somebody is bored if something (or somebody else) is boring. Or, if something is boring, it makes you bored. (Một ai đ&oacute; sẽ bị ch&aacute;n nếu c&oacute; c&aacute;i g&igrave; đ&oacute; ( hoặc một ai kh&aacute;c) thật đ&aacute;ng ch&aacute;n. Hoặc, nếu c&aacute;i g&igrave; đ&oacute; thật đ&aacute;ng ch&aacute;n, n&oacute; l&agrave;m cho bạn ch&aacute;n).&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>So s&aacute;nh c&aacute;c t&iacute;nh từ kết th&uacute;c bằng &ndash;ed hay &ndash;ing:</p>\r\n<p>My job is boring(l&agrave;m cho ch&aacute;n)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m bored with my job (t&ocirc;i bị ch&aacute;n với c&ocirc;ng việc của t&ocirc;i)</p>\r\n<p>interesting (th&uacute; vị/ l&agrave;m cho cảm thấy th&uacute; vị)I&rsquo;m interested in my job (t&ocirc;i hứng th&uacute; với ...)</p>\r\n<p>tiring (l&agrave;m cho mệt)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m tired doing my job (t&ocirc;i bị mệt ...)</p>\r\n<p>satisfying (l&agrave;m cho thỏa m&atilde;n)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m not satisfied with my job (t&ocirc;i kh&ocirc;ng thỏa m&atilde;n..)</p>\r\n<p>depressing (l&agrave;m cho phiền muộn)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;My job makes me depressed (việc l&agrave;m t&ocirc;i phiền muộn..)</p>\r\n<p>&nbsp;</p>\r\n<p>So s&aacute;nh c&aacute;c v&iacute; dụ:</p>\r\n<p><strong>Interesting v&agrave; interested</strong></p>\r\n<p>Julia thinks politics is interesting.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Julia is interested in politics.</p>\r\n<p>Do you meet anyone interesting at the party?&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Are you interested in buying a car?</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Surprising v&agrave; surprised</strong></p>\r\n<p>It was surprising that he passed the exam.Everybody was surprised that he passed the exam.&nbsp;</p>\r\n<p>This is a surprising giftI am surprised when I see the gift</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Disappointing v&agrave; disappointed</strong></p>\r\n<p>The film was disappointing&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;We were disappointed with the films</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Shocking v&agrave; shocked</strong></p>\r\n<p>The news was shockingI was shocked when I heard the new.</p>','2016-10-12 01:44:56.622000',1),(7,'Trạng từ','<p><img src=\"http://i2.wp.com/www.gmbarlean.com/wp-content/uploads/2014/07/adverb.png\" alt=\"Kết quả h&igrave;nh ảnh cho adverb\" width=\"470\" height=\"154\" /></p>\r\n<p><strong>Cấu tạo</strong></p>\r\n<p>Trạng từ = t&iacute;nh từ + ly</p>\r\n<p>Adjective : quickAdverb: quickly</p>\r\n<p>Seriousseriously</p>\r\n<p>Carefulcarefully</p>\r\n<p>Quietquietly</p>\r\n<p>Heavyheavily</p>\r\n<p>&nbsp;</p>\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng phải từ n&agrave;o kết th&uacute;c bằng &ndash;ly cũng l&agrave; adverb, một v&agrave;i t&iacute;nh từ cũng kết th&uacute;c bằng -ly</p>\r\n<p>FriendlyLivelyLonelyElderlySillylovely</p>\r\n<p>Ch&uacute; &yacute;:&nbsp;</p>\r\n<p>Same is careful</p>\r\n<p>Same is a careful driverSame drove carefully</p>\r\n<p>Same l&agrave; một l&aacute;i xe cẩn thậnSame l&aacute;i xe cẩn thận</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Vị tr&iacute; của trạng từ</strong></p>\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho cả c&acirc;u: đi đầu c&acirc;u, đi cuối c&acirc;u</p>\r\n<p>Trạng từ bổ nghĩa cho động từ: đi trước động từ, đi sau động từ</p>\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho t&iacute;nh từ: đi trước t&iacute;nh từ</p>\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho một trạng từ kh&aacute;c: đi trước một trạng từ kh&aacute;c</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ch&uacute;ng ta d&ugrave;ng trạng từ để bổ sung &yacute; nghĩa cho động từ, t&iacute;nh từ v&agrave; trạng từ kh&aacute;c</strong></p>\r\n<p><img src=\"http://mrswarnerarlington.weebly.com/uploads/6/9/0/0/6900648/5887192.jpeg?704\" alt=\"Kết quả h&igrave;nh ảnh cho adverb\" width=\"487\" height=\"377\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Reasonably cheap(adv + adj) : kh&aacute; l&agrave; rẻ</p>\r\n<p>Incredibly quickly(adv + adv): cực kỳ nhanh</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Một số trạng từ/t&iacute;nh từ hay gặp</strong></p>\r\n<p>Good/well</p>\r\n<p>Your English is goodYou speak English well.</p>\r\n<p>Ch&uacute;ng ta d&ugrave;ng well + ph&acirc;n từ II</p>\r\n<p>Well-dressed : ăn mặc đẹp</p>\r\n<p>Well-known: được biết đến nhiều</p>\r\n<p>Well-educated: c&oacute; gi&aacute;o dục tốt</p>\r\n<p>Well-paid: được trả lương cao</p>\r\n<p>*đặc biệt: I am well = t&ocirc;i khỏe</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Fast/hard/late</strong> : vừa l&agrave; t&iacute;nh từ, vừa l&agrave; trạng từ</p>\r\n<p>Darren is a very fast runnershe runs very fast</p>\r\n<p>Kate is a hard workershe works very hard</p>\r\n<p>I was lateI got up late</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lately, hardly l&agrave; trạng từ đặc biệt, kh&ocirc;ng li&ecirc;n quan đến late v&agrave; hard</strong></p>\r\n<p>*lately = recently : Have you seen Tom lately: bạn c&oacute; nh&igrave;n thấy Tom gần đ&acirc;y kh&ocirc;ng</p>\r\n<p>*hardly: gần như kh&ocirc;ng: Sarah hardly spoke to me: Sara gần như kh&ocirc;ng n&oacute;i với t&ocirc;i c&acirc;u n&agrave;o.</p>\r\n<p>Hardly c&oacute; thể d&ugrave;ng với any/anybody/anyone/anything/anywhere:</p>\r\n<p>How much money do we have? hardly any (ch&uacute;ng ta c&oacute; bao nhi&ecirc;u tiền? gần như kh&ocirc;ng)</p>\r\n<p>The exam was very difficult. Hardly anybody passed ( b&agrave;i kiểm tra rất kh&oacute;, gần như kh&ocirc;ng ai qua cả).</p>\r\n<p>Hardly ever= gần như kh&ocirc;ng bao giờ ( almost never)</p>\r\n<p>I hardly ever go to the park ( t&ocirc;i chả bao giờ đến c&ocirc;ng vi&ecirc;n).</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Trạng từ chỉ độ thường xuy&ecirc;n</strong></p>\r\n<p><img src=\"http://elight.edu.vn/wp-content/uploads/2015/07/adverbs-of-frequency.png\" alt=\"Kết quả h&igrave;nh ảnh cho adverb\" width=\"476\" height=\"367\" /></p>\r\n<p>&nbsp;</p>','2016-10-12 02:35:10.956000',1),(8,'Trạng từ: So & Such','<p><strong>So v&agrave; Such đều để l&agrave;m mạnh th&ecirc;m t&iacute;nh từ hoặc trạng từ</strong></p>\r\n<p>So + t&iacute;nh từ, trạng từ: So beautiful= rất đẹp</p>\r\n<p>Such + danh từ: Such a beautiful girl = một c&ocirc; g&aacute;i đẹp đến vậy.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ch&uacute;ng ta d&ugrave;ng so + adj/adv&nbsp;nhưng such + adjective + noun</strong></p>\r\n<p><img src=\"https://goldenageesgblog.files.wordpress.com/2014/10/utilizar-so-such-ingles.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho So and such\" width=\"324\" height=\"234\" /></p>\r\n<p>The story is so <strong>stupid&nbsp;</strong>( C&acirc;u chuy&ecirc;n rất ngu ngốc)</p>\r\n<p>It is such <strong>a stupid story (</strong> đ&oacute; l&agrave; một c&acirc;u chuyện rất ngu ngốc)</p>\r\n<p>She runs so fast</p>\r\n<p>&nbsp;</p>\r\n<p><strong>So v&agrave; such c&ograve;n c&oacute; thể đi trước many, much</strong></p>\r\n<p><img src=\"https://edukaplanet.files.wordpress.com/2015/06/7ecb7-so2b3.png\" alt=\"Kết quả h&igrave;nh ảnh cho So and such\" width=\"593\" height=\"497\" /></p>\r\n<p><strong>Xem x&eacute;t v&iacute; dụ</strong></p>\r\n<p>&nbsp;</p>\r\n<p>It&rsquo;s so warm: trời rất ấm</p>\r\n<p>He talk so quietly: anh ấy n&oacute;i rất nhỏ</p>\r\n<p>We had such a good time: ch&uacute;ng t&ocirc;i c&oacute; một khoảng thời gian rất vui</p>\r\n<p>&nbsp;</p>\r\n<p><strong>So v&agrave; such + &hellip; + that</strong></p>\r\n<p>The book was so good that I couldn&rsquo;t put it downit was such a good book that I couldn&rsquo;t put it down.</p>\r\n<p>Quyể s&aacute;ch hay đến mức t&ocirc;i kh&ocirc;ng thể đặt xuống được</p>\r\n<p>Ch&uacute; &yacute;: that c&oacute; thể bị lược bỏ</p>\r\n<p>The book was so good I couldn&rsquo;t put it down.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>So v&agrave; such c&ograve;n c&oacute; nghĩa l&agrave; : như vậy.</strong></p>\r\n<p>The house was built 100 years old. I can&rsquo;t believe it was so old. I can&rsquo;t believe it was such an old house</p>\r\n<p>&nbsp;( t&ocirc;i kh&ocirc;ng tin được l&agrave; n&oacute; cổ đến vậy)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>B&agrave;i tập: so hay such?</strong></p>\r\n<p>&hellip;&hellip;&hellip;&hellip;.. long&hellip;&hellip;&hellip;&hellip;&hellip;.a long time</p>\r\n<p>&hellip;&hellip;&hellip;&hellip;.. far&hellip;&hellip;&hellip;&hellip;&hellip;.a long way</p>\r\n<p>&hellip;&hellip;&hellip;&hellip;..much&hellip;&hellip;&hellip;&hellip;&hellip;.a lot</p>\r\n<p>&hellip;&hellip;&hellip;&hellip;..many</p>\r\n<p>&nbsp;</p>','2016-10-12 02:45:18.002000',1),(9,'Tính từ: Các dạng bổ sung ý nghĩa cho tính từ','<p><strong>Enough: đủ</strong></p>\r\n<p>Enough đi đằng sau t&iacute;nh từ v&agrave; trạng từ.</p>\r\n<p>He is experienced enough.</p>\r\n<p>You work hard enough.</p>\r\n<p>Enough đi trước danh từ:</p>\r\n<p>he has enough experience.</p>\r\n<p>*enough&hellip; for, enough&hellip;to</p>\r\n<p>He is experienced enough for the job; He is experienced enough to do the job.</p>\r\n<p>Anh ấy đủ kinh nghiệm cho vị tr&iacute; n&agrave;y.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>*too&hellip;&hellip;for, too&hellip;&hellip;.to&nbsp;</strong></p>\r\n<p>He is too experienced for the job; He is too experienced to do the job.&nbsp;</p>\r\n<p>Anh ấy thừa/ qu&aacute; nhiều kinh nghiệm cho vị tr&iacute; n&agrave;y.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Very = rất</strong></p>\r\n<p>It is very cold: trời rất lạnh</p>\r\n<p>A little = một ch&uacute;t</p>\r\n<p>It is a little cold : trời hơi lạnh</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Quite, pretty, rather and fairly</strong></p>\r\n<p>Quite/pretty/rather/faily = kh&aacute; l&agrave; (less than &ldquo;very&rdquo;, but more than &ldquo;a little&rdquo;)</p>\r\n<p>It is quite cold = it is pretty cold = It&rsquo;s rather cold = it&rsquo;s fairly cold</p>\r\n<p>Quite a + noun: it was quite a surprise ( đ&oacute; kh&aacute; l&agrave; một sự ngạc nhi&ecirc;n)</p>\r\n<p>Quite a lot (of) : there were quite a lot of people ( c&oacute; kh&aacute; nhiều người)</p>\r\n<p>Quite + verb: I quite like tennis ( t&ocirc;i kh&aacute; th&iacute;ch tennis)</p>\r\n<p>*I&rsquo;m quite sure about that: t&ocirc;i kh&aacute; l&agrave; chắc chắn ( 100%)</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://image.slidesharecdn.com/adverbsofdegree-131018100915-phpapp01/95/adverbs-of-degree-2-638.jpg?cb=1382091031\" alt=\"Kết quả h&igrave;nh ảnh cho quite rather fairly\" width=\"566\" height=\"425\" /></p>','2016-10-12 02:48:00.849000',1),(10,'Tính từ và đại từ bất định','<p><strong>Một: One</strong></p>\r\n<p>There\'s only one piece of cake left (Chỉ c&ograve;n lại một mẩu b&aacute;nh)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mỗi: each&nbsp;</strong></p>\r\n<p>A ring on each finger (Một c&aacute;i nhẫn tr&ecirc;n mỗi ng&oacute;n tay)&nbsp;</p>\r\n<p>Each student has a book.</p>\r\n<p>Each one of us has a book ( mỗi người trong số ch&uacute;ng t&ocirc;i c&oacute; một quyển s&aacute;ch).&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mọi: Everyone, everybody, everything, everytime, everywhere: mọi&nbsp;</strong></p>\r\n<p>Everyone is ready: mọi người đều sẵn s&agrave;ng</p>\r\n<p>Đặc biệt: The buses go every ten minutes&nbsp;</p>\r\n<p>(Cứ mỗi mười ph&uacute;t lại c&oacute; chuyến xe b&uacute;yt)&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Bất cứ: Anybody, anything, anyone, any time, ....&nbsp;</strong></p>\r\n<p>You may come here at any time (Bạn c&oacute; thể đến đ&oacute; bất cứ l&uacute;c n&agrave;o)&nbsp;</p>\r\n<p>Anyone can answer to that question ( bất cứ ai cũng c&oacute; thể trả lời)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Để chỉ số lượng nhiều: Several, many + đếm được; &nbsp;a little, much + kh&ocirc;ng đếm được; &nbsp;some, a lot of + cả hai</strong></p>\r\n<p>I have read this book several times (T&ocirc;i đ&atilde; đọc quyển s&aacute;ch n&agrave;y nhiều lần)&nbsp;</p>\r\n<p>I have a lot of bread, but I haven\'t much butter&nbsp;</p>\r\n<p>(T&ocirc;i c&oacute; nhiều b&aacute;nh m&igrave;, nhưng t&ocirc;i chẳng c&oacute; nhiều bơ)</p>\r\n<p>There are many spelling mistakes in this newspaper (Tờ b&aacute;o n&agrave;y c&oacute; nhiều lỗi ch&iacute;nh tả)&nbsp;</p>\r\n<p>There\'s some ice in the fridge(C&oacute; một &iacute;t đ&aacute; trong tủ lạnh)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ch&uacute; &yacute; dạng phủ định</strong></p>\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; tiền: I don&rsquo;t have any money&nbsp;</p>\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; nhiều tiền: I don&rsquo;t have much money</p>\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; nhiều bạn: I don&rsquo;t have many friends</p>\r\n<p>Kh&ocirc;ng d&ugrave;ng phủ định với a lot: I don&rsquo;t have a lot of money/friends</p>\r\n<p>Kh&ocirc;ng d&ugrave;ng khẳng định với much : I have much money&nbsp;</p>\r\n<p>C&acirc;u hỏi : c&oacute; thể d&ugrave;ng với much : Do you have much money?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Để chỉ số lượng &iacute;t: Ph&acirc;n biệt little v&agrave; a little; few v&agrave; a few</strong></p>\r\n<p>I have little time for watching TV (T&ocirc;i c&oacute; &iacute;t thời gian để xem TV)&nbsp;</p>\r\n<p>Give me a little sugar (H&atilde;y cho t&ocirc;i một &iacute;t đường)&nbsp;</p>\r\n<p>There were few people at his funeral (C&oacute; &iacute;t người dự đ&aacute;m tang &ocirc;ng ta)&nbsp;</p>\r\n<p>The jailer asked us a few questions (Vi&ecirc;n cai ngục hỏi ch&uacute;ng t&ocirc;i v&agrave;i c&acirc;u)&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Enough: đủ; plenty: thừa, nhiều đi với cả đếm được v&agrave; kh&ocirc;ng đếm được&nbsp;</strong></p>\r\n<p>We have enough food for two weeks\' holiday (Ch&uacute;ng t&ocirc;i c&oacute; đủ thực phẩm cho kỳ nghỉ hai tuần)&nbsp;</p>\r\n<p>We have plenty of food.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>nobody, nothing,&hellip; ( kh&ocirc;ng ai cả, kh&ocirc;ng g&igrave; cả)</strong></p>\r\n<p>I want nothing from you ( t&ocirc;i kh&ocirc;ng cần g&igrave; từ bạn)&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>All (tất cả), all of(to&agrave;n bộ), Most of (đa số), half of (một nửa), a third of ( một phần ba&hellip;.)</strong></p>\r\n<p>All dogs are animals, but not all animals are dogs (Tất cả c&aacute;c con ch&oacute; đều l&agrave; động vật, nhưng kh&ocirc;ng phải tất cả c&aacute;c động vật đều l&agrave; ch&oacute;)&nbsp;</p>\r\n<p>All of my students are teenagers</p>\r\n<p>Most of my students are teenagers</p>\r\n<p>Half of my students are teenagers</p>\r\n<p>A third of my students are teenagers</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Tất cả 1 thứ g&igrave; đ&oacute;: All, All the, the whole</strong></p>\r\n<p>I read the whole book (t&ocirc;i đọc cả quyển s&aacute;ch) &nbsp;= I real all the book</p>\r\n<p>I spend all day, the whole day on the beach</p>\r\n<p>I visit the whole country ( t&ocirc;i đi du lịch cả nước)&nbsp;</p>\r\n<p>*** the whole: cả, to&agrave;n bộ đằng sau chỉ 1 vật cụ thể. Ph&acirc;n biệt: all countries: tất cả c&aacute;c nước, the whole country ( cả nước, nhưng chỉ l&agrave; 1 nước)</p>\r\n<p>*** Đặc biệt: all the time: mọi l&uacute;c nhưng every time = mỗi lần</p>\r\n<p>She works all the time ( c&ocirc; ấy l&agrave;m việc mọi l&uacute;c)&nbsp;</p>\r\n<p>Every time I see you, you look different ( mỗi lần t&ocirc;i thấy bạn, bạn lại kh&aacute;c đi)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>No/none of</strong></p>\r\n<p>No words can express my homesickness (Kh&ocirc;ng lời n&agrave;o diễn tả được nỗi nhớ nh&agrave; của t&ocirc;i)</p>\r\n<p>None of my students are teenagers. (kh&ocirc;ng một ai trong số học sinh của t&ocirc;i l&agrave; thiếu ni&ecirc;n)</p>\r\n<p>Ch&uacute; &yacute;: I have no friends = I don&rsquo;t have any friend</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Both, both of, both&hellip; and</strong></p>\r\n<p>Both Janette and Michelle were absent (Cả Janette v&agrave; Michele đều kh&ocirc;ng c&oacute; mặt) (lu&ocirc;n ở số nhiều)</p>\r\n<p>Both of us want to stay.</p>\r\n<p>Both children were absent.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Either&hellip;. Or(hoặc&hellip; hoặc), Either of, neither&hellip;. nor(kh&ocirc;ng&hellip;kh&ocirc;ng), neither of</strong></p>\r\n<p>Either Mary or Jane is going to the beach today ( Hoặc Mary hoặc Jane đi đến b&atilde;i biển h&ocirc;m nay)&nbsp;</p>\r\n<p>Either girl is going to the beach today (bất cứ c&ocirc; g&aacute;i n&agrave;o trong hai c&ocirc; g&aacute;i đ&oacute; )</p>\r\n<p>Either of us is going to the beach today ( bất cứ ai trong số hai ch&uacute;ng t&ocirc;i sẽ đi biển h&ocirc;m nay)&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Neither Alice nor Jane was present (Cả Alice v&agrave; Jane đều kh&ocirc;ng c&oacute; mặt) (chia theo Jane)</p>\r\n<p>Neither Alice nor her friends were present (chia theo her friends)</p>\r\n<p>Neither girl was present. (kh&ocirc;ng ai trong số 2 cố g&aacute;i c&oacute; mặt)</p>\r\n<p>Neither of us was present (kh&ocirc;ng ai trong số ch&uacute;ng t&ocirc;i c&oacute; mặt)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>So s&aacute;nh:&nbsp;</strong></p>\r\n<p>There are two good hotels hereThere are many good hotels here</p>\r\n<p>You could stay at either of them You could stay at any of them</p>\r\n<p>&nbsp;</p>\r\n<p>We tried two hotelsWe tried a lot of hotels</p>\r\n<p>Neither of them had roomsNone of them has rooms</p>\r\n<p>Both of them were fullAll of them were full</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Another(một c&aacute;i kh&aacute;c, một c&aacute;i nữa), the other(những c&aacute;i c&ograve;n lại, phần c&ograve;n lại), other (c&aacute;i kh&aacute;c, người kh&aacute;c)</strong></p>\r\n<p>Would you like another cup of tea? (&Ocirc;ng muốn d&ugrave;ng một t&aacute;ch tr&agrave; nữa kh&ocirc;ng?)&nbsp;</p>\r\n<p>Where are the other students? (C&aacute;c sinh vi&ecirc;n kh&aacute;c/ c&ograve;n lại đang ở đ&acirc;u?)</p>\r\n<p>I think he is brilliant, but other students think he is weird. (T&ocirc;i thấy anh ấy thật giỏi, nhưng c&aacute;c học sinh kh&aacute;c kh&ocirc;ng nghĩ vậy).</p>\r\n<p>Nếu other l&agrave; đại từ ( others = others students), phải th&ecirc;m s nếu l&agrave; số nhiều</p>\r\n<p>I think he is brilliant, but others think he is weird.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>***Each other, one another, together (rất hay hỏi trong b&agrave;i thi)&nbsp;</strong></p>\r\n<p>Each other v&agrave; one another đều l&agrave; lẫn nhau, nhưng each other chỉ d&ugrave;ng cho 2 người, one another d&ugrave;ng cho nh&oacute;m người.</p>\r\n<p>We love each other: ch&uacute;ng t&ocirc;i y&ecirc;u nhau ( chỉ c&oacute; 2 người, t&aacute;c động qua lại)&nbsp;</p>\r\n<p>We help each other = he helps me and I help him (ch&uacute;ng t&ocirc;i gi&uacute;p lẫn nhau, anh ấy gi&uacute;p t&ocirc;i v&agrave; t&ocirc;i gi&uacute;p anh ấy)</p>\r\n<p>In our class, we help one another: ch&uacute;ng t&ocirc;i gi&uacute;p lẫn nhau, giống each other nhưng c&oacute; từ 3 người rở l&ecirc;n,</p>\r\n<p>We grow up together: ch&uacute;ng t&ocirc;i lớn l&ecirc;n c&ugrave;ng nhau ( together = c&ugrave;ng nhau)</p>\r\n<p>&nbsp;</p>','2016-10-12 03:31:58.936000',1),(11,'So sánh','<p><strong>T&oacute;m tắt so s&aacute;nh hơn v&agrave; so s&aacute;nh nhất:&nbsp;</strong></p>\r\n<p><img src=\"http://www.grammar.cl/rules/comparatives-superlatives.gif\" alt=\"Kết quả h&igrave;nh ảnh cho comparative english\" width=\"556\" height=\"556\" /></p>\r\n<p><strong>Dạng so s&aacute;nh hơn : -er hoặc more&hellip;.. than</strong></p>\r\n<ul>\r\n<li>Với t&iacute;nh từ v&agrave; trạng từ:&nbsp;</li>\r\n</ul>\r\n<p>Going by car is cheaper than going by train</p>\r\n<p>Going by train is more expensive than going by car.</p>\r\n<ul>\r\n<li>Với danh từ:&nbsp;</li>\r\n</ul>\r\n<p>I have more money than you.</p>\r\n<p>***You are taller than I am = you are taller than me.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Dạng so s&aacute;nh k&eacute;m: less &hellip;.than hoặc not as &hellip;.. than</strong></p>\r\n<ul>\r\n<li>Với t&iacute;nh từ v&agrave; trạng từ:&nbsp;</li>\r\n</ul>\r\n<p>Going by car is less expensive than going by train. <em>(Đi bằng xe th&igrave; &iacute;t đắt hơn đi bằng t&agrave;u)</em></p>\r\n<p>going by car is not as expensive as going by train. <em>(Đi bằng xe &ocirc; t&ocirc; kh&ocirc;ng đắt như đi bằng t&agrave;u)</em></p>\r\n<ul>\r\n<li>Với danh từ:&nbsp;</li>\r\n</ul>\r\n<p>I spend less money than you. <em>(T&ocirc;i ti&ecirc;u &iacute;t tiền hơn bạn).</em></p>\r\n<p><br /><br /></p>\r\n<p><strong>Dạng so s&aacute;nh bằng: as &hellip;. as</strong></p>\r\n<p>She is as beautiful as you are. (C&ocirc; ấy đẹp như bạn).</p>\r\n<p>You can have as much as you want. (Bạn c&oacute; thể c&oacute; bao nhi&ecirc;u như bạn muốn)</p>\r\n<p>Going by car is just as quick as taking the bus. <em>(Đi xe &ocirc; t&ocirc; cũng nhanh như đi xe bu&yacute;t)</em>.</p>\r\n<p>Can you send me the money as soon as possible? <em>(Bạn c&oacute; thể gửi tiền cho t&ocirc;i sớm nhất c&oacute; thể)</em>.</p>\r\n<p>Petrol is twice as expensive as it was a few years ago. (three times as, four times as)</p>\r\n<p><em>Petrol đắt gấp đ&ocirc;i một v&agrave;i năm trước.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><strong><em>The same as</em></strong></p>\r\n<p>Laura&rsquo;s salary is the same as mine. <em>(Lương của laura giống như của t&ocirc;i)</em></p>\r\n<p>But : Laura gets the same salary as me. <em>(Nhưng: laura c&oacute; tiền lương như t&ocirc;i)</em>.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Dạng so s&aacute;nh hơn đặc biệt</strong></p>\r\n<p>More Good/well -&gt; better</p>\r\n<p>More Bad/badly -&gt; worse</p>\r\n<p>More Far -&gt; further/farther</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Bổ sung &yacute; nghĩa cho so s&aacute;nh:</strong></p>\r\n<p>Much : Going by car is much cheaper than going by train. (rất nhiều)</p>\r\n<p>A lot: Going by car is a lot cheaper than going by train. (rất nhiều)</p>\r\n<p>Far: Going by car is far cheaper than going by train. (kh&aacute; nhiều)</p>\r\n<p>A little : Going by car is a little cheaper than going by train. (một ch&uacute;t)</p>\r\n<p>A bit: Going by car is a bit cheaper than going by train. (một ch&uacute;t)</p>\r\n<p>Slightly: Going by car is slightly cheaper than going by train. (một &iacute;t)</p>\r\n<p>Any: I&rsquo;m not waiting any longer. &nbsp;(kh&ocirc;ng)</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;T&ocirc;i kh&ocirc;ng đợi th&ecirc;m ch&uacute;t n&agrave;o nữa</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Do you feel any better?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bạn cảm thấy kh&aacute; hơn kh&ocirc;ng?</p>\r\n<p>No: &nbsp;The house is no bigger than ours. (kh&ocirc;ng)</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;The house is no more expensive than ours.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Dạng so s&aacute;nh c&agrave;ng... c&agrave;ng: The&hellip;.The&nbsp;</strong></p>\r\n<p>What time shall we left? The sooner, the better.</p>\r\n<p>The warmer the weather, the better I feel.</p>\r\n<p>Ch&uacute; &yacute;: elder = older khi n&oacute;i về người ( gi&agrave; hơn) : my older/elder sister is a TV producer.</p>\r\n<p>&nbsp;</p>','2016-10-12 03:48:16.541000',1),(12,'Tính từ và đại từ sở hữu, phản thân','<p class=\"MsoNormal\"><img src=\"https://s-media-cache-ak0.pinimg.com/564x/c2/2a/52/c22a52c6aa33e02c660c1cc17821a943.jpg\" alt=\"Kết quả h&igrave;nh ảnh cho possessive english\" width=\"317\" height=\"316\" /></p>\r\n<p class=\"MsoNormal\"><strong>Của t&ocirc;i, của bạn, của anh ấy</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"width: 472.25pt; border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" width=\"787\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">T&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">S&aacute;ch của t&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">S&aacute;ch ri&ecirc;ng của t&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">C&aacute;i của t&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Một trong những người bạn của t&ocirc;i</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">I</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">My book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">My own book</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= Mine</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of mine</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">You</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Your book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Your own book</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= Yours</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of yours</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">He</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">His book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">His own book</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= His</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of his</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">She</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Her book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;.</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= Hers</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of hers</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">It</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Its book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;.</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= Its</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of its</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">They</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Their book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;.</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= theirs</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of theirs</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">We</p>\r\n</td>\r\n<td style=\"width: 76.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"128\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Our book</p>\r\n</td>\r\n<td style=\"width: 99.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"165\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n<td style=\"width: 67.5pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"113\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">= ours</p>\r\n</td>\r\n<td style=\"width: 171.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"285\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">A friend of ours</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>&nbsp;Đại từ sở hữu l&agrave;m t&acirc;n ngữ: (đi sau động từ)</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">I</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell me</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">You</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell you</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">He</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell him</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">She</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell her</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">It</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell it</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">They</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell them</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 58.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"97\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">We</p>\r\n</td>\r\n<td style=\"width: 117.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"195\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tell us</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Phản th&acirc;n; tự m&igrave;nh l&agrave;m</strong></p>\r\n<p class=\"MsoNormal\">V&iacute; dụ: I make him a cake: t&ocirc;i l&agrave;m b&aacute;nh cho anh ấy</p>\r\n<p class=\"MsoNormal\">Nếu muốn n&oacute;i t&ocirc;i l&agrave;m b&aacute;nh cho t&ocirc;i: <s>I make me a cake : </s>I make myself a cake</p>\r\n<p class=\"MsoNormal\">Vậy khi chủ ngữ v&agrave; t&acirc;n ngữ c&ugrave;ng l&agrave; 1, ch&uacute;ng ta d&ugrave;ng myself, yourself&hellip;.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>Tuy nhi&ecirc;n myself c&ograve;n c&oacute; &yacute; nhấn mạnh việc tự m&igrave;nh l&agrave;m:</strong></p>\r\n<p class=\"MsoNormal\">I make this cake myself = I myself make this cake = T&ocirc;i tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y.</p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">T&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">L&agrave;m c&aacute;i b&aacute;nh cho t&ocirc;i</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">I</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make myself a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake myself</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">I myself make this cake</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">You</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make yourself a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake yourself</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">He</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make himself a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake himself</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">She</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make herself a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake herself</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">It</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make itself a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake itself</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">They</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make themselves a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake themselves</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 55.35pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"92\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">We</p>\r\n</td>\r\n<td style=\"width: 133.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"222\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make ourselves a cake</p>\r\n</td>\r\n<td style=\"width: 138.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"231\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">Make this cake ourselves</p>\r\n</td>\r\n<td style=\"width: 140.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"234\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\">&hellip;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong>By myself v&agrave; On my own:</strong> tự, một m&igrave;nh, kh&ocirc;ng ai gi&uacute;p</p>\r\n<p class=\"MsoNormal\">I live by myself: t&ocirc;i sống một m&igrave;nh</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\">You have to drive on your own: bạn phải tự l&aacute;i xe.&nbsp;</p>','2016-10-12 04:26:48.222000',1);
/*!40000 ALTER TABLE `toeic_grammartopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_level`
--

DROP TABLE IF EXISTS `toeic_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_level`
--

LOCK TABLES `toeic_level` WRITE;
/*!40000 ALTER TABLE `toeic_level` DISABLE KEYS */;
INSERT INTO `toeic_level` VALUES (1,'beginner','2016-10-11 04:03:02.343000'),(2,'intermediate','2016-10-11 04:03:09.357000'),(3,'advanced','2016-10-11 04:03:13.373000');
/*!40000 ALTER TABLE `toeic_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_listeningtopic`
--

DROP TABLE IF EXISTS `toeic_listeningtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_listeningtopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_listeningtopic_level_id_ceeaec63_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_listeningtopic_level_id_ceeaec63_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_listeningtopic`
--

LOCK TABLES `toeic_listeningtopic` WRITE;
/*!40000 ALTER TABLE `toeic_listeningtopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_listeningtopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage`
--

DROP TABLE IF EXISTS `toeic_passage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `isTestSix` tinyint(1) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_passage_level_id_517164c3_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_passage_level_id_517164c3_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage`
--

LOCK TABLES `toeic_passage` WRITE;
/*!40000 ALTER TABLE `toeic_passage` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage_topics`
--

DROP TABLE IF EXISTS `toeic_passage_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_passage_topics_passage_id_abf38c1a_uniq` (`passage_id`,`topic_id`),
  KEY `toeic_passage_topics_topic_id_cf3f2312_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_passage_topics_passage_id_d3b30946_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`),
  CONSTRAINT `toeic_passage_topics_topic_id_cf3f2312_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage_topics`
--

LOCK TABLES `toeic_passage_topics` WRITE;
/*!40000 ALTER TABLE `toeic_passage_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage_vocabs`
--

DROP TABLE IF EXISTS `toeic_passage_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_passage_vocabs_passage_id_6a7bd2ae_uniq` (`passage_id`,`vocab_id`),
  KEY `toeic_passage_vocabs_vocab_id_3744c8b6_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_passage_vocabs_passage_id_09a09005_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`),
  CONSTRAINT `toeic_passage_vocabs_vocab_id_3744c8b6_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage_vocabs`
--

LOCK TABLES `toeic_passage_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_passage_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question`
--

DROP TABLE IF EXISTS `toeic_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `fulltext` longtext,
  `explanation` longtext,
  `translation` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `passage_id` int(11) DEFAULT NULL,
  `typeOf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_question_level_id_20ab7552_fk_toeic_level_id` (`level_id`),
  KEY `toeic_question_passage_id_23a9ed6a_fk_toeic_passage_id` (`passage_id`),
  KEY `toeic_question_typeOf_id_b992096d_fk_toeic_type_id` (`typeOf_id`),
  CONSTRAINT `toeic_question_level_id_20ab7552_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_question_passage_id_23a9ed6a_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`),
  CONSTRAINT `toeic_question_typeOf_id_b992096d_fk_toeic_type_id` FOREIGN KEY (`typeOf_id`) REFERENCES `toeic_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question`
--

LOCK TABLES `toeic_question` WRITE;
/*!40000 ALTER TABLE `toeic_question` DISABLE KEYS */;
INSERT INTO `toeic_question` VALUES (2,'Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.','Note that the hotel\'s pool and pool deck will be closed until construction on them is completed later this month.','Chú ý cụm sau until: \"----- on them is completed....\". Ta thấy ở đây cần 1 danh từ vì động từ \"is\" chưa có chủ ngữ nên chọn construction (on them chỉ là cụm bổ nghĩa cho danh từ trước nó). Hơn nữa, dịch nghĩa: bể bơi của khách sạn sẽ bị đóng cửa cho đến khi \"cái gì đó\" hoàn thành. Rõ ràng \"cái gì đó\" phải là danh từ.','Chú ý rằng bể bơi và khu vực xung quanh bể sẽ bị đóng cửa cho đến khi việc xây dựng ở chúng được hoàn thành.','2016-10-11 08:59:10.922000',1,NULL,1),(3,'Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.','Aster Broadcasting Group announced yesterday that it expects the semiconductor market to enter full recovery mode next year.','dựa vào dấu hiệu \"hôm qua\" (yesterday), chia động từ ở thời quá khứ đơn (pass simple)','Nhóm Aster Broadcasting công bố hôm qua rằng họ đang chờ thị trường bán dẫn hồi phục hoàn toàn vào năm tới.','2016-10-11 12:51:15.515000',1,NULL,1),(4,'Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.','Instructors wishing to place materials on reserve at the library should fill out a Reserve Request Form.','','Giảng viên muốn đặt tài liệu ở khu lữu trư tại thư viện cần phải điền vào Mẫu Yêu cầu Lưu trữ','2016-10-12 00:56:58.217000',1,NULL,1),(5,'This apartment complex has an ----- exterior design and stylish interior furnishings.','This apartment complex has an attractive exterior design and stylish interior furnishings.','chú ý dạng \"mạo từ\" + .... + danh từ (đơn hoặc ghép) thì chỗ ... sẽ là vị trí của tính từ:  an ----- exterior design (exterior design là danh từ ghép), cần điền tính từ \"attractive\". <br/> Xem thêm phần \"các dạng thường thi trong bài toeic\" của phần Danh từ.','Khu chung cư này có một thiết kế bên ngoài hấp dẫn và nội thất bên trong phong cách.','2016-10-12 01:55:53.975000',1,NULL,NULL),(6,'The public is invited to ----- the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.','The public is invited to attend the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.','Chú ý cấu trúc của các động từ: participate và attend đều là tham dự, nhưng cấu trúc khác nhau. Participate to + noun, trong khi Attend + noun. Câu này không có \"to\" nên phải điền participate.','Công chúng được mời tham dự sự kiện tiệc tối, với tiền bán vé làm lợi cho một quỹ học bổng BMX.','2016-10-12 02:23:32.998000',1,NULL,2),(7,'He ----- delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.','He regularly delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.','Cần một trạng từ bổ sung ý nghĩa cho động từ \"delivers\" ( anh ấy \"thường\" đọc các bài phát biểu quan trọng...)','Anh ấy thường đọc các bài phát biểu quan trọng và tổ chức tập huấn về chiến lược hài lòng khách hàng và sự xây dựng quan hệ khách hàng có lợi.','2016-10-12 03:24:27.537000',1,NULL,1),(8,'Attendees will be required to work ----- alone and in groups when performing study sample analyses.','Attendees will be required to work both alone and in groups when performing study sample analyses.','Ghi nhớ cụm both... and: cả... cả','Người tham dự sẽ được yêu cầu làm việc cả một mình và trong nhóm khi thực hiện các phân tích mẫu nghiên cứu.','2016-10-12 03:39:08.337000',1,NULL,1),(9,'Unfortunately, with the rise of the popularity of soft drinks, tea is not ----- popular as it used to be.','Unfortunately, with the rise of the popularity of soft drinks, tea is not as popular as it used to be.','Ở đây là dạng so sánh bằng: tea is not as popular as it used to be: trà không còn nổi tiếng như trước.','Thật không may là, với sự tăng lên độ nổi tiếng của nước ngọt, trà không còn phổ biến như nó từng trước đây.','2016-10-12 03:53:51.551000',1,NULL,1),(10,'As demand for ----- wheat-based products falls, local producers earn less and less and the total income of the country declines.','As demand for their wheat-based products falls, local producers earn less and less and the total income of the country declines.','Cần một tính tử sở hữu đi trước cụm \"wheat-based products\" (sản phẩm từ lúa mỳ).','Vì nhu cầu cho sản phầm từ lúa mỳ của họ giảm xuống, các nhà sản xuất địa phương kiếm được ít hơn và   tổng thu nhập của đất nước giảm xuống.','2016-10-12 05:10:15.591000',1,NULL,1),(11,'Ottawa Police Chief Vern White has ----- Mr.McDonald for securing $1million for the city\'s drug treatment initiative.','Ottawa Police Chief Vern White has congratulated Mr.McDonald for securing $1million for the city\'s drug treatment initiative.','','Cảnh sát trưởng VW của Ottawa đã chúc mừng ông McDonald trong việc đảm bảo 1 triệu đô cho biện pháp cai nghiện thuốc của thành phố.','2016-10-12 05:20:57.332000',2,NULL,2),(12,'Ms James stated that ----- must work together to make sure the committee is effective.','Ms James stated that everyone must work together to make sure the committee is effective.','','Bà James nói rằng mọi người phải làm việc cùng nhau để đảm bảo ủy ban được hiệu quả.','2016-10-12 05:41:57.517000',1,NULL,1),(13,'When you are buying an adjustable bed, you should consider ----- features such as bed height, size, material and warranty.','When you are buying an adjustable bed, you should consider specific features such as bed height, size, material and warranty.','Vì ở sau liệt kê 1 loạt các đặc điểm cụ thể (height, size, material...) nên chúng ta chọn \"specific features\" (đặc điểm cụ thể).','Khi bạn mua một cái giường có thể chỉnh được, bản phải xem xét các đặc điểm cụ thể như chiều cao, kích thước, vật liệu và bảo hành.','2016-10-12 05:47:52.908000',1,NULL,2),(14,'The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder -----.','The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder expectation.','exceed nghĩa là vượt quá. Phải điền \"shareholder expectation\" (kì vọng của cổ đông) mới phù hợp trong hoàn cảnh này.','Ban quản lý của công ty có một niềm nin vững chắc rằng hướng đi chiến lược của nó đáng tin cậy và sẽ tiếp tục vượt quá kỳ vọng của cổ đông.','2016-10-12 07:42:43.187000',1,NULL,1);
/*!40000 ALTER TABLE `toeic_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_answers`
--

DROP TABLE IF EXISTS `toeic_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_answers_question_id_e813a708_uniq` (`question_id`,`answer_id`),
  KEY `toeic_question_answers_answer_id_d526b18c_fk_toeic_answer_id` (`answer_id`),
  CONSTRAINT `toeic_question_answers_answer_id_d526b18c_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_question_answers_question_id_af9d38f6_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_answers`
--

LOCK TABLES `toeic_question_answers` WRITE;
/*!40000 ALTER TABLE `toeic_question_answers` DISABLE KEYS */;
INSERT INTO `toeic_question_answers` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(6,3,5),(7,3,6),(8,3,7),(5,3,8),(9,4,9),(10,4,10),(11,4,11),(12,4,12),(14,5,13),(15,5,14),(16,5,15),(13,5,16),(17,6,17),(18,6,18),(19,6,19),(20,6,20);
/*!40000 ALTER TABLE `toeic_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_grammartopics`
--

DROP TABLE IF EXISTS `toeic_question_grammartopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_grammartopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `grammartopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_grammarTopics_question_id_64d5ea32_uniq` (`question_id`,`grammartopic_id`),
  KEY `toeic_question_grammartopic_id_3354d24c_fk_toeic_grammartopic_id` (`grammartopic_id`),
  CONSTRAINT `toeic_question_grammar_question_id_37becf28_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_grammartopic_id_3354d24c_fk_toeic_grammartopic_id` FOREIGN KEY (`grammartopic_id`) REFERENCES `toeic_grammartopic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_grammartopics`
--

LOCK TABLES `toeic_question_grammartopics` WRITE;
/*!40000 ALTER TABLE `toeic_question_grammartopics` DISABLE KEYS */;
INSERT INTO `toeic_question_grammartopics` VALUES (1,2,3),(2,3,4),(3,4,5),(4,5,3),(5,5,6),(6,7,7),(7,8,10),(8,9,11),(9,10,12),(10,12,10),(11,14,3);
/*!40000 ALTER TABLE `toeic_question_grammartopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_tests`
--

DROP TABLE IF EXISTS `toeic_question_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_tests_question_id_b8527d76_uniq` (`question_id`,`test_id`),
  KEY `toeic_question_tests_test_id_204e23cc_fk_toeic_test_id` (`test_id`),
  CONSTRAINT `toeic_question_tests_question_id_67fa2576_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_tests_test_id_204e23cc_fk_toeic_test_id` FOREIGN KEY (`test_id`) REFERENCES `toeic_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_tests`
--

LOCK TABLES `toeic_question_tests` WRITE;
/*!40000 ALTER TABLE `toeic_question_tests` DISABLE KEYS */;
INSERT INTO `toeic_question_tests` VALUES (1,2,2),(2,3,2),(3,4,2),(11,5,2),(4,6,3),(5,7,2),(6,9,2),(7,10,2),(8,11,3),(9,12,2),(10,14,3);
/*!40000 ALTER TABLE `toeic_question_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_topics`
--

DROP TABLE IF EXISTS `toeic_question_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_topics_question_id_18cd0c75_uniq` (`question_id`,`topic_id`),
  KEY `toeic_question_topics_topic_id_749f16b3_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_question_topics_question_id_4a77f9ff_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_topics_topic_id_749f16b3_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_topics`
--

LOCK TABLES `toeic_question_topics` WRITE;
/*!40000 ALTER TABLE `toeic_question_topics` DISABLE KEYS */;
INSERT INTO `toeic_question_topics` VALUES (2,6,6),(1,6,11),(3,11,18),(4,13,1),(5,14,3);
/*!40000 ALTER TABLE `toeic_question_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_vocabs`
--

DROP TABLE IF EXISTS `toeic_question_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_vocabs_question_id_730c5f89_uniq` (`question_id`,`vocab_id`),
  KEY `toeic_question_vocabs_vocab_id_fcb8e342_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_question_vocabs_question_id_d9069f5a_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_vocabs_vocab_id_fcb8e342_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_vocabs`
--

LOCK TABLES `toeic_question_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_question_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_question_vocabs` VALUES (1,2,1),(2,3,2),(3,3,3),(4,3,4),(67,4,5),(68,4,54),(65,4,65),(66,4,66),(8,5,6),(9,5,7),(5,5,8),(6,5,9),(7,5,10),(69,5,67),(70,5,68),(71,5,69),(10,6,11),(11,6,12),(12,6,13),(13,6,14),(14,6,15),(15,6,16),(16,6,17),(17,6,18),(18,7,19),(19,7,20),(20,7,21),(21,7,22),(22,7,23),(23,7,24),(24,7,25),(25,7,26),(26,7,27),(27,8,11),(28,8,28),(29,8,29),(30,8,30),(34,9,31),(31,9,32),(32,9,33),(33,9,34),(35,10,35),(36,10,36),(37,10,37),(38,10,38),(39,10,39),(40,10,40),(41,11,41),(42,11,42),(43,11,43),(44,11,44),(45,11,45),(46,11,46),(49,12,47),(47,12,48),(48,12,49),(50,13,50),(51,13,51),(52,13,52),(53,13,53),(54,13,54),(55,13,55),(57,14,56),(58,14,57),(59,14,58),(60,14,59),(61,14,60),(62,14,61),(63,14,62),(64,14,63),(56,14,64);
/*!40000 ALTER TABLE `toeic_question_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_test`
--

DROP TABLE IF EXISTS `toeic_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_test_level_id_fe2d074d_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_test_level_id_fe2d074d_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_test`
--

LOCK TABLES `toeic_test` WRITE;
/*!40000 ALTER TABLE `toeic_test` DISABLE KEYS */;
INSERT INTO `toeic_test` VALUES (2,'Economy 4 - Test 2 - Grammar','2016-10-11 07:59:45.336000',2),(3,'Economy 4 - Test 2 - Vocabulary','2016-10-11 08:00:02.430000',2);
/*!40000 ALTER TABLE `toeic_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_topic`
--

DROP TABLE IF EXISTS `toeic_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_topic`
--

LOCK TABLES `toeic_topic` WRITE;
/*!40000 ALTER TABLE `toeic_topic` DISABLE KEYS */;
INSERT INTO `toeic_topic` VALUES (1,'Home','2016-10-11 04:03:32.843000',NULL),(2,'Office & Workplace','2016-10-11 04:03:40.061000',''),(3,'Construction','2016-10-11 04:03:44.293000',NULL),(4,'Hotel','2016-10-11 08:58:51.027000','images/topics/liberty-lara-hotel1.jpg'),(5,'Electronics','2016-10-11 12:17:37.237000',''),(6,'Important verbs','2016-10-11 12:22:55.025000',''),(7,'Important nouns','2016-10-11 12:50:30.310000',''),(8,'Education','2016-10-11 13:37:31.432000',''),(9,'Architecture & Design','2016-10-12 01:54:26.920000',''),(10,'Important adjectives','2016-10-12 01:55:18.282000',''),(11,'Event','2016-10-12 01:57:23.287000',''),(12,'Advertising & Communication','2016-10-12 02:16:51.467000',''),(13,'Products and Services','2016-10-12 02:21:13.710000',''),(14,'Important adverbs','2016-10-12 03:17:26.467000',''),(15,'Important prepositions','2016-10-12 05:00:43.439000',''),(16,'Economics','2016-10-12 05:02:44.322000',''),(17,'Agriculture','2016-10-12 05:03:17.684000',''),(18,'Politics','2016-10-12 05:11:56.585000',''),(19,'Cooking','2016-10-12 05:15:44.270000',''),(20,'Police & Military','2016-10-12 05:16:42.457000',''),(21,'Medicine and Drug','2016-10-12 05:19:25.598000',''),(22,'Insurance','2016-10-12 05:47:42.132000','');
/*!40000 ALTER TABLE `toeic_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_type`
--

DROP TABLE IF EXISTS `toeic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_type`
--

LOCK TABLES `toeic_type` WRITE;
/*!40000 ALTER TABLE `toeic_type` DISABLE KEYS */;
INSERT INTO `toeic_type` VALUES (1,'Grammar','2016-10-11 04:04:00.986000'),(2,'Vocabulary','2016-10-11 04:04:05.931000'),(3,'Listening','2016-10-11 04:04:17.168000'),(4,'Reading','2016-10-11 04:04:21.330000');
/*!40000 ALTER TABLE `toeic_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_useranswer`
--

DROP TABLE IF EXISTS `toeic_useranswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_useranswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime(6) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_useranswer_answer_id_a9d3424a_fk_toeic_answer_id` (`answer_id`),
  KEY `toeic_useranswer_question_id_2442d5e4_fk_toeic_question_id` (`question_id`),
  KEY `toeic_useranswer_test_id_9c808382_fk_toeic_test_id` (`test_id`),
  KEY `toeic_useranswer_user_id_d834189d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `toeic_useranswer_answer_id_a9d3424a_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_useranswer_question_id_2442d5e4_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_useranswer_test_id_9c808382_fk_toeic_test_id` FOREIGN KEY (`test_id`) REFERENCES `toeic_test` (`id`),
  CONSTRAINT `toeic_useranswer_user_id_d834189d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_useranswer`
--

LOCK TABLES `toeic_useranswer` WRITE;
/*!40000 ALTER TABLE `toeic_useranswer` DISABLE KEYS */;
INSERT INTO `toeic_useranswer` VALUES (1,'2016-10-12 08:20:54.348000',2,2,2,1),(2,'2016-10-12 08:20:54.474000',7,3,2,1),(3,'2016-10-12 08:20:54.516000',10,4,2,1),(4,'2016-10-12 08:20:54.618000',14,5,2,1),(5,'2016-10-12 08:26:37.886000',2,2,2,1),(6,'2016-10-12 08:26:38.035000',7,3,2,1),(7,'2016-10-12 08:26:38.084000',10,4,2,1),(8,'2016-10-12 08:26:38.134000',14,5,2,1);
/*!40000 ALTER TABLE `toeic_useranswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_useranswergrammarquiz`
--

DROP TABLE IF EXISTS `toeic_useranswergrammarquiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_useranswergrammarquiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime(6) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `grammarTopic_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_useranswergrammarqui_answer_id_1ae6f25c_fk_toeic_answer_id` (`answer_id`),
  KEY `toeic_useransw_grammarTopic_id_70544505_fk_toeic_grammartopic_id` (`grammarTopic_id`),
  KEY `toeic_useranswergramma_question_id_5cb5a597_fk_toeic_question_id` (`question_id`),
  KEY `toeic_useranswergrammarquiz_user_id_9a7cce53_fk_auth_user_id` (`user_id`),
  CONSTRAINT `toeic_useransw_grammarTopic_id_70544505_fk_toeic_grammartopic_id` FOREIGN KEY (`grammarTopic_id`) REFERENCES `toeic_grammartopic` (`id`),
  CONSTRAINT `toeic_useranswergramma_question_id_5cb5a597_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_useranswergrammarqui_answer_id_1ae6f25c_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_useranswergrammarquiz_user_id_9a7cce53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_useranswergrammarquiz`
--

LOCK TABLES `toeic_useranswergrammarquiz` WRITE;
/*!40000 ALTER TABLE `toeic_useranswergrammarquiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_useranswergrammarquiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_uservocab`
--

DROP TABLE IF EXISTS `toeic_uservocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_uservocab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_uservocab_user_id_9e04574f_fk_auth_user_id` (`user_id`),
  KEY `toeic_uservocab_vocab_id_95dd0bf0_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_uservocab_user_id_9e04574f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `toeic_uservocab_vocab_id_95dd0bf0_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_uservocab`
--

LOCK TABLES `toeic_uservocab` WRITE;
/*!40000 ALTER TABLE `toeic_uservocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_uservocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_video`
--

DROP TABLE IF EXISTS `toeic_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_video_level_id_4bbabf96_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_video_level_id_4bbabf96_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_video`
--

LOCK TABLES `toeic_video` WRITE;
/*!40000 ALTER TABLE `toeic_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_video_listeningtopics`
--

DROP TABLE IF EXISTS `toeic_video_listeningtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_video_listeningtopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `listeningtopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_listeningtopics_video_id_e45bfa43_uniq` (`video_id`,`listeningtopic_id`),
  KEY `toeic_vide_listeningtopic_id_6a747a61_fk_toeic_listeningtopic_id` (`listeningtopic_id`),
  CONSTRAINT `toeic_vide_listeningtopic_id_6a747a61_fk_toeic_listeningtopic_id` FOREIGN KEY (`listeningtopic_id`) REFERENCES `toeic_listeningtopic` (`id`),
  CONSTRAINT `toeic_video_listeningtopics_video_id_84611d26_fk_toeic_video_id` FOREIGN KEY (`video_id`) REFERENCES `toeic_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_video_listeningtopics`
--

LOCK TABLES `toeic_video_listeningtopics` WRITE;
/*!40000 ALTER TABLE `toeic_video_listeningtopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_video_listeningtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_video_vocabs`
--

DROP TABLE IF EXISTS `toeic_video_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_video_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_vocabs_video_id_94632b34_uniq` (`video_id`,`vocab_id`),
  KEY `toeic_video_vocabs_vocab_id_8dcc8874_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_video_vocabs_video_id_1c90b198_fk_toeic_video_id` FOREIGN KEY (`video_id`) REFERENCES `toeic_video` (`id`),
  CONSTRAINT `toeic_video_vocabs_vocab_id_8dcc8874_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_video_vocabs`
--

LOCK TABLES `toeic_video_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_video_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_video_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_vocab`
--

DROP TABLE IF EXISTS `toeic_vocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_vocab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `definition` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `past_tense` varchar(50) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `wordType_id` int(11) NOT NULL,
  `image` varchar(100),
  `pasticiple` varchar(50),
  `main_form` varchar(50),
  `other_form` varchar(50),
  PRIMARY KEY (`id`),
  KEY `toeic_vocab_wordType_id_1a277cde_fk_toeic_wordtype_id` (`wordType_id`),
  KEY `toeic_vocab_level_id_45c44089_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_vocab_level_id_45c44089_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_vocab_wordType_id_1a277cde_fk_toeic_wordtype_id` FOREIGN KEY (`wordType_id`) REFERENCES `toeic_wordtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_vocab`
--

LOCK TABLES `toeic_vocab` WRITE;
/*!40000 ALTER TABLE `toeic_vocab` DISABLE KEYS */;
INSERT INTO `toeic_vocab` VALUES (1,'pool','bể bơi','2016-10-11 08:59:05.456000','',1,1,'images/vocabs/IMG_7328_800_567_80_s_c1.jpg',NULL,NULL,NULL),(2,'semiconductor','chất bán dẫn','2016-10-11 12:17:43.870000','',2,1,'',NULL,NULL,NULL),(3,'expect','kì vọng','2016-10-11 12:47:41.269000','',1,2,'','',NULL,NULL),(4,'recovery','hồi phục','2016-10-11 12:50:45.304000','',1,1,'','',NULL,NULL),(5,'instructor','giảng viên','2016-10-11 13:37:34.825000','',1,1,'','',NULL,NULL),(6,'apartment','căn hộ','2016-10-12 01:52:34.685000','',1,1,'','',NULL,NULL),(7,'exterior','bên ngoài','2016-10-12 01:53:34.214000','',1,1,'','',NULL,NULL),(8,'furnishing','nội thất`','2016-10-12 01:54:38.627000','',2,1,'','',NULL,NULL),(9,'stylish','có phong cách, thời trang','2016-10-12 01:55:23.536000','',1,3,'','',NULL,NULL),(10,'interior','bên trong','2016-10-12 01:55:50.545000','',1,1,'','',NULL,NULL),(11,'perform','trình diễn','2016-10-12 02:01:58.490000','performed',1,2,'','performed',NULL,NULL),(12,'admit','thừa nhận','2016-10-12 02:03:05.282000','admitted',1,2,'','admitted',NULL,NULL),(13,'participate','tham dự','2016-10-12 02:16:04.870000','participated',1,2,'','participate','participate to',''),(14,'public','công chúng','2016-10-12 02:16:56.762000','',1,1,'','','',''),(15,'sales','bộ phận bán hàng, doanh số bán hàng','2016-10-12 02:21:29.711000','',1,1,'','','',''),(16,'benefit','làm lợi cho','2016-10-12 02:22:40.384000','benefited',1,2,'','benefited','benefit something, someone',''),(17,'fund','quỹ','2016-10-12 02:23:07.410000','',1,1,'','','',''),(18,'scholarship','học bổng','2016-10-12 02:23:27.975000','',1,1,'','','',''),(19,'regularly','thường xuyên','2016-10-12 03:17:33.953000','',1,4,'','','',''),(20,'deliver','đọc, đưa ra, vận chuyển đến','2016-10-12 03:18:28.803000','delivered',1,2,'','delivered','deliver something to someone',''),(21,'speech','bài phát biểu','2016-10-12 03:18:58.089000','',1,1,'','','',''),(22,'workshop','buổi tập huấn','2016-10-12 03:19:22.646000','',1,1,'','','',''),(23,'customer satisfaction','sự hài lòng của khách hàng','2016-10-12 03:20:53.788000','',2,1,'','','',''),(24,'strategy','chiến lược','2016-10-12 03:21:15.155000','',1,1,'','','',''),(25,'building','sự xây dựng, tòa nhà','2016-10-12 03:22:00.796000','',2,1,'','','',''),(26,'relationship','mối quan hệ','2016-10-12 03:23:53.409000','',1,1,'','','',''),(27,'profitable','có lợi, có lãi','2016-10-12 03:24:20.748000','',1,3,'','','',''),(28,'attendee','người tham dự','2016-10-12 03:35:40.722000','',1,1,'','','',''),(29,'required','yêu cầu','2016-10-12 03:36:14.632000','',1,2,'','','',''),(30,'sample','mẫu','2016-10-12 03:38:48.975000','',1,1,'','','',''),(31,'unfortunately','thật không may','2016-10-12 03:52:31.829000','',1,4,'','','',''),(32,'rise','tăng lên','2016-10-12 03:53:00.869000','',1,1,'','','',''),(33,'popularity','sự nổi tiếng','2016-10-12 03:53:26.436000','',2,1,'','','',''),(34,'used to','từng','2016-10-12 03:53:49.668000','',1,2,'','','',''),(35,'as','vì','2016-10-12 05:00:53.551000','',1,6,'','','',''),(36,'demand','nhu cầu','2016-10-12 05:02:53.040000','',1,1,'','','',''),(37,'wheat','lúa mì','2016-10-12 05:03:19.902000','',1,1,'','','',''),(38,'producer','nhà sản xuất','2016-10-12 05:07:39.404000','',1,1,'','','',''),(39,'income','thu nhập','2016-10-12 05:08:14.778000','',2,1,'','','',''),(40,'decline','giảm sút','2016-10-12 05:10:08.298000','declined',1,2,'','declined','something decline',''),(41,'chief','sếp, trưởng, bếp trưởng','2016-10-12 05:15:52.853000','',1,1,'','','',''),(42,'police','cảnh sát','2016-10-12 05:16:59.145000','',1,1,'','','',''),(43,'secure','đảm bảo','2016-10-12 05:17:40.199000','secured',1,2,'','secured','secure something',''),(44,'drug','dược phẩm, thuốc, chất gây nghiện','2016-10-12 05:19:38.658000','',2,1,'','','',''),(45,'treatment','đối xử, xử lý, điều trị(y học)','2016-10-12 05:20:23.992000','',2,1,'','','',''),(46,'initiative','biện pháp','2016-10-12 05:20:50.258000','',2,1,'','','',''),(47,'state','nói, chỉ ra (rằng)','2016-10-12 05:40:50.908000','stated',1,2,'','stated','state + that + phrase',''),(48,'committee','ủy bản','2016-10-12 05:41:20.953000','',2,1,'','','',''),(49,'effective','hiệu quả','2016-10-12 05:41:47.262000','',1,3,'','','',''),(50,'adjustable','có thể điều chỉnh được','2016-10-12 05:45:04.393000','',2,3,'','','',''),(51,'consider','xem xét','2016-10-12 05:45:46.400000','considered',1,2,'','considered','consider something',''),(52,'specific','cụ thể','2016-10-12 05:46:13.385000','',1,3,'','','',''),(53,'height','chiều cao','2016-10-12 05:46:36.766000','',1,1,'','','',''),(54,'material','vật liệu, tài liệu','2016-10-12 05:47:19.588000','',NULL,1,'','','',''),(55,'warranty','bảo hành','2016-10-12 05:47:45.860000','',1,1,'','','',''),(56,'management','sự quản lý, ban quản lý','2016-10-12 07:37:49.679000','',1,1,'','','',''),(57,'belief','niềm tin','2016-10-12 07:38:11.976000','',1,1,'','','',''),(58,'direction','hướng, phương hướng, đường lối, chỉ dẫn','2016-10-12 07:38:45.995000','',1,1,'','','',''),(59,'firm','vững chắc','2016-10-12 07:39:13.436000','',2,3,'','','',''),(60,'strategic','có tính chiến lược','2016-10-12 07:39:48.632000','',1,3,'','','',''),(61,'sound','đáng tin cậy','2016-10-12 07:40:52.780000','',2,3,'','','',''),(62,'exceed','vượt quá','2016-10-12 07:41:31.148000','exceeded',2,2,'','exceeded','exceed something',''),(63,'shareholder','cổ đông','2016-10-12 07:42:04.492000','',2,1,'','','',''),(64,'expectation','kì vọng','2016-10-12 07:42:29.920000','',2,1,'','','',''),(65,'fill out a form','điền một mẫu','2016-10-12 08:06:23.204000','',2,5,'','','',''),(66,'reserve','kho lưu trữ','2016-10-12 08:07:12.693000','',2,1,'','','',''),(67,'attractive','hấp dẫn','2016-10-12 08:12:35.915000','',1,3,'','','',''),(68,'attraction','sự hấp dẫn','2016-10-12 08:12:52.510000','',1,1,'','','',''),(69,'attract','hấp dẫn','2016-10-12 08:13:27.773000','attracted',1,2,'','attracted','attract something, someone','');
/*!40000 ALTER TABLE `toeic_vocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_vocab_topic`
--

DROP TABLE IF EXISTS `toeic_vocab_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_vocab_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vocab_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_vocab_topic_vocab_id_bdc8db6b_uniq` (`vocab_id`,`topic_id`),
  KEY `toeic_vocab_topic_topic_id_995692be_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_vocab_topic_topic_id_995692be_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`),
  CONSTRAINT `toeic_vocab_topic_vocab_id_2c9bf12e_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_vocab_topic`
--

LOCK TABLES `toeic_vocab_topic` WRITE;
/*!40000 ALTER TABLE `toeic_vocab_topic` DISABLE KEYS */;
INSERT INTO `toeic_vocab_topic` VALUES (1,1,4),(2,2,3),(3,2,5),(4,3,6),(5,4,7),(6,5,8),(7,6,3),(8,7,3),(9,8,9),(10,9,9),(11,9,10),(13,10,3),(12,10,9),(14,11,6),(15,12,6),(16,13,6),(18,14,7),(17,14,12),(19,15,2),(20,15,13),(21,16,6),(22,17,7),(23,18,7),(24,19,14),(26,20,6),(25,20,13),(28,21,7),(27,21,11),(29,22,8),(30,23,12),(31,23,13),(32,24,12),(33,24,13),(34,25,2),(35,25,3),(37,25,7),(36,25,12),(39,26,7),(38,26,12),(40,27,10),(41,27,13),(42,28,11),(43,29,6),(44,30,7),(45,31,14),(46,32,7),(47,33,7),(48,34,6),(49,35,15),(51,36,13),(50,36,16),(52,37,17),(53,38,13),(55,39,1),(54,39,16),(56,40,6),(57,41,7),(58,42,20),(59,43,6),(60,44,21),(62,45,7),(61,45,21),(63,46,7),(64,47,6),(65,48,7),(66,49,10),(67,50,9),(68,50,10),(69,51,6),(70,52,10),(71,53,7),(73,54,2),(74,54,3),(76,54,7),(72,54,9),(75,54,13),(77,55,22),(78,56,2),(79,57,7),(80,58,7),(81,59,10),(82,60,10),(83,61,10),(84,62,6),(85,63,2),(86,64,7),(87,65,2),(89,66,7),(90,67,10),(91,68,7),(92,69,6);
/*!40000 ALTER TABLE `toeic_vocab_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_wordtype`
--

DROP TABLE IF EXISTS `toeic_wordtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_wordtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_wordtype`
--

LOCK TABLES `toeic_wordtype` WRITE;
/*!40000 ALTER TABLE `toeic_wordtype` DISABLE KEYS */;
INSERT INTO `toeic_wordtype` VALUES (1,'noun','2016-10-11 04:05:02.292000'),(2,'verb','2016-10-11 04:05:05.388000'),(3,'adjective','2016-10-11 04:05:09.180000'),(4,'adverb','2016-10-11 04:05:12.050000'),(5,'idiom','2016-10-11 04:05:24.103000'),(6,'preposition','2016-10-12 05:00:24.596000');
/*!40000 ALTER TABLE `toeic_wordtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-12 15:59:27
