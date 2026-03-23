-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
--
-- Host: localhost    Database: montgomery_county_crime
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agency` (
  `Police_Department_ID` int NOT NULL,
  `Agency` varchar(45) NOT NULL,
  `Police_District_ID` int NOT NULL,
  PRIMARY KEY (`Police_Department_ID`),
  KEY `fk_Agency_Police_District1_idx` (`Police_District_ID`),
  CONSTRAINT `fk_Agency_Police_District1` FOREIGN KEY (`Police_District_ID`) REFERENCES `police_district` (`Police_District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'GPD',42),(2,'MCPD',1),(3,'RCPD',1),(4,'TPPD',45);
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinates`
--

DROP TABLE IF EXISTS `coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinates` (
  `Coordinate_ID` int NOT NULL,
  `Latitude` varchar(45) NOT NULL,
  `Longitude` varchar(45) NOT NULL,
  PRIMARY KEY (`Coordinate_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinates`
--

LOCK TABLES `coordinates` WRITE;
/*!40000 ALTER TABLE `coordinates` DISABLE KEYS */;
INSERT INTO `coordinates` VALUES (1,'38.97783046','-77.09244082'),(2,'38.9831017','-77.22245115'),(3,'38.98818675','-76.99964047'),(4,'38.99170053','-77.02409569'),(5,'38.99220202','-77.00382092'),(6,'38.99251688','-77.00417763'),(7,'38.99405669','-77.03136686'),(8,'38.9940974','-77.04620857'),(9,'38.99453581','-77.02919819'),(10,'38.99685494','-77.02543246'),(11,'38.9970835','-77.00650293'),(12,'38.99859331','-77.11782643'),(13,'38.99886936','-76.99823608'),(14,'38.9996396','-77.01058774'),(15,'38.99977695','-77.00467241'),(16,'39.00402168','-77.01189804'),(17,'39.02042012','-76.97668924'),(18,'39.02055564','-77.04445187'),(19,'39.02701341','-77.15055108'),(20,'39.04088812','-76.98794782'),(21,'39.05040039','-77.11487519'),(22,'39.05269731','-76.95317842'),(23,'39.05515165','-76.96659844'),(24,'39.05855427','-77.04888345'),(25,'39.06020489','-77.05117537'),(26,'39.06113904','-77.05442602'),(27,'39.07112686','-77.11610039'),(28,'39.0730019','-77.1188023'),(29,'39.07458265','-77.09441341'),(30,'39.07551929','-77.11721972'),(31,'39.07891091','-77.08082701'),(32,'39.07974236','-77.17152931'),(33,'39.08046654','-77.15280799'),(34,'39.08624438','-77.07908344'),(35,'39.0866236','-77.14944477'),(36,'39.08867109','-77.15369659'),(37,'39.09664939','-77.19942612'),(38,'39.10265228','-77.22075228'),(39,'39.11273546','-77.1696379'),(40,'39.1132741','-77.18656468'),(41,'39.11803451','-77.20045152'),(42,'39.12110356','-76.98880155'),(43,'39.14895101','-77.20768146'),(44,'39.15066996','-77.20406308'),(45,'39.15252018','-77.2746006'),(46,'39.15500495','-77.05030958'),(47,'39.15735918','-77.05253119'),(48,'39.17055502','-77.29876739'),(49,'39.17688818','-77.27311003'),(50,'39.17721348','-77.25934146'),(51,'39.1785391','-77.23852357'),(52,'39.17886092','-77.26740878'),(53,'39.18210579','-77.2602523'),(54,'39.18398793','-77.26164675'),(55,'39.19220451','-77.24252538'),(56,'39.30459131','-77.18400328');
/*!40000 ALTER TABLE `coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime_against`
--

DROP TABLE IF EXISTS `crime_against`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime_against` (
  `crime_against_id` int NOT NULL,
  `crime_name_1` varchar(45) NOT NULL,
  PRIMARY KEY (`crime_against_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_against`
--

LOCK TABLES `crime_against` WRITE;
/*!40000 ALTER TABLE `crime_against` DISABLE KEYS */;
INSERT INTO `crime_against` VALUES (1,'Crime Against Person'),(2,'Crime Against Property'),(3,'Crime Against Society'),(4,'Other');
/*!40000 ALTER TABLE `crime_against` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `geographic_crime_patterns`
--

DROP TABLE IF EXISTS `geographic_crime_patterns`;
/*!50001 DROP VIEW IF EXISTS `geographic_crime_patterns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `geographic_crime_patterns` AS SELECT 
 1 AS `City`,
 1 AS `State`,
 1 AS `Latitude`,
 1 AS `Longitude`,
 1 AS `case_number`,
 1 AS `Start_Date_Time`,
 1 AS `offense_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_victim_incidents`
--

DROP TABLE IF EXISTS `high_victim_incidents`;
/*!50001 DROP VIEW IF EXISTS `high_victim_incidents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_victim_incidents` AS SELECT 
 1 AS `incident_id`,
 1 AS `cr_number`,
 1 AS `start_date_time`,
 1 AS `victim_count`,
 1 AS `city`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident` (
  `Incident_ID` int NOT NULL,
  `CR_Number` varchar(45) DEFAULT NULL,
  `Start_Date_Time` datetime DEFAULT NULL,
  `End_Time_Date` varchar(19) DEFAULT NULL,
  `Victim_Count` varchar(45) DEFAULT NULL,
  `Location_ID` int NOT NULL,
  PRIMARY KEY (`Incident_ID`),
  KEY `fk_Incident_LOCATION1_idx` (`Location_ID`),
  CONSTRAINT `fk_Incident_LOCATION1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES (201087096,'16033231','2016-07-01 00:22:00','0000-00-00 00:00:00','1',27),(201087097,'16033232','2016-07-01 00:04:00','0000-00-00 00:00:00','1',19),(201087100,'16033233','2016-07-01 00:32:00','0000-00-00 00:00:00','1',29),(201087102,'16033238','2016-07-01 00:58:00','2016-07-01 00:58:00','1',60),(201087104,'16033235','2016-07-01 00:57:00','2016-07-01 01:00:00','1',2),(201087108,'16033248','2016-07-01 04:00:00','0000-00-00 00:00:00','1',28),(201087119,'16033252','2016-07-01 05:00:00','2016-07-01 05:30:00','1',39),(201087133,'16033268','2016-07-01 08:52:00','0000-00-00 00:00:00','2',10),(201087135,'16033263','2016-07-01 08:15:00','0000-00-00 00:00:00','1',54),(201087136,'16033276','2016-07-01 09:10:00','0000-00-00 00:00:00','1',59),(201087139,'16033280','2016-07-01 09:30:00','2016-07-01 09:40:00','1',16),(201087143,'16033265','2016-07-01 07:48:00','2016-07-01 08:00:00','1',55),(201087148,'16033275','2016-07-01 09:46:00','0000-00-00 00:00:00','1',58),(201087150,'16033287','2016-07-01 10:40:00','2016-07-01 10:40:00','1',45),(201087152,'16033291','2016-07-01 11:54:00','0000-00-00 00:00:00','1',33),(201087158,'16033309','2016-07-01 11:00:00','2016-07-01 11:30:00','1',47),(201087161,'16033313','2016-07-01 10:00:00','2016-07-01 10:30:00','2',50),(201087163,'16033316','2016-07-01 13:07:00','2016-07-01 13:30:00','1',40),(201087164,'16033267','2016-07-01 08:13:00','0000-00-00 00:00:00','2',15),(201087165,'16033314','2016-07-01 13:35:00','0000-00-00 00:00:00','1',31),(201087167,'16033290','2016-07-01 11:17:00','0000-00-00 00:00:00','1',22),(201087171,'16033317','2016-07-01 13:31:00','2016-07-01 13:31:00','1',49),(201087174,'16033304','2016-07-01 12:18:00','2016-07-01 12:30:00','1',5),(201087177,'16033299','2016-07-01 10:07:00','0000-00-00 00:00:00','1',18),(201087179,'16033310','2016-07-01 11:45:00','0000-00-00 00:00:00','1',46),(201087181,'16033335','2016-07-01 14:53:00','0000-00-00 00:00:00','1',61),(201087184,'16033237','2016-07-01 00:58:00','2016-07-01 00:00:00','1',30),(201087185,'16033306','2016-07-01 13:16:00','0000-00-00 00:00:00','1',36),(201087186,'16033340','2016-07-01 15:42:00','0000-00-00 00:00:00','1',1),(201087188,'16033338','2016-07-01 14:00:00','2016-07-01 15:22:00','1',6),(201087194,'16033349','2016-07-01 16:28:00','2016-07-01 17:00:00','1',7),(201087195,'16033323','2016-07-01 14:39:00','0000-00-00 00:00:00','1',17),(201087197,'16033337','2016-07-01 16:01:00','0000-00-00 00:00:00','1',32),(201087200,'16033352','2016-07-01 15:59:00','0000-00-00 00:00:00','1',56),(201087208,'16033318','2016-07-01 14:13:00','0000-00-00 00:00:00','2',37),(201087209,'16033345','2016-07-01 16:06:00','0000-00-00 00:00:00','1',44),(201087211,'16033382','2016-07-01 19:48:00','0000-00-00 00:00:00','1',21),(201087212,'16033353','2016-07-01 16:36:00','0000-00-00 00:00:00','3',43),(201087213,'16033342','2016-07-01 13:40:00','2016-07-01 13:52:00','1',48),(201087217,'16033369','2016-07-01 17:32:00','2016-07-01 17:45:00','1',41),(201087218,'16033393','2016-07-01 14:22:00','2016-07-01 21:00:00','1',52),(201087219,'16033403','2016-07-01 05:00:00','2016-07-01 21:00:00','1',13),(201087221,'16033404','2016-07-01 21:05:00','2016-07-01 21:05:00','1',4),(201087222,'16033358','2016-07-01 16:40:00','2016-07-01 16:51:00','1',12),(201087223,'16033398','2016-07-01 21:00:00','2016-07-01 21:10:00','1',51),(201087224,'16033378','2016-07-01 18:12:00','2016-07-01 18:22:00','1',26),(201087225,'16033390','2016-07-01 20:21:00','0000-00-00 00:00:00','1',38),(201087227,'16033407','2016-07-01 20:31:00','0000-00-00 00:00:00','1',35),(201087228,'16033395','2016-07-01 20:15:00','0000-00-00 00:00:00','1',25),(201087229,'16033394','2016-07-01 20:00:00','0000-00-00 00:00:00','1',34),(201087230,'16033388','2016-07-01 20:13:00','2016-07-01 20:20:00','1',53),(201087231,'16033420','2016-07-01 22:21:00','2016-07-01 22:21:00','1',57),(201087233,'16033424','2016-07-01 21:56:00','0000-00-00 00:00:00','1',62),(201087235,'16033430','2016-07-01 23:00:00','2016-07-01 23:15:00','1',9),(201087238,'16033416','2016-07-01 21:21:00','0000-00-00 00:00:00','1',14),(201087239,'16033431','2016-07-01 22:00:00','2016-07-01 22:35:00','2',3),(201087241,'16033436','2016-07-01 22:31:00','0000-00-00 00:00:00','1',8),(201087242,'16033435','2016-07-01 22:32:00','0000-00-00 00:00:00','1',24),(201087244,'16033425','2016-07-01 22:24:00','0000-00-00 00:00:00','1',11),(201087245,'16033396','2016-07-01 20:32:00','2016-07-01 20:40:00','1',23);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_offense`
--

DROP TABLE IF EXISTS `incident_offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_offense` (
  `Incident_ID` int NOT NULL,
  `Offense_Code_ID` int NOT NULL,
  PRIMARY KEY (`Incident_ID`,`Offense_Code_ID`),
  KEY `fk_Incident_has_Offense_Offense1_idx` (`Offense_Code_ID`),
  KEY `fk_Incident_has_Offense_Incident1_idx` (`Incident_ID`),
  CONSTRAINT `fk_Incident_has_Offense_Incident1` FOREIGN KEY (`Incident_ID`) REFERENCES `incident` (`Incident_ID`),
  CONSTRAINT `fk_Incident_has_Offense_Offense1` FOREIGN KEY (`Offense_Code_ID`) REFERENCES `offense` (`Offense_Code_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_offense`
--

LOCK TABLES `incident_offense` WRITE;
/*!40000 ALTER TABLE `incident_offense` DISABLE KEYS */;
INSERT INTO `incident_offense` VALUES (201087239,1206),(201087164,1210),(201087108,1313),(201087100,1315),(201087165,1399),(201087167,1399),(201087200,2205),(201087097,2303),(201087186,2303),(201087213,2303),(201087222,2303),(201087245,2303),(201087219,2304),(201087188,2305),(201087218,2308),(201087096,2399),(201087150,2589),(201087161,2601),(201087181,2601),(201087133,2602),(201087136,2903),(201087158,2903),(201087163,2999),(201087139,3512),(201087238,3532),(201087135,3550),(201087102,3562),(201087143,3562),(201087212,3562),(201087217,3562),(201087223,3562),(201087143,3582),(201087148,3615),(201087174,3615),(201087164,3699),(201087225,4104),(201087230,4104),(201087231,4104),(201087152,4199),(201087194,4199),(201087195,4199),(201087197,4199),(201087211,4199),(201087097,5202),(201087104,5311),(201087148,5311),(201087185,5311),(201087235,5311),(201087184,5404),(201087217,5404),(201087229,5404),(201087238,5404),(201087244,5404),(201087097,5707),(201087119,5707),(201087223,5707),(201087209,9042),(201087171,9106),(201087179,9106),(201087224,9106),(201087228,9106),(201087242,9106),(201087208,9109),(201087133,9199),(201087177,9199),(201087221,9199),(201087227,9199),(201087233,9199),(201087241,9199);
/*!40000 ALTER TABLE `incident_offense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `incident_offense_details`
--

DROP TABLE IF EXISTS `incident_offense_details`;
/*!50001 DROP VIEW IF EXISTS `incident_offense_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incident_offense_details` AS SELECT 
 1 AS `incident_id`,
 1 AS `cr_number`,
 1 AS `offense_code_id`,
 1 AS `crime_name_3`,
 1 AS `crime_name_2`,
 1 AS `crime_name_1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incidents_per_district`
--

DROP TABLE IF EXISTS `incidents_per_district`;
/*!50001 DROP VIEW IF EXISTS `incidents_per_district`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incidents_per_district` AS SELECT 
 1 AS `police_district_number`,
 1 AS `police_district_name`,
 1 AS `total_incidents`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incidents_without_complete_time`
--

DROP TABLE IF EXISTS `incidents_without_complete_time`;
/*!50001 DROP VIEW IF EXISTS `incidents_without_complete_time`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incidents_without_complete_time` AS SELECT 
 1 AS `incident_id`,
 1 AS `cr_number`,
 1 AS `start_date_time`,
 1 AS `end_time_date`,
 1 AS `block_address`,
 1 AS `city`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_ID` int NOT NULL,
  `Block_Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip_code` varchar(10) NOT NULL,
  `Place` varchar(45) DEFAULT NULL,
  `Coordinate_ID` int NOT NULL,
  `Police_Department_ID` int NOT NULL,
  PRIMARY KEY (`Location_ID`),
  KEY `fk_LOCATION_COORDINATES1_idx` (`Coordinate_ID`),
  KEY `fk_LOCATION_Agency1_idx` (`Police_Department_ID`),
  CONSTRAINT `fk_LOCATION_Agency1` FOREIGN KEY (`Police_Department_ID`) REFERENCES `agency` (`Police_Department_ID`),
  CONSTRAINT `fk_LOCATION_COORDINATES1` FOREIGN KEY (`Coordinate_ID`) REFERENCES `coordinates` (`Coordinate_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'1  BLK  GRAND CORNER AVE','GAITHERSBURG','MD','20878','Retail - Department/Discount Store',41,2),(2,'1  BLK  MARYLAND AVE','ROCKVILLE','MD','20850','Street - Commercial',33,3),(3,'1  BLK E WAYNE AVE','SILVER SPRING','MD','20901','Street - Residential',14,2),(4,'100 BLK  CROYDON CT','SILVER SPRING','MD','20901','Residence - Yard',16,2),(5,'10100 BLK  GEORGIA AVE','SILVER SPRING','MD','20902','Street - Residential',18,2),(6,'10100 BLK  NEW HAMPSHIRE AVE','SILVER SPRING','MD','20903','Parking Lot - Commercial',17,2),(7,'10100 BLK  NEW HAMPSHIRE AVE','SILVER SPRING','MD','20903','Retail - Department/Discount Store',17,2),(8,'10700 BLK  DARNESTOWN RD','GAITHERSBURG','MD','20878','Street - Residential',38,2),(9,'11400 BLK  LOCKWOOD DR','SILVER SPRING','MD','20904','Street - Bus Stop',20,2),(10,'11800 BLK  ROCKVILLE PIK','ROCKVILLE','MD','','Residence - Apartment/Condo',21,2),(11,'1200 BLK  SPENCERVILLE RD','SILVER SPRING','MD','20868','Street - In vehicle',42,2),(12,'12000 BLK  CHERRY HILL RD','SILVER SPRING','MD','20904','Retail - Department/Discount Store',22,2),(13,'12200 BLK  TECH RD','SILVER SPRING','MD','20904','Parking Lot - Park & Ride',23,2),(14,'12400 BLK  GEORGIA AVE','SILVER SPRING','MD','20906','Street - In vehicle',25,2),(15,'12900 BLK  MIDDLEBROOK RD','GERMANTOWN','MD','20874','Parking Lot - County',52,2),(16,'13000 BLK  ATLANTIC AVE','ROCKVILLE','MD','20850','Residence - Single Family',27,3),(17,'13200 BLK  MIDWAY AVE','ROCKVILLE','MD','20851','Park',28,2),(18,'13700 BLK  CONNECTICUT AVE','ROCKVILLE','MD','20906','Retail - Department/Discount Store',31,2),(19,'13700 BLK  CONNECTICUT AVE','ROCKVILLE','MD','20906','Retail - Drug Store/Pharmacy',31,2),(20,'13700 BLK  CONNECTICUT AVE','ROCKVILLE','MD','20906','Retail - Other',31,2),(21,'14100 BLK  GEORGIA AVE','ROCKVILLE','MD','20906','Street - Other',34,2),(22,'14400 BLK  SATURN WAY','BOYDS','MD','20841','Residence - Single Family',48,2),(23,'15700 BLK  SHADY GROVE RD','GAITHERSBURG','MD','20878','Retail - Department/Discount Store',40,1),(24,'18000 BLK  COTTAGE GARDEN DR','GERMANTOWN','MD','20874','Residence - Apartment/Condo',45,2),(25,'18100 BLK  OLD BALTIMORE RD','OLNEY','MD','20832','Residence -Townhouse/Duplex',46,2),(26,'18400 BLK  PARADISE COVE TER','OLNEY','MD','20832','Residence - Single Family',47,2),(27,'19600 BLK  CRYSTAL ROCK DR','GERMANTOWN','MD','20874','Residence - Apartment/Condo',50,2),(28,'19600 BLK  WATERS RD','GERMANTOWN','MD','20874','Residence - Apartment/Condo',49,2),(29,'19700 BLK  FREDERICK RD','GERMANTOWN','MD','20876','Convenience Store',51,2),(30,'19900 BLK  AIRCRAFT DR','GERMANTOWN','MD','20874','Street - Commercial',53,2),(31,'200 BLK  HARTWELL RD','SILVER SPRING','MD','20901','Street - Residential',15,2),(32,'2000 BLK  VEIRS MILL RD','ROCKVILLE','MD','20851','Retail - Other',30,2),(33,'20000 BLK  CENTURY BLV','GERMANTOWN','MD','20874','Street - Bus Stop',54,2),(34,'20500 BLK  GERMANTOWN RD','GERMANTOWN','MD','20876','Street - In vehicle',55,2),(35,'2200 BLK  WASHINGTON AVE','SILVER SPRING','MD','20910','Residence - Apartment/Condo',8,2),(36,'2300 BLK  RANDOLPH RD','SILVER SPRING','MD','','Government Building',24,2),(37,'2300 BLK  RANDOLPH RD','SILVER SPRING','MD','','Other/Unknown',24,2),(38,'2600 BLK  URBANA DR','SILVER SPRING','MD','20906','Street - Residential',26,2),(39,'300 BLK  HUNGERFORD DR','ROCKVILLE','MD','20850','Parking Garage - Other',35,3),(40,'300 BLK N WASHINGTON ST','ROCKVILLE','MD','20850','Parking Lot - Commercial',36,3),(41,'400 BLK  WATTS BRANCH PKW','POTOMAC','MD','20850','Street - In vehicle',32,3),(42,'400 BLK  WATTS BRANCH PKW','POTOMAC','MD','20850','Street - Residential',32,3),(43,'4700 BLK  ASPEN HILL RD','ROCKVILLE','MD','20853','Street - In vehicle',29,2),(44,'4700 BLK  BRADLEY BLV','CHEVY CHASE','MD','20814','Residence - Apartment/Condo',1,2),(45,'500 BLK N FREDERICK AVE','GAITHERSBURG','MD','20877','Retail - Department/Discount Store',43,1),(46,'700 BLK  HUDSON AVE','TAKOMA PARK','MD','20912','Residence - Other',5,4),(47,'700 BLK  PLEASANT DR','ROCKVILLE','MD','20850','Residence - Other',39,3),(48,'700 BLK  RUSSELL AVE','GAITHERSBURG','MD','20877','Retail - Mall',44,1),(49,'7400 BLK  WESTLAKE TER','BETHESDA','MD','20817','Residence - Apartment/Condo',19,2),(50,'7800 BLK  HIDDEN MEADOW TER','POTOMAC','MD','20854','Residence - Single Family',2,2),(51,'8100 BLK  FENTON ST','SILVER SPRING','MD','20910','Parking Garage - County',3,2),(52,'8300 BLK  ROANOKE AVE','TAKOMA PARK','MD','20912','Residence - Apartment/Condo',6,4),(53,'8400 BLK  COLESVILLE RD','SILVER SPRING','MD','20910','Other/Unknown',7,2),(54,'8500 BLK  RAMSEY AVE','SILVER SPRING','MD','20910','Street - In vehicle',9,2),(55,'8600 BLK  GEREN RD','SILVER SPRING','MD','20901','Park',11,2),(56,'8700 BLK  HARTSDALE AVE','BETHESDA','MD','20817','School/College - DO NOT USE',12,2),(57,'8700 BLK  PINEY BRANCH RD','SILVER SPRING','MD','20903','Street - Alley',13,2),(58,'900 BLK  ELLSWORTH DR','SILVER SPRING','MD','20910','Street - Commercial',10,2),(59,'900 BLK  MAPLEWOOD AVE','TAKOMA PARK','MD','20912','Street - Residential',3,2),(60,'900 BLK  SILVER SPRING AVE','SILVER SPRING','MD','20910','Parking Lot - County',4,2),(61,'9000 BLK  GUE RD','DAMASCUS','MD','20872','Residence - Single Family',56,2),(62,'9900 BLK  MEDICAL CENTER DR','ROCKVILLE','MD','20850','Hospital/Emergency Care Center',37,2);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nibrs`
--

DROP TABLE IF EXISTS `nibrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nibrs` (
  `nibrs_code` varchar(4) NOT NULL,
  `crime_name_2` varchar(45) NOT NULL,
  `crime_against_id` int NOT NULL,
  PRIMARY KEY (`nibrs_code`),
  KEY `fk_nibrs_crime_against1_idx` (`crime_against_id`),
  CONSTRAINT `fk_nibrs_crime_against1` FOREIGN KEY (`crime_against_id`) REFERENCES `crime_against` (`crime_against_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nibrs`
--

LOCK TABLES `nibrs` WRITE;
/*!40000 ALTER TABLE `nibrs` DISABLE KEYS */;
INSERT INTO `nibrs` VALUES ('11D','Fondling',1),('120','Robbery',2),('13A','Aggravated Assault',1),('13B','Simple Assault',1),('220','Burglary/Breaking and Entering',2),('23C','Shoplifting',2),('23D','Theft from Building',2),('23F','Theft From Motor Vehicle',2),('23G','Theft of Motor Vehicle Parts or Accessories',2),('23H','All other Larceny',2),('250','Counterfeiting/Forgery',2),('26A','False Pretenses/Swindle/Confidence Game',2),('290','Destruction/Damage/Vandalism of Property',2),('35A','Drug/Narcotic Violations',3),('35B','Drug Equipment Violations',3),('520','Weapon Law Violations',3),('90C1','All Other Offenses',3),('90C2','Disorderly Conduct',3),('90D','Driving Under the Influence',3),('90G','Liquor Law Violations',3),('90J','Trespass of Real Property',3),('90Z','All Other Offenses',4);
/*!40000 ALTER TABLE `nibrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offense`
--

DROP TABLE IF EXISTS `offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offense` (
  `Offense_Code_ID` int NOT NULL,
  `Crime_Name_3` varchar(45) NOT NULL,
  `nibrs_code` varchar(4) NOT NULL,
  PRIMARY KEY (`Offense_Code_ID`),
  KEY `fk_Offense_nibrs1_idx` (`nibrs_code`),
  CONSTRAINT `fk_Offense_nibrs1` FOREIGN KEY (`nibrs_code`) REFERENCES `nibrs` (`nibrs_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offense`
--

LOCK TABLES `offense` WRITE;
/*!40000 ALTER TABLE `offense` DISABLE KEYS */;
INSERT INTO `offense` VALUES (1206,'ROBBERY - STREET-STRONG-ARM','120'),(1210,'ROBBERY - FORCIBLE PURSE SNATCHING','120'),(1313,'ASSAULT - SIMPLE','13B'),(1315,'ASSAULT - AGGRAVATED - OTHER','13A'),(1399,'ASSAULT - 2ND DEGREE','13B'),(2205,'BURGLARY - NO FORCED ENTRY-NONRESIDENTIAL','220'),(2303,'LARCENY - SHOPLIFTING','23C'),(2304,'LARCENY - AUTO PARTS','23G'),(2305,'LARCENY - FROM AUTO','23F'),(2308,'LARCENY - FROM BLDG','23D'),(2399,'LARCENY (DESCRIBE OFFENSE)','23H'),(2589,'FORGERY (DESCRIBE OFFENSE)','250'),(2601,'FRAUD - CONFIDENCE GAME','26A'),(2602,'FRAUD - SWINDLE','26A'),(2903,'DAMAGE PROPERTY - PUBLIC','290'),(2999,'DAMAGE PROPERTY (DESCRIBE OFFENSE)','290'),(3512,'DRUGS - HEROIN - POSSESS','35A'),(3532,'DRUGS - COCAINE - POSSESS','35A'),(3550,'DRUGS - NARCOTIC EQUIP - POSSESS','35B'),(3562,'DRUGS - MARIJUANA - POSSESS','35A'),(3582,'DRUGS - BARBITURATE - POSSESS','35A'),(3615,'SEX OFFENSE - INDECENT EXPOSURE TO ADULT','90C1'),(3699,'SEX OFFENSE - FONDLING','11D'),(4104,'LIQUOR - POSSESS','90G'),(4199,'LIQUOR (DESCRIBE OFFENSE)','90G'),(5202,'WEAPON - CONCEALED','520'),(5311,'PUBLIC PEACE - DISORDERLY CONDUCT','90C2'),(5404,'DRIVING UNDER THE INFLUENCE LIQUOR','90D'),(5707,'TRESPASSING','90J'),(9042,'SUICIDE - ATTEMPT','90Z'),(9106,'MENTAL ILLNESS','90Z'),(9109,'RECOVERED PROPERTY - OTHER','90Z'),(9199,'POLICE INFORMATION','90Z');
/*!40000 ALTER TABLE `offense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_district`
--

DROP TABLE IF EXISTS `police_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_district` (
  `Police_District_ID` int NOT NULL,
  `Police_District_Number` varchar(45) NOT NULL,
  `Police_District_Name` varchar(45) NOT NULL,
  `Sector` varchar(45) DEFAULT NULL,
  `Beat` varchar(45) DEFAULT NULL,
  `PRA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Police_District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_district`
--

LOCK TABLES `police_district` WRITE;
/*!40000 ALTER TABLE `police_district` DISABLE KEYS */;
INSERT INTO `police_district` VALUES (1,'1D','ROCKVILLE','A','1A2','299'),(2,'1D','ROCKVILLE','A','1A2','521'),(3,'1D','ROCKVILLE','A','1A3','242'),(4,'1D','ROCKVILLE','A','1A3','254'),(5,'1D','ROCKVILLE','A','1A3','277'),(6,'1D','ROCKVILLE','B','1B1','239'),(7,'2D','BETHESDA','D','2D1','87'),(8,'2D','BETHESDA','D','2D4','187'),(9,'2D','BETHESDA','E','2.00E+01','15'),(10,'2D','BETHESDA','E','2.00E+02','56'),(11,'2D','BETHESDA','E','2.00E+03','520'),(12,'2D','BETHESDA','E','2.00E+04','214'),(13,'3D','SILVER SPRING','G','3G1','93'),(14,'3D','SILVER SPRING','G','3G1','94'),(15,'3D','SILVER SPRING','G','3G1','671'),(16,'3D','SILVER SPRING','G','3G2','123'),(17,'3D','SILVER SPRING','G','3G2','174'),(18,'3D','SILVER SPRING','H','3H1','126'),(19,'3D','SILVER SPRING','H','3H1','128'),(20,'3D','SILVER SPRING','H','3H1','129'),(21,'3D','SILVER SPRING','H','3H2','140'),(22,'3D','SILVER SPRING','I','3I1','145'),(23,'3D','SILVER SPRING','I','3I1','146'),(24,'4D','WHEATON','J','4J1','680'),(25,'4D','WHEATON','J','4J2','401'),(26,'4D','WHEATON','K','4K1','351'),(27,'4D','WHEATON','K','4K1','534'),(28,'4D','WHEATON','K','4K2','335'),(29,'4D','WHEATON','K','4K2','337'),(30,'4D','WHEATON','K','4K2','339'),(31,'4D','WHEATON','L','4L1','366'),(32,'5D','GERMANTOWN','M','5M1','468'),(33,'5D','GERMANTOWN','M','5M1','471'),(34,'5D','GERMANTOWN','M','5M2','612'),(35,'5D','GERMANTOWN','N','5N1','595'),(36,'5D','GERMANTOWN','N','5N1','702'),(37,'5D','GERMANTOWN','N','5N2','448'),(38,'5D','GERMANTOWN','N','5N2','586'),(39,'6D','MONTGOMERY VILLAGE','P','6P1','441'),(40,'6D','MONTGOMERY VILLAGE','P','6P1','549'),(41,'6D','MONTGOMERY VILLAGE','P','6P1','721'),(42,'6D','MONTGOMERY VILLAGE','P','6P2','428'),(43,'6D','MONTGOMERY VILLAGE','P','6P3','435'),(44,'6D','MONTGOMERY VILLAGE','R','6R1','548'),(45,'8D','CITY OF TAKOMA PARK','T','8T2','803');
/*!40000 ALTER TABLE `police_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `geographic_crime_patterns`
--

/*!50001 DROP VIEW IF EXISTS `geographic_crime_patterns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `geographic_crime_patterns` AS select `l`.`City` AS `City`,`l`.`State` AS `State`,`c`.`Latitude` AS `Latitude`,`c`.`Longitude` AS `Longitude`,`i`.`CR_Number` AS `case_number`,`i`.`Start_Date_Time` AS `Start_Date_Time`,`o`.`Crime_Name_3` AS `offense_type` from ((((`incident` `i` join `location` `l` on((`i`.`Location_ID` = `l`.`Location_ID`))) join `coordinates` `c` on((`l`.`Coordinate_ID` = `c`.`Coordinate_ID`))) join `incident_offense` `i_o` on((`i`.`Incident_ID` = `i_o`.`Incident_ID`))) join `offense` `o` on((`i_o`.`Offense_Code_ID` = `o`.`Offense_Code_ID`))) where (`l`.`City` in (select `l2`.`City` from (`location` `l2` join `incident` `i2` on((`l2`.`Location_ID` = `i2`.`Location_ID`))) group by `l2`.`City` having (count(distinct `i2`.`Incident_ID`) >= 5)) and (`c`.`Latitude` is not null) and (`c`.`Longitude` is not null)) order by `l`.`City`,`i`.`Start_Date_Time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_victim_incidents`
--

/*!50001 DROP VIEW IF EXISTS `high_victim_incidents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_victim_incidents` AS select `i`.`Incident_ID` AS `incident_id`,`i`.`CR_Number` AS `cr_number`,`i`.`Start_Date_Time` AS `start_date_time`,`i`.`Victim_Count` AS `victim_count`,`l`.`City` AS `city`,`l`.`State` AS `state` from (`incident` `i` join `location` `l` on((`i`.`Location_ID` = `l`.`Location_ID`))) where (`i`.`Victim_Count` > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incident_offense_details`
--

/*!50001 DROP VIEW IF EXISTS `incident_offense_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incident_offense_details` AS select `i`.`Incident_ID` AS `incident_id`,`i`.`CR_Number` AS `cr_number`,`o`.`Offense_Code_ID` AS `offense_code_id`,`o`.`Crime_Name_3` AS `crime_name_3`,`n`.`crime_name_2` AS `crime_name_2`,`ca`.`crime_name_1` AS `crime_name_1` from ((((`incident` `i` join `incident_offense` `i_o` on((`i`.`Incident_ID` = `i_o`.`Incident_ID`))) join `offense` `o` on((`i_o`.`Offense_Code_ID` = `o`.`Offense_Code_ID`))) join `nibrs` `n` on((`o`.`nibrs_code` = `n`.`nibrs_code`))) join `crime_against` `ca` on((`n`.`crime_against_id` = `ca`.`crime_against_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incidents_per_district`
--

/*!50001 DROP VIEW IF EXISTS `incidents_per_district`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incidents_per_district` AS select `p_d`.`Police_District_Number` AS `police_district_number`,`p_d`.`Police_District_Name` AS `police_district_name`,count(`i`.`Incident_ID`) AS `total_incidents` from (((`incident` `i` join `location` `l` on((`i`.`Location_ID` = `l`.`Location_ID`))) join `agency` `a` on((`l`.`Police_Department_ID` = `a`.`Police_Department_ID`))) join `police_district` `p_d` on((`a`.`Police_District_ID` = `p_d`.`Police_District_ID`))) group by `p_d`.`Police_District_Number`,`p_d`.`Police_District_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incidents_without_complete_time`
--

/*!50001 DROP VIEW IF EXISTS `incidents_without_complete_time`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incidents_without_complete_time` AS select `i`.`Incident_ID` AS `incident_id`,`i`.`CR_Number` AS `cr_number`,`i`.`Start_Date_Time` AS `start_date_time`,`i`.`End_Time_Date` AS `end_time_date`,`l`.`Block_Address` AS `block_address`,`l`.`City` AS `city`,`l`.`State` AS `state` from (`incident` `i` join `location` `l` on((`i`.`Location_ID` = `l`.`Location_ID`))) where (`i`.`End_Time_Date` = '0000-00-00 00:00:00') */;
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

-- Dump completed on 2025-12-14 18:41:05
