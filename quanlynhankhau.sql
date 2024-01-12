-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlynhankhau
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `phan_anh`
--

DROP TABLE IF EXISTS `phan_anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan_anh` (
  `population_id` bigint NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(255) NOT NULL,
  `noi_dung_phan_anh` varchar(255) NOT NULL,
  `trang_thai` varchar(255) NOT NULL,
  PRIMARY KEY (`population_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_anh`
--

LOCK TABLES `phan_anh` WRITE;
/*!40000 ALTER TABLE `phan_anh` DISABLE KEYS */;
INSERT INTO `phan_anh` VALUES (1,'Phạm Đức Công','cdacac','Chưa giải quyết'),(2,'Vũ Phát Đạt','âccacac','Chưa giải quyết');
/*!40000 ALTER TABLE `phan_anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `populations`
--

DROP TABLE IF EXISTS `populations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `populations` (
  `population_id` bigint NOT NULL AUTO_INCREMENT,
  `alive` bit(1) NOT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `date_of_issue` varchar(255) DEFAULT NULL,
  `dead` bit(1) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image` mediumblob,
  `image_name` varchar(255) DEFAULT NULL,
  `is_choosen` bit(1) NOT NULL,
  `is_chosen` bit(1) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `place_of_issue` varchar(255) DEFAULT NULL,
  `population_code` varchar(12) DEFAULT NULL,
  `population_name` varchar(255) DEFAULT NULL,
  `population_nick_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  `residence_booklet_id` bigint DEFAULT NULL,
  PRIMARY KEY (`population_id`),
  KEY `FKpodcju3qjsv2gtnpxo0sq29s2` (`residence_booklet_id`),
  CONSTRAINT `FKpodcju3qjsv2gtnpxo0sq29s2` FOREIGN KEY (`residence_booklet_id`) REFERENCES `residence_booklet` (`residence_booklet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `populations`
--

LOCK TABLES `populations` WRITE;
/*!40000 ALTER TABLE `populations` DISABLE KEYS */;
INSERT INTO `populations` VALUES (1,_binary '','Tỉnh Nam Định-Huyện Giao Thủy-Xã Hoành Sơn','2024/01/01','2024-01-11',_binary '\0','2024-01-10','Kinh','Nam',_binary 'img_avatar1.png','img_avatar1.png',_binary '\0',_binary '\0','Học sinh','Cục cảnh sát','123456789115','Pham duc cong',NULL,'Chủ hộ','Không','Hà  Nội',1),(2,_binary '','Tỉnh Nam Định-Huyện Giao Thủy-Xã Hoành Sơn','2024/01/01','2024-01-01',_binary '\0','2024-01-11','Kinh','Nam',_binary 'img_avatar1.png','img_avatar1.png',_binary '\0',_binary '\0','Học sinh','Cục cảnh sát','123456789113','Vũ Phát Đạt',NULL,'Chủ hộ','Không','Hà  Nội',2),(3,_binary '','Xã Giao Tiến-Huyện Giao Thủy-Tính Nam Định','2024/01/01','2024-01-01',_binary '\0','2024-01-11','Kinh','Nam',_binary 'img_avatar1.png','img_avatar1.png',_binary '\0',_binary '\0','Học sinh','Cục cảnh sát','123456789118','Vũ Thành Đạt',NULL,'Chủ hộ','Không','Hà  Nội',3),(4,_binary '','Xã Giao Tiến - Huyện Giao Thủy - Tính Nam Định','2024/01/01','2024-01-01',_binary '\0','2024-01-18','Kinh','Nam',_binary 'img_avatar1.png','img_avatar1.png',_binary '\0',_binary '\0','Học sinh','Cục cảnh sát','123456789117','Đào Công Đoàn',NULL,'Chủ hộ','Không','Hà  Nội',4),(5,_binary '','Tỉnh Hải Dương - Huyện Cẩm Giàng - Xã Cao An','2024-01-01','2024-01-27',_binary '\0','2024-01-25','Kinh','Nam',_binary 'z4911438056169_9b7d9e3cf87d08edd1cb81db6e9861c4.jpg','z4911438056169_9b7d9e3cf87d08edd1cb81db6e9861c4.jpg',_binary '\0',_binary '\0','Sinh viên','Cục cảnh sát','123456789119','Đào Công Đoàn','Không','Con','Không','Hà  Nội',3),(6,_binary '','Tỉnh Hải Dương - Huyện Cẩm Giàng - Xã Cao An','2024-01-04','2024-01-04',_binary '\0','2024-01-19','Kinh','Nam',_binary 'img_avatar1.png','img_avatar1.png',_binary '\0',_binary '\0','Sinh viên','Cục cảnh sát','123456789120','Đào Công Đoàn','Không','Ông','Không','Hà  Nội',2);
/*!40000 ALTER TABLE `populations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_booklet`
--

DROP TABLE IF EXISTS `residence_booklet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence_booklet` (
  `residence_booklet_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `booklet_area` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `move_date` varchar(255) DEFAULT NULL,
  `move_reason` varchar(255) DEFAULT NULL,
  `passport_code` varchar(255) DEFAULT NULL,
  `residence_booklet_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`residence_booklet_id`),
  UNIQUE KEY `UK9ink1x3sahr66cfct6vnpoluh` (`residence_booklet_code`,`passport_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_booklet`
--

LOCK TABLES `residence_booklet` WRITE;
/*!40000 ALTER TABLE `residence_booklet` DISABLE KEYS */;
INSERT INTO `residence_booklet` VALUES (1,'Tỉnh Nam Định-Huyện Giao Thủy-Xã Hoành Sơn','KV1','2024/01/01','2024/01/05','Di chuyển làm ăn',NULL,'HK01'),(2,'Tỉnh Nam Định-Huyện Giao Thủy-Xã Hoành Sơn','KV2','2024/01/01',NULL,NULL,NULL,'HK02'),(3,'Xã Giao Tiến-Huyện Giao Thủy-Tính Nam Định','KV2','2024/01/01',NULL,NULL,NULL,'HK03'),(4,'Xã Giao Tiến - Huyện Giao Thủy - Tính Nam Định','KV1','2024/01/01',NULL,NULL,NULL,'HK04');
/*!40000 ALTER TABLE `residence_booklet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporarily_absent`
--

DROP TABLE IF EXISTS `temporarily_absent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporarily_absent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_address` varchar(255) NOT NULL,
  `document_code` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `is_new_absent` bit(1) NOT NULL,
  `population_id` bigint DEFAULT NULL,
  `population_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r3lusv03btrd73l57y37u1ka4` (`document_code`),
  KEY `FKi5537gp2hhwss40dsl1q1abfp` (`population_id`),
  CONSTRAINT `FKi5537gp2hhwss40dsl1q1abfp` FOREIGN KEY (`population_id`) REFERENCES `populations` (`population_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporarily_absent`
--

LOCK TABLES `temporarily_absent` WRITE;
/*!40000 ALTER TABLE `temporarily_absent` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporarily_absent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporarily_staying`
--

DROP TABLE IF EXISTS `temporarily_staying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporarily_staying` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `document_code` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `is_new_stay` bit(1) NOT NULL,
  `number_phone` varchar(255) DEFAULT NULL,
  `population_id` bigint DEFAULT NULL,
  `population_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `absent_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_likrveytxutml0ilgbpc3an24` (`document_code`),
  KEY `FKlpup8mvhx9eqyx374ent5uutp` (`population_id`),
  CONSTRAINT `FKlpup8mvhx9eqyx374ent5uutp` FOREIGN KEY (`population_id`) REFERENCES `populations` (`population_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporarily_staying`
--

LOCK TABLES `temporarily_staying` WRITE;
/*!40000 ALTER TABLE `temporarily_staying` DISABLE KEYS */;
INSERT INTO `temporarily_staying` VALUES (1,'Tỉnh Hải Dương - Huyện Cẩm Giàng - Xã Cao An','2024-01-25','472984','2024-01-25',_binary '\0','0111111122',5,'Đào Công Đoàn','hrthr','Hà Nội'),(2,'Tỉnh Hải Dương - Huyện Cẩm Giàng - Xã Cao An','2024-01-25','744629','2024-01-24',_binary '','1111111111',5,'Đào Công Đoàn','hwhwh','htwhw');
/*!40000 ALTER TABLE `temporarily_staying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12  8:50:59
