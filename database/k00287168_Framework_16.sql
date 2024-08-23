-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: k00287168_framework_16
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `chatmsg`
--

DROP TABLE IF EXISTS `chatmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatmsg` (
                           `msgID` int(11) NOT NULL AUTO_INCREMENT,
                           `msgText` varchar(244) DEFAULT NULL,
                           `dateTimeStamp` datetime DEFAULT current_timestamp(),
                           `msgAuthorID` varchar(40) DEFAULT NULL,
                           `userType` varchar(10) DEFAULT NULL,
                           `msgTo` varchar(40) DEFAULT 'ALL',
                           PRIMARY KEY (`msgID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmsg`
--

LOCK TABLES `chatmsg` WRITE;
/*!40000 ALTER TABLE `chatmsg` DISABLE KEYS */;
INSERT INTO `chatmsg` VALUES (6,'hi','2024-08-22 02:48:48','janeh@mail.com','CUSTOMER','ALL'),(7,'boo\r\n','2024-08-22 02:48:51','janeh@mail.com','CUSTOMER','ALL'),(8,'asd','2024-08-22 02:49:04','janeh@mail.com','CUSTOMER','ALL');
/*!40000 ALTER TABLE `chatmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
---- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: k00287168_framework_16
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `chatmsg`
--

DROP TABLE IF EXISTS `chatmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatmsg` (
                           `msgID` int(11) NOT NULL AUTO_INCREMENT,
                           `msgText` varchar(244) DEFAULT NULL,
                           `dateTimeStamp` datetime DEFAULT current_timestamp(),
                           `msgAuthorID` varchar(40) DEFAULT NULL,
                           `userType` varchar(10) DEFAULT NULL,
                           `msgTo` varchar(40) DEFAULT 'ALL',
                           PRIMARY KEY (`msgID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmsg`
--

LOCK TABLES `chatmsg` WRITE;
/*!40000 ALTER TABLE `chatmsg` DISABLE KEYS */;
INSERT INTO `chatmsg` VALUES (6,'hi','2024-08-22 02:48:48','janeh@mail.com','CUSTOMER','ALL'),(7,'boo\r\n','2024-08-22 02:48:51','janeh@mail.com','CUSTOMER','ALL'),(8,'asd','2024-08-22 02:49:04','janeh@mail.com','CUSTOMER','ALL'),(9,'elit, pellentesque a, facilisis non, bibendum sed,','2024-05-31 00:27:48','jsmith@college.ie','ADMIN','ALL'),(10,'eleifend non, dapibus','2023-11-01 20:21:18','jsmith@college.ie','ADMIN','ALL'),(11,'magna et ipsum cursus vestibulum. Mauris','2024-05-23 11:32:18','janeh@mail.com','ADMIN','ALL'),(12,'at augue id ante dictum cursus. Nunc mauris elit,','2024-09-30 07:26:04','jsmith@college.ie','ADMIN','ALL'),(13,'Duis elementum, dui quis accumsan convallis,','2024-10-30 02:15:34','jsmith@college.ie','ADMIN','ALL'),(14,'purus, accumsan interdum','2024-07-30 15:52:16','jsmith@college.ie','ADMIN','ALL'),(15,'quis massa. Mauris','2025-03-27 12:59:04','jsmith@college.ie','ADMIN','ALL'),(16,'hendrerit','2025-04-30 21:04:09','janeh@mail.com','CUSTOMER','ALL'),(17,'cursus luctus, ipsum leo','2024-02-11 17:50:40','jsmith@college.ie','ADMIN','ALL'),(18,'tristique neque venenatis','2024-09-18 20:20:23','jsmith@college.ie','ADMIN','ALL'),(19,'Praesent interdum ligula eu enim. Etiam imperdiet dictum','2024-06-08 18:46:31','jsmith@college.ie','MANAGER','ALL'),(20,'Pellentesque habitant','2023-09-23 16:56:26','jsmith@college.ie','CUSTOMER','ALL'),(21,'sociis natoque penatibus et magnis dis parturient','2025-01-24 12:06:08','jsmith@college.ie','CUSTOMER','ALL'),(22,'tempus mauris erat eget ipsum. Suspendisse sagittis.','2024-03-04 02:28:54','janeh@mail.com','ADMIN','ALL'),(23,'Donec fringilla. Donec feugiat metus','2024-05-18 23:51:25','flann@gmail.com','MANAGER','ALL'),(24,'eu, ultrices sit amet,','2024-10-11 19:41:23','janeh@mail.com','CUSTOMER','ALL'),(25,'In condimentum.','2025-07-18 19:03:06','jsmith@college.ie','ADMIN','ALL'),(26,'fames ac turpis egestas. Fusce aliquet','2023-12-24 05:55:23','flann@gmail.com','ADMIN','ALL'),(27,'facilisi. Sed neque. Sed eget lacus. Mauris non dui nec','2024-01-30 09:58:06','jsmith@college.ie','ADMIN','ALL'),(28,'imperdiet ullamcorper. Duis at','2024-05-09 19:57:41','flann@gmail.com','MANAGER','ALL'),(29,'pede blandit congue. In scelerisque','2024-08-04 14:38:06','jsmith@college.ie','CUSTOMER','ALL'),(30,'non, cursus','2024-09-29 07:07:46','jsmith@college.ie','MANAGER','ALL'),(31,'arcu. Nunc mauris. Morbi non','2025-03-18 15:42:03','jsmith@college.ie','ADMIN','ALL'),(32,'a neque. Nullam ut','2025-02-14 17:02:48','flann@gmail.com','ADMIN','ALL'),(33,'malesuada id, erat. Etiam vestibulum massa rutrum magna.','2024-04-17 13:03:31','jsmith@college.ie','MANAGER','ALL'),(34,'orci luctus','2024-05-01 08:50:11','flann@gmail.com','CUSTOMER','ALL'),(35,'Donec nibh enim, gravida','2024-07-01 13:56:50','jsmith@college.ie','MANAGER','ALL'),(36,'iaculis enim, sit amet ornare','2024-10-25 17:35:37','jsmith@college.ie','MANAGER','ALL'),(37,'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in','2025-05-06 19:48:10','jsmith@college.ie','CUSTOMER','ALL'),(41,'Donec dignissim magna a','2024-08-16 09:15:51','janeh@mail.com','ADMIN','ALL');
/*!40000 ALTER TABLE `chatmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
                           `id` int(11) NOT NULL,
                           `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Bahamas'),(4,'Bahrain'),(5,'Cambodia'),(6,'Cameroon'),(7,'Denmark'),(8,'Djibouti'),(9,'East Timor'),(10,'Ecuador'),(11,'Falkland Islands (Malvinas)'),(12,'Faroe Islands'),(13,'Gabon'),(14,'Gambia'),(15,'Haiti'),(16,'Heard and Mc Donald Islands'),(17,'Iceland'),(18,'India'),(19,'Jamaica'),(20,'Japan'),(21,'Kenya'),(22,'Kiribati'),(23,'Lao Peoples Democratic Republic'),(24,'Latvia'),(25,'Macau'),(26,'Macedonia'),(27,'Namibia'),(28,'Nauru'),(29,'Oman'),(30,'Pakistan'),(31,'Palau'),(32,'Qatar'),(33,'Reunion'),(34,'Romania'),(35,'Saint Kitts and Nevis'),(36,'Saint Lucia'),(37,'Taiwan'),(38,'Tajikistan'),(39,'Uganda'),(40,'Ukraine'),(41,'Vanuatu'),(42,'Vatican City State'),(43,'Wallis and Futuna Islands'),(44,'Western Sahara'),(45,'Yemen'),(46,'Yugoslavia'),(47,'Zaire'),(48,'Zambia');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
                          `idcounty` int(11) NOT NULL AUTO_INCREMENT,
                          `countyName` varchar(45) DEFAULT NULL,
                          PRIMARY KEY (`idcounty`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Antrim'),(2,'Armagh'),(3,'Carlow'),(4,'Cavan'),(5,'Clare'),(6,'Cork'),(7,'Donegal'),(8,'Down'),(9,'Dublin'),(10,'DunLaoghaire-Rathdown'),(11,'Fermanagh'),(12,'Fingal'),(13,'Galway'),(14,'Kerry'),(15,'Kildare'),(16,'Kilkenny'),(17,'Laois'),(18,'Leitrim'),(19,'Limerick'),(20,'Londonderry'),(21,'Longford'),(22,'Louth'),(23,'Mayo'),(24,'Meath'),(25,'Monaghan'),(26,'North Tipperary'),(27,'Offaly'),(28,'Roscommon'),(29,'Sligo'),(30,'South Dublin'),(31,'South Tipperary'),(32,'Tipperary'),(33,'Tyrone'),(34,'Waterford'),(35,'Westmeath'),(36,'Wexford'),(37,'Wicklow'),(99,'Unknown County');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
                             `idplaylists` int(11) NOT NULL AUTO_INCREMENT,
                             `name` varchar(25) NOT NULL,
                             `owner` varchar(45) NOT NULL,
                             `songs` int(11) DEFAULT NULL,
                             `public` tinyint(4) DEFAULT NULL,
                             PRIMARY KEY (`idplaylists`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'liked songs','janeh@mail.com',3,1),(2,'rock','janeh@mail.com',6,0),(3,'pop','janeh@mail.com',12,1),(7,'asd','janeh@mail.com',1,1),(10,'Duis','janeh@mail.com',53,1),(11,'lorem','jsmith@college.ie',24,1),(12,'Cras','jsmith@college.ie',16,0),(13,'ac,','jsmith@college.ie',52,1),(14,'senectus','jsmith@college.ie',15,1),(15,'mollis','jsmith@college.ie',47,0),(16,'aliquet,','janeh@mail.com',79,1),(17,'ornare,','jsmith@college.ie',40,1),(18,'nec','jsmith@college.ie',57,0),(19,'morbi','janeh@mail.com',91,0),(20,'lobortis','janeh@mail.com',96,1),(21,'lectus','jsmith@college.ie',9,0),(22,'habitant','jsmith@college.ie',82,0),(23,'Nulla','jsmith@college.ie',77,1),(24,'et,','jsmith@college.ie',9,0),(25,'mauris','jsmith@college.ie',45,1),(26,'bibendum','janeh@mail.com',32,1),(27,'ac','jsmith@college.ie',72,0),(28,'quam.','flann@gmail.com',70,0),(29,'rutrum.','flann@gmail.com',93,1),(30,'Quisque','jsmith@college.ie',14,1),(31,'a,','jsmith@college.ie',13,1),(32,'vel','flann@gmail.com',16,1),(33,'orci,','jsmith@college.ie',50,0),(34,'velit.','jsmith@college.ie',15,0),(35,'augue','jsmith@college.ie',96,0),(36,'vel,','janeh@mail.com',97,0),(37,'ante','janeh@mail.com',40,1),(38,'Etiam','flann@gmail.com',61,1),(39,'amet','flann@gmail.com',42,0);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topcharts`
--

DROP TABLE IF EXISTS `topcharts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topcharts` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `songname` varchar(25) NOT NULL,
                             `artist` varchar(25) NOT NULL,
                             `length` int(11) NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topcharts`
--

LOCK TABLES `topcharts` WRITE;
/*!40000 ALTER TABLE `topcharts` DISABLE KEYS */;
INSERT INTO `topcharts` VALUES (1,'Cring','Matt meason',216),(2,'I see fire','Ed Sheeran',300),(4,'Oklahoma smokeshow','Zach bryan',211),(5,'Mary janes last dance','Tom petty',273),(6,'Daylight','Daavid',270),(16,'home','village',201),(17,'nisi. Aenean','nec, euismod',120),(18,'mus. Donec','eu lacus.',110),(19,'Phasellus dolor elit, pel','mollis. Integer',350),(20,'metus facilisis lorem tri','amet',222),(21,'dis parturient','auctor,',101),(22,'a','morbi tristique',304),(23,'non, luctus','consequat',5),(24,'sociosqu','et arcu',243),(25,'ornare, libero at','Suspendisse',342),(26,'Suspendisse ac metus','accumsan',261),(27,'a odio semper cursus.','Integer vitae',282),(28,'amet, risus.','auctor, nunc',12),(29,'et, lacinia vitae,','dictum',136),(30,'Nunc laoreet lectus quis','nec',396),(31,'pede.','convallis dolor.',190),(32,'convallis dolor. Quisque','ligula. Nullam',179),(33,'cursus a, enim. Suspendis','Morbi accumsan',313),(34,'semper pretium','et',343),(35,'ornare, facilisis','natoque penatibus',160),(36,'neque pellentesque','Integer sem',217),(37,'dapibus id, blandit','conubia nostra,',299),(38,'senectus et','nulla',388),(39,'Proin','lacus. Ut',303),(40,'Fusce diam nunc,','tempor,',228),(41,'libero. Integer in magna.','ipsum dolor',184),(42,'Donec est.','urna.',369),(43,'ultricies ligula.','erat. Sed',160),(44,'justo faucibus lectus, a','semper',69),(45,'cursus vestibulum.','tempor erat',148),(46,'Nunc sed orci','enim non',69);
/*!40000 ALTER TABLE `topcharts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `UserNr` int(11) NOT NULL AUTO_INCREMENT,
                        `FirstName` varchar(45) NOT NULL,
                        `LastName` varchar(45) NOT NULL,
                        `PassWord` varchar(45) DEFAULT NULL,
                        `email` varchar(45) NOT NULL,
                        `mobile` varchar(45) DEFAULT NULL,
                        `idcounty` int(11) NOT NULL,
                        `userID` varchar(45) DEFAULT NULL,
                        `userTypeNr` int(11) NOT NULL,
                        `userEnabled` tinyint(4) DEFAULT 1,
                        PRIMARY KEY (`UserNr`),
                        UNIQUE KEY `email_UNIQUE` (`email`),
                        UNIQUE KEY `userID_UNIQUE` (`userID`),
                        KEY `fk_admin_county2_idx` (`idcounty`),
                        KEY `fk_user_userType1_idx` (`userTypeNr`),
                        CONSTRAINT `fk_admin_county2` FOREIGN KEY (`idcounty`) REFERENCES `county` (`idcounty`) ON DELETE NO ACTION ON UPDATE NO ACTION,
                        CONSTRAINT `fk_user_userType1` FOREIGN KEY (`userTypeNr`) REFERENCES `usertype` (`userTypeNr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John','Smith','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jsmith@college.ie','0875869745',4,'jsmith@college.ie',1,1),(2,'Jane','Murphy','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','janeh@mail.com','0871234567',13,'janeh@mail.com',3,1),(3,'Harry','Boland','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','harry@lit.ie','01234567',2,'harry@lit.ie',3,1),(4,'James','Flannery','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','flann@gmail.com','0875426987',3,'flann@gmail.com',2,1),(5,'James','Murphy','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','james@framework.com','0862356897',19,'james@framework.com',3,1),(6,'Jack','McKeown','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jack@lit.ie','0875458745',8,'jack@lit.ie',2,1),(25,'elvis','presley','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','presley@tus.ie','0865478745',2,'presley@tus.ie',3,1),(42,'Jimm','O','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jimmy@ob.com','085457854',3,'jimmy@ob.com',1,0),(44,'New','Customer','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','cust@gmail.com','0854789654',2,'cust@gmail.com',3,1),(45,'John','Customer2','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','cust2@cust.com','0587458745',5,'cust2@cust.com',3,1),(46,'Zander','Guilfoyle','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','zacguilfoyle@yahoo.com','0831231234',32,'zacguilfoyle@yahoo.com',3,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertype` (
                            `userTypeNr` int(11) NOT NULL,
                            `userTypeDescr` varchar(45) NOT NULL DEFAULT 'UNKNOWN',
                            PRIMARY KEY (`userTypeNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'ADMIN'),(2,'MANAGER'),(3,'CUSTOMER'),(99,'UNKNOWN');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23  3:06:51


DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
                           `id` int(11) NOT NULL,
                           `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Bahamas'),(4,'Bahrain'),(5,'Cambodia'),(6,'Cameroon'),(7,'Denmark'),(8,'Djibouti'),(9,'East Timor'),(10,'Ecuador'),(11,'Falkland Islands (Malvinas)'),(12,'Faroe Islands'),(13,'Gabon'),(14,'Gambia'),(15,'Haiti'),(16,'Heard and Mc Donald Islands'),(17,'Iceland'),(18,'India'),(19,'Jamaica'),(20,'Japan'),(21,'Kenya'),(22,'Kiribati'),(23,'Lao Peoples Democratic Republic'),(24,'Latvia'),(25,'Macau'),(26,'Macedonia'),(27,'Namibia'),(28,'Nauru'),(29,'Oman'),(30,'Pakistan'),(31,'Palau'),(32,'Qatar'),(33,'Reunion'),(34,'Romania'),(35,'Saint Kitts and Nevis'),(36,'Saint Lucia'),(37,'Taiwan'),(38,'Tajikistan'),(39,'Uganda'),(40,'Ukraine'),(41,'Vanuatu'),(42,'Vatican City State'),(43,'Wallis and Futuna Islands'),(44,'Western Sahara'),(45,'Yemen'),(46,'Yugoslavia'),(47,'Zaire'),(48,'Zambia');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
                          `idcounty` int(11) NOT NULL AUTO_INCREMENT,
                          `countyName` varchar(45) DEFAULT NULL,
                          PRIMARY KEY (`idcounty`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Antrim'),(2,'Armagh'),(3,'Carlow'),(4,'Cavan'),(5,'Clare'),(6,'Cork'),(7,'Donegal'),(8,'Down'),(9,'Dublin'),(10,'DunLaoghaire-Rathdown'),(11,'Fermanagh'),(12,'Fingal'),(13,'Galway'),(14,'Kerry'),(15,'Kildare'),(16,'Kilkenny'),(17,'Laois'),(18,'Leitrim'),(19,'Limerick'),(20,'Londonderry'),(21,'Longford'),(22,'Louth'),(23,'Mayo'),(24,'Meath'),(25,'Monaghan'),(26,'North Tipperary'),(27,'Offaly'),(28,'Roscommon'),(29,'Sligo'),(30,'South Dublin'),(31,'South Tipperary'),(32,'Tipperary'),(33,'Tyrone'),(34,'Waterford'),(35,'Westmeath'),(36,'Wexford'),(37,'Wicklow'),(99,'Unknown County');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
                             `idplaylists` int(11) NOT NULL AUTO_INCREMENT,
                             `name` varchar(25) NOT NULL,
                             `owner` varchar(45) NOT NULL,
                             `songs` int(11) DEFAULT NULL,
                             `public` tinyint(4) DEFAULT NULL,
                             PRIMARY KEY (`idplaylists`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'liked songs','janeh@mail.com',3,1),(2,'rock','janeh@mail.com',6,0),(3,'pop','janeh@mail.com',12,1),(7,'asd','janeh@mail.com',1,1);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topcharts`
--

DROP TABLE IF EXISTS `topcharts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topcharts` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `songname` varchar(25) NOT NULL,
                             `artist` varchar(25) NOT NULL,
                             `length` int(11) NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topcharts`
--

LOCK TABLES `topcharts` WRITE;
/*!40000 ALTER TABLE `topcharts` DISABLE KEYS */;
INSERT INTO `topcharts` VALUES (1,'Cring','Matt meason',216),(2,'I see fire','Ed Sheeran',300),(4,'Oklahoma smokeshow','Zach bryan',211),(5,'Mary janes last dance','Tom petty',273),(6,'Daylight','Daavid',270),(16,'home','village',201);
/*!40000 ALTER TABLE `topcharts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `UserNr` int(11) NOT NULL AUTO_INCREMENT,
                        `FirstName` varchar(45) NOT NULL,
                        `LastName` varchar(45) NOT NULL,
                        `PassWord` varchar(45) DEFAULT NULL,
                        `email` varchar(45) NOT NULL,
                        `mobile` varchar(45) DEFAULT NULL,
                        `idcounty` int(11) NOT NULL,
                        `userID` varchar(45) DEFAULT NULL,
                        `userTypeNr` int(11) NOT NULL,
                        `userEnabled` tinyint(4) DEFAULT 1,
                        PRIMARY KEY (`UserNr`),
                        UNIQUE KEY `email_UNIQUE` (`email`),
                        UNIQUE KEY `userID_UNIQUE` (`userID`),
                        KEY `fk_admin_county2_idx` (`idcounty`),
                        KEY `fk_user_userType1_idx` (`userTypeNr`),
                        CONSTRAINT `fk_admin_county2` FOREIGN KEY (`idcounty`) REFERENCES `county` (`idcounty`) ON DELETE NO ACTION ON UPDATE NO ACTION,
                        CONSTRAINT `fk_user_userType1` FOREIGN KEY (`userTypeNr`) REFERENCES `usertype` (`userTypeNr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John','Smith','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jsmith@college.ie','0875869745',4,'jsmith@college.ie',1,1),(2,'Jane','Murphy','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','janeh@mail.com','0871234567',13,'janeh@mail.com',3,1),(3,'Harry','Boland','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','harry@lit.ie','01234567',2,'harry@lit.ie',3,1),(4,'James','Flannery','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','flann@gmail.com','0875426987',3,'flann@gmail.com',2,1),(5,'James','Murphy','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','james@framework.com','0862356897',19,'james@framework.com',3,1),(6,'Jack','McKeown','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jack@lit.ie','0875458745',8,'jack@lit.ie',2,1),(25,'elvis','presley','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','presley@tus.ie','0865478745',2,'presley@tus.ie',3,1),(42,'Jimm','O','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','jimmy@ob.com','085457854',3,'jimmy@ob.com',1,0),(44,'New','Customer','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','cust@gmail.com','0854789654',2,'cust@gmail.com',3,1),(45,'John','Customer2','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','cust2@cust.com','0587458745',5,'cust2@cust.com',3,1),(46,'Zander','Guilfoyle','cf8f0c0d32522bc3d2ebe59d1fa46611d3369c96','zacguilfoyle@yahoo.com','0831231234',32,'zacguilfoyle@yahoo.com',3,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertype` (
                            `userTypeNr` int(11) NOT NULL,
                            `userTypeDescr` varchar(45) NOT NULL DEFAULT 'UNKNOWN',
                            PRIMARY KEY (`userTypeNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'ADMIN'),(2,'MANAGER'),(3,'CUSTOMER'),(99,'UNKNOWN');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23  2:47:52
