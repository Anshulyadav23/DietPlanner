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
-- Table structure for table `dietplan`
--

DROP TABLE IF EXISTS `dietplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietplan` (
  `planID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `HeightFeet` int(11) NOT NULL,
  `Weight` double NOT NULL,
  `CaloriesPerDay` int(11) NOT NULL,
  `BodyFat` varchar(30) NOT NULL,
  `Activity` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `NumberOfMeals` int(11) NOT NULL,
  `MealType` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Protien` int(11) NOT NULL,
  `Carbs` int(11) NOT NULL,
  `Fat` int(11) NOT NULL,
  `HeightInch` int(11) NOT NULL,
  `minfat` int(11) NOT NULL,
  `mincarbs` int(11) NOT NULL,
  `minprotein` int(11) NOT NULL,
  PRIMARY KEY (`planID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietplan`
--

LOCK TABLES `dietplan` WRITE;
/*!40000 ALTER TABLE `dietplan` DISABLE KEYS */;
INSERT INTO `dietplan` VALUES (41,'abhi11',5,180,3094,'low','Very Active','Male','MaintainHealth',3,'Vegetarian',27,309,309,68,10,51,232,270),(42,'anshul23',5,180,3111,'low','Very Active','Male','MaintainHealth',3,'Vegetarian',25,311,311,69,10,51,233,272),(46,'abhi123',5,186,2977,'medium','Very Active','Male','MaintainHealth',3,'Vegetarian',27,297,297,66,4,49,223,260),(50,'john123',5,170,3515,'low','Very Active','Male','Gainweight',3,'Vegetarian',27,351,351,78,10,58,263,307);
/*!40000 ALTER TABLE `dietplan` ENABLE KEYS */;
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
