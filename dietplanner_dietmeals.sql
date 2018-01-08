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
-- Table structure for table `dietmeals`
--

DROP TABLE IF EXISTS `dietmeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietmeals` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mealtype` varchar(100) NOT NULL,
  `mealcategory` varchar(100) NOT NULL,
  `meal` varchar(100) NOT NULL,
  `calories` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietmeals`
--

LOCK TABLES `dietmeals` WRITE;
/*!40000 ALTER TABLE `dietmeals` DISABLE KEYS */;
INSERT INTO `dietmeals` VALUES (1,'Vegetarian','Breakfast','Omelet with hash browns',536),(2,'Vegetarian','Breakfast','Scrambled eggs and bacon breakfast',588),(3,'Vegetarian','Breakfast','Hard boiled egg and fruit',278),(4,'Vegetarian','Breakfast','Blueberry pancakes',352),(5,'Vegetarian','Breakfast','Yogurt with fruit and granola',376),(6,'Vegetarian','Breakfast','Oatmeal',300),(7,'Vegetarian','Breakfast','Bowl of cereal',320),(8,'Vegetarian','Breakfast','French toast',498),(9,'Vegetarian','Breakfast','Belgian waffle',647),(10,'Vegetarian','Breakfast','English muffin with butter and jam',206),(11,'Vegetarian','Breakfast','Breakfast sandwich',392),(12,'Vegetarian','Breakfast','Bagel with cream cheese',389),(13,'Vegetarian','Lunch','Herbed Cheese and Tomato Sandwich',389),(14,'Vegetarian','Lunch','Herbed Cheese and Tomato Sandwich',389),(15,'Vegetarian','Lunch','Herbed Cheese and Tomato Sandwich',389),(16,'Vegetarian','Lunch','Herbed Cheese and Tomato Sandwich',389),(17,'Vegetarian','Lunch','Hawaiian Veggie burger',380),(18,'Vegetarian','Lunch','Crunchy Tuna Wrap',382),(19,'Vegetarian','Lunch','Turkey Wrap',365),(20,'Vegetarian','Lunch','Mediterranean Burger',400),(21,'Vegetarian','Lunch','Spiced Chickpea Pita',350),(22,'Vegetarian','Lunch','Spicy Black Bean Burrito',365),(23,'Vegetarian','Lunch','Grilled Cheese With Tomato and Turkey',345),(24,'Vegetarian','Lunch','Grilled Chicken and Cheese Sandwich',395),(25,'Vegetarian','Lunch','Veggie Patty With Over-Easy Egg',390),(26,'Vegetarian','Lunch','Veggie Sub',380),(27,'Vegetarian','Lunch','Caesar Salmon Wrap',364),(28,'Vegetarian','Lunch','Egg, Tomato, and Avocado Sandwich',385),(29,'Vegetarian','Lunch','Roast Beef and Horseradish Sandwich',389),(30,'Vegetarian','Lunch','Greek Pita Salad',368),(31,'Vegetarian','Lunch','Strawberry Spinach Salad:',385),(32,'Vegetarian','Lunch','Sprout n\' Spinach Salad',381),(33,'Vegetarian','Lunch','arragon Chicken Salad',400),(34,'Vegetarian','Lunch','Rice n’ Refried Beans',400),(35,'Vegetarian','Lunch','Fresh Mozzarella and Tomato Salad',345),(36,'Vegetarian','Dinner','Slow Cooker Pepperoni and Chicken',295),(37,'Vegetarian','Dinner','Skinny 3-Cheese Penne',284),(38,'Vegetarian','Dinner','Skinny Mexican Chicken Bake',280),(39,'Vegetarian','Dinner','Mushroom Lasagna Rolls',280),(40,'Vegetarian','Dinner','Skinny Cheeseburger Casserole',255),(41,'Vegetarian','Dinner','Baked Sweet and Sour Chicken',295),(42,'Vegetarian','Dinner','Chicken Parmesan Casserole',268),(43,'Vegetarian','Dinner','Easy Cheesy Burrito Skillet ',275),(44,'Vegetarian','Dinner','Green Chili Chicken Lasagna',247),(45,'Vegetarian','Dinner','Skinny Honey Mustard Pretzel Chicken',271),(46,'Vegetarian','Dinner','Skinny Sausage Zucchini Boats',280),(47,'Vegetarian','Dinner','Skinny Chicken Fried Rice',290),(48,'Vegetarian','Dinner','Yellow Squash Noodles in Tomato Basil Sauce',380),(49,'Vegetarian','Dinner',' Beet Burgers with Garlic Sriracha Aioli ',282),(50,'Vegetarian','Dinner',' Simple Fish Tacos with Corn & Tomato Salsa',318),(51,'Vegetarian','Dinner',' Stuffed Chicken and Sauteed Kale with Pine Nuts',369),(52,'Vegetarian','Dinner',' Chicken Enchiladas',294),(53,'Vegetarian','Dinner','  Baked Cod with Pineapple Avocado Salsa',204),(54,'Vegetarian','Snack','Parmesan Carrot Fries Recipe',83),(55,'Vegetarian','Snack','Parmesan Carrot Fries Recipe',83),(56,'Vegetarian','Snack','Parmesan Carrot Fries Recipe',83),(57,'Vegetarian','Snack','Parmesan Carrot Fries Recipe',83),(58,'Vegetarian','Snack','Mini Peanut Butter and Apple Sandwich Recipe',200),(59,'Vegetarian','Snack',' Raw Rainbow Collard Greens Wrap Recipe',113),(60,'Vegetarian','Snack','3-Ingredient Homemade Larabars Recipe',199),(61,'Vegetarian','Snack','Amaranth “Popcorn” Recipe',180),(62,'Vegetarian','Snack',' Vegan Artichoke Dip Recipe',73),(63,'Vegetarian','Snack','Peach Homemade Greek Yogurt Recipe',100),(64,'Vegetarian','Snack','Healthy Green Goddess Dip Recipe',128),(65,'Vegetarian','Snack','Ham and Egg Sweet Potato Toast',114),(66,'Vegetarian','Snack','Peanut Butter and Jelly Breakfast Muffin Recipe ',61),(67,'Vegetarian','Snack','Sweet and Savory Rosemary Pecans Recipe ',108),(68,'Vegetarian','Snack','Gluten-Free Breakfast Cookies ',183),(69,'Vegetarian','Snack','Vegan Baked Apples Recipe ',103),(70,'Vegetarian','Snack','1 cup Blueberry',83),(71,'Vegetarian','Snack','13 whole almonds',93),(72,'Vegetarian','Snack','1 large egg',80),(73,'Vegetarian','Snack','2 kwis',90),(74,'Vegetarian','Snack','3tbps dried cherries',75),(75,'Vegetarian','Snack','Pomegranate juice',80),(76,'Vegetarian','Snack','1 baked seweet potato',55),(77,'Vegetarian','Snack','1 dark chocolate',100),(78,'Vegetarian','Snack','3 tbps cranberry sauce',75),(79,'Vegetarian','Snack','3tbps unsalted soy nuts',80),(80,'Vegetarian','Snack','Almond Orange Smoothie',140),(81,'Vegetarian','Snack','C-Blast Smoothie',159),(82,'Vegetarian','Snack','Watermelon Bliss Smoothie',149),(83,'Vegetarian','Snack','Banana Pear Smoothie',199),(84,'Vegetarian','Snack','Spinach and Strawberry Smoothie',120),(85,'Vegetarian','Snack','Citrus Energy-Boosting Smoothie',143),(86,'Vegetarian','Snack','Beet and Strawberry Smoothie',147),(87,'Vegetarian','Snack','Banana and Mango Shake',150),(88,'Vegetarian','Snack','Wild Blueberry Soy Shake',140),(89,'Vegetarian','Snack','Tropical Fruit Smoothie',156),(90,'Vegetarian','Snack','Strawberry-Yogurt Smoothie',108),(91,'Vegetarian','Snack','Peach Avocado Smoothie',93);
/*!40000 ALTER TABLE `dietmeals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 22:55:07
