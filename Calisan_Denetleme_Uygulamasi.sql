-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: berk_zamak_db
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `calisanlar`
--

DROP TABLE IF EXISTS `calisanlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calisanlar` (
  `idcalisanlar` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(100) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `rol` varchar(30) NOT NULL DEFAULT 'Personel',
  PRIMARY KEY (`idcalisanlar`),
  UNIQUE KEY `kullanici_adi` (`kullanici_adi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calisanlar`
--

LOCK TABLES `calisanlar` WRITE;
/*!40000 ALTER TABLE `calisanlar` DISABLE KEYS */;
INSERT INTO `calisanlar` VALUES (1,'Berk Uçak','berkucak','123456','Admin'),(2,'Zafer Arslan','zaferarslan','123456','calisan'),(3,'Galip İbiş','galipibis','123456','calisan'),(4,'Ayşe Türkü Arslan','atarslan','123456','calisan'),(5,'Sema Nur Çevik','sncevik','123456','calisan'),(6,'Elif Berra Düzenli ','ebduzenli','123456','calisan'),(7,'Nursena Can','nursenacan','123456','calisan');
/*!40000 ALTER TABLE `calisanlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gorevler`
--

DROP TABLE IF EXISTS `gorevler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gorevler` (
  `idgorev` int NOT NULL AUTO_INCREMENT,
  `idcalisanlar` int NOT NULL,
  `ad_soyad` varchar(100) DEFAULT NULL,
  `urun_adi` varchar(100) NOT NULL,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idgorev`),
  KEY `fk_calisan_baglantisi` (`idcalisanlar`),
  CONSTRAINT `fk_calisan_baglantisi` FOREIGN KEY (`idcalisanlar`) REFERENCES `calisanlar` (`idcalisanlar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gorevler`
--

LOCK TABLES `gorevler` WRITE;
/*!40000 ALTER TABLE `gorevler` DISABLE KEYS */;
INSERT INTO `gorevler` VALUES (1,2,NULL,'AK47','2026-05-13 00:00:00'),(2,2,NULL,'AZ202','2026-05-13 00:00:00'),(3,3,NULL,'AK47','2026-05-13 00:00:00'),(4,4,NULL,'AZ202','2026-05-13 15:45:37');
/*!40000 ALTER TABLE `gorevler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hareketler`
--

DROP TABLE IF EXISTS `hareketler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hareketler` (
  `idhareketler` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) DEFAULT NULL,
  `mola_tipi` varchar(50) DEFAULT NULL,
  `mola_baslangic` datetime DEFAULT NULL,
  `mola_bitis` datetime DEFAULT NULL,
  PRIMARY KEY (`idhareketler`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hareketler`
--

LOCK TABLES `hareketler` WRITE;
/*!40000 ALTER TABLE `hareketler` DISABLE KEYS */;
INSERT INTO `hareketler` VALUES (1,'Zafer Arslan','Öğle Molası','2026-05-12 12:00:00','2026-05-12 13:10:00'),(2,'Zafer Arslan','Ara Mola','2026-05-12 15:00:00','2026-05-12 15:15:00'),(3,'Galip İbiş','Ara Mola','2026-05-12 10:00:00','2026-05-12 10:20:00'),(4,'Galip İbiş','Öğle Molası','2026-05-12 12:30:00','2026-05-12 13:30:00');
/*!40000 ALTER TABLE `hareketler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesai_kayitlari`
--

DROP TABLE IF EXISTS `mesai_kayitlari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesai_kayitlari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) DEFAULT NULL,
  `baslangic_saati` datetime DEFAULT NULL,
  `bitis_saati` datetime DEFAULT NULL,
  `kullanici_adi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesai_kayitlari`
--

LOCK TABLES `mesai_kayitlari` WRITE;
/*!40000 ALTER TABLE `mesai_kayitlari` DISABLE KEYS */;
INSERT INTO `mesai_kayitlari` VALUES (1,'Zafer Arslan','2026-05-12 08:00:00','2026-05-12 18:00:00','zaferarslan'),(2,'Galip İbiş','2026-05-12 08:30:00','2026-05-12 17:30:00','galipibis'),(3,'Ayşe Türkü Arslan','2026-05-12 09:00:00','2026-05-12 18:30:00','atarslan'),(10,'Zafer Arslan','2026-05-11 08:00:00','2026-05-11 18:00:00','zaferarslan'),(11,'Galip İbiş','2026-05-11 08:30:00','2026-05-11 17:30:00','galipibis'),(12,'Ayşe Türkü Arslan','2026-05-11 09:00:00','2026-05-11 18:30:00','atarslan');
/*!40000 ALTER TABLE `mesai_kayitlari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mola_asimlari`
--

DROP TABLE IF EXISTS `mola_asimlari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mola_asimlari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(100) NOT NULL,
  `mola_tipi` varchar(50) DEFAULT NULL,
  `planlanan_sure` int DEFAULT NULL,
  `gerceklesen_sure` int DEFAULT NULL,
  `fark` int DEFAULT NULL,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mola_asimlari`
--

LOCK TABLES `mola_asimlari` WRITE;
/*!40000 ALTER TABLE `mola_asimlari` DISABLE KEYS */;
INSERT INTO `mola_asimlari` VALUES (1,'Zafer Arslan','Öğle Molası',60,70,10,'2026-05-12 13:10:00'),(2,'Galip İbiş','Ara Mola',15,20,5,'2026-05-12 10:20:00');
/*!40000 ALTER TABLE `mola_asimlari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mola_kurallari`
--

DROP TABLE IF EXISTS `mola_kurallari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mola_kurallari` (
  `mola_tipi` varchar(50) NOT NULL,
  `planlanan_sure` int NOT NULL,
  `gunluk_adet` int DEFAULT '1',
  PRIMARY KEY (`mola_tipi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mola_kurallari`
--

LOCK TABLES `mola_kurallari` WRITE;
/*!40000 ALTER TABLE `mola_kurallari` DISABLE KEYS */;
INSERT INTO `mola_kurallari` VALUES ('Ara Mola',15,2),('Öğle Molası',60,1);
/*!40000 ALTER TABLE `mola_kurallari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uretim`
--

DROP TABLE IF EXISTS `uretim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uretim` (
  `iduretim` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) DEFAULT NULL,
  `urun_adi` varchar(255) DEFAULT NULL,
  `uretim_miktari` varchar(255) DEFAULT NULL,
  `adet` int NOT NULL,
  `tarih` date DEFAULT NULL,
  `kayit_zamani` datetime DEFAULT NULL,
  PRIMARY KEY (`iduretim`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uretim`
--

LOCK TABLES `uretim` WRITE;
/*!40000 ALTER TABLE `uretim` DISABLE KEYS */;
INSERT INTO `uretim` VALUES (1,'Zafer Arslan','AK47',NULL,100,NULL,'2026-05-13 15:50:03'),(2,'Zafer Arslan','AK47',NULL,200,NULL,'2026-05-13 15:50:05'),(3,'Zafer Arslan','AK47',NULL,250,NULL,'2026-05-13 15:50:08'),(4,'Zafer Arslan','AK47',NULL,150,NULL,'2026-05-10 09:30:00'),(5,'Zafer Arslan','AK47',NULL,300,NULL,'2026-05-11 11:15:00'),(6,'Zafer Arslan','AK47',NULL,450,NULL,'2026-05-12 14:00:00'),(7,'Zafer Arslan','AZ202',NULL,80,NULL,'2026-05-11 10:00:00'),(8,'Zafer Arslan','AZ202',NULL,160,NULL,'2026-05-12 16:30:00'),(9,'Galip İbiş','AK47',NULL,120,NULL,'2026-05-12 08:45:00'),(10,'Galip İbiş','AK47',NULL,240,NULL,'2026-05-13 10:20:00'),(11,'Ayşe Türkü Arslan','AZ202',NULL,200,NULL,'2026-05-13 14:10:00');
/*!40000 ALTER TABLE `uretim` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-20 14:23:07
