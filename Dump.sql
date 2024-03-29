-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Toyota'),(2,'Honda'),(3,'Ford'),(4,'Chevrolet'),(5,'BMW'),(6,'Mercedes-Benz'),(7,'Audi'),(8,'Volkswagen'),(9,'Nissan'),(10,'Hyundai'),(11,'Kia'),(12,'Mazda'),(13,'Subaru'),(14,'Jeep'),(15,'Tesla');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VIN` char(17) NOT NULL,
  `Models_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `VIN_UNIQUE` (`VIN`),
  KEY `fk_Cars_Models1_idx` (`Models_id`),
  CONSTRAINT `fk_Cars_Models1` FOREIGN KEY (`Models_id`) REFERENCES `models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'ABC12345678901234',1),(2,'DEF98765432109876',2),(3,'GHI24680135792468',3),(4,'JKL13579246801357',4),(5,'MNO46801357924680',5),(6,'PQR92468013579246',6),(7,'STU35792468013579',7),(8,'VWX68013579246801',8),(9,'YZA79246801357924',9),(10,'BCD01357924680135',10),(11,'EFG24680135792468',11),(12,'HIJ57924680135792',12),(13,'KLM80135792468013',13),(14,'NOP13579246801357',14),(15,'QRS46801357924680',15);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact_info` text NOT NULL,
  `Cars_id` int NOT NULL,
  `driver_license` varchar(50) NOT NULL,
  `phone_number` char(20) NOT NULL,
  ` comments` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Clients_Cars1_idx` (`Cars_id`),
  CONSTRAINT `fk_Clients_Cars1` FOREIGN KEY (`Cars_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'John Doe','123 Main St, Anytown, USA',1,'DL123456','123-456-7890','Regular client'),(2,'Jane Smith','456 Elm St, Anytown, USA',2,'DL654321','987-654-3210','New client'),(3,'David Brown','789 Oak St, Anytown, USA',3,'DL789012','456-789-0123','VIP client'),(4,'Emily Johnson','101 Pine St, Anytown, USA',4,'DL345678','789-012-3456','Frequent client'),(5,'Michael Wilson','246 Cedar St, Anytown, USA',5,'DL901234','012-345-6789','Regular client'),(6,'Jessica Lee','369 Maple St, Anytown, USA',6,'DL567890','234-567-8901','New client'),(7,'Christopher Martin','481 Elm St, Anytown, USA',7,'DL012345','345-678-9012','Regular client'),(8,'Sarah Thompson','602 Oak St, Anytown, USA',8,'DL678901','456-789-0123','Regular client'),(9,'Andrew Garcia','703 Pine St, Anytown, USA',9,'DL234567','567-890-1234','New client'),(10,'Michelle Rodriguez','854 Cedar St, Anytown, USA',10,'DL890123','678-901-2345','VIP client'),(11,'James Martinez','961 Maple St, Anytown, USA',11,'DL456789','789-012-3456','Regular client'),(12,'Amanda Hernandez','123 Oak St, Anytown, USA',12,'DL901234','890-123-4567','Frequent client'),(13,'Ryan Young','258 Pine St, Anytown, USA',13,'DL567890','901-234-5678','Regular client'),(14,'Nicole King','369 Cedar St, Anytown, USA',14,'DL234567','012-345-6789','Regular client'),(15,'Daniel White','478 Elm St, Anytown, USA',15,'DL890123','123-456-7890','New client');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `Brands_id` int NOT NULL,
  `year` year NOT NULL,
  `car_mileage` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Models_Brands_idx` (`Brands_id`),
  CONSTRAINT `fk_Models_Brands` FOREIGN KEY (`Brands_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'Camry',1,2020,15000),(2,'Accord',2,2019,18000),(3,'Fusion',3,2018,20000),(4,'Cruze',4,2017,22000),(5,'3 Series',5,2021,12000),(6,'C-Class',6,2019,16000),(7,'A4',7,2020,14000),(8,'Jetta',8,2018,19000),(9,'Altima',9,2019,17000),(10,'Sonata',10,2017,21000),(11,'Optima',11,2018,20000),(12,'Mazda3',12,2020,13000),(13,'Impreza',13,2019,17000),(14,'Wrangler',14,2018,18000),(15,'Model 3',15,2021,10000);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonkeyattributes`
--

DROP TABLE IF EXISTS `nonkeyattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonkeyattributes` (
  `id` int NOT NULL,
  `attribute_name` varchar(45) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`attribute_name`),
  CONSTRAINT `nonkeyattributes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonkeyattributes`
--

LOCK TABLES `nonkeyattributes` WRITE;
/*!40000 ALTER TABLE `nonkeyattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonkeyattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `RepairOrders_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Orders_RepairOrders1_idx` (`RepairOrders_id`),
  CONSTRAINT `fk_Orders_RepairOrders1` FOREIGN KEY (`RepairOrders_id`) REFERENCES `repairorders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,100.00,'paid',1),(2,150.00,'paid',2),(3,200.00,'unpaid',3),(4,250.00,'paid',4),(5,300.00,'unpaid',5),(6,350.00,'paid',6),(7,400.00,'unpaid',7),(8,450.00,'paid',8),(9,500.00,'unpaid',9),(10,550.00,'paid',10),(11,600.00,'unpaid',11),(12,650.00,'paid',12),(13,700.00,'unpaid',13),(14,750.00,'paid',14),(15,800.00,'unpaid',15);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `RepairOrders_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` smallint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_Parts_RepairOrders1_idx` (`RepairOrders_id`),
  CONSTRAINT `fk_Parts_RepairOrders1` FOREIGN KEY (`RepairOrders_id`) REFERENCES `repairorders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,1,'Engine Oil',0),(2,2,'Brake Pads',4),(3,3,'Air Filter',2),(4,4,'Spark Plugs',8),(5,5,'Battery',1),(6,6,'Tire',4),(7,7,'Alternator',1),(8,8,'Radiator',1),(9,9,'Water Pump',1),(10,10,'Fuel Pump',1),(11,11,'Oxygen Sensor',2),(12,12,'Ignition Coil',4),(13,13,'Starter Motor',1),(14,14,'Thermostat',1),(15,15,'Control Arm',2);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairorders`
--

DROP TABLE IF EXISTS `repairorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repairorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('new','process','cancelled','completed') NOT NULL DEFAULT 'new',
  `Cars_id` int NOT NULL,
  `date_time` datetime NOT NULL,
  `Schedule_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_RepairOrders_Cars1_idx` (`Cars_id`),
  KEY `fk_RepairOrders_Schedule1_idx` (`Schedule_id`),
  CONSTRAINT `fk_RepairOrders_Cars1` FOREIGN KEY (`Cars_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `fk_RepairOrders_Schedule1` FOREIGN KEY (`Schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairorders`
--

LOCK TABLES `repairorders` WRITE;
/*!40000 ALTER TABLE `repairorders` DISABLE KEYS */;
INSERT INTO `repairorders` VALUES (1,'new',1,'2024-03-30 09:00:00',1),(2,'new',2,'2024-03-31 10:30:00',2),(3,'new',3,'2024-04-01 11:00:00',3),(4,'new',4,'2024-04-02 13:30:00',4),(5,'new',5,'2024-04-03 15:00:00',5),(6,'new',6,'2024-04-04 09:30:00',6),(7,'new',7,'2024-04-05 10:00:00',7),(8,'new',8,'2024-04-06 12:00:00',8),(9,'new',9,'2024-04-07 14:30:00',9),(10,'new',10,'2024-04-08 16:00:00',10),(11,'new',11,'2024-04-09 09:45:00',11),(12,'new',12,'2024-04-10 11:15:00',12),(13,'new',13,'2024-04-11 13:00:00',13),(14,'new',14,'2024-04-12 15:45:00',14),(15,'new',15,'2024-04-13 09:20:00',15),(19,'new',1,'2024-04-15 10:00:00',5),(20,'new',1,'2024-04-15 10:00:00',5),(21,'new',1,'2024-04-15 10:00:00',5),(22,'new',1,'2024-04-15 10:00:00',5),(23,'new',1,'2024-04-15 10:00:00',5);
/*!40000 ALTER TABLE `repairorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairorders_has_staff`
--

DROP TABLE IF EXISTS `repairorders_has_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repairorders_has_staff` (
  `RepairOrders_id` int NOT NULL,
  `Staff_id` int NOT NULL,
  PRIMARY KEY (`RepairOrders_id`,`Staff_id`),
  KEY `fk_RepairOrders_has_Staff_Staff1_idx` (`Staff_id`),
  KEY `fk_RepairOrders_has_Staff_RepairOrders1_idx` (`RepairOrders_id`),
  CONSTRAINT `fk_RepairOrders_has_Staff_RepairOrders1` FOREIGN KEY (`RepairOrders_id`) REFERENCES `repairorders` (`id`),
  CONSTRAINT `fk_RepairOrders_has_Staff_Staff1` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairorders_has_staff`
--

LOCK TABLES `repairorders_has_staff` WRITE;
/*!40000 ALTER TABLE `repairorders_has_staff` DISABLE KEYS */;
INSERT INTO `repairorders_has_staff` VALUES (1,1),(6,1),(11,1),(2,2),(7,2),(12,2),(3,3),(8,3),(13,3),(4,4),(9,4),(14,4),(5,5),(10,5),(15,5);
/*!40000 ALTER TABLE `repairorders_has_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `repairordersview`
--

DROP TABLE IF EXISTS `repairordersview`;
/*!50001 DROP VIEW IF EXISTS `repairordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `repairordersview` AS SELECT 
 1 AS `id`,
 1 AS `status`,
 1 AS `Cars_id`,
 1 AS `date_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Механик'),(2,'Рецепционист');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `Clients_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Schedule_Clients1_idx` (`Clients_id`),
  CONSTRAINT `fk_Schedule_Clients1` FOREIGN KEY (`Clients_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'2024-03-30 09:00:00',1),(2,'2024-03-31 10:30:00',2),(3,'2024-04-01 11:00:00',3),(4,'2024-04-02 13:30:00',4),(5,'2024-04-03 15:00:00',5),(6,'2024-04-04 09:30:00',6),(7,'2024-04-05 10:00:00',7),(8,'2024-04-06 12:00:00',8),(9,'2024-04-07 14:30:00',9),(10,'2024-04-08 16:00:00',10),(11,'2024-04-09 09:45:00',11),(12,'2024-04-10 11:15:00',12),(13,'2024-04-11 13:00:00',13),(14,'2024-04-12 15:45:00',14),(15,'2024-04-13 09:20:00',15);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John Smith','Mechanic'),(2,'Emily Johnson','Service Manager'),(3,'Michael Brown','Technician'),(4,'Sarah Davis','Receptionist'),(5,'Robert Wilson','Parts Manager'),(6,'John Smith','Механик'),(7,'Emily Johnson','Рецепционист');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_roles`
--

DROP TABLE IF EXISTS `staff_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_roles` (
  `Staff_id` int NOT NULL,
  `Role_id` int NOT NULL,
  PRIMARY KEY (`Staff_id`,`Role_id`),
  KEY `fk_Staff_Roles_Roles_idx` (`Role_id`),
  CONSTRAINT `fk_Staff_Roles_Roles` FOREIGN KEY (`Role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_Staff_Roles_Staff` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_roles`
--

LOCK TABLES `staff_roles` WRITE;
/*!40000 ALTER TABLE `staff_roles` DISABLE KEYS */;
INSERT INTO `staff_roles` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `staff_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempcars`
--

DROP TABLE IF EXISTS `tempcars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempcars` (
  `id` int NOT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` year DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempcars`
--

LOCK TABLES `tempcars` WRITE;
/*!40000 ALTER TABLE `tempcars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempcars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `repairordersview`
--

/*!50001 DROP VIEW IF EXISTS `repairordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `repairordersview` AS select `repairorders`.`id` AS `id`,`repairorders`.`status` AS `status`,`repairorders`.`Cars_id` AS `Cars_id`,`repairorders`.`date_time` AS `date_time` from `repairorders` */;
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

-- Dump completed on 2024-03-29 18:40:20
