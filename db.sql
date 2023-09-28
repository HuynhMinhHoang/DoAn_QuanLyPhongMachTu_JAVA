-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `chi_tiet_dv`
--

DROP TABLE IF EXISTS `chi_tiet_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_dv` (
  `id_chitietDV` int NOT NULL AUTO_INCREMENT,
  `id_pdk` int DEFAULT NULL,
  `id_dv` int DEFAULT NULL,
  PRIMARY KEY (`id_chitietDV`),
  KEY `id_DV_idx` (`id_dv`),
  KEY `id_pdk_idx` (`id_pdk`),
  CONSTRAINT `id_DV` FOREIGN KEY (`id_dv`) REFERENCES `dich_vu` (`id_dv`),
  CONSTRAINT `id_pdk` FOREIGN KEY (`id_pdk`) REFERENCES `phieu_dang_ky` (`id_phieudk`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_dv`
--

LOCK TABLES `chi_tiet_dv` WRITE;
/*!40000 ALTER TABLE `chi_tiet_dv` DISABLE KEYS */;
INSERT INTO `chi_tiet_dv` VALUES (90,193,7),(91,194,2),(92,194,1),(93,196,7),(94,196,3),(95,196,11),(96,201,2),(97,201,7),(101,214,2),(102,214,4),(103,214,7),(104,206,2);
/*!40000 ALTER TABLE `chi_tiet_dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_thoi_gian_truc`
--

DROP TABLE IF EXISTS `chi_tiet_thoi_gian_truc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_thoi_gian_truc` (
  `id_chi_tiet_tg_truc` int NOT NULL AUTO_INCREMENT,
  `id_tk` int DEFAULT NULL,
  `id_tg_truc` int DEFAULT NULL,
  `ngay_dky_truc` date DEFAULT NULL,
  `trang_thai_truc` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_chi_tiet_tg_truc`),
  KEY `id_tg_truc_idx` (`id_tg_truc`),
  KEY `taikhoan_idx` (`id_tk`),
  CONSTRAINT `id_tg_truc` FOREIGN KEY (`id_tg_truc`) REFERENCES `thoi_gian_truc` (`id_tgTruc`),
  CONSTRAINT `taikhoan` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_thoi_gian_truc`
--

LOCK TABLES `chi_tiet_thoi_gian_truc` WRITE;
/*!40000 ALTER TABLE `chi_tiet_thoi_gian_truc` DISABLE KEYS */;
INSERT INTO `chi_tiet_thoi_gian_truc` VALUES (229,214,3,'2023-09-27',1),(230,214,3,'2023-10-03',0),(231,214,3,'2023-10-04',0),(232,215,3,'2023-10-02',0),(233,215,3,'2023-10-03',0),(234,215,3,'2023-10-04',0);
/*!40000 ALTER TABLE `chi_tiet_thoi_gian_truc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_thuoc`
--

DROP TABLE IF EXISTS `chi_tiet_thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_thuoc` (
  `id_chitiet_thuoc` int NOT NULL AUTO_INCREMENT,
  `id_thuoc` int DEFAULT NULL,
  `id_phieukham` int DEFAULT NULL,
  `so_luong_sd` int DEFAULT NULL,
  `hdsd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_chitiet_thuoc`),
  KEY `ChiTietThuoc_Thuoc_idx` (`id_thuoc`),
  KEY `ChiTietThuoc_PhieuKhamBenh_idx` (`id_phieukham`),
  CONSTRAINT `ChiTietThuoc_PhieuKhamBenh` FOREIGN KEY (`id_phieukham`) REFERENCES `phieu_kham_benh` (`id_phieukham`),
  CONSTRAINT `ChiTietThuoc_Thuoc` FOREIGN KEY (`id_thuoc`) REFERENCES `thuoc` (`id_thuoc`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_thuoc`
--

LOCK TABLES `chi_tiet_thuoc` WRITE;
/*!40000 ALTER TABLE `chi_tiet_thuoc` DISABLE KEYS */;
INSERT INTO `chi_tiet_thuoc` VALUES (134,36,471,5,'Mỗi ngày 3 viên '),(135,32,472,5,'Ngày 3 lần '),(136,47,472,2,'Mõi ngày 1 viên '),(138,41,473,2,'1 ngay 1 vien'),(139,36,473,5,'2 ngay 1 vien'),(140,31,474,5,'1 ngay 1 vien'),(141,48,474,10,'1 ngay 1 vien'),(142,34,475,5,'1 ngay 1 vien'),(143,49,475,5,'gfgfg'),(144,37,471,3,'fff'),(145,32,477,5,'1 ngay 1 vien'),(146,41,477,2,'fff'),(147,1,478,5,'2 ngay 1 vien'),(148,47,478,2,'1 ngay 1 vien'),(149,31,479,4,'1 ngay 1 vien'),(151,47,480,4,'1 ngay 1 vien'),(152,49,480,5,'2 ngay 1 vien'),(153,35,481,3,'1 ngay 1 vien'),(154,48,481,5,'1 ngay 1 vien');
/*!40000 ALTER TABLE `chi_tiet_thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_gia_bs`
--

DROP TABLE IF EXISTS `danh_gia_bs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_gia_bs` (
  `id_danh_gia_bs` int NOT NULL AUTO_INCREMENT,
  `tk_danhgia` int DEFAULT NULL,
  `bs_danhgia` int DEFAULT NULL,
  `luot_danhgia` int DEFAULT NULL,
  `noidung_danhgia` varchar(500) DEFAULT NULL,
  `hd_danhgia` int DEFAULT NULL,
  PRIMARY KEY (`id_danh_gia_bs`),
  KEY `id_bs_idx` (`bs_danhgia`),
  KEY `id_bn_danhgia_idx` (`tk_danhgia`),
  KEY `id_hd_danhgia_idx` (`hd_danhgia`),
  CONSTRAINT `id_bn_danhgia` FOREIGN KEY (`tk_danhgia`) REFERENCES `tai_khoan` (`id_tk`),
  CONSTRAINT `id_bs_danhgia` FOREIGN KEY (`bs_danhgia`) REFERENCES `tai_khoan` (`id_tk`),
  CONSTRAINT `id_hd_danhgia` FOREIGN KEY (`hd_danhgia`) REFERENCES `hoa_don` (`id_hoadon`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia_bs`
--

LOCK TABLES `danh_gia_bs` WRITE;
/*!40000 ALTER TABLE `danh_gia_bs` DISABLE KEYS */;
INSERT INTO `danh_gia_bs` VALUES (11,220,215,3,'Äg',43),(16,217,215,1,'ngu',41),(17,217,215,4,'dc',42),(18,216,214,4,'kha',39),(19,216,215,2,'ngu',40);
/*!40000 ALTER TABLE `danh_gia_bs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_gia_dv`
--

DROP TABLE IF EXISTS `danh_gia_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_gia_dv` (
  `id_danh_gia_dv` int NOT NULL AUTO_INCREMENT,
  `tk_danhgia` int DEFAULT NULL,
  `dv_danhgia` int DEFAULT NULL,
  `luot_danhgia` int DEFAULT NULL,
  `noidung_danhgia` varchar(500) DEFAULT NULL,
  `hd_danhgia` int DEFAULT NULL,
  PRIMARY KEY (`id_danh_gia_dv`),
  KEY `id_dv_danhgia_idx` (`dv_danhgia`),
  KEY `id_tk_danhgia_idx` (`tk_danhgia`),
  KEY `id_hd_danhgia_idx` (`hd_danhgia`),
  CONSTRAINT `id_dv_danhgia` FOREIGN KEY (`dv_danhgia`) REFERENCES `dich_vu` (`id_dv`),
  CONSTRAINT `id_hd_danhgiadv` FOREIGN KEY (`hd_danhgia`) REFERENCES `hoa_don` (`id_hoadon`),
  CONSTRAINT `id_tk_danhgia` FOREIGN KEY (`tk_danhgia`) REFERENCES `tai_khoan` (`id_tk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia_dv`
--

LOCK TABLES `danh_gia_dv` WRITE;
/*!40000 ALTER TABLE `danh_gia_dv` DISABLE KEYS */;
/*!40000 ALTER TABLE `danh_gia_dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu` (
  `id_dv` int NOT NULL AUTO_INCREMENT,
  `ten_dv` varchar(500) DEFAULT NULL,
  `gia_dv` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_dv`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu`
--

LOCK TABLES `dich_vu` WRITE;
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
INSERT INTO `dich_vu` VALUES (1,'Xét Nghiệm',2000000),(2,'Khám Tổng Quát',1000000),(3,'Răng Hàm Mặt',5000000),(4,'Xương Khớp',3000000),(7,'Tim',1500000),(10,'Khám phụ khoa	',1500000),(11,'	Khám Tai mũi họng',10000);
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donvi_thuoc`
--

DROP TABLE IF EXISTS `donvi_thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donvi_thuoc` (
  `id_donVi` int NOT NULL AUTO_INCREMENT,
  `ten_don_vi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_donVi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donvi_thuoc`
--

LOCK TABLES `donvi_thuoc` WRITE;
/*!40000 ALTER TABLE `donvi_thuoc` DISABLE KEYS */;
INSERT INTO `donvi_thuoc` VALUES (1,'Viên'),(2,'Vĩ'),(3,'Chai'),(4,'Lọ'),(5,'Tuýp');
/*!40000 ALTER TABLE `donvi_thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoa_don` (
  `id_hoadon` int NOT NULL AUTO_INCREMENT,
  `ngay_thanh_toan` datetime DEFAULT NULL,
  `tien_thuoc` decimal(10,0) DEFAULT NULL,
  `tien_dv` decimal(10,0) DEFAULT NULL,
  `tien_kham` int DEFAULT NULL,
  `id_phieudky` int DEFAULT NULL,
  `loai_thanh_toan` int DEFAULT NULL,
  PRIMARY KEY (`id_hoadon`),
  KEY `HoaDon_PhieuDKy_idx` (`id_phieudky`),
  KEY `tien_kham_idx` (`tien_kham`),
  KEY `id_loaitt_idx` (`loai_thanh_toan`),
  CONSTRAINT `HoaDon_PhieuDKy` FOREIGN KEY (`id_phieudky`) REFERENCES `phieu_dang_ky` (`id_phieudk`),
  CONSTRAINT `id_loaitt` FOREIGN KEY (`loai_thanh_toan`) REFERENCES `loai_thanh_toan` (`id_loai_thanh_toan`),
  CONSTRAINT `tien_kham` FOREIGN KEY (`tien_kham`) REFERENCES `tien_kham` (`id_tienKham`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don`
--

LOCK TABLES `hoa_don` WRITE;
/*!40000 ALTER TABLE `hoa_don` DISABLE KEYS */;
INSERT INTO `hoa_don` VALUES (39,'2023-02-10 20:41:03',500000,1500000,1,193,2),(40,'2023-02-10 20:41:07',185000,3000000,1,194,1),(41,'2023-08-10 17:10:00',200000,150000,1,195,2),(42,'2023-05-11 09:21:09',620000,6510000,1,196,1),(43,'2023-09-11 14:20:44',750000,2500000,1,201,2),(45,'2023-09-28 11:02:40',650000,1500000,1,193,1),(46,NULL,0,0,1,206,NULL),(47,NULL,0,0,1,206,NULL),(48,NULL,370000,5500000,1,214,NULL);
/*!40000 ALTER TABLE `hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_thanh_toan`
--

DROP TABLE IF EXISTS `loai_thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_thanh_toan` (
  `id_loai_thanh_toan` int NOT NULL AUTO_INCREMENT,
  `ten_loai_thanh_toan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_loai_thanh_toan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_thanh_toan`
--

LOCK TABLES `loai_thanh_toan` WRITE;
/*!40000 ALTER TABLE `loai_thanh_toan` DISABLE KEYS */;
INSERT INTO `loai_thanh_toan` VALUES (1,'Tiền mặt'),(2,'Momo');
/*!40000 ALTER TABLE `loai_thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_thuoc`
--

DROP TABLE IF EXISTS `loai_thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_thuoc` (
  `idloai_thuoc` int NOT NULL AUTO_INCREMENT,
  `ten_loai_thuoc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idloai_thuoc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_thuoc`
--

LOCK TABLES `loai_thuoc` WRITE;
/*!40000 ALTER TABLE `loai_thuoc` DISABLE KEYS */;
INSERT INTO `loai_thuoc` VALUES (2,' Giảm đau'),(3,' Dị ứng'),(4,'Tim mạch'),(5,'Da liễu'),(6,'Điều trị mắt'),(7,'Tai, mũi, họng');
/*!40000 ALTER TABLE `loai_thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_dang_ky`
--

DROP TABLE IF EXISTS `phieu_dang_ky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_dang_ky` (
  `id_phieudk` int NOT NULL AUTO_INCREMENT,
  `id_bs` int DEFAULT NULL,
  `id_yt` int DEFAULT NULL,
  `id_bn` int DEFAULT NULL,
  `trangThai_dky` tinyint DEFAULT NULL,
  `chon_ngaykham` date DEFAULT NULL,
  `thoi_gian_taophieu` datetime DEFAULT NULL,
  `thoi_gian_kham` varchar(45) DEFAULT NULL,
  `id_pk` int DEFAULT NULL,
  PRIMARY KEY (`id_phieudk`),
  KEY `id_pk_idx` (`id_pk`),
  KEY `id_bs_idx` (`id_bs`),
  KEY `id_yt_idx` (`id_yt`),
  KEY `id_bn_idx` (`id_bn`),
  CONSTRAINT `id_bn` FOREIGN KEY (`id_bn`) REFERENCES `tai_khoan` (`id_tk`),
  CONSTRAINT `id_bs` FOREIGN KEY (`id_bs`) REFERENCES `tai_khoan` (`id_tk`) ON DELETE SET NULL,
  CONSTRAINT `id_pk` FOREIGN KEY (`id_pk`) REFERENCES `phieu_kham_benh` (`id_phieukham`),
  CONSTRAINT `id_yt` FOREIGN KEY (`id_yt`) REFERENCES `tai_khoan` (`id_tk`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_dang_ky`
--

LOCK TABLES `phieu_dang_ky` WRITE;
/*!40000 ALTER TABLE `phieu_dang_ky` DISABLE KEYS */;
INSERT INTO `phieu_dang_ky` VALUES (193,214,213,216,1,'2023-10-10','2023-09-10 19:52:17','Trưa',471),(194,215,213,216,1,'2023-10-07','2023-09-07 20:21:29','Chiều',472),(195,215,218,217,1,'2023-09-06','2023-09-06 15:20:00','Chiều ',1),(196,215,213,217,1,'2023-09-11','2023-09-08 14:15:00','Trưa',473),(200,NULL,NULL,221,0,'2023-10-08','2023-09-11 09:06:31','Trưa',NULL),(201,215,213,220,1,'2023-09-11','2023-09-11 10:49:08','Trưa',478),(202,NULL,NULL,221,0,'2023-08-12','2023-09-11 10:49:24','Chiều',NULL),(203,NULL,NULL,220,0,'2023-08-09','2023-09-11 13:48:22','Trưa',NULL),(204,NULL,NULL,221,0,'2023-09-08','2023-09-11 13:49:18','Chiều',NULL),(205,NULL,NULL,220,0,'2023-09-22','2023-09-11 14:00:28','Trưa',NULL),(206,214,213,226,1,'2023-02-11','2023-09-11 14:14:42','Chiều',479),(208,NULL,NULL,217,0,'2023-09-22','2023-09-20 03:47:32','Trưa',NULL),(209,NULL,NULL,217,0,'2023-09-21','2023-09-20 03:47:45','Sáng',NULL),(210,NULL,NULL,217,0,'2023-09-23','2023-09-20 03:48:01','Chiều',NULL),(211,NULL,NULL,217,0,'2023-09-20','2023-09-20 03:55:13','Trưa',NULL),(212,NULL,NULL,217,0,'2023-09-20','2023-09-20 04:05:29','Sáng',NULL),(213,NULL,NULL,217,0,'2023-09-14','2023-09-20 04:21:37','Chiều',NULL),(214,215,213,217,1,'2023-01-21','2023-09-20 04:22:42','Chiều',480),(218,NULL,NULL,220,0,'2023-09-23','2023-09-20 14:36:13','Sáng',NULL),(219,NULL,NULL,220,0,'2023-09-14','2023-09-24 20:55:29','Sáng',NULL),(220,NULL,NULL,232,0,'2023-09-27','2023-09-24 21:38:05','Trưa',NULL),(221,NULL,NULL,220,0,'2023-10-05','2023-09-24 21:38:30','Chiều',NULL),(222,214,213,232,1,'2023-10-02','2023-09-24 21:39:22','Chiều',NULL);
/*!40000 ALTER TABLE `phieu_dang_ky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_kham_benh`
--

DROP TABLE IF EXISTS `phieu_kham_benh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_kham_benh` (
  `id_phieukham` int NOT NULL AUTO_INCREMENT,
  `trieu_chung` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ket_luan` varchar(50) DEFAULT NULL,
  `ngay_kham_benh` date DEFAULT NULL,
  PRIMARY KEY (`id_phieukham`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_kham_benh`
--

LOCK TABLES `phieu_kham_benh` WRITE;
/*!40000 ALTER TABLE `phieu_kham_benh` DISABLE KEYS */;
INSERT INTO `phieu_kham_benh` VALUES (1,'ho','cảm cúm','2023-09-06'),(2,'cảm','cảm nắng','2023-09-05'),(471,'Đau tim ','Đau tim nhẹ ','2023-09-10'),(472,'Đau đầu','Đau nữa đầu ','2023-09-10'),(473,'ho','cảm','2023-09-11'),(474,'ho','bá»nh','2023-09-11'),(475,'ho','bá»nh','2023-09-12'),(476,'ho','bá»nh','2023-09-21'),(477,'nhức đầu','đau dạ dày','2023-09-21'),(478,'ho','sốt','2023-09-21'),(479,'ho','bá»nh','2023-09-21'),(480,'ho','đau dạ dày','2023-09-21'),(481,'lalalaalal','lÆ°lleleleel','2023-09-27');
/*!40000 ALTER TABLE `phieu_kham_benh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan` (
  `id_tk` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(500) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(500) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `tai_khoan` varchar(45) DEFAULT NULL,
  `mat_khau` varchar(1000) DEFAULT NULL,
  `avt` varchar(1000) DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  PRIMARY KEY (`id_tk`),
  UNIQUE KEY `tai_khoan_UNIQUE` (`tai_khoan`),
  KEY `id_role_idx` (`id_role`),
  CONSTRAINT `id_role` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
INSERT INTO `tai_khoan` VALUES (120,'admin','1993-01-01','Nam','Hồ Chí Minh','hmh20172018@gmail.com','0336334143','admin','$2a$10$4rVL8GVgPPhSicloXCSrE.eYsDSiUWnlIMYf6bBnsQrWk9Cl8DEea','https://res.cloudinary.com/diyeuzxqt/image/upload/v1691683103/kneho0d5yklvcdk3noko.png',1),(213,'Phan Thi Yen Vi','2002-07-18','Nữ','Go Vap','2051052046hoang@ou.edu.vn','0123456789','yta','$2a$10$yrCkeB2xxvteZ7HNu4AC8engM5X4rZv82KGoLVz5foWcwtv/HIKfS','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397248/lc4mz7u6ywsl5pvurws7.png',3),(214,'Nguyen Thi Thanh','2002-06-04','Nữ','Hoc Mon ','2051052046hoang@ou.edu.vn','0123456789','bacsi','$2a$10$59GratTIYC/yUd9Q9GhUW.u4qWTNqnWrUnKGAeBnDpxNA1dqQbzgS','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694348482/t0bam9dftxhwti6s77he.png',2),(215,'Nguyen Thanh Thuyen','2002-05-22','Nam','Go Vap','2051052083my@ou.edu.vn','0123456789','bacsi1','$2a$10$txEV.ldcaL3RmYw7dGrszO04hEN2xIVfz0X5SIQQHwX0c6zQlw.vO','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694350003/p6dalslbq7mazzugnfzj.png',2),(216,'Nguyễn Toàn Mỹ ','2002-11-02','Nữ','Go Vap','2051052083my@ou.edu.vn','0123456789','benhnhan','$2a$10$se1GfAQxFCqxqMYLLDUEtOSCE1VNUtz4I/DDk2974soNp6D/8eXhC','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397258/ocj3x2afomwkwwvo49pd.png',4),(217,'Nguyễn Thị Ngọc Yến','2002-06-05','Nữ','Gia Lai','2051052083my@ou.edu.vn','0123456789','benhnhan1','$2a$10$AqMCD440IOR1Z.1vYHXj2O9qjY.PS6.2WHLwoYW8MWCkf1HgkLt0W','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397267/h8lisjd6lwzpovkiw2mr.png',4),(218,'Le Van Lam','2002-08-14','Nam','Go Vap','2051052046hoang@ou.edu.vn','0123456789','yta1','$2a$10$3ouRpXbyWGfLDFtP1w.kvOg7WXN9iy4xNNk3jLENANugrE3eKq4ZC','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694352013/tk9afqsg2x14mblkf2ao.png',3),(219,'Nguyen Van A','2001-09-23','Nữ','ho chi minh','2051052046hoang@ou.edu.vn','0336334143','yta2','$2a$10$KaRLTIsJGe2d45V.BVb/ROSqBpM.v4dQ2yYQbGDre8uiMJa96TsX6','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397322/ineabcxgzswfeeifeeph.png',3),(220,'Huynh Minh Hoang','2023-09-01','Nam','hcm','2051052046hoang@ou.edu.vn','0336334143','ou','$2a$10$jwgK16os822GqZRiIUEeUu2XU6lCC2UJ9MtQFo5VMQOUUL90/I7bu','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397685/szfi3zhpsd1uc51j3tfx.png',4),(221,'My','2023-08-30','Nữ','ho chi minh','2051052046hoang@ou.edu.vn','0315515155','ou1','$2a$10$bNy8/ro63z7XiNpfBjQXWuPkEk2xL.P/DAo34YIl3rfCzxUCGMali','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694397711/jdydncgft9wkggu5biuu.png',4),(225,'test1','2023-08-30','Nam','ho chi minh','2051052046hoang@ou.edu.vn','0336334143','test1','$2a$10$2dHQrCIzLESKTFbhDpxQ1.n47TUxxnoiJRqms7R12uzJBKQdsA6hG','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694399779/dra6xj3f4xgq3wx4dx6v.png',3),(226,'hoanghoang','2023-09-28','Nữ','ho chi minh','2051052046hoang@ou.edu.vn','0336334143','hoanghoang','$2a$10$YkYD0w4BYCgxkXa5pZrSvO.GzVFGv4J4jGEgWra3mY1M6RD8wS16m','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694416422/ssiubofxgizsxqz15w4s.png',4),(227,'hoang','2023-08-31','Nam','ho chi minh','2051052046hoang@ou.edu.vn','0336334143','benhnhan10','$2a$10$mv7TXriZ8o9KvNhVSmQpQe/HkHSqUM21IJqWaQMgVMBAdDaY.XNgW','https://res.cloudinary.com/diyeuzxqt/image/upload/v1694519937/cuikul3xbiedy85e76y9.png',4),(228,'manager','2001-09-23','Nam','ho chi minh','2051052046hoang@ou.edu.vn','0336334143','quanly','$2a$10$AlXRkjfm75XtDw3eHbOWHOr.ryy6NVl79OsWFz0hn9YwexOCxCtO2','https://res.cloudinary.com/diyeuzxqt/image/upload/v1695399420/an1banq6xgc48fvrtfra.png',5),(232,'hoangcool','2023-10-02','Nam','ho chi minh','hmh20172018@gmail.com','0336334143','hoangcool','$2a$10$u9FZVN22xfzgttvg8r7nWu6o44z45NA61slHGH8hMCHixxxLfDRk2','https://res.cloudinary.com/diyeuzxqt/image/upload/v1695563600/zkekra3yoeyfhouid08o.png',4);
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoi_gian_truc`
--

DROP TABLE IF EXISTS `thoi_gian_truc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thoi_gian_truc` (
  `id_tgTruc` int NOT NULL AUTO_INCREMENT,
  `buoi_truc` varchar(45) DEFAULT NULL,
  `bat_dau` time DEFAULT NULL,
  `ket_thuc` time DEFAULT NULL,
  PRIMARY KEY (`id_tgTruc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoi_gian_truc`
--

LOCK TABLES `thoi_gian_truc` WRITE;
/*!40000 ALTER TABLE `thoi_gian_truc` DISABLE KEYS */;
INSERT INTO `thoi_gian_truc` VALUES (1,'Sáng','03:00:00','12:00:00'),(2,'Trưa','12:01:00','13:00:00'),(3,'Chiều','14:00:00','23:59:00');
/*!40000 ALTER TABLE `thoi_gian_truc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuoc` (
  `id_thuoc` int NOT NULL AUTO_INCREMENT,
  `ten_thuoc` varchar(500) DEFAULT NULL,
  `xuat_xu` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gia_thuoc` decimal(10,0) DEFAULT NULL,
  `don_vi` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `loai_thuoc` int DEFAULT NULL,
  `ghi_chu` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_thuoc`),
  KEY `don_vi_idx` (`don_vi`),
  KEY `loai_thuoc_idx` (`loai_thuoc`),
  CONSTRAINT `don_vi` FOREIGN KEY (`don_vi`) REFERENCES `donvi_thuoc` (`id_donVi`),
  CONSTRAINT `loai_thuoc` FOREIGN KEY (`loai_thuoc`) REFERENCES `loai_thuoc` (`idloai_thuoc`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuoc`
--

LOCK TABLES `thuoc` WRITE;
/*!40000 ALTER TABLE `thuoc` DISABLE KEYS */;
INSERT INTO `thuoc` VALUES (1,'vitaminA','việt nam',25000,1,38,6,'Có tác dụng phụ với Vitamin C'),(30,'Vitamin C','Việt nam ',25000,2,4,7,'Không được dùng chung với thuốc giảm đau'),(31,'Paracetamol','Mỹ ',50000,2,41,2,'Không sài quá 2 liều 1 ngày'),(32,'Tramadol','Canada',25000,4,5,2,'Tác dụng phụ bị dị ứng ngứa'),(33,'	Cephalexin','Việt nam ',50000,1,5,3,NULL),(34,'Amoxicillin','Mỹ ',50000,5,45,3,NULL),(35,'	Carvedilol','Việt nam ',25000,3,47,4,NULL),(36,'Digoxin','Nhật bản ',100000,4,40,4,NULL),(37,'Omega 3','Nhật bản ',50000,4,47,6,NULL),(38,'Vitamin D','Việt nam ',30000,3,50,6,NULL),(39,'	Pennicillin','Trung Quốc',25000,1,50,5,NULL),(40,'	Digoxin','Canada',50000,5,50,4,NULL),(41,'	Fluticasone','Hàn quốc',60000,4,44,2,NULL),(42,'	Fexofenadine','Mỹ ',100000,2,50,7,NULL),(43,'	Cetirizine','Nhật bản ',50000,3,50,7,NULL),(44,'	Ticagrelor','Canada',25000,3,50,4,NULL),(45,'Dexamethasone','Canada',25000,3,50,3,NULL),(46,'Prednisolone','Nhật bản ',100000,5,50,3,NULL),(47,'Benzylpenicillin','Nhật bản ',30000,2,52,2,NULL),(48,'Ciprofloxacin','Nhật bản ',50000,5,35,5,NULL),(49,'Amphotericin B','Canada',50000,5,40,5,NULL),(50,'Gentamicin','Mỹ ',50000,4,50,7,NULL),(51,'Doxycycline','Việt nam ',50000,3,50,6,NULL),(52,'vitaminBBB','vn',1515000,1,121,6,'Không ảnh hưởng'),(53,'vitaminE','VN',200000,5,100,4,'Không tác dụng phụ'),(54,'vitaminBBB','vn',1515000,1,2,4,'Không ảnh hưởng');
/*!40000 ALTER TABLE `thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tien_kham`
--

DROP TABLE IF EXISTS `tien_kham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tien_kham` (
  `id_tienKham` int NOT NULL AUTO_INCREMENT,
  `tien_kham` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_tienKham`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tien_kham`
--

LOCK TABLES `tien_kham` WRITE;
/*!40000 ALTER TABLE `tien_kham` DISABLE KEYS */;
INSERT INTO `tien_kham` VALUES (1,100000);
/*!40000 ALTER TABLE `tien_kham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `chuc_vu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_BACSI'),(3,'ROLE_YTA'),(4,'ROLE_BENHNHAN'),(5,'ROLE_QUANLY');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 13:29:02
