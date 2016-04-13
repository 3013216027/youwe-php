-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: api_o2omobile_com_cn
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `o2omobile_apply_service`
--

DROP TABLE IF EXISTS `o2omobile_apply_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_apply_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL COMMENT '服务id',
  `firstclass_service_category_id` int(11) NOT NULL COMMENT '申请的一级服务类目id',
  `secondclass_service_category_id` int(11) NOT NULL COMMENT '申请的二级服务类目id',
  `state` tinyint(4) NOT NULL COMMENT '0 处理中   1 通过   2 不通过',
  `note` varchar(255) NOT NULL COMMENT '失败原因 推送消息',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户申请认证更多服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_apply_service`
--

LOCK TABLES `o2omobile_apply_service` WRITE;
/*!40000 ALTER TABLE `o2omobile_apply_service` DISABLE KEYS */;
INSERT INTO `o2omobile_apply_service` VALUES (1,3,7,0,0,1,'','2016-04-10 10:26:12','2016-04-10 22:26:12',NULL),(2,3,6,0,0,1,'','2016-04-10 10:27:18','2016-04-10 22:27:18',NULL),(3,3,0,0,0,1,'','2016-04-10 10:43:46','2016-04-10 22:43:46',NULL),(4,4,6,0,0,1,'','2016-04-10 10:43:42','2016-04-10 22:43:42',NULL),(5,3,2,0,0,1,'','2016-04-10 10:55:07','2016-04-10 22:55:07',NULL),(6,4,7,0,0,1,'','2016-04-10 10:55:04','2016-04-10 22:55:04',NULL);
/*!40000 ALTER TABLE `o2omobile_apply_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_backup`
--

DROP TABLE IF EXISTS `o2omobile_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `groupname` varchar(255) NOT NULL COMMENT '组名',
  `is_v` int(11) NOT NULL COMMENT '是否分卷或几卷',
  `v_kb` int(11) NOT NULL COMMENT '每卷多少kb',
  `all_kb` int(11) NOT NULL COMMENT '共多少kb',
  `user_id` int(11) NOT NULL COMMENT '处理者',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据备份';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_backup`
--

LOCK TABLES `o2omobile_backup` WRITE;
/*!40000 ALTER TABLE `o2omobile_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_bigc`
--

DROP TABLE IF EXISTS `o2omobile_bigc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_bigc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `years` int(11) NOT NULL COMMENT '年',
  `month` varchar(10) NOT NULL COMMENT '月',
  `times` int(11) NOT NULL COMMENT '年月',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户按月统计成交量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_bigc`
--

LOCK TABLES `o2omobile_bigc` WRITE;
/*!40000 ALTER TABLE `o2omobile_bigc` DISABLE KEYS */;
INSERT INTO `o2omobile_bigc` VALUES (1,4,1,2016,'04',201604);
/*!40000 ALTER TABLE `o2omobile_bigc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_certify`
--

DROP TABLE IF EXISTS `o2omobile_certify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_certify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名字',
  `ename` varchar(255) NOT NULL COMMENT '英文名 对应图标用',
  `is_valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0是不可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='认证表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_certify`
--

LOCK TABLES `o2omobile_certify` WRITE;
/*!40000 ALTER TABLE `o2omobile_certify` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_certify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_client`
--

DROP TABLE IF EXISTS `o2omobile_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL COMMENT '设备id',
  `user_id` int(10) unsigned NOT NULL,
  `client_type` varchar(100) NOT NULL COMMENT '1:iOS  0: android',
  `token` varchar(255) DEFAULT NULL COMMENT '设备token',
  `push_switch` tinyint(3) unsigned DEFAULT '1' COMMENT '推送通知开关 0 关 1 开',
  `created_time` int(10) unsigned DEFAULT '0' COMMENT '添加时间',
  `version` tinyint(5) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '2013-12-02 16:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '2013-12-02 16:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户端信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_client`
--

LOCK TABLES `o2omobile_client` WRITE;
/*!40000 ALTER TABLE `o2omobile_client` DISABLE KEYS */;
INSERT INTO `o2omobile_client` VALUES (1,'',2,'android','',1,0,1,'2016-04-10 00:56:59','2016-04-10 23:00:14'),(2,'137942523440017',3,'android','',1,0,1,'2016-04-10 01:15:04','2016-04-10 22:05:52'),(3,'860310028024505',4,'android','',1,0,1,'2016-04-10 20:12:35','2016-04-10 23:00:28'),(4,'',5,'android','',1,0,1,'2016-04-10 20:19:12','2016-04-10 20:19:12');
/*!40000 ALTER TABLE `o2omobile_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_client_session`
--

DROP TABLE IF EXISTS `o2omobile_client_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_client_session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_client_session`
--

LOCK TABLES `o2omobile_client_session` WRITE;
/*!40000 ALTER TABLE `o2omobile_client_session` DISABLE KEYS */;
INSERT INTO `o2omobile_client_session` VALUES (1,2,'sess_570a323f1d562','2016-05-10 23:00:15'),(2,3,'sess_570a25803fde8','2016-05-10 22:05:52'),(3,4,'sess_570a324cd8224','2016-05-10 23:00:28'),(4,5,'sess_570a0c7fadaa6','2016-05-10 20:19:11');
/*!40000 ALTER TABLE `o2omobile_client_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_comments`
--

DROP TABLE IF EXISTS `o2omobile_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0:订单,1:其它',
  `o_id` int(10) unsigned NOT NULL DEFAULT '0',
  `s_user` int(10) unsigned NOT NULL DEFAULT '0',
  `o_user` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `rank` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_comments`
--

LOCK TABLES `o2omobile_comments` WRITE;
/*!40000 ALTER TABLE `o2omobile_comments` DISABLE KEYS */;
INSERT INTO `o2omobile_comments` VALUES (1,0,1,4,2,'很不错',5,'2016-04-10 23:00:50',NULL,'2016-04-10 23:00:50');
/*!40000 ALTER TABLE `o2omobile_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_failed_jobs`
--

DROP TABLE IF EXISTS `o2omobile_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_failed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='队列失败记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_failed_jobs`
--

LOCK TABLES `o2omobile_failed_jobs` WRITE;
/*!40000 ALTER TABLE `o2omobile_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_feedback`
--

DROP TABLE IF EXISTS `o2omobile_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_feedback`
--

LOCK TABLES `o2omobile_feedback` WRITE;
/*!40000 ALTER TABLE `o2omobile_feedback` DISABLE KEYS */;
INSERT INTO `o2omobile_feedback` VALUES (1,3,'做的很好','2016-04-10 05:33:05');
/*!40000 ALTER TABLE `o2omobile_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_history`
--

DROP TABLE IF EXISTS `o2omobile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '操作者id',
  `order_status` tinyint(3) unsigned NOT NULL COMMENT '订单状态',
  `note` text NOT NULL COMMENT '取消订单的原因',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='订单处理状态记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_history`
--

LOCK TABLES `o2omobile_history` WRITE;
/*!40000 ALTER TABLE `o2omobile_history` DISABLE KEYS */;
INSERT INTO `o2omobile_history` VALUES (1,1,2,0,'','2016-04-09 13:10:51'),(2,2,3,0,'','2016-04-09 13:21:08'),(3,2,3,8,'','2016-04-10 07:43:44'),(4,1,4,1,'','2016-04-10 10:55:17'),(5,1,4,2,'','2016-04-10 10:56:33'),(6,1,2,3,'','2016-04-10 11:00:04'),(7,1,4,4,'','2016-04-10 11:00:38'),(8,1,4,5,'','2016-04-10 11:00:50');
/*!40000 ALTER TABLE `o2omobile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_log`
--

DROP TABLE IF EXISTS `o2omobile_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '操作人员ID',
  `object_id` varchar(256) DEFAULT NULL,
  `action` varchar(256) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_log`
--

LOCK TABLES `o2omobile_log` WRITE;
/*!40000 ALTER TABLE `o2omobile_log` DISABLE KEYS */;
INSERT INTO `o2omobile_log` VALUES (1,1,'1','创建服务','45.62.112.142','2016-04-10 00:55:24','2016-04-10 00:55:24',NULL),(2,1,'1','删除服务','45.62.112.142','2016-04-10 00:55:35','2016-04-10 00:55:35',NULL),(3,1,'2','创建服务','104.255.221.27','2016-04-10 01:00:30','2016-04-10 01:00:30',NULL),(4,1,'3','创建服务','104.255.221.27','2016-04-10 01:02:57','2016-04-10 01:02:57',NULL),(5,1,'4','创建服务','104.255.221.27','2016-04-10 01:03:35','2016-04-10 01:03:35',NULL),(6,1,'5','创建服务','104.255.221.27','2016-04-10 01:04:04','2016-04-10 01:04:04',NULL),(7,1,'6','创建服务','104.255.221.27','2016-04-10 01:04:27','2016-04-10 01:04:27',NULL),(8,1,'7','创建服务','104.255.221.27','2016-04-10 01:04:53','2016-04-10 01:04:53',NULL),(9,1,'1','添加“robocup”的认证','104.255.221.27','2016-04-10 01:05:28','2016-04-10 01:05:28',NULL),(10,1,'8','创建服务','45.62.112.142','2016-04-10 01:16:21','2016-04-10 01:16:21',NULL),(11,1,'1','创建认证','45.62.112.142','2016-04-10 01:17:57','2016-04-10 01:17:57',NULL),(12,1,'2','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:18:11','2016-04-10 01:18:11',NULL),(13,1,'1','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:18:27','2016-04-10 01:18:27',NULL),(14,1,'8','删除服务','45.62.112.142','2016-04-10 01:21:45','2016-04-10 01:21:45',NULL),(15,1,'1','删除认证','45.62.112.142','2016-04-10 01:30:43','2016-04-10 01:30:43',NULL),(16,1,'3','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:53:59','2016-04-10 01:53:59',NULL),(17,1,'4','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:54:02','2016-04-10 01:54:02',NULL),(18,1,'5','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:54:05','2016-04-10 01:54:05',NULL),(19,1,'6','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:54:09','2016-04-10 01:54:09',NULL),(20,1,'7','添加“计院404宿舍”的认证','45.62.112.142','2016-04-10 01:54:12','2016-04-10 01:54:12',NULL),(21,1,'8','添加“robocup”的认证','45.62.112.142','2016-04-10 01:54:24','2016-04-10 01:54:24',NULL),(22,1,'9','添加“robocup”的认证','45.62.112.142','2016-04-10 01:54:27','2016-04-10 01:54:27',NULL),(23,1,'10','添加“robocup”的认证','45.62.112.142','2016-04-10 01:54:30','2016-04-10 01:54:30',NULL),(24,1,'11','添加“robocup”的认证','45.62.112.142','2016-04-10 01:54:35','2016-04-10 01:54:35',NULL),(25,1,'12','添加“robocup”的认证','45.62.112.142','2016-04-10 01:54:51','2016-04-10 01:54:51',NULL),(26,1,'2','编辑服务','45.62.112.142','2016-04-10 20:37:23','2016-04-10 20:37:23',NULL),(27,1,'7','编辑服务','45.62.112.142','2016-04-10 20:37:40','2016-04-10 20:37:40',NULL),(28,1,'2','编辑服务','45.62.112.142','2016-04-10 20:37:49','2016-04-10 20:37:49',NULL),(29,1,'2','编辑服务','45.62.112.142','2016-04-10 20:50:42','2016-04-10 20:50:42',NULL),(30,1,'7','编辑服务','45.62.112.142','2016-04-10 20:50:53','2016-04-10 20:50:53',NULL),(31,1,'1','为计院404宿舍进行申请服务成功的操作','104.255.221.27','2016-04-10 22:26:12','2016-04-10 22:26:12',NULL),(32,1,'2','为计院404宿舍进行申请服务成功的操作','104.255.221.27','2016-04-10 22:27:18','2016-04-10 22:27:18',NULL),(33,1,'4','为南开大学计院404宿舍进行申请服务成功的操作','104.255.221.27','2016-04-10 22:43:42','2016-04-10 22:43:42',NULL),(34,1,'6','为南开大学计院404宿舍进行申请服务成功的操作','104.255.221.27','2016-04-10 22:55:04','2016-04-10 22:55:04',NULL),(35,1,'5','为计院404宿舍进行申请服务成功的操作','104.255.221.27','2016-04-10 22:55:07','2016-04-10 22:55:07',NULL);
/*!40000 ALTER TABLE `o2omobile_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_message`
--

DROP TABLE IF EXISTS `o2omobile_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '消息类型 1系统消息 2订单,3其他',
  `url` varchar(255) NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_readed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `is_pushed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_message`
--

LOCK TABLES `o2omobile_message` WRITE;
/*!40000 ALTER TABLE `o2omobile_message` DISABLE KEYS */;
INSERT INTO `o2omobile_message` VALUES (1,3,'申请《学习》服务成功',3,'',0,0,1,'2016-04-10 22:26:12','2016-04-10 22:26:12',NULL),(2,3,'申请《联谊》服务成功',3,'',0,0,1,'2016-04-10 22:27:18','2016-04-10 22:27:18',NULL),(3,4,'申请《联谊》服务成功',3,'',0,1,1,'2016-04-10 22:43:42','2016-04-10 22:51:44',NULL),(4,4,'申请《学习》服务成功',3,'',0,1,1,'2016-04-10 22:55:04','2016-04-10 22:58:37',NULL),(5,3,'申请《其他》服务成功',3,'',0,0,1,'2016-04-10 22:55:07','2016-04-10 22:55:07',NULL),(6,2,'“南开大学计院404宿舍”接受了你的订单',2,'',1,1,0,'2016-04-10 22:55:17','2016-04-10 22:59:45',NULL),(7,2,'“南开大学计院404宿舍”完成了工作',2,'',1,1,0,'2016-04-10 22:56:33','2016-04-10 22:59:12',NULL),(8,4,'“robocup”给你线下支付',2,'',1,1,0,'2016-04-10 23:00:04','2016-04-10 23:00:34',NULL),(9,2,'“南开大学计院404宿舍”已确认你的支付',2,'',1,0,0,'2016-04-10 23:00:38','2016-04-10 23:00:38',NULL),(10,2,'“南开大学计院404宿舍”已评论你',2,'',1,0,0,'2016-04-10 23:00:50','2016-04-10 23:00:50',NULL);
/*!40000 ALTER TABLE `o2omobile_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_my_certify`
--

DROP TABLE IF EXISTS `o2omobile_my_certify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_my_certify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `certify_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='我的认证表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_my_certify`
--

LOCK TABLES `o2omobile_my_certify` WRITE;
/*!40000 ALTER TABLE `o2omobile_my_certify` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_my_certify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_my_services`
--

DROP TABLE IF EXISTS `o2omobile_my_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_my_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `services_id` int(11) NOT NULL COMMENT '服务id',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='我的服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_my_services`
--

LOCK TABLES `o2omobile_my_services` WRITE;
/*!40000 ALTER TABLE `o2omobile_my_services` DISABLE KEYS */;
INSERT INTO `o2omobile_my_services` VALUES (1,2,7,0.00,'2016-04-10 01:05:28','2016-04-10 01:05:28',NULL),(2,3,7,0.00,'2016-04-10 01:18:11','2016-04-10 01:18:11',NULL),(3,3,2,0.00,'2016-04-10 01:53:59','2016-04-10 01:53:59',NULL),(4,3,3,0.00,'2016-04-10 01:54:02','2016-04-10 01:54:02',NULL),(5,3,4,0.00,'2016-04-10 01:54:05','2016-04-10 01:54:05',NULL),(6,3,5,0.00,'2016-04-10 01:54:09','2016-04-10 01:54:09',NULL),(7,3,6,0.00,'2016-04-10 01:54:12','2016-04-10 01:54:12',NULL),(8,2,3,0.00,'2016-04-10 01:54:24','2016-04-10 01:54:24',NULL),(9,2,4,0.00,'2016-04-10 01:54:27','2016-04-10 01:54:27',NULL),(10,2,5,0.00,'2016-04-10 01:54:30','2016-04-10 01:54:30',NULL),(11,2,6,0.00,'2016-04-10 01:54:35','2016-04-10 01:54:35',NULL),(12,2,2,0.00,'2016-04-10 01:54:51','2016-04-10 01:54:51',NULL),(13,4,6,0.00,'2016-04-10 22:43:42','2016-04-10 22:43:42',NULL),(14,4,7,0.00,'2016-04-10 22:55:04','2016-04-10 22:55:04',NULL);
/*!40000 ALTER TABLE `o2omobile_my_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_orders`
--

DROP TABLE IF EXISTS `o2omobile_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) NOT NULL COMMENT '订单序列号',
  `service_type` int(11) NOT NULL COMMENT '服务类型id',
  `employer` int(11) NOT NULL COMMENT '雇主id',
  `employee` int(11) NOT NULL COMMENT '雇员id',
  `text` text NOT NULL,
  `voice` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL COMMENT '音频时间长度 秒',
  `location` varchar(255) NOT NULL,
  `lon` varchar(255) NOT NULL COMMENT '经度',
  `lat` varchar(255) NOT NULL COMMENT '纬度',
  `offer_price` decimal(10,2) NOT NULL COMMENT '价格',
  `transaction_price` decimal(10,2) NOT NULL COMMENT '最终成交价',
  `pay_code` tinyint(3) unsigned NOT NULL COMMENT '0在线支付 1线下支付',
  `appointment_time` varchar(255) NOT NULL COMMENT '约定时间',
  `accept_time` varchar(255) NOT NULL COMMENT '接单时间',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '0,// 客户发单 1,// 已确认接单 2,	// 工作完成 3,	// 已付款 4,	// 付款已确认 5,	// 订单结束 6		// 订单取消',
  `push_number` int(11) NOT NULL COMMENT '此订单推送给了多少人',
  `default_receiver_id` int(11) NOT NULL COMMENT '默认的接单人，由请他帮忙触发',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TransID` varchar(255) NOT NULL COMMENT '支付成功的订单id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_orders`
--

LOCK TABLES `o2omobile_orders` WRITE;
/*!40000 ALTER TABLE `o2omobile_orders` DISABLE KEYS */;
INSERT INTO `o2omobile_orders` VALUES (1,'201604092110511',7,2,4,'打羽毛球','',0,'{\"lat\":38.999736785889,\"lon\":117.31587219238,\"name\":\"\\u4f53\\u80b2\\u573a\"}','117.31587219238','38.999736785889',11.00,11.00,1,'2016-04-09 21:10','2016/04/10 18:55:17',5,66,0,'2016-04-10 01:10:51','2016-04-10 01:10:51','',NULL),(2,'201604092121082',7,3,0,'','',0,'{\"lat\":38.999736785889,\"lon\":117.31587219238,\"name\":\"\\u67e5\"}','117.31587219238','38.999736785889',242.00,242.00,0,'2016-04-09 21:20','',8,51,0,'2016-04-10 01:21:08','2016-04-10 01:21:08','',NULL);
/*!40000 ALTER TABLE `o2omobile_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_permission_group`
--

DROP TABLE IF EXISTS `o2omobile_permission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_permission_group` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `permissions` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_permission_group`
--

LOCK TABLES `o2omobile_permission_group` WRITE;
/*!40000 ALTER TABLE `o2omobile_permission_group` DISABLE KEYS */;
INSERT INTO `o2omobile_permission_group` VALUES (1,'管理员组','*','2014-07-03 06:38:55','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `o2omobile_permission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_report`
--

DROP TABLE IF EXISTS `o2omobile_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operate_id` int(11) NOT NULL COMMENT '投诉人',
  `user_id` int(11) NOT NULL COMMENT '被投诉',
  `order_id` int(11) NOT NULL COMMENT '被投诉的订单',
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投诉 举报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_report`
--

LOCK TABLES `o2omobile_report` WRITE;
/*!40000 ALTER TABLE `o2omobile_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_services`
--

DROP TABLE IF EXISTS `o2omobile_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `name` char(32) NOT NULL,
  `desc` char(255) NOT NULL,
  `imgurl` char(255) NOT NULL,
  `state` tinyint(2) NOT NULL DEFAULT '0',
  `usort` smallint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_services`
--

LOCK TABLES `o2omobile_services` WRITE;
/*!40000 ALTER TABLE `o2omobile_services` DISABLE KEYS */;
INSERT INTO `o2omobile_services` VALUES (2,0,'其他','除了上诉功能外其他请求','http://104.255.221.27/storage/uploads/70482c210056f41ca7556443ce10d4435708fcec0d611.png',0,0,'2016-04-10 08:50:42','0000-00-00 00:00:00'),(3,0,'易物','交换彼此之间不需要的东西','http://104.255.221.27/storage/uploads/086c5ce3bd8a0c9d7d591cf8f8892bd35708fd64da4d4.png',0,1,'2016-04-09 13:02:57','0000-00-00 00:00:00'),(4,0,'运动','约上你的好友一起运动吧','http://104.255.221.27/storage/uploads/efe7ccceec21916cc2f22d4983f224ad5708fd9955aed.png',0,2,'2016-04-09 13:03:35','0000-00-00 00:00:00'),(5,0,'拼车','一起拼车出行','http://104.255.221.27/storage/uploads/e5f8b8e94526070767c9983533fab1655708fdba3c2b5.png',0,3,'2016-04-09 13:04:04','0000-00-00 00:00:00'),(6,0,'联谊','和你不认识的团体一起联谊办活动','http://104.255.221.27/storage/uploads/b2a5513c76661d6ac78384b549da4a875708fdcd86cb7.png',0,4,'2016-04-09 13:04:27','0000-00-00 00:00:00'),(7,0,'学习','交流学习','http://104.255.221.27/storage/uploads/7b0ff5c72fe4b601aa557aec2b71c9ac5708fdea4920c.png',0,5,'2016-04-10 08:50:53','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `o2omobile_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_test`
--

DROP TABLE IF EXISTS `o2omobile_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `input1` varchar(255) NOT NULL,
  `times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='测试用的';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_test`
--

LOCK TABLES `o2omobile_test` WRITE;
/*!40000 ALTER TABLE `o2omobile_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_users`
--

DROP TABLE IF EXISTS `o2omobile_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(20) DEFAULT NULL,
  `username` char(50) DEFAULT NULL,
  `password` char(50) NOT NULL,
  `role` tinyint(2) unsigned NOT NULL COMMENT '0:普通用户，1:自由人审核中，2:自由人，99:管理员',
  `name` varchar(255) NOT NULL COMMENT '真实姓名',
  `bankcard` varchar(255) NOT NULL COMMENT '银行卡',
  `identity_card` varchar(255) NOT NULL COMMENT '身份证',
  `location` varchar(255) NOT NULL COMMENT '用户位置 每次登陆要更新',
  `comment_goodrate` float NOT NULL COMMENT '好评率',
  `comment_count` int(11) NOT NULL COMMENT '被评论数',
  `lon` varchar(255) NOT NULL COMMENT '经度',
  `lat` varchar(255) NOT NULL COMMENT '纬度',
  `balance` decimal(10,2) NOT NULL COMMENT '余额',
  `test` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1是禁用',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` char(255) DEFAULT NULL,
  `nickname` char(50) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `invite_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0是男',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_users`
--

LOCK TABLES `o2omobile_users` WRITE;
/*!40000 ALTER TABLE `o2omobile_users` DISABLE KEYS */;
INSERT INTO `o2omobile_users` VALUES (1,NULL,'admin','26f42db4e3ac4169fec8a104b6f862bd',99,'管理员','','','',0,0,'116.45994948105','39.91429347597',0.00,0,0,'2014-11-04 22:34:56','2014-07-05 02:48:57',NULL,'VAVm2d5nMMIEsMkPn4XDcZK3AklWyAgYrtOobqYNIYsMR2bHeJ2MD5wRtieZ','admin1','','','',0,1,0),(2,'18822265602',NULL,'4f519f2545f540e352acbb912c2816fd',0,'','','','',1,1,'117.31587219238','38.999736785889',0.00,0,0,'2016-04-10 22:59:06','2016-04-10 00:56:56',NULL,NULL,'robocup','','','/2016/0409/c28fde4b301245661917bae59eb1832012569.jpg',0,0,0),(3,'15620949833',NULL,'4f519f2545f540e352acbb912c2816fd',0,'','','','',0,0,'116.40625762939','39.911407470703',0.00,0,0,'2016-04-10 22:05:52','2016-04-10 01:15:04',NULL,NULL,'计院404宿舍','创无止境','','/2016/0409/c28fde4b301245661917bae59eb1832013582.jpg',0,0,0),(4,'15122952980',NULL,'4f519f2545f540e352acbb912c2816fd',2,'','','','',0,0,'117.31587219238','38.999736785889',0.00,0,0,'2016-04-10 20:15:03','2016-04-10 20:12:35',NULL,NULL,'南开大学计院404宿舍','','','/2016/0410/c28fde4b301245661917bae59eb1832023571.jpg',0,0,0),(5,'13067069588',NULL,'4f519f2545f540e352acbb912c2816fd',2,'','','','',0,0,'116.40625762939','39.911407470703',0.00,0,0,'2016-04-10 20:19:10','2016-04-10 20:19:10',NULL,NULL,'tjuandroid','','','',0,0,0);
/*!40000 ALTER TABLE `o2omobile_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_users_invitecode`
--

DROP TABLE IF EXISTS `o2omobile_users_invitecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_users_invitecode` (
  `user_id` int(10) unsigned NOT NULL,
  `invite_code` char(16) NOT NULL,
  `invite_counts` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `invite_code` (`invite_code`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `invite_code_2` (`invite_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_users_invitecode`
--

LOCK TABLES `o2omobile_users_invitecode` WRITE;
/*!40000 ALTER TABLE `o2omobile_users_invitecode` DISABLE KEYS */;
INSERT INTO `o2omobile_users_invitecode` VALUES (3,'K2Y8i7',0,'2016-04-10 03:29:02','2016-04-10 03:29:02'),(4,'rE6sef',0,'2016-04-10 20:46:48','2016-04-10 20:46:48');
/*!40000 ALTER TABLE `o2omobile_users_invitecode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2omobile_withdraw`
--

DROP TABLE IF EXISTS `o2omobile_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2omobile_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0是提现 1是注册奖励，2邀请，3是提成',
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT ' 0 处理中   1 提现成功   2 提现失败',
  `note` text NOT NULL COMMENT '失败原因',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的提现表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2omobile_withdraw`
--

LOCK TABLES `o2omobile_withdraw` WRITE;
/*!40000 ALTER TABLE `o2omobile_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2omobile_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'api_o2omobile_com_cn'
--
/*!50003 DROP FUNCTION IF EXISTS `GetDistance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetDistance`( lat1 FLOAT, lon1 FLOAT, lat2 FLOAT, lon2 FLOAT ) RETURNS float
BEGIN
    DECLARE Distance FLOAT;
    SET Distance = round(((2 * asin(sqrt(pow(sin((lat1 * 3.1415926535898 / 180.0 - lat2 * 3.1415926535898 / 180.0)/2),2) +  
    cos((lat1 * 3.1415926535898 / 180.0))*cos((lat2 * 3.1415926535898 / 180.0))*pow(sin((lon1 * 3.1415926535898 / 180.0  - lon2 * 3.1415926535898 / 180.0)/2),2))))*6378.137)*10000)/10000;
    RETURN Distance;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 22:52:58
