-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: kinhdoanh
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenchucvu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (1,'Admin'),(2,'Nhân viên'),(3,'Khách hàng');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctddh`
--

DROP TABLE IF EXISTS `ctddh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctddh` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `danhgia` longtext,
  `diem` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `tongtien` int DEFAULT NULL,
  `maddh` bigint DEFAULT NULL,
  `sanpham` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsatyalm5q2x0cjbu5sym2sdq1` (`maddh`),
  KEY `FKed6n2lqsbtxppbldx6fb3nw74` (`sanpham`),
  CONSTRAINT `FKed6n2lqsbtxppbldx6fb3nw74` FOREIGN KEY (`sanpham`) REFERENCES `sanpham` (`id`),
  CONSTRAINT `FKsatyalm5q2x0cjbu5sym2sdq1` FOREIGN KEY (`maddh`) REFERENCES `dondathang` (`maddh`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctddh`
--

LOCK TABLES `ctddh` WRITE;
/*!40000 ALTER TABLE `ctddh` DISABLE KEYS */;
INSERT INTO `ctddh` VALUES (1,'binh thuong',3,1,200000,8,3),(2,NULL,0,1,10000,9,2),(3,NULL,0,1,200000,9,3),(4,NULL,0,1,200000,9,1),(5,NULL,0,1,10000,10,2),(6,NULL,0,1,200000,10,3),(7,NULL,0,1,200000,10,1),(8,NULL,0,1,200000,11,1);
/*!40000 ALTER TABLE `ctddh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctpn`
--

DROP TABLE IF EXISTS `ctpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctpn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dongia` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `mapn` bigint DEFAULT NULL,
  `sanpham` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKki3d22dbnowolcgqtxvgd62jm` (`mapn`),
  KEY `FK7lohmspvlm93o2i6cr6ehox14` (`sanpham`),
  CONSTRAINT `FK7lohmspvlm93o2i6cr6ehox14` FOREIGN KEY (`sanpham`) REFERENCES `sanpham` (`id`),
  CONSTRAINT `FKki3d22dbnowolcgqtxvgd62jm` FOREIGN KEY (`mapn`) REFERENCES `phieunhap` (`mapn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpn`
--

LOCK TABLES `ctpn` WRITE;
/*!40000 ALTER TABLE `ctpn` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctpn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dondathang` (
  `maddh` bigint NOT NULL AUTO_INCREMENT,
  `ngaythuchien` datetime DEFAULT NULL,
  `tinhtrang` int DEFAULT NULL,
  `makh` bigint DEFAULT NULL,
  `nvxacnhan` bigint DEFAULT NULL,
  PRIMARY KEY (`maddh`),
  KEY `FK7mfty2m79o98uk1b6vmht5pn8` (`makh`),
  KEY `FKqu0hxpglbow8gvmc6rco62crm` (`nvxacnhan`),
  CONSTRAINT `FK7mfty2m79o98uk1b6vmht5pn8` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  CONSTRAINT `FKqu0hxpglbow8gvmc6rco62crm` FOREIGN KEY (`nvxacnhan`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondathang`
--

LOCK TABLES `dondathang` WRITE;
/*!40000 ALTER TABLE `dondathang` DISABLE KEYS */;
INSERT INTO `dondathang` VALUES (1,'2024-05-29 10:34:35',-1,1,NULL),(2,'2024-05-29 10:34:38',-1,1,NULL),(3,'2024-05-29 10:39:23',-1,1,NULL),(4,'2024-05-29 10:39:26',-1,1,NULL),(5,'2024-05-29 10:39:29',-1,1,NULL),(6,'2024-05-29 10:40:48',-1,1,NULL),(7,'2024-05-29 10:44:24',-1,1,NULL),(8,'2024-05-29 10:45:59',4,1,2),(9,'2024-05-29 11:34:05',4,1,2),(10,'2024-05-29 11:36:17',0,1,NULL),(11,'2024-05-29 11:36:39',1,1,2);
/*!40000 ALTER TABLE `dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `soluong` int DEFAULT NULL,
  `makh` bigint DEFAULT NULL,
  `sanpham` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3a5g8iyvgpwxy37062hwv5339` (`makh`),
  KEY `FKh66e48rmycmnjfbsmfo3ir9ce` (`sanpham`),
  CONSTRAINT `FK3a5g8iyvgpwxy37062hwv5339` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  CONSTRAINT `FKh66e48rmycmnjfbsmfo3ir9ce` FOREIGN KEY (`sanpham`) REFERENCES `sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `makh` bigint NOT NULL AUTO_INCREMENT,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gioitinh` bit(1) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `maxacthuc` varchar(255) DEFAULT NULL,
  `ngaydangky` datetime DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'66 thu q9','kh@gmail.com',_binary '','thuan',NULL,'','2001-01-01 00:00:00','2001-01-01','123456','01234567899',1,'kh');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisp`
--

LOCK TABLES `loaisp` WRITE;
/*!40000 ALTER TABLE `loaisp` DISABLE KEYS */;
INSERT INTO `loaisp` VALUES (1,'Arduino'),(2,'Cảm biến'),(3,'Linh kiện điện tử 1'),(4,'RASBPERY PI');
/*!40000 ALTER TABLE `loaisp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `manv` bigint NOT NULL AUTO_INCREMENT,
  `cmnd` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gioitinh` bit(1) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `luong` int DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `ngayvaolam` date DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'09123456789','11 NGUYỄN ĐÌNH CHIỂU','nv@gmail.com',_binary '','thuan','',10000000,'2001-01-01','2001-01-01','123456','0123456789',1,'nv01'),(2,'09123456789','11 NGUYỄN ĐÌNH CHIỂU','nv1@gmail.com',_binary '','phuong',NULL,10000000,'2001-01-01','2001-01-01','123456','0123456789',1,'nv02');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien_chucvu`
--

DROP TABLE IF EXISTS `nhanvien_chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien_chucvu` (
  `manv` bigint NOT NULL,
  `id` bigint NOT NULL,
  KEY `FKg6tteauf5w8dqa32dyxusminy` (`id`),
  KEY `FKa5xmthd9pd8qn9w5l45nyn74h` (`manv`),
  CONSTRAINT `FKa5xmthd9pd8qn9w5l45nyn74h` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  CONSTRAINT `FKg6tteauf5w8dqa32dyxusminy` FOREIGN KEY (`id`) REFERENCES `chucvu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien_chucvu`
--

LOCK TABLES `nhanvien_chucvu` WRITE;
/*!40000 ALTER TABLE `nhanvien_chucvu` DISABLE KEYS */;
INSERT INTO `nhanvien_chucvu` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `nhanvien_chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `mapn` bigint NOT NULL AUTO_INCREMENT,
  `nhacc` varchar(255) DEFAULT NULL,
  `ngay` datetime DEFAULT NULL,
  `tinhtrang` int DEFAULT NULL,
  `manv` bigint DEFAULT NULL,
  PRIMARY KEY (`mapn`),
  KEY `FKkedc0d3kfjdphsqb31rkvjebw` (`manv`),
  CONSTRAINT `FKkedc0d3kfjdphsqb31rkvjebw` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `donvitinh` varchar(255) DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `mota` longtext,
  `soluongton` int DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  `loai` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp0v5lxmnu2m8aer5y79jn1xr3` (`loai`),
  CONSTRAINT `FKp0v5lxmnu2m8aer5y79jn1xr3` FOREIGN KEY (`loai`) REFERENCES `loaisp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Cái',200000,'arduino-uno-r3-dip.webp','san pham chua co mo ta',200,'Arduino Uno',1,1),(2,'Cái',10000,'cam-bien-nhiet-do-do-am-am2305-jpeg.webp','san pham chua co mo ta',1399,'CB Nhiệt độ KJ45',1,2),(3,'Cái',200000,'arduino-nano.webp','san pham chua co mo ta',198,'Arduino MICRO',1,1),(4,'cái',120000,'nhom-tan-nhiet-jpeg.webp','san pham chua co mo ta',0,'ádfff',1,2),(5,'qwer',200000,'module-nguon-12v-300ma-jpeg.webp','san pham chua co mo ta',0,'ewgw',1,3),(6,'10 cái',30000,'cam-bien-cuong-do-anh-sang-gy-49.webp','san pham chua co mo ta',0,'cảm biến ánh sáng',1,2),(7,'cái',5000,'cam-bien-tiem-can-njk-5002c.webp','san pham chua co mo ta',0,'cảm biên bụi',1,2),(8,'Cái',80000,'khop-noi-banh-xe-jpeg.webp','san pham chua co mo ta',0,'Khung xe',1,3),(9,'Cái',800000,'raspberry-pi-4-8g.webp','san pham chua co mo ta',0,'Rasbpery Pi 1',1,4),(10,'Cái',4000,'xy-wt01.webp','san pham chua co mo ta',0,'gi do',1,2);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 16:10:34
