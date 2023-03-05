CREATE DATABASE  IF NOT EXISTS `genshin_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `genshin_dev`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: genshin
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
-- Table structure for table `emp_item_req`
--

DROP TABLE IF EXISTS `emp_item_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_item_req` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `emp_id` int NOT NULL COMMENT '角色ID',
  `type` int NOT NULL COMMENT '类型',
  `level` int NOT NULL COMMENT '等级',
  `item_id` int NOT NULL COMMENT '物品ID',
  `required` int NOT NULL COMMENT '需求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色物品需求表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_item_req`
--

LOCK TABLES `emp_item_req` WRITE;
/*!40000 ALTER TABLE `emp_item_req` DISABLE KEYS */;
INSERT INTO `emp_item_req` VALUES (1,1,0,1,1,1),(2,1,0,1,5,3),(3,1,0,1,10,3),(4,1,0,2,2,3),(5,1,0,2,11,2),(6,1,0,2,5,15),(7,1,0,2,10,10),(8,1,0,3,2,6),(9,1,0,3,11,4),(10,1,0,3,6,12),(11,1,0,3,10,20),(13,1,0,4,3,3),(14,1,0,4,11,8),(15,1,0,4,6,18),(16,1,0,4,10,30),(17,1,0,5,3,6),(18,1,0,5,11,12),(19,1,0,5,7,12),(20,1,0,5,10,45),(21,1,0,6,4,6),(22,1,0,6,11,20),(23,1,0,6,7,24),(24,1,0,6,10,60),(25,1,1,1,12,3),(26,1,1,1,5,6),(27,1,1,2,13,2),(28,1,1,2,6,3),(29,1,1,3,13,4),(30,1,1,3,6,4),(31,1,1,4,13,6),(32,1,1,4,6,6),(33,1,1,5,13,9),(34,1,1,5,6,9),(35,1,1,6,14,4),(36,1,1,6,15,1),(37,1,1,6,7,4),(38,1,1,7,14,6),(39,1,1,7,15,1),(40,1,1,7,7,6),(41,1,1,8,14,12),(42,1,1,8,15,2),(43,1,1,8,7,9),(44,1,1,9,14,16),(45,1,1,9,15,2),(46,1,1,9,16,1),(47,1,1,9,7,12),(48,2,0,1,1,1),(49,2,0,1,5,3),(50,2,0,1,10,3),(51,2,0,2,2,3),(52,2,0,2,11,2),(53,2,0,2,5,15),(54,2,0,2,10,10),(55,2,0,3,2,6),(56,2,0,3,11,4),(57,2,0,3,6,12),(58,2,0,3,10,20),(59,2,0,4,3,3),(60,2,0,4,11,8),(61,2,0,4,10,30),(62,2,0,5,3,6),(63,2,0,5,11,12),(64,2,0,5,7,12),(65,2,0,5,10,45),(66,2,0,6,4,6),(67,2,0,6,11,20),(68,2,0,6,7,24),(69,2,0,6,10,60),(70,2,1,1,12,3),(71,2,1,1,5,6),(72,2,1,2,13,2),(73,2,1,2,6,3),(74,2,1,3,13,4),(75,2,1,3,6,4),(76,2,1,4,13,6),(77,2,1,4,6,6),(78,2,1,5,13,9),(79,2,1,5,6,9),(80,2,1,6,14,4),(81,2,1,6,15,1),(82,2,1,6,7,4),(83,2,1,7,14,6),(84,2,1,7,15,1),(85,2,1,7,7,6),(86,2,1,8,14,12),(87,2,1,8,15,2),(88,2,1,8,7,9),(89,2,1,9,14,16),(90,2,1,9,15,2),(91,2,1,9,16,1),(92,2,1,9,7,12);
/*!40000 ALTER TABLE `emp_item_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '角色名',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `attribute` varchar(20) DEFAULT NULL COMMENT '属性',
  `country` varchar(20) NOT NULL COMMENT '地区',
  `profile` varchar(20) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'旅行者','男','无','无','traveler.png'),(2,'安柏','女','火','蒙德','amber.png'),(3,'凯亚','男','冰','蒙德','kaeya.png'),(4,'丽莎','女','雷','蒙德','lisa.png'),(5,'芭芭拉','女','水','蒙德','barbara.png'),(6,'雷泽','男','雷','蒙德','razor.png'),(7,'香菱','女','火','璃月','xiangling.png'),(8,'北斗','女','雷','璃月','beidou.png'),(9,'行秋','男','水','璃月','xingqiu.png'),(10,'凝光','女','岩','璃月','ningguang.png'),(11,'菲谢尔','女','雷','蒙德','fischl.png'),(12,'班尼特','男','火','蒙德','bennett.png'),(13,'诺艾尔','女','岩','蒙德','noelle.png'),(14,'重云','男','冰','璃月','chongyun.png'),(15,'砂糖','女','风','蒙德','sucrose.png'),(16,'琴','女','风','蒙德','jean.png'),(17,'迪卢克','男','火','蒙德','diluc.png'),(18,'七七','女','冰','璃月','qiqi.png'),(19,'莫娜','女','水','蒙德','mona.png'),(20,'刻晴','女','雷','璃月','keqing.png'),(21,'温迪','男','风','蒙德','venti.png'),(22,'可莉','女','火','蒙德','klee.png'),(23,'迪奥娜','女','冰','蒙德','diona.png'),(24,'达达利亚','男','水','至冬','tartaglia.png'),(25,'辛焱','女','火','璃月','xinyan.png'),(26,'钟离','男','岩','璃月','zhongli.png'),(28,'莱伊拉','女','冰','须弥','layla.png'),(29,'刻晴','女','雷','璃月','keqing.png'),(30,'八重神子','女','雷','稻妻','yaemiko.png'),(31,'魈','男','风','璃月','xiao.png'),(32,'雷电将军','女','雷','稻妻','raidenshogun.png'),(33,'阿贝多','男','岩','蒙德','albedo.png'),(34,'胡桃','女','火','璃月','hutao.png'),(36,'五郎','男','岩','稻妻','gorou.png'),(37,'申鹤','女','冰','璃月','shenhe.png'),(38,'艾尔海森','男','草','须弥','alhaitham.png'),(39,'瑶瑶','女','草','璃月','yaoyao.png'),(40,'优拉','女','冰','蒙德','eula.png'),(41,'神里绫人','男','水','稻妻','kamisatoayato.png'),(42,'神里绫华','男','火','稻妻','kamisatoayaka.png');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_hold`
--

DROP TABLE IF EXISTS `employee_hold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_hold` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int NOT NULL COMMENT '用户ID',
  `eid` int NOT NULL COMMENT '角色ID',
  `e_status` int DEFAULT NULL COMMENT '持有状态',
  `curr_lv` int DEFAULT '0' COMMENT '当前等级',
  `tar_lv` int DEFAULT '0' COMMENT '目标等级',
  `s1_curr_lv` int DEFAULT '1' COMMENT '普通攻击当前等级',
  `s1_tar_lv` int DEFAULT '1' COMMENT '普通攻击目标等级',
  `s2_curr_lv` int DEFAULT '1' COMMENT '元素战技当前等级',
  `s2_tar_lv` int DEFAULT '1' COMMENT '元素战技目标等级',
  `s3_curr_lv` int DEFAULT '1' COMMENT '元素爆发当前等级',
  `s3_tar_lv` int DEFAULT '1' COMMENT '元素爆发目标等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色持有状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_hold`
--

LOCK TABLES `employee_hold` WRITE;
/*!40000 ALTER TABLE `employee_hold` DISABLE KEYS */;
INSERT INTO `employee_hold` VALUES (73,2,3,0,0,0,0,0,0,0,0,0),(74,2,17,0,1,3,3,7,6,7,6,7),(75,2,33,0,0,0,0,0,0,0,0,0),(76,2,36,0,5,6,5,6,5,6,5,6),(77,1,3,0,0,0,0,0,0,0,0,0),(78,1,34,0,0,0,0,0,0,0,0,0),(79,1,32,0,0,0,0,0,0,0,0,0),(80,1,24,0,0,0,0,0,0,0,0,0),(81,1,40,0,0,0,0,0,0,0,0,0),(85,3,30,0,0,0,0,0,0,0,0,0),(86,2,38,0,0,0,0,0,0,0,0,0),(88,2,26,0,0,0,0,0,0,0,0,0),(89,2,2,0,3,6,6,9,6,9,6,9),(90,2,6,0,0,0,0,0,0,0,0,0),(91,2,32,0,0,0,0,0,0,0,0,0),(93,1,1,0,0,0,1,1,1,1,1,1),(94,3,32,0,0,0,1,1,1,1,1,1),(95,3,17,0,0,0,1,1,1,1,1,1),(96,3,41,0,0,0,1,1,1,1,1,1),(97,3,23,0,0,0,1,1,1,1,1,1),(98,2,1,0,2,3,5,6,5,6,5,6),(100,1,10,0,0,0,1,1,1,1,1,1),(102,1,5,0,0,0,1,1,1,1,1,1),(103,1,36,0,0,0,1,1,1,1,1,1),(104,1,20,0,0,0,1,1,1,1,1,1),(105,1,26,0,0,0,1,1,1,1,1,1),(106,1,30,0,0,0,1,1,1,1,1,1),(107,2,37,0,0,0,1,1,1,1,1,1),(108,2,20,0,2,3,6,7,7,8,7,9),(110,2,29,0,1,2,1,6,1,6,1,6),(111,1,2,0,6,6,6,9,6,9,6,9),(112,2,39,0,0,0,1,1,1,1,1,1),(113,2,41,0,0,0,1,1,1,1,1,1),(114,2,30,0,0,0,1,1,1,1,1,1);
/*!40000 ALTER TABLE `employee_hold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_name` varchar(50) NOT NULL COMMENT '物品名称',
  `type` int NOT NULL COMMENT '类型',
  `grade` int NOT NULL COMMENT '星级',
  `img` varchar(30) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'燃愿玛瑙碎屑',1,2,'agnidusagatesliver.png'),(2,'燃愿玛瑙断片',1,3,'agnidusagatefragment.png'),(3,'燃愿玛瑙块',1,4,'agnidusagatechunk.png'),(4,'燃愿玛瑙',1,5,'agnidusagategemstone.png'),(5,'牢固的箭簇',2,1,'firmarrowhead.png'),(6,'锐利的箭簇',2,2,'sharparrowhead.png'),(7,'历战的箭簇',2,3,'weatheredarrowhead.png'),(8,'史莱姆凝液',2,1,'slimecondensate.png'),(9,'破损的面具',2,1,'damagedmask.png'),(10,'小灯草',3,1,'smalllampgrass.png'),(11,'常燃火种',4,4,'everflameseed.png'),(12,'自由的教导',5,2,'teachingsoffreedom.png'),(13,'自由的指引',5,3,'guidetofreedom.png'),(14,'自由的哲学',5,4,'philosophiesoffreedom.png'),(15,'东风的吐息',6,5,'dvalinssigh.png'),(16,'知识之冕',7,5,'crownofinsight.png');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `role` int NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'123','123',0),(2,'xiaofeng','123',0),(3,'exile','123',0);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_item_hold`
--

DROP TABLE IF EXISTS `user_item_hold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_item_hold` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int NOT NULL COMMENT '用户ID',
  `item_id` int NOT NULL COMMENT '物品ID',
  `hold` int NOT NULL COMMENT '持有',
  `curr_req` int NOT NULL COMMENT '当前需求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户物品持有表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_item_hold`
--

LOCK TABLES `user_item_hold` WRITE;
/*!40000 ALTER TABLE `user_item_hold` DISABLE KEYS */;
INSERT INTO `user_item_hold` VALUES (1,2,1,10,0),(2,2,2,20,0),(3,2,3,15,0),(4,2,4,10,0);
/*!40000 ALTER TABLE `user_item_hold` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05 23:02:15
