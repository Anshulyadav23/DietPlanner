CREATE DATABASE  IF NOT EXISTS `dietplanner` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dietplanner`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dietplanner
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `dietchart`
--

DROP TABLE IF EXISTS `dietchart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietchart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `planID` int(11) NOT NULL,
  `mealcategory` varchar(100) NOT NULL,
  `meal` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietchart`
--

LOCK TABLES `dietchart` WRITE;
/*!40000 ALTER TABLE `dietchart` DISABLE KEYS */;
INSERT INTO `dietchart` VALUES (235,41,'Breakfast','Bowl of cereal'),(236,41,'Breakfast','Bagel with cream cheese'),(237,41,'Breakfast','Hard boiled egg and fruit'),(238,41,'Lunch','Greek Pita Salad'),(239,41,'Lunch','Rice n’ Refried Beans'),(240,41,'Dinner','Baked Sweet and Sour Chicken'),(241,41,'Dinner',' Beet Burgers with Garlic Sriracha Aioli '),(242,41,'Dinner','Skinny Honey Mustard Pretzel Chicken'),(243,42,'Breakfast','English muffin with butter and jam'),(244,42,'Breakfast','Omelet with hash browns'),(245,42,'Breakfast','Hard boiled egg and fruit'),(246,42,'Lunch','Spicy Black Bean Burrito'),(247,42,'Lunch','Mediterranean Burger'),(248,42,'Dinner',' Chicken Enchiladas'),(249,42,'Dinner','Skinny Mexican Chicken Bake'),(250,42,'Dinner',' Simple Fish Tacos with Corn & Tomato Salsa'),(262,46,'Breakfast','Bowl of cereal'),(263,46,'Breakfast','Omelet with hash browns'),(264,46,'Lunch','Veggie Sub'),(265,46,'Lunch','Fresh Mozzarella and Tomato Salad'),(266,46,'Dinner','Skinny Honey Mustard Pretzel Chicken'),(267,46,'Dinner',' Stuffed Chicken and Sauteed Kale with Pine Nuts'),(268,46,'Dinner','Slow Cooker Pepperoni and Chicken'),(297,50,'Breakfast','Blueberry pancakes'),(298,50,'Breakfast','English muffin with butter and jam'),(299,50,'Breakfast','French toast'),(300,50,'Lunch','Sprout n\' Spinach Salad'),(301,50,'Lunch','Roast Beef and Horseradish Sandwich'),(302,50,'Lunch','Caesar Salmon Wrap'),(303,50,'Dinner','Skinny 3-Cheese Penne'),(304,50,'Dinner',' Simple Fish Tacos with Corn & Tomato Salsa'),(305,50,'Dinner','Skinny Mexican Chicken Bake'),(306,50,'Dinner','Easy Cheesy Burrito Skillet ');
/*!40000 ALTER TABLE `dietchart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 22:55:08
