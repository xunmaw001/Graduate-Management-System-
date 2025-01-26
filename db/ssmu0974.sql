-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmu0974
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmu0974`
--

/*!40000 DROP DATABASE IF EXISTS `ssmu0974`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmu0974` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmu0974`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-01-05 11:00:48','关于我们','ABOUT US','采撷一串串的梦，学校的嬉戏，回想起是那么缤纷绚丽;而成长的追逐，竟已一跃而过。世间的尘嚣喧扰，似乎沉寂，让我重新拾取记忆的落英。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengjixinxi`
--

DROP TABLE IF EXISTS `chengjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `lilunkechengji` varchar(200) DEFAULT NULL COMMENT '理论课成绩',
  `shijiankechengji` varchar(200) DEFAULT NULL COMMENT '实践课成绩',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `pingyu` longtext COMMENT '评语',
  `banjipaiming` varchar(200) DEFAULT NULL COMMENT '班级排名',
  `nianjipaiming` varchar(200) DEFAULT NULL COMMENT '年级排名',
  `jilushijian` date DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='成绩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjixinxi`
--

LOCK TABLES `chengjixinxi` WRITE;
/*!40000 ALTER TABLE `chengjixinxi` DISABLE KEYS */;
INSERT INTO `chengjixinxi` VALUES (131,'2023-01-05 11:00:48','课程名称1','导师工号1','导师姓名1','研究生账号1','研究生姓名1','理论课成绩1','实践课成绩1','是','评语1','班级排名1','年级排名1','2023-01-05'),(132,'2023-01-05 11:00:48','课程名称2','导师工号2','导师姓名2','研究生账号2','研究生姓名2','理论课成绩2','实践课成绩2','是','评语2','班级排名2','年级排名2','2023-01-05'),(133,'2023-01-05 11:00:48','课程名称3','导师工号3','导师姓名3','研究生账号3','研究生姓名3','理论课成绩3','实践课成绩3','是','评语3','班级排名3','年级排名3','2023-01-05'),(134,'2023-01-05 11:00:48','课程名称4','导师工号4','导师姓名4','研究生账号4','研究生姓名4','理论课成绩4','实践课成绩4','是','评语4','班级排名4','年级排名4','2023-01-05'),(135,'2023-01-05 11:00:48','课程名称5','导师工号5','导师姓名5','研究生账号5','研究生姓名5','理论课成绩5','实践课成绩5','是','评语5','班级排名5','年级排名5','2023-01-05'),(136,'2023-01-05 11:00:48','课程名称6','导师工号6','导师姓名6','研究生账号6','研究生姓名6','理论课成绩6','实践课成绩6','是','评语6','班级排名6','年级排名6','2023-01-05'),(137,'2023-01-05 11:00:48','课程名称7','导师工号7','导师姓名7','研究生账号7','研究生姓名7','理论课成绩7','实践课成绩7','是','评语7','班级排名7','年级排名7','2023-01-05'),(138,'2023-01-05 11:00:48','课程名称8','导师工号8','导师姓名8','研究生账号8','研究生姓名8','理论课成绩8','实践课成绩8','是','评语8','班级排名8','年级排名8','2023-01-05');
/*!40000 ALTER TABLE `chengjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daoshi`
--

DROP TABLE IF EXISTS `daoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshigonghao` varchar(200) NOT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) NOT NULL COMMENT '导师姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoshigonghao` (`daoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='导师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daoshi`
--

LOCK TABLES `daoshi` WRITE;
/*!40000 ALTER TABLE `daoshi` DISABLE KEYS */;
INSERT INTO `daoshi` VALUES (21,'2023-01-05 11:00:47','导师工号1','导师姓名1','123456','男','upload/daoshi_touxiang1.jpg','13823888881'),(22,'2023-01-05 11:00:47','导师工号2','导师姓名2','123456','男','upload/daoshi_touxiang2.jpg','13823888882'),(23,'2023-01-05 11:00:47','导师工号3','导师姓名3','123456','男','upload/daoshi_touxiang3.jpg','13823888883'),(24,'2023-01-05 11:00:47','导师工号4','导师姓名4','123456','男','upload/daoshi_touxiang4.jpg','13823888884'),(25,'2023-01-05 11:00:47','导师工号5','导师姓名5','123456','男','upload/daoshi_touxiang5.jpg','13823888885'),(26,'2023-01-05 11:00:47','导师工号6','导师姓名6','123456','男','upload/daoshi_touxiang6.jpg','13823888886'),(27,'2023-01-05 11:00:47','导师工号7','导师姓名7','123456','男','upload/daoshi_touxiang7.jpg','13823888887'),(28,'2023-01-05 11:00:47','导师工号8','导师姓名8','123456','男','upload/daoshi_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `daoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daoshixinxi`
--

DROP TABLE IF EXISTS `daoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `tupian` longtext COMMENT '图片',
  `jiaoling` varchar(200) DEFAULT NULL COMMENT '教龄',
  `suoshoukecheng` varchar(200) DEFAULT NULL COMMENT '所授课程',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `daoshijianjie` longtext COMMENT '导师简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='导师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daoshixinxi`
--

LOCK TABLES `daoshixinxi` WRITE;
/*!40000 ALTER TABLE `daoshixinxi` DISABLE KEYS */;
INSERT INTO `daoshixinxi` VALUES (31,'2023-01-05 11:00:47','导师工号1','导师姓名1','upload/daoshixinxi_tupian1.jpg,upload/daoshixinxi_tupian2.jpg,upload/daoshixinxi_tupian3.jpg','教龄1','所授课程1','课程分类1','课程类型1','导师简介1'),(32,'2023-01-05 11:00:47','导师工号2','导师姓名2','upload/daoshixinxi_tupian2.jpg,upload/daoshixinxi_tupian3.jpg,upload/daoshixinxi_tupian4.jpg','教龄2','所授课程2','课程分类2','课程类型2','导师简介2'),(33,'2023-01-05 11:00:47','导师工号3','导师姓名3','upload/daoshixinxi_tupian3.jpg,upload/daoshixinxi_tupian4.jpg,upload/daoshixinxi_tupian5.jpg','教龄3','所授课程3','课程分类3','课程类型3','导师简介3'),(34,'2023-01-05 11:00:47','导师工号4','导师姓名4','upload/daoshixinxi_tupian4.jpg,upload/daoshixinxi_tupian5.jpg,upload/daoshixinxi_tupian6.jpg','教龄4','所授课程4','课程分类4','课程类型4','导师简介4'),(35,'2023-01-05 11:00:47','导师工号5','导师姓名5','upload/daoshixinxi_tupian5.jpg,upload/daoshixinxi_tupian6.jpg,upload/daoshixinxi_tupian7.jpg','教龄5','所授课程5','课程分类5','课程类型5','导师简介5'),(36,'2023-01-05 11:00:47','导师工号6','导师姓名6','upload/daoshixinxi_tupian6.jpg,upload/daoshixinxi_tupian7.jpg,upload/daoshixinxi_tupian8.jpg','教龄6','所授课程6','课程分类6','课程类型6','导师简介6'),(37,'2023-01-05 11:00:47','导师工号7','导师姓名7','upload/daoshixinxi_tupian7.jpg,upload/daoshixinxi_tupian8.jpg,upload/daoshixinxi_tupian9.jpg','教龄7','所授课程7','课程分类7','课程类型7','导师简介7'),(38,'2023-01-05 11:00:47','导师工号8','导师姓名8','upload/daoshixinxi_tupian8.jpg,upload/daoshixinxi_tupian9.jpg,upload/daoshixinxi_tupian10.jpg','教龄8','所授课程8','课程分类8','课程类型8','导师简介8');
/*!40000 ALTER TABLE `daoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaowuxinxi`
--

DROP TABLE IF EXISTS `jiaowuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaowubianhao` varchar(200) DEFAULT NULL COMMENT '教务编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiaoxuerenwu` longtext COMMENT '教学任务',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaowubianhao` (`jiaowubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='教务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaowuxinxi`
--

LOCK TABLES `jiaowuxinxi` WRITE;
/*!40000 ALTER TABLE `jiaowuxinxi` DISABLE KEYS */;
INSERT INTO `jiaowuxinxi` VALUES (141,'2023-01-05 11:00:48','1111111111','课程名称1','课程分类1','课程类型1','教学任务1','2023-01-05','研究生账号1','研究生姓名1','导师工号1','导师姓名1'),(142,'2023-01-05 11:00:48','2222222222','课程名称2','课程分类2','课程类型2','教学任务2','2023-01-05','研究生账号2','研究生姓名2','导师工号2','导师姓名2'),(143,'2023-01-05 11:00:48','3333333333','课程名称3','课程分类3','课程类型3','教学任务3','2023-01-05','研究生账号3','研究生姓名3','导师工号3','导师姓名3'),(144,'2023-01-05 11:00:48','4444444444','课程名称4','课程分类4','课程类型4','教学任务4','2023-01-05','研究生账号4','研究生姓名4','导师工号4','导师姓名4'),(145,'2023-01-05 11:00:48','5555555555','课程名称5','课程分类5','课程类型5','教学任务5','2023-01-05','研究生账号5','研究生姓名5','导师工号5','导师姓名5'),(146,'2023-01-05 11:00:48','6666666666','课程名称6','课程分类6','课程类型6','教学任务6','2023-01-05','研究生账号6','研究生姓名6','导师工号6','导师姓名6'),(147,'2023-01-05 11:00:48','7777777777','课程名称7','课程分类7','课程类型7','教学任务7','2023-01-05','研究生账号7','研究生姓名7','导师工号7','导师姓名7'),(148,'2023-01-05 11:00:48','8888888888','课程名称8','课程分类8','课程类型8','教学任务8','2023-01-05','研究生账号8','研究生姓名8','导师工号8','导师姓名8');
/*!40000 ALTER TABLE `jiaowuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaojibaoming`
--

DROP TABLE IF EXISTS `kaojibaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaojibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kaojijibie` varchar(200) DEFAULT NULL COMMENT '考级级别',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='考级报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaojibaoming`
--

LOCK TABLES `kaojibaoming` WRITE;
/*!40000 ALTER TABLE `kaojibaoming` DISABLE KEYS */;
INSERT INTO `kaojibaoming` VALUES (91,'2023-01-05 11:00:48','1111111111','课程名称1','课程分类1','课程类型1','考级级别1','价格1','2023-01-05','研究生账号1','研究生姓名1','专业1','未支付'),(92,'2023-01-05 11:00:48','2222222222','课程名称2','课程分类2','课程类型2','考级级别2','价格2','2023-01-05','研究生账号2','研究生姓名2','专业2','未支付'),(93,'2023-01-05 11:00:48','3333333333','课程名称3','课程分类3','课程类型3','考级级别3','价格3','2023-01-05','研究生账号3','研究生姓名3','专业3','未支付'),(94,'2023-01-05 11:00:48','4444444444','课程名称4','课程分类4','课程类型4','考级级别4','价格4','2023-01-05','研究生账号4','研究生姓名4','专业4','未支付'),(95,'2023-01-05 11:00:48','5555555555','课程名称5','课程分类5','课程类型5','考级级别5','价格5','2023-01-05','研究生账号5','研究生姓名5','专业5','未支付'),(96,'2023-01-05 11:00:48','6666666666','课程名称6','课程分类6','课程类型6','考级级别6','价格6','2023-01-05','研究生账号6','研究生姓名6','专业6','未支付'),(97,'2023-01-05 11:00:48','7777777777','课程名称7','课程分类7','课程类型7','考级级别7','价格7','2023-01-05','研究生账号7','研究生姓名7','专业7','未支付'),(98,'2023-01-05 11:00:48','8888888888','课程名称8','课程分类8','课程类型8','考级级别8','价格8','2023-01-05','研究生账号8','研究生姓名8','专业8','未支付');
/*!40000 ALTER TABLE `kaojibaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaojijibie`
--

DROP TABLE IF EXISTS `kaojijibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaojijibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaojijibie` varchar(200) NOT NULL COMMENT '考级级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='考级级别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaojijibie`
--

LOCK TABLES `kaojijibie` WRITE;
/*!40000 ALTER TABLE `kaojijibie` DISABLE KEYS */;
INSERT INTO `kaojijibie` VALUES (71,'2023-01-05 11:00:48','考级级别1'),(72,'2023-01-05 11:00:48','考级级别2'),(73,'2023-01-05 11:00:48','考级级别3'),(74,'2023-01-05 11:00:48','考级级别4'),(75,'2023-01-05 11:00:48','考级级别5'),(76,'2023-01-05 11:00:48','考级级别6'),(77,'2023-01-05 11:00:48','考级级别7'),(78,'2023-01-05 11:00:48','考级级别8');
/*!40000 ALTER TABLE `kaojijibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaojixinxi`
--

DROP TABLE IF EXISTS `kaojixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaojixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kaojijibie` varchar(200) DEFAULT NULL COMMENT '考级级别',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tupian` longtext COMMENT '图片',
  `baomingxuzhi` longtext COMMENT '报名须知',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='考级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaojixinxi`
--

LOCK TABLES `kaojixinxi` WRITE;
/*!40000 ALTER TABLE `kaojixinxi` DISABLE KEYS */;
INSERT INTO `kaojixinxi` VALUES (81,'2023-01-05 11:00:48','1111111111','课程名称1','课程分类1','课程类型1','考级级别1','价格1','upload/kaojixinxi_tupian1.jpg,upload/kaojixinxi_tupian2.jpg,upload/kaojixinxi_tupian3.jpg','报名须知1','详情1'),(82,'2023-01-05 11:00:48','2222222222','课程名称2','课程分类2','课程类型2','考级级别2','价格2','upload/kaojixinxi_tupian2.jpg,upload/kaojixinxi_tupian3.jpg,upload/kaojixinxi_tupian4.jpg','报名须知2','详情2'),(83,'2023-01-05 11:00:48','3333333333','课程名称3','课程分类3','课程类型3','考级级别3','价格3','upload/kaojixinxi_tupian3.jpg,upload/kaojixinxi_tupian4.jpg,upload/kaojixinxi_tupian5.jpg','报名须知3','详情3'),(84,'2023-01-05 11:00:48','4444444444','课程名称4','课程分类4','课程类型4','考级级别4','价格4','upload/kaojixinxi_tupian4.jpg,upload/kaojixinxi_tupian5.jpg,upload/kaojixinxi_tupian6.jpg','报名须知4','详情4'),(85,'2023-01-05 11:00:48','5555555555','课程名称5','课程分类5','课程类型5','考级级别5','价格5','upload/kaojixinxi_tupian5.jpg,upload/kaojixinxi_tupian6.jpg,upload/kaojixinxi_tupian7.jpg','报名须知5','详情5'),(86,'2023-01-05 11:00:48','6666666666','课程名称6','课程分类6','课程类型6','考级级别6','价格6','upload/kaojixinxi_tupian6.jpg,upload/kaojixinxi_tupian7.jpg,upload/kaojixinxi_tupian8.jpg','报名须知6','详情6'),(87,'2023-01-05 11:00:48','7777777777','课程名称7','课程分类7','课程类型7','考级级别7','价格7','upload/kaojixinxi_tupian7.jpg,upload/kaojixinxi_tupian8.jpg,upload/kaojixinxi_tupian9.jpg','报名须知7','详情7'),(88,'2023-01-05 11:00:48','8888888888','课程名称8','课程分类8','课程类型8','考级级别8','价格8','upload/kaojixinxi_tupian8.jpg,upload/kaojixinxi_tupian9.jpg,upload/kaojixinxi_tupian10.jpg','报名须知8','详情8');
/*!40000 ALTER TABLE `kaojixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (41,'2023-01-05 11:00:48','课程分类1'),(42,'2023-01-05 11:00:48','课程分类2'),(43,'2023-01-05 11:00:48','课程分类3'),(44,'2023-01-05 11:00:48','课程分类4'),(45,'2023-01-05 11:00:48','课程分类5'),(46,'2023-01-05 11:00:48','课程分类6'),(47,'2023-01-05 11:00:48','课程分类7'),(48,'2023-01-05 11:00:48','课程分类8');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `xuefei` varchar(200) DEFAULT NULL COMMENT '学费',
  `tupian` longtext COMMENT '图片',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2023-01-05 11:00:48','1111111111','课程名称1','课程分类1','选修课','学费1','upload/kechengxinxi_tupian1.jpg,upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg','课程内容1','课程详情1','导师工号1','导师姓名1'),(52,'2023-01-05 11:00:48','2222222222','课程名称2','课程分类2','选修课','学费2','upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg','课程内容2','课程详情2','导师工号2','导师姓名2'),(53,'2023-01-05 11:00:48','3333333333','课程名称3','课程分类3','选修课','学费3','upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg','课程内容3','课程详情3','导师工号3','导师姓名3'),(54,'2023-01-05 11:00:48','4444444444','课程名称4','课程分类4','选修课','学费4','upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg','课程内容4','课程详情4','导师工号4','导师姓名4'),(55,'2023-01-05 11:00:48','5555555555','课程名称5','课程分类5','选修课','学费5','upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg','课程内容5','课程详情5','导师工号5','导师姓名5'),(56,'2023-01-05 11:00:48','6666666666','课程名称6','课程分类6','选修课','学费6','upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg','课程内容6','课程详情6','导师工号6','导师姓名6'),(57,'2023-01-05 11:00:48','7777777777','课程名称7','课程分类7','选修课','学费7','upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg','课程内容7','课程详情7','导师工号7','导师姓名7'),(58,'2023-01-05 11:00:48','8888888888','课程名称8','课程分类8','选修课','学费8','upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg,upload/kechengxinxi_tupian10.jpg','课程内容8','课程详情8','导师工号8','导师姓名8');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (151,'2023-01-05 11:00:48','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(152,'2023-01-05 11:00:48','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(153,'2023-01-05 11:00:48','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(154,'2023-01-05 11:00:48','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(155,'2023-01-05 11:00:48','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(156,'2023-01-05 11:00:48','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(157,'2023-01-05 11:00:48','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(158,'2023-01-05 11:00:48','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-01-05 11:00:48','系统简介','SYSTEM INTRODUCTION','坚信自己是颗星，穿云破雾亮晶晶。坚信自己是燧石，不怕敲打和曲折，坚信自己是人才，驱散浮云与阴霾。马上毕业，踏入社会，坚信你我有美好的未来。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-01-05 11:00:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuankebaoming`
--

DROP TABLE IF EXISTS `xuankebaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuankebaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `xuefei` varchar(200) DEFAULT NULL COMMENT '学费',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='选课报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuankebaoming`
--

LOCK TABLES `xuankebaoming` WRITE;
/*!40000 ALTER TABLE `xuankebaoming` DISABLE KEYS */;
INSERT INTO `xuankebaoming` VALUES (61,'2023-01-05 11:00:48','1111111111','课程名称1','课程分类1','课程类型1','学费1','2023-01-05','研究生账号1','研究生姓名1','专业1','导师工号1','导师姓名1','未支付'),(62,'2023-01-05 11:00:48','2222222222','课程名称2','课程分类2','课程类型2','学费2','2023-01-05','研究生账号2','研究生姓名2','专业2','导师工号2','导师姓名2','未支付'),(63,'2023-01-05 11:00:48','3333333333','课程名称3','课程分类3','课程类型3','学费3','2023-01-05','研究生账号3','研究生姓名3','专业3','导师工号3','导师姓名3','未支付'),(64,'2023-01-05 11:00:48','4444444444','课程名称4','课程分类4','课程类型4','学费4','2023-01-05','研究生账号4','研究生姓名4','专业4','导师工号4','导师姓名4','未支付'),(65,'2023-01-05 11:00:48','5555555555','课程名称5','课程分类5','课程类型5','学费5','2023-01-05','研究生账号5','研究生姓名5','专业5','导师工号5','导师姓名5','未支付'),(66,'2023-01-05 11:00:48','6666666666','课程名称6','课程分类6','课程类型6','学费6','2023-01-05','研究生账号6','研究生姓名6','专业6','导师工号6','导师姓名6','未支付'),(67,'2023-01-05 11:00:48','7777777777','课程名称7','课程分类7','课程类型7','学费7','2023-01-05','研究生账号7','研究生姓名7','专业7','导师工号7','导师姓名7','未支付'),(68,'2023-01-05 11:00:48','8888888888','课程名称8','课程分类8','课程类型8','学费8','2023-01-05','研究生账号8','研究生姓名8','专业8','导师工号8','导师姓名8','未支付');
/*!40000 ALTER TABLE `xuankebaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuejixinxi`
--

DROP TABLE IF EXISTS `xuejixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuejixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `ruxueshijian` date DEFAULT NULL COMMENT '入学时间',
  `biyeshijian` date DEFAULT NULL COMMENT '毕业时间',
  `xuejiqingkuang` longtext COMMENT '学籍情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='学籍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuejixinxi`
--

LOCK TABLES `xuejixinxi` WRITE;
/*!40000 ALTER TABLE `xuejixinxi` DISABLE KEYS */;
INSERT INTO `xuejixinxi` VALUES (101,'2023-01-05 11:00:48','研究生账号1','研究生姓名1','专业1','家庭住址1','身份证1','学校名称1','2023-01-05','2023-01-05','学籍情况1'),(102,'2023-01-05 11:00:48','研究生账号2','研究生姓名2','专业2','家庭住址2','身份证2','学校名称2','2023-01-05','2023-01-05','学籍情况2'),(103,'2023-01-05 11:00:48','研究生账号3','研究生姓名3','专业3','家庭住址3','身份证3','学校名称3','2023-01-05','2023-01-05','学籍情况3'),(104,'2023-01-05 11:00:48','研究生账号4','研究生姓名4','专业4','家庭住址4','身份证4','学校名称4','2023-01-05','2023-01-05','学籍情况4'),(105,'2023-01-05 11:00:48','研究生账号5','研究生姓名5','专业5','家庭住址5','身份证5','学校名称5','2023-01-05','2023-01-05','学籍情况5'),(106,'2023-01-05 11:00:48','研究生账号6','研究生姓名6','专业6','家庭住址6','身份证6','学校名称6','2023-01-05','2023-01-05','学籍情况6'),(107,'2023-01-05 11:00:48','研究生账号7','研究生姓名7','专业7','家庭住址7','身份证7','学校名称7','2023-01-05','2023-01-05','学籍情况7'),(108,'2023-01-05 11:00:48','研究生账号8','研究生姓名8','专业8','家庭住址8','身份证8','学校名称8','2023-01-05','2023-01-05','学籍情况8');
/*!40000 ALTER TABLE `xuejixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuewei`
--

DROP TABLE IF EXISTS `xuewei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuewei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuewei` varchar(200) NOT NULL COMMENT '学位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='学位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuewei`
--

LOCK TABLES `xuewei` WRITE;
/*!40000 ALTER TABLE `xuewei` DISABLE KEYS */;
INSERT INTO `xuewei` VALUES (111,'2023-01-05 11:00:48','学位1'),(112,'2023-01-05 11:00:48','学位2'),(113,'2023-01-05 11:00:48','学位3'),(114,'2023-01-05 11:00:48','学位4'),(115,'2023-01-05 11:00:48','学位5'),(116,'2023-01-05 11:00:48','学位6'),(117,'2023-01-05 11:00:48','学位7'),(118,'2023-01-05 11:00:48','学位8');
/*!40000 ALTER TABLE `xuewei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueweishenqing`
--

DROP TABLE IF EXISTS `xueweishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueweishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `yanjiushengzhanghao` varchar(200) DEFAULT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) DEFAULT NULL COMMENT '研究生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `kaojijibie` varchar(200) DEFAULT NULL COMMENT '考级级别',
  `shenqingxuewei` varchar(200) DEFAULT NULL COMMENT '申请学位',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='学位申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueweishenqing`
--

LOCK TABLES `xueweishenqing` WRITE;
/*!40000 ALTER TABLE `xueweishenqing` DISABLE KEYS */;
INSERT INTO `xueweishenqing` VALUES (121,'2023-01-05 11:00:48','1111111111','研究生账号1','研究生姓名1','专业1','考级级别1','申请学位1','2023-01-05','是',''),(122,'2023-01-05 11:00:48','2222222222','研究生账号2','研究生姓名2','专业2','考级级别2','申请学位2','2023-01-05','是',''),(123,'2023-01-05 11:00:48','3333333333','研究生账号3','研究生姓名3','专业3','考级级别3','申请学位3','2023-01-05','是',''),(124,'2023-01-05 11:00:48','4444444444','研究生账号4','研究生姓名4','专业4','考级级别4','申请学位4','2023-01-05','是',''),(125,'2023-01-05 11:00:48','5555555555','研究生账号5','研究生姓名5','专业5','考级级别5','申请学位5','2023-01-05','是',''),(126,'2023-01-05 11:00:48','6666666666','研究生账号6','研究生姓名6','专业6','考级级别6','申请学位6','2023-01-05','是',''),(127,'2023-01-05 11:00:48','7777777777','研究生账号7','研究生姓名7','专业7','考级级别7','申请学位7','2023-01-05','是',''),(128,'2023-01-05 11:00:48','8888888888','研究生账号8','研究生姓名8','专业8','考级级别8','申请学位8','2023-01-05','是','');
/*!40000 ALTER TABLE `xueweishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yanjiusheng`
--

DROP TABLE IF EXISTS `yanjiusheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yanjiusheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanjiushengzhanghao` varchar(200) NOT NULL COMMENT '研究生账号',
  `yanjiushengxingming` varchar(200) NOT NULL COMMENT '研究生姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yanjiushengzhanghao` (`yanjiushengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='研究生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yanjiusheng`
--

LOCK TABLES `yanjiusheng` WRITE;
/*!40000 ALTER TABLE `yanjiusheng` DISABLE KEYS */;
INSERT INTO `yanjiusheng` VALUES (11,'2023-01-05 11:00:47','研究生账号1','研究生姓名1','123456','男','upload/yanjiusheng_touxiang1.jpg',1,'13823888881','专业1','家庭住址1','身份证1'),(12,'2023-01-05 11:00:47','研究生账号2','研究生姓名2','123456','男','upload/yanjiusheng_touxiang2.jpg',2,'13823888882','专业2','家庭住址2','身份证2'),(13,'2023-01-05 11:00:47','研究生账号3','研究生姓名3','123456','男','upload/yanjiusheng_touxiang3.jpg',3,'13823888883','专业3','家庭住址3','身份证3'),(14,'2023-01-05 11:00:47','研究生账号4','研究生姓名4','123456','男','upload/yanjiusheng_touxiang4.jpg',4,'13823888884','专业4','家庭住址4','身份证4'),(15,'2023-01-05 11:00:47','研究生账号5','研究生姓名5','123456','男','upload/yanjiusheng_touxiang5.jpg',5,'13823888885','专业5','家庭住址5','身份证5'),(16,'2023-01-05 11:00:47','研究生账号6','研究生姓名6','123456','男','upload/yanjiusheng_touxiang6.jpg',6,'13823888886','专业6','家庭住址6','身份证6'),(17,'2023-01-05 11:00:47','研究生账号7','研究生姓名7','123456','男','upload/yanjiusheng_touxiang7.jpg',7,'13823888887','专业7','家庭住址7','身份证7'),(18,'2023-01-05 11:00:47','研究生账号8','研究生姓名8','123456','男','upload/yanjiusheng_touxiang8.jpg',8,'13823888888','专业8','家庭住址8','身份证8');
/*!40000 ALTER TABLE `yanjiusheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-21 17:50:34
