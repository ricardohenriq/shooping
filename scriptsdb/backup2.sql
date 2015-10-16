-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `banner_types`
--

DROP TABLE IF EXISTS `banner_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_types`
--

LOCK TABLES `banner_types` WRITE;
/*!40000 ALTER TABLE `banner_types` DISABLE KEYS */;
INSERT INTO `banner_types` VALUES (1,'Small-Banner','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Full-Banner','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `banner_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `banner_description` varchar(255) NOT NULL,
  `path_banner` varchar(255) NOT NULL,
  `url_redirect` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banner_type_key` (`banner_type_id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_types` (`id`),
  CONSTRAINT `banners_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,1,1,'Banner 1','mini-banners/mini-banner1.png','http://pt.stackoverflow.com/review','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,1,2,'Banner 2','mini-banners/mini-banner2.png','http://pt.stackoverflow.com/questions','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,1,3,'Banner 3','mini-banners/mini-banner3.png','http://pt.stackoverflow.com/tags','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,1,4,'Banner 4','mini-banners/mini-banner4.png','http://pt.stackoverflow.com/users','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,1,5,'Banner 5','mini-banners/mini-banner5.png','http://pt.stackoverflow.com/help/badges','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,1,6,'Banner 6','mini-banners/mini-banner6.png','http://pt.stackoverflow.com/unanswered','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,2,7,'Banner 7','full-banners/full-banner3.png','http://pt.stackoverflow.com/tour','2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,2,8,'Banner 8','full-banners/full-banner4.png','http://pt.stackoverflow.com/help','2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,2,9,'Banner 9','full-banners/full-banner5.png','http://meta.pt.stackoverflow.com/','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_key` (`product_id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,5,1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,2,10,2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,3,5,3,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,4,8,4,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,5,6,5,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Alimentos','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Bebidas','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Móveis','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Eletrodomesticos','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Bazar','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'Livros','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'Eletroeletronicos','2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,'Portáteis','2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,'Informática','2015-08-11 00:00:00','2015-08-11 00:00:00'),(10,'Brinquedos','2015-08-11 00:00:00','2015-08-11 00:00:00'),(11,'Automotivo','2015-08-11 00:00:00','2015-08-11 00:00:00'),(12,'Ferramentas','2015-08-11 00:00:00','2015-08-11 00:00:00'),(13,'Vestuário','2015-08-11 00:00:00','2015-08-11 00:00:00'),(14,'Calçados','2015-08-11 00:00:00','2015-08-11 00:00:00'),(15,'Adereços','2015-08-11 00:00:00','2015-08-11 00:00:00'),(16,'Papelaria','2015-08-11 00:00:00','2015-08-11 00:00:00'),(17,'Outros','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_types`
--

DROP TABLE IF EXISTS `comment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_types`
--

LOCK TABLES `comment_types` WRITE;
/*!40000 ALTER TABLE `comment_types` DISABLE KEYS */;
INSERT INTO `comment_types` VALUES (1,'Pergunta','2015-09-22 14:20:38','2015-09-22 14:20:38'),(2,'Resposta','2015-09-22 14:20:39','2015-09-22 14:20:39');
/*!40000 ALTER TABLE `comment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) DEFAULT NULL,
  `comment_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `posted_to` int(11) NOT NULL,
  `answered` tinyint(4) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Qual o frete para 45.987.330 ? Obrigado',1,1,2,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(2,'R$ 34.00',2,1,26,1,0,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(3,'Comprando 3 tenho desconto ?',1,1,3,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(4,'Tem sim, já calculou o frete ?',2,1,26,3,0,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(5,'Entrega em Manaus (AM) ?',1,1,4,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(6,'Sim, o frete fica em R$ 45.00',2,1,26,5,0,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(7,'Qual o frete para 45.987.330 ? Obrigado',1,2,3,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(8,'R$ 34.00',2,2,27,7,0,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(9,'Comprando 3 tenho desconto ?',1,2,4,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(10,'Tem sim, já calculou o frete ?',2,2,27,9,0,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(11,'Entrega em Manaus (AM) ?',1,2,5,0,1,'2015-09-22 14:20:51','2015-09-22 14:20:51'),(12,'Sim, o frete fica em R$ 45.00',2,2,27,11,0,'2015-09-22 14:20:54','2015-09-22 14:20:54');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Altura','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Peso','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Validade','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Garantia','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Cor','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'Material','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'Largura','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_media_type` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'Foto','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Foto Principal','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Thumb','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Video','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_type_key` (`media_type_id`),
  KEY `product_key` (`product_id`),
  CONSTRAINT `medias_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `medias_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medias`
--

LOCK TABLES `medias` WRITE;
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
INSERT INTO `medias` VALUES (1,2,1,'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,3,1,'http://localhost/PROJETOS/ShoppingResources/thumb/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,1,1,'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-2.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,1,1,'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-3.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,2,2,'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,3,2,'http://localhost/PROJETOS/ShoppingResources/thumb/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,1,2,'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-2.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,3,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,2,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(10,1,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-2.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(11,1,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-3.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(12,1,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-4.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(13,1,3,'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-5.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(14,3,4,'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(15,2,4,'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(16,1,4,'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-2.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(17,1,4,'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-3.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(18,1,4,'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-4.jpg','2015-08-11 00:00:00','2015-08-11 00:00:00'),(19,1,2,'C:\\xampp\\tmp\\phpD05A.tmp','2015-08-12 14:48:12','2015-08-12 14:48:12'),(20,1,2,'C:\\xampp\\tmp\\phpA0E3.tmp','2015-09-17 13:51:34','2015-09-17 13:51:34');
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_banners`
--

DROP TABLE IF EXISTS `new_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path_banner` varchar(255) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `new_banners_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_banners`
--

LOCK TABLES `new_banners` WRITE;
/*!40000 ALTER TABLE `new_banners` DISABLE KEYS */;
INSERT INTO `new_banners` VALUES (1,1,'Banner 1','Noticia Fantastica','news/new1.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,2,'Banner 2','Noticia Boa','news/new2.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,3,'Banner 3','Noticia Muito Boa','news/new3.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,4,'Banner 4','Noticia Melhor','news/new4.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,5,'Banner 5','Noticia Top','news/new1.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,6,'Banner 6','Noticia Otima','news/new2.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,7,'Banner 7','Noticia Excelente','news/new3.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,8,'Banner 8','Noticia Perfeita','news/new4.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,9,'Banner 9','Noticia Boa Dimais da Conta','news/new1.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `new_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_banners`
--

DROP TABLE IF EXISTS `offer_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path_banner` varchar(255) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `offer_banners_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_banners`
--

LOCK TABLES `offer_banners` WRITE;
/*!40000 ALTER TABLE `offer_banners` DISABLE KEYS */;
INSERT INTO `offer_banners` VALUES (1,1,'Oferta 1','Oferta Boa','offers/offer1.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,2,'Oferta 2','Oferta Muito Boa','offers/offer2.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,3,'Oferta 3','Oferta Boa Dimais Da conta Sô','offers/offer3.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,4,'Oferta 4','Oferta Excelente','offers/offer4.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,5,'Oferta 5','Oferta Otima','offers/offer5.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,6,'Oferta 6','Oferta Razoavel','offers/offer6.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,7,'Oferta 7','Oferta Regular','offers/offer1.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,8,'Oferta 8','Oferta Bacana','offers/offer2.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,9,'Oferta 9','Oferta Fulera','offers/offer3.png','2015-08-11 00:00:00','2019-11-11 00:00:00','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `offer_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_features`
--

DROP TABLE IF EXISTS `product_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_value` varchar(255) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_key` (`feature_id`),
  KEY `product_key` (`product_id`),
  CONSTRAINT `product_features_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`),
  CONSTRAINT `product_features_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_features`
--

LOCK TABLES `product_features` WRITE;
/*!40000 ALTER TABLE `product_features` DISABLE KEYS */;
INSERT INTO `product_features` VALUES (1,'30 Cm',1,1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'2 Kg',2,2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'30 Dias',3,3,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'6 Meses',4,4,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Azul',5,5,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'Madeira',6,6,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'40 Cm',7,7,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,'20 Kg',2,1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,'90 Dias',3,2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(10,'2 Meses',4,3,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `product_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(7,2) NOT NULL,
  `old_price` decimal(7,2) NOT NULL,
  `visited` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_key` (`store_id`),
  KEY `sub_category_key` (`sub_category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Cama X',1,8,20,40,'Muito Boa',550.50,400.00,777,'products/product2.jpg',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Ferro de passar roupa W',2,7,300,200,'Quente',20.20,25.00,555,'products/product1.jpg',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Liquidificador B',3,6,150,900,'Bom',15.00,12.90,444,'products/product5.jpg',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'MP3 N',4,5,30,60,'Toca musica',150.90,140.00,333,'products/product4.jpg',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Bacon T',1,3,900,1200,'Bom dimais da conta',5.00,9.05,222,'products/product3.jpg',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'Camiseta U',2,1,130,200,'Macia',13.99,20.00,99,'products/product2.jpg',0,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'Sapato R',3,2,200,400,'Confortavel',30.30,25.00,111,'products/product1.jpg',0,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_products`
--

DROP TABLE IF EXISTS `promotion_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `promotion_price` decimal(7,2) NOT NULL,
  `promotion_quantity` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_key` (`product_id`),
  KEY `promotion_key` (`promotion_id`),
  CONSTRAINT `promotion_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `promotion_products_ibfk_2` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_products`
--

LOCK TABLES `promotion_products` WRITE;
/*!40000 ALTER TABLE `promotion_products` DISABLE KEYS */;
INSERT INTO `promotion_products` VALUES (1,1,1,10.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,2,2,20.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,3,3,20.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,4,4,10.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,5,5,20.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,6,1,20.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,7,2,10.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,1,3,10.50,30,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `promotion_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_name` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'Promoção de férias',5,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Promoção de primavera',7,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Promoção de outono',9,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Promoção de verão',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Promoção de inverno',14,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Loja A',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'Loja B',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Loja C',3,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Loja D',4,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Loja A',18,'2011-10-28 09:39:49','2013-10-28 22:39:19');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_key` (`category_id`),
  CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'Industrilizado',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'In natura',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'Comida pronta',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'Desidratado',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'Organico',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'Raizes',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'Doces',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,'Alcoolica',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,'Sucos',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(10,'Refrigerante',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(11,'Outras',2,'2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'ricardohenrique996@gmail.com','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'ricardohenrique1@outlook.com','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'gasolina@hotmail.com','2015-09-22 11:16:35','2015-09-22 11:16:35'),(4,'etanol@gmail.com','2015-09-22 11:18:26','2015-09-22 11:18:26'),(5,'alcool@gmail.com','2015-09-22 11:19:28','2015-09-22 11:19:28'),(6,'chaves@hotmail.com','2015-09-22 11:21:51','2015-09-22 11:21:51'),(7,'chapolin@gmail.com','2015-09-22 11:25:14','2015-09-22 11:25:14'),(8,'colorado@gmail.com','2015-09-22 11:26:24','2015-09-22 11:26:24'),(9,'etanol@gmail.comm','2015-09-22 11:32:36','2015-09-22 11:32:36'),(10,'cachaca@gmail.com','2015-09-22 11:38:14','2015-09-22 11:38:14');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'common','2015-08-11 00:00:00','2015-08-11 00:00:00'),(2,'businessman','2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'admin','2015-08-11 00:00:00','2015-08-11 00:00:00');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type_key` (`user_type_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bill@outlook.com','123456','Bill Gates',1,'2015-08-11 00:00:00','2015-08-13 11:57:09'),(2,'larry@gmail.com','098765','larry',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(3,'steve@apple.com','1234567890','steve',3,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(4,'maria@hotmail.com','qwerty','maria',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(5,'jose@hotmail.com','asdfg','jose',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(6,'joao@hotmail.com','zxcv','joao',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(7,'ford@hotmail.com','mnbvc','ford',2,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(8,'toyota@hotmail.com','lkjhg','toyota',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(9,'chevrolet@hotmail.com','poiuy','chevrolet',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(10,'benz@hotmail.com','trewq','benz',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(11,'dodge@hotmail.com','fdsa','dodge',1,'2015-08-11 00:00:00','2015-08-11 00:00:00'),(13,'Dex@hotmail.com','$2y$10$OJkiDDWGIsuH0jgZkaYIB.PKu6WqS4F69ciC6h9APGkdK0Jx312YS','dexter',1,'2015-09-02 20:56:03','2015-09-02 20:56:03'),(18,'silva@hotmail.com','$2y$10$JahwvG6tGGOQFFEJvqlaTuDTgF1uWhSW/cGcBBGdzfv73sIdDU.rO','Silva',1,'2015-09-19 19:33:21','2015-09-19 19:33:21'),(19,'santos@hotmail.com','$2y$10$QydMDcv.CIYYI1vTHvLKn.fJIM/NUjQaCw0I676WnhcuF.5RxpW6.','Santos',NULL,'2015-09-21 12:35:22','2015-09-21 12:35:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-16  9:14:09
