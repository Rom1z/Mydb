CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
INSERT INTO `brands` VALUES (1,'Тойота'),(2,'Хонда'),(3,'Форд'),(4,'Шевроле'),(5,'БМВ'),(6,'Мерседес-Бенц'),(7,'Ауди'),(8,'Фольксваген'),(9,'Ниссан'),(10,'Хендай'),(11,'Киа'),(12,'Мазда'),(13,'Субару'),(14,'Джип'),(15,'Тесла');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'ABC12345678901234',1),(2,'DEF98765432109876',2),(3,'GHI24680135792468',3),(4,'JKL13579246801357',4),(5,'MNO46801357924680',4),(6,'PQR92468013579246',6),(7,'STU35792468013579',7),(8,'VWX68013579246801',8),(9,'YZA79246801357924',9),(10,'BCD01357924680135',10),(11,'EFG24680135792468',11),(12,'HIJ57924680135792',12),(13,'KLM80135792468013',13),(14,'NOP13579246801357',14),(15,'QRS46801357924680',15);
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
INSERT INTO `clients` VALUES (1,'Иван Иванов','г. Москва, ул. Ленина, д.1, кв.5',1,'69123456','+7 (123) 456-7890','Постоянный клиент'),(2,'Петр Петров','г. Санкт-Петербург, пр. Невский, д.2, кв.10',2,'69654321','+7 (987) 654-3210','Новый клиент'),(3,'Сергей Сидоров','г. Екатеринбург, ул. Пушкина, д.3, кв.15',3,'69789012','+7 (456) 789-0123','VIP клиент'),(4,'Ольга Иванова','г. Новосибирск, ул. Гагарина, д.4, кв.20',4,'69345678','+7 (789) 012-3456','Частый клиент'),(5,'Мария Петрова','г. Красноярск, ул. Советская, д.5, кв.25',5,'69901234','+7 (012) 345-6789','Постоянный клиент'),(6,'Андрей Сидоров','г. Нижний Новгород, ул. Ленина, д.6, кв.30',6,'69567890','+7 (234) 567-8901','Новый клиент'),(7,'Елена Петрова','г. Казань, ул. Кирова, д.7, кв.35',7,'69012345','+7 (345) 678-9012','Постоянный клиент'),(8,'Александр Иванов','г. Челябинск, ул. Пушкина, д.8, кв.40',8,'69678901','+7 (456) 789-0123','Постоянный клиент'),(9,'Валентина Сидорова','г. Омск, ул. Гагарина, д.9, кв.45',9,'69234567','+7 (567) 890-1234','Новый клиент'),(10,'Денис Иванов','г. Самара, ул. Советская, д.10, кв.50',10,'69890123','+7 (678) 901-2345','VIP клиент'),(11,'Евгений Петров','г. Уфа, ул. Ленина, д.11, кв.55',11,'69456789','+7 (789) 012-3456','Постоянный клиент'),(12,'Наталья Сидорова','г. Ростов-на-Дону, ул. Кирова, д.12, кв.60',12,'69901234','+7 (890) 123-4567','Частый клиент'),(13,'Алексей Иванов','г. Воронеж, ул. Пушкина, д.13, кв.65',13,'69567890','+7 (901) 234-5678','Постоянный клиент'),(14,'Юлия Петрова','г. Краснодар, ул. Гагарина, д.14, кв.70',14,'69234567','+7 (012) 345-6789','Постоянный клиент'),(15,'Дмитрий Сидоров','г. Ярославль, ул. Ленина, д.15, кв.75',15,'69890123','+7 (123) 456-7890','Новый клиент');
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
INSERT INTO `models` VALUES (1,'Королла',1,2018,25000),(2,'CR-V',2,2019,20000),(3,'Focus',3,2017,30000),(4,'Camaro',4,2016,18000),(5,'X5',5,2020,15000),(6,'GLC',6,2018,22000),(7,'A6',7,2019,21000),(8,'Golf',8,2016,28000),(9,'Qashqai',9,2020,17000),(10,'Tucson',10,2019,19000),(11,'Rio',11,2018,23000),(12,'CX-5',12,2017,25000),(13,'Forester',13,2019,22000),(14,'Grand Cherokee',14,2015,32000),(15,'Model S',15,2020,12000);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
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
INSERT INTO `orders` VALUES (1,10000.00,'paid',1),(2,15000.00,'paid',2),(3,20000.00,'unpaid',3),(4,25000.00,'paid',4),(5,30000.00,'unpaid',5),(6,35000.00,'paid',6),(7,40000.00,'unpaid',7),(8,45000.00,'paid',8),(9,50000.00,'unpaid',9),(10,55000.00,'paid',10),(11,60000.00,'unpaid',11),(12,65000.00,'paid',12),(13,70000.00,'unpaid',13),(14,75000.00,'paid',14),(15,80000.00,'unpaid',15);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_repair_order_status_trigger` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    DECLARE repairOrderId INT;

    SELECT RepairOrders_id INTO repairOrderId FROM Orders WHERE id = NEW.id;

    IF NEW.status = 'paid' THEN
        UPDATE repair_orders SET status = 'completed' WHERE id = repairOrderId;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `parts` VALUES (1,1,'Масло двигателя',5),(2,2,'Тормозные колодки',4),(3,3,'Воздушный фильтр',2),(4,4,'Свечи зажигания',8),(5,5,'Аккумулятор',1),(6,6,'Шина',4),(7,7,'Генератор',1),(8,8,'Радиатор',1),(9,9,'Водяной насос',1),(10,10,'Топливный насос',1),(11,11,'Датчик кислорода',2),(12,12,'Катушка зажигания',4),(13,13,'Стартер',1),(14,14,'Термостат',1),(15,15,'Рычаг управления',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairorders`
--

LOCK TABLES `repairorders` WRITE;
/*!40000 ALTER TABLE `repairorders` DISABLE KEYS */;
INSERT INTO `repairorders` VALUES (1,'new',1,'2024-04-15 09:00:00',1),(2,'new',2,'2024-04-16 10:30:00',2),(3,'new',3,'2024-04-17 11:00:00',3),(4,'new',4,'2024-04-18 13:30:00',4),(5,'new',5,'2024-04-19 15:00:00',5),(6,'new',6,'2024-04-20 09:30:00',6),(7,'new',7,'2024-04-21 10:00:00',7),(8,'new',8,'2024-04-22 12:00:00',8),(9,'new',9,'2024-04-23 14:30:00',9),(10,'new',10,'2024-04-24 16:00:00',10),(11,'new',11,'2024-04-25 09:45:00',11),(12,'new',12,'2024-04-26 11:15:00',12),(13,'new',13,'2024-04-27 13:00:00',13),(14,'new',14,'2024-04-28 15:45:00',14),(15,'new',15,'2024-04-29 09:20:00',15);
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
 1 AS `repair_order_id`,
 1 AS `repair_status`,
 1 AS `repair_date`,
 1 AS `client_name`,
 1 AS `client_contact_info`,
 1 AS `client_driver_license`,
 1 AS `client_phone_number`,
 1 AS `car_VIN`,
 1 AS `car_model`,
 1 AS `car_brand`,
 1 AS `order_amount`,
 1 AS `order_status`,
 1 AS `part_name`,
 1 AS `part_quantity`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `schedule` VALUES (1,'2024-04-15 09:00:00',1),(2,'2024-04-16 10:30:00',2),(3,'2024-04-17 11:00:00',3),(4,'2024-04-18 13:30:00',4),(5,'2024-04-19 15:00:00',5),(6,'2024-04-20 09:30:00',6),(7,'2024-04-21 10:00:00',7),(8,'2024-04-22 12:00:00',8),(9,'2024-04-23 14:30:00',9),(10,'2024-04-24 16:00:00',10),(11,'2024-04-25 09:45:00',11),(12,'2024-04-26 11:15:00',12),(13,'2024-04-27 13:00:00',13),(14,'2024-04-28 15:45:00',14),(15,'2024-04-29 09:20:00',15);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Иван Петров','Механик'),(2,'Елена Сидорова','Менеджер сервиса'),(3,'Александр Иванов','Техник'),(4,'Татьяна Смирнова','Ресепшн'),(5,'Максим Кузнецов','Менеджер по запчастям');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP FUNCTION IF EXISTS `Calculate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Calculate`(order_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_amount DECIMAL(10,2);

    -- Получаем общую сумму заказа
    SELECT SUM(amount) INTO total_amount FROM Orders WHERE RepairOrders_id = order_id;

    RETURN total_amount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertClient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertClient`(
    IN client_name VARCHAR(255),
    IN contact_info TEXT,
    IN cars_id INT,
    IN driver_license VARCHAR(50),
    IN phone_number CHAR(20),
    IN comments TEXT
)
BEGIN
    DECLARE existing_count INT;

    -- Проверяем, существует ли запись с таким идентификатором в таблице Cars
    SELECT COUNT(*) INTO existing_count FROM Cars WHERE id = cars_id;

    -- Если запись не существует, вызываем исключение
    IF existing_count = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ошибка: Автомобиль с указанным ID не найден.';
    ELSE
        -- Если запись существует, вставляем нового клиента
        INSERT INTO Clients (name, contact_info, Cars_id, driver_license, phone_number, `comments`) 
        VALUES (client_name, contact_info, cars_id, driver_license, phone_number, comments);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateCarInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCarInfo`(
IN brandName VARCHAR(45),
IN modelName VARCHAR(45),
IN vinCode CHAR(17)
)
BEGIN
-- Проверяем, существует ли бренд в базе данных
DECLARE brand_id INT;
DECLARE model_id INT;
SELECT id INTO brand_id FROM Brands WHERE name = brandName;
IF brand_id IS NULL THEN
-- Если бренда нет, вставляем новый
INSERT INTO Brands (name) VALUES (brandName);
SET brand_id := LAST_INSERT_ID();
END IF;

-- Проверяем, существует ли модель в базе данных
SELECT id INTO model_id FROM Models WHERE name = modelName AND Brands_id =
brand_id;
IF model_id IS NULL THEN
-- Если модели нет, вставляем новую
INSERT INTO Models (name, Brands_id, year, car_mileage) VALUES (modelName,
brand_id, 0, 0);
SET model_id := LAST_INSERT_ID();
END IF;
-- Вставляем новый автомобиль или обновляем существующий
INSERT INTO Cars (VIN, Models_id) VALUES (vinCode, model_id)
ON DUPLICATE KEY UPDATE Models_id = model_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateInfo`(
    IN brandName VARCHAR(45),
    IN modelName VARCHAR(45),
    IN vinCode CHAR(17)
)
BEGIN
    -- Проверяем, существует ли бренд в базе данных
    DECLARE brand_id INT;
    DECLARE model_id INT;

    SELECT id INTO brand_id FROM Brands WHERE name = brandName;
    IF brand_id IS NULL THEN
        -- Если бренда нет, вставляем новый
        INSERT INTO Brands (name) VALUES (brandName);
        SET brand_id := LAST_INSERT_ID();
    END IF;

    -- Проверяем, существует ли модель в базе данных
    SELECT id INTO model_id FROM Models WHERE name = modelName AND Brands_id = brand_id;
    IF model_id IS NULL THEN
        -- Если модели нет, вставляем новую
        INSERT INTO Models (name, Brands_id, year, car_mileage) VALUES (modelName, brand_id, 0, 0);
        SET model_id := LAST_INSERT_ID();
    END IF;

    -- Вставляем новый автомобиль или обновляем существующий
    INSERT INTO Cars (VIN, Models_id) VALUES (vinCode, model_id)
    ON DUPLICATE KEY UPDATE Models_id = model_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50001 VIEW `repairordersview` AS select `ro`.`id` AS `repair_order_id`,`ro`.`status` AS `repair_status`,`ro`.`date_time` AS `repair_date`,`c`.`name` AS `client_name`,`c`.`contact_info` AS `client_contact_info`,`c`.`driver_license` AS `client_driver_license`,`c`.`phone_number` AS `client_phone_number`,`ca`.`VIN` AS `car_VIN`,`m`.`name` AS `car_model`,`b`.`name` AS `car_brand`,`o`.`amount` AS `order_amount`,`o`.`status` AS `order_status`,`p`.`name` AS `part_name`,`p`.`quantity` AS `part_quantity` from ((((((`repairorders` `ro` join `clients` `c` on((`ro`.`Cars_id` = `c`.`Cars_id`))) join `cars` `ca` on((`ro`.`Cars_id` = `ca`.`id`))) join `models` `m` on((`ca`.`Models_id` = `m`.`id`))) join `brands` `b` on((`m`.`Brands_id` = `b`.`id`))) join `orders` `o` on((`ro`.`id` = `o`.`RepairOrders_id`))) join `parts` `p` on((`ro`.`id` = `p`.`RepairOrders_id`))) */;
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

-- Dump completed on 2024-05-03 12:13:15
