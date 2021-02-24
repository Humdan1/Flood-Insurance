-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: inst_327_final_team2
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Temporary view structure for view `bruce_wayne_claims`
--

DROP TABLE IF EXISTS `bruce_wayne_claims`;
/*!50001 DROP VIEW IF EXISTS `bruce_wayne_claims`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bruce_wayne_claims` AS SELECT 
 1 AS `Owner`,
 1 AS `Average Claim Value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `building_description`
--

DROP TABLE IF EXISTS `building_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_description` (
  `building_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_of_worship` enum('y','n') DEFAULT NULL,
  `primary_residence` enum('y','n') DEFAULT NULL,
  `condominium` enum('y','n') DEFAULT NULL,
  `construction_date` date DEFAULT NULL,
  `location_of_content_covered` varchar(120) DEFAULT NULL,
  `small_business` enum('y','n') DEFAULT NULL,
  `num_floors` int(11) DEFAULT NULL,
  `building_owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`building_description_id`),
  KEY `building_description_fk_Building_owner_idx` (`building_owner_id`),
  CONSTRAINT `building_description_fk_Building_owner` FOREIGN KEY (`building_owner_id`) REFERENCES `building_owner` (`building_owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_description`
--

LOCK TABLES `building_description` WRITE;
/*!40000 ALTER TABLE `building_description` DISABLE KEYS */;
INSERT INTO `building_description` VALUES (1,'n','y','y','1972-01-05','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,1),(2,'n','y','y','1972-01-05','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,2),(3,'n','n','n','1910-07-07','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,3),(4,'n','n','n','1910-07-07','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,4),(5,'n','y','y','1980-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,5),(6,'n','y','y','1980-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,6),(7,'n','n','n','2008-12-29','','n',1,7),(8,'n','n','n','2008-12-29','','n',1,8),(9,'n','y','n','2007-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,9),(10,'n','y','n','2007-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,10),(11,'n','y','n','1952-02-15','','n',1,11),(12,'n','y','n','1952-02-15','','n',1,12),(13,'n','y','n','1970-01-01','','n',1,13),(14,'n','y','n','1970-01-01','','n',1,14),(15,'n','y','n','1987-01-15','Lowest floor above ground level and higher floors (No basement/enclosure/crawlspace/subgrade crawlspace)','n',2,15),(16,'n','y','n','1987-01-15','Lowest floor above ground level and higher floors (No basement/enclosure/crawlspace/subgrade crawlspace)','n',2,16),(17,'n','y','n','1960-01-01','','n',1,17),(18,'n','y','n','1960-01-01','','n',1,18),(19,'n','n','n','1974-03-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,19),(20,'n','n','n','1974-03-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,20),(21,'n','y','n','1955-06-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,21),(22,'n','y','n','1955-06-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,22),(23,'n','n','n','1983-01-01','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','n',3,23),(24,'n','n','n','1983-01-01','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','n',3,24),(25,'n','y','n','1996-07-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,25),(26,'n','y','n','1996-07-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,26),(27,'n','n','n','1980-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,27),(28,'n','n','n','1980-01-01','Lowest floor only above ground level (No basement/enclosure/crawlspace/subgrade crawlspace)','n',1,28),(29,'n','y','n','1971-01-01','','n',1,29),(30,'n','y','n','1971-01-01','','n',1,30);
/*!40000 ALTER TABLE `building_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_owner`
--

DROP TABLE IF EXISTS `building_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_owner` (
  `building_owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `building_num` int(11) NOT NULL,
  PRIMARY KEY (`building_owner_id`),
  KEY `building_owner_fk_owner_idx` (`owner_id`),
  KEY `building_owner_fk_building_idx` (`building_num`),
  CONSTRAINT `building_owner_fk_building` FOREIGN KEY (`building_num`) REFERENCES `buildings` (`building_num`),
  CONSTRAINT `building_owner_fk_owner` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_owner`
--

LOCK TABLES `building_owner` WRITE;
/*!40000 ALTER TABLE `building_owner` DISABLE KEYS */;
INSERT INTO `building_owner` VALUES (1,1,1),(2,15,1),(3,2,2),(4,14,2),(5,3,3),(6,13,3),(7,4,4),(8,12,4),(9,5,5),(10,11,5),(11,6,6),(12,10,6),(13,7,7),(14,9,7),(15,8,8),(16,8,8),(17,9,9),(18,7,9),(19,10,10),(20,6,10),(21,11,11),(22,5,11),(23,12,12),(24,4,12),(25,13,13),(26,3,13),(27,14,14),(28,2,14),(29,15,15),(30,1,15);
/*!40000 ALTER TABLE `building_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `building_num` int(11) NOT NULL AUTO_INCREMENT,
  `building_state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`building_num`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'NY'),(2,'WI'),(3,'CA'),(4,'LA'),(5,'FL'),(6,'PA'),(7,'AR'),(8,'TX'),(9,'CA'),(10,'AL'),(11,'FL'),(12,'NJ'),(13,'FL'),(14,'OR'),(15,'FL');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claims` (
  `claims_id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `building_description_id` int(11) DEFAULT NULL,
  `claim_amount` int(11) DEFAULT NULL,
  `claim_processed` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`claims_id`),
  KEY `claims_fk_policy_idx` (`policy_id`),
  KEY `claims_fk_location_idx` (`location_id`),
  KEY `claims_fk_building_description_idx` (`building_description_id`),
  CONSTRAINT `claims_fk_building_description` FOREIGN KEY (`building_description_id`) REFERENCES `building_description` (`building_description_id`),
  CONSTRAINT `claims_fk_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`Location_id`),
  CONSTRAINT `claims_fk_policy` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
INSERT INTO `claims` VALUES (1,1,1,1,35000,'y'),(2,2,2,2,200000,'n'),(3,3,3,3,120000,'n'),(4,4,4,4,10000,'n'),(5,5,5,5,45000,'y'),(6,6,6,6,300000,'y'),(7,7,7,7,9000,'n'),(8,8,8,8,300000,'n'),(9,9,9,9,203540,'y'),(10,10,10,10,124834,'y'),(11,11,11,11,24000,'y'),(12,12,12,12,23000,'y'),(13,13,13,13,5000,'n'),(14,14,14,14,213000,'n'),(15,15,15,15,290000,'y'),(16,16,16,16,230000,'y'),(17,17,17,17,54000,'n'),(18,18,18,18,120050,'y'),(19,19,19,19,100000,'y'),(20,20,20,20,95000,'n'),(21,21,21,21,350000,'n'),(22,22,22,22,98750,'n'),(23,23,23,23,2000,'y'),(24,24,24,24,100000,'y'),(25,25,25,25,45000,'y'),(26,26,26,26,85000,'n'),(27,27,27,27,120000,'n'),(28,28,28,28,7500,'y'),(29,29,29,29,20000,'n'),(30,30,30,30,36000,'n');
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `claims_by_location`
--

DROP TABLE IF EXISTS `claims_by_location`;
/*!50001 DROP VIEW IF EXISTS `claims_by_location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `claims_by_location` AS SELECT 
 1 AS `Average Claim Amount`,
 1 AS `State Abbreviation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cost_per_building`
--

DROP TABLE IF EXISTS `cost_per_building`;
/*!50001 DROP VIEW IF EXISTS `cost_per_building`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cost_per_building` AS SELECT 
 1 AS `building_description_id`,
 1 AS `house_of_worship`,
 1 AS `condominium`,
 1 AS `small_business`,
 1 AS `policy_cost`,
 1 AS `content_coverage`,
 1 AS `buildings_coverage`,
 1 AS `Total coverage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `current_homes`
--

DROP TABLE IF EXISTS `current_homes`;
/*!50001 DROP VIEW IF EXISTS `current_homes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `current_homes` AS SELECT 
 1 AS `building_description_id`,
 1 AS `primary_residence`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_id` int(11) NOT NULL AUTO_INCREMENT,
  `State_abbreviation` varchar(2) DEFAULT NULL,
  `Reported_city` varchar(45) DEFAULT NULL,
  `zip_code` int(5) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'NY','BREEZY POINT',11697,40.56000000,-73.91000000),(2,'FL','ST PETERBURG BE',33706,27.70000000,-82.73000000),(3,'WI','THIENSVILLE',53092,43.23000000,-87.98000000),(4,'OR','PORTLAND',97211,45.58000000,-122.63000000),(5,'CA','GILROY',95020,36.97000000,-121.42000000),(6,'FL','MIAMI',33193,25.69000000,-80.45000000),(7,'LA','GALLIANO',70354,29.41000000,-90.29000000),(8,'NJ','OCEAN CITY',8226,39.23000000,-74.63000000),(9,'FL','MIRAMAR',33029,25.97000000,-80.39000000),(10,'FL','HOLLY HILL',32117,29.25000000,-81.04000000),(11,'PA','LEVITTOWN',19055,40.16000000,-74.83000000),(12,'AL','CORDOVA',35550,33.75000000,-87.17000000),(13,'AR','CARAWAY',72419,35.76000000,-90.33000000),(14,'CA','WESTMINSTER',92683,33.73000000,-117.98000000),(15,'TX','CORPUS CHRISTI',78418,27.59000000,-97.24000000),(16,'TX','CORPUS CHRISTI',78418,27.59000000,-97.24000000),(17,'AR','CARAWAY',72419,35.76000000,-90.33000000),(18,'CA','WESTMINSTER',92683,33.73000000,-117.98000000),(19,'PA','LEVITTOWN',19055,40.16000000,-74.83000000),(20,'AL','CORDOVA',35550,33.75000000,-87.17000000),(21,'FL','MIRAMAR',33029,25.97000000,-80.39000000),(22,'FL','HOLLY HILL',32117,29.25000000,-81.04000000),(23,'LA','GALLIANO',70354,29.41000000,-90.29000000),(24,'NJ','OCEAN CITY',8226,39.23000000,-74.63000000),(25,'CA','GILROY',95020,36.97000000,-121.42000000),(26,'FL','MIAMI',33193,25.69000000,-80.45000000),(27,'WI','THIENSVILLE',53092,43.23000000,-87.98000000),(28,'OR','PORTLAND',97211,45.58000000,-122.63000000),(29,'NY','BREEZY POINT',11697,40.56000000,-73.91000000),(30,'FL','ST PETERBURG BE',33706,27.70000000,-82.73000000);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `owner_last_name` varchar(45) DEFAULT NULL,
  `owner_first_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `owner_id_UNIQUE` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'abbas','haider'),(2,'abbas','musa'),(3,'ahmed','humdan'),(4,'allen','barry'),(5,'cheng','alan'),(6,'granger','hermoine'),(7,'kalbach','mitchell'),(8,'kent','clark'),(9,'potter','harry'),(10,'richards','zack'),(11,'strange','stephen'),(12,'tedros','teaven'),(13,'washington','george'),(14,'wayne','bruce'),(15,'wild','zach');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `policy_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_id` int(11) DEFAULT NULL,
  `buildings_coverage` int(10) unsigned DEFAULT NULL,
  `content_coverage` int(10) unsigned DEFAULT NULL,
  `policy_cost` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `policy_fk_time_idx` (`time_id`),
  CONSTRAINT `policy_fk_time` FOREIGN KEY (`time_id`) REFERENCES `time` (`time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,1,20000,20000,488),(2,2,225000,33600,1570),(3,3,181500,11000,1808),(4,4,75000,5000,492),(5,5,45000,0,410),(6,6,250000,82300,379),(7,7,9000,0,108),(8,8,336600,5900,486),(9,9,250000,100000,469),(10,10,182400,31100,564),(11,11,140000,0,790),(12,12,121000,0,672),(13,13,70000,0,490),(14,14,213000,0,744),(15,15,240000,92000,856),(16,16,240000,92000,856),(17,17,70000,0,490),(18,18,213000,0,744),(19,19,140000,0,790),(20,20,121000,0,672),(21,21,250000,100000,469),(22,22,182400,31100,564),(23,23,9000,0,108),(24,24,336600,5900,486),(25,25,45000,0,410),(26,26,250000,82300,379),(27,27,181500,11000,1808),(28,28,75000,5000,492),(29,29,20000,20000,488),(30,30,225000,33600,1570);
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `policy_data_after_july09`
--

DROP TABLE IF EXISTS `policy_data_after_july09`;
/*!50001 DROP VIEW IF EXISTS `policy_data_after_july09`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `policy_data_after_july09` AS SELECT 
 1 AS `policy_id`,
 1 AS `policy_cost`,
 1 AS `policy_start_date`,
 1 AS `policy_termination_date`,
 1 AS `Policy Length`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_start_date` date DEFAULT NULL,
  `policy_termination_date` date DEFAULT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'2009-01-01','2009-01-02'),(2,'2010-01-15','2010-02-03'),(3,'2009-01-02','2009-01-07'),(4,'2010-01-14','2010-02-03'),(5,'2009-01-03','2009-01-07'),(6,'2010-01-13','2010-02-01'),(7,'2009-01-04','2009-01-08'),(8,'2010-01-12','2010-01-31'),(9,'2009-01-05','2009-01-16'),(10,'2010-01-11','2010-01-31'),(11,'2009-01-06','2009-01-19'),(12,'2010-01-10','2010-01-28'),(13,'2009-01-07','2009-01-21'),(14,'2010-01-09','2010-01-22'),(15,'2009-01-08','2009-01-21'),(16,'2010-01-08','2010-01-21'),(17,'2010-01-07','2010-01-21'),(18,'2009-01-09','2009-01-22'),(19,'2010-01-06','2010-01-19'),(20,'2009-01-10','2009-01-28'),(21,'2010-01-05','2010-01-16'),(22,'2009-01-11','2009-01-31'),(23,'2010-01-04','2010-01-08'),(24,'2009-01-12','2009-01-31'),(25,'2010-01-03','2010-01-07'),(26,'2009-01-13','2009-02-01'),(27,'2010-01-02','2010-01-07'),(28,'2009-01-14','2009-02-03'),(29,'2010-01-01','2010-01-02'),(30,'2009-01-15','2009-02-03');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bruce_wayne_claims`
--

/*!50001 DROP VIEW IF EXISTS `bruce_wayne_claims`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bruce_wayne_claims` AS select concat(`owner`.`owner_first_name`,' ',`owner`.`owner_last_name`) AS `Owner`,concat('$',convert(format(avg(`wayne_houses`.`claim_amount`),2) using utf8mb4)) AS `Average Claim Value` from (`owner` join (select `building_description`.`building_description_id` AS `building_description_id`,`building_owner`.`building_owner_id` AS `building_owner_id`,`building_owner`.`owner_id` AS `owner_id`,`building_owner`.`building_num` AS `building_num`,`building_description`.`house_of_worship` AS `house_of_worship`,`building_description`.`primary_residence` AS `primary_residence`,`building_description`.`condominium` AS `condominium`,`building_description`.`construction_date` AS `construction_date`,`building_description`.`location_of_content_covered` AS `location_of_content_covered`,`building_description`.`small_business` AS `small_business`,`building_description`.`num_floors` AS `num_floors`,`claims`.`claims_id` AS `claims_id`,`claims`.`policy_id` AS `policy_id`,`claims`.`location_id` AS `location_id`,`claims`.`claim_amount` AS `claim_amount`,`claims`.`claim_processed` AS `claim_processed` from ((`building_owner` join `building_description` on((`building_owner`.`building_owner_id` = `building_description`.`building_owner_id`))) join `claims` on((`building_description`.`building_description_id` = `claims`.`building_description_id`)))) `wayne_houses` on((`wayne_houses`.`building_owner_id` = `owner`.`owner_id`))) where ((`owner`.`owner_last_name` = 'wayne') and (`owner`.`owner_first_name` = 'bruce')) group by `owner`.`owner_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `claims_by_location`
--

/*!50001 DROP VIEW IF EXISTS `claims_by_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `claims_by_location` AS select avg(`claims`.`claim_amount`) AS `Average Claim Amount`,`location`.`State_abbreviation` AS `State Abbreviation` from (`claims` join `location` on((`claims`.`location_id` = `location`.`Location_id`))) where (`claims`.`claim_amount` > 20000) group by `location`.`State_abbreviation` order by avg(`claims`.`claim_amount`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cost_per_building`
--

/*!50001 DROP VIEW IF EXISTS `cost_per_building`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cost_per_building` AS select `building_description`.`building_description_id` AS `building_description_id`,`building_description`.`house_of_worship` AS `house_of_worship`,`building_description`.`condominium` AS `condominium`,`building_description`.`small_business` AS `small_business`,`claims`.`claim_amount` AS `policy_cost`,`policy`.`content_coverage` AS `content_coverage`,`policy`.`buildings_coverage` AS `buildings_coverage`,concat('$',convert(format(sum((`policy`.`buildings_coverage` + `policy`.`content_coverage`)),2) using utf8mb4)) AS `Total coverage` from ((`building_description` join `claims` on((`building_description`.`building_description_id` = `claims`.`building_description_id`))) join `policy` on((`claims`.`policy_id` = `policy`.`policy_id`))) group by `building_description`.`building_description_id`,`building_description`.`house_of_worship`,`building_description`.`condominium`,`building_description`.`small_business`,`claims`.`claim_amount`,`policy`.`policy_cost`,`policy`.`content_coverage`,`policy`.`buildings_coverage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `current_homes`
--

/*!50001 DROP VIEW IF EXISTS `current_homes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_homes` AS select `building_description`.`building_description_id` AS `building_description_id`,`building_description`.`primary_residence` AS `primary_residence` from `building_description` where (`building_description`.`primary_residence` = 'Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `policy_data_after_july09`
--

/*!50001 DROP VIEW IF EXISTS `policy_data_after_july09`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `policy_data_after_july09` AS select `p`.`policy_id` AS `policy_id`,`p`.`policy_cost` AS `policy_cost`,`t`.`policy_start_date` AS `policy_start_date`,`t`.`policy_termination_date` AS `policy_termination_date`,(to_days(`t`.`policy_termination_date`) - to_days(`t`.`policy_start_date`)) AS `Policy Length` from (`policy` `p` join `time` `t` on((`p`.`time_id` = `t`.`time_id`))) where (`t`.`policy_start_date` >= '20090701') order by `p`.`policy_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08 22:11:06
