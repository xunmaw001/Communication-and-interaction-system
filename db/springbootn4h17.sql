-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootn4h17
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
-- Table structure for table `baomingxinxi`
--

DROP TABLE IF EXISTS `baomingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `baomingneirong` varchar(200) DEFAULT NULL COMMENT '报名内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612579097016 DEFAULT CHARSET=utf8 COMMENT='报名信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingxinxi`
--

LOCK TABLES `baomingxinxi` WRITE;
/*!40000 ALTER TABLE `baomingxinxi` DISABLE KEYS */;
INSERT INTO `baomingxinxi` VALUES (51,'2021-02-06 02:24:57','名称1','2021-02-06','报名内容1','用户名1','姓名1','手机1','是',''),(52,'2021-02-06 02:24:57','名称2','2021-02-06','报名内容2','用户名2','姓名2','手机2','是',''),(53,'2021-02-06 02:24:57','名称3','2021-02-06','报名内容3','用户名3','姓名3','手机3','是',''),(54,'2021-02-06 02:24:57','名称4','2021-02-06','报名内容4','用户名4','姓名4','手机4','是',''),(55,'2021-02-06 02:24:57','名称5','2021-02-06','报名内容5','用户名5','姓名5','手机5','是',''),(56,'2021-02-06 02:24:57','名称6','2021-02-06','报名内容6','用户名6','姓名6','手机6','是',''),(1612579097015,'2021-02-06 02:38:16','聚会信息','2021-01-30','我要参加','1','李铭','15214121412','是','同意');
/*!40000 ALTER TABLE `baomingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612579017017 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-02-06 02:24:57',1,1,'提问1','回复1',1),(62,'2021-02-06 02:24:57',2,2,'提问2','回复2',2),(63,'2021-02-06 02:24:57',3,3,'提问3','回复3',3),(64,'2021-02-06 02:24:57',4,4,'提问4','回复4',4),(65,'2021-02-06 02:24:57',5,5,'提问5','回复5',5),(66,'2021-02-06 02:24:57',6,6,'提问6','回复6',6),(1612578975436,'2021-02-06 02:36:15',11,NULL,'您好 我想发布一个聚会信息， 哪里举行 时间',NULL,0),(1612578991897,'2021-02-06 02:36:31',11,NULL,'这里有什么问题也可以给管理员反馈或者他投诉',NULL,0),(1612579017016,'2021-02-06 02:36:56',11,1,NULL,'好的',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootn4h17/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootn4h17/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootn4h17/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstiezixinxi`
--

DROP TABLE IF EXISTS `discusstiezixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstiezixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612578930913 DEFAULT CHARSET=utf8 COMMENT='帖子信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstiezixinxi`
--

LOCK TABLES `discusstiezixinxi` WRITE;
/*!40000 ALTER TABLE `discusstiezixinxi` DISABLE KEYS */;
INSERT INTO `discusstiezixinxi` VALUES (81,'2021-02-06 02:24:57',1,1,'评论内容1','回复内容1'),(82,'2021-02-06 02:24:57',2,2,'评论内容2','回复内容2'),(83,'2021-02-06 02:24:57',3,3,'评论内容3','回复内容3'),(84,'2021-02-06 02:24:57',4,4,'评论内容4','回复内容4'),(85,'2021-02-06 02:24:57',5,5,'评论内容5','回复内容5'),(86,'2021-02-06 02:24:57',6,6,'评论内容6','回复内容6'),(1612578930912,'2021-02-06 02:35:30',1612578759485,11,'这个技巧很有用啊，还可以怎么样怎么样','对啊 ，我也经常那样用');
/*!40000 ALTER TABLE `discusstiezixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juhuixinxi`
--

DROP TABLE IF EXISTS `juhuixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juhuixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `faqiren` varchar(200) DEFAULT NULL COMMENT '发起人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='聚会信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juhuixinxi`
--

LOCK TABLES `juhuixinxi` WRITE;
/*!40000 ALTER TABLE `juhuixinxi` DISABLE KEYS */;
INSERT INTO `juhuixinxi` VALUES (41,'2021-02-06 02:24:56','聚会信息','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian1.jpg','2021-01-31','8点','13823888881','上海市体育馆','李铭'),(42,'2021-02-06 02:24:56','名称2','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian2.jpg','2021-02-06','时间2','13823888882','地点2','发起人2'),(43,'2021-02-06 02:24:56','名称3','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian3.jpg','2021-02-06','时间3','13823888883','地点3','发起人3'),(44,'2021-02-06 02:24:56','名称4','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian4.jpg','2021-02-06','时间4','13823888884','地点4','发起人4'),(45,'2021-02-06 02:24:56','名称5','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian5.jpg','2021-02-06','时间5','13823888885','地点5','发起人5'),(46,'2021-02-06 02:24:56','名称6','http://localhost:8080/springbootn4h17/upload/juhuixinxi_tupian6.jpg','2021-02-06','时间6','13823888886','地点6','发起人6');
/*!40000 ALTER TABLE `juhuixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612578908441 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1612578908440,'2021-02-06 02:35:08',11,1612578759485,'tiezixinxi','王者小技巧分享','http://localhost:8080/springbootn4h17/upload/1612578598532.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiezifenlei`
--

DROP TABLE IF EXISTS `tiezifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiezifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiezifenlei` varchar(200) NOT NULL COMMENT '帖子分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612578801479 DEFAULT CHARSET=utf8 COMMENT='帖子分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiezifenlei`
--

LOCK TABLES `tiezifenlei` WRITE;
/*!40000 ALTER TABLE `tiezifenlei` DISABLE KEYS */;
INSERT INTO `tiezifenlei` VALUES (22,'2021-02-06 02:24:56','旅游'),(23,'2021-02-06 02:24:56','其他'),(1612578428320,'2021-02-06 02:27:07','游戏'),(1612578476828,'2021-02-06 02:27:56','音乐'),(1612578801478,'2021-02-06 02:33:20','音乐');
/*!40000 ALTER TABLE `tiezifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiezixinxi`
--

DROP TABLE IF EXISTS `tiezixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiezixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tiezifenlei` varchar(200) NOT NULL COMMENT '帖子分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612578759486 DEFAULT CHARSET=utf8 COMMENT='帖子信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiezixinxi`
--

LOCK TABLES `tiezixinxi` WRITE;
/*!40000 ALTER TABLE `tiezixinxi` DISABLE KEYS */;
INSERT INTO `tiezixinxi` VALUES (31,'2021-02-06 02:24:56','标题1','旅游','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian1.jpg','<p>内容1</p>','2021-02-06 10:24:56','用户名1','姓名1','手机1','2021-02-06 02:27:36',2),(32,'2021-02-06 02:24:56','标题2','其他','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian2.jpg','<p>内容2</p>','2021-02-06 10:24:56','用户名2','姓名2','手机2','2021-02-06 02:34:38',4),(33,'2021-02-06 02:24:56','标题3','音乐','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian3.jpg','<p>内容3</p>','2021-02-06 10:24:56','用户名3','姓名3','手机3','2021-02-06 02:33:30',5),(34,'2021-02-06 02:24:56','标题4','音乐','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian4.jpg','<p>内容4</p>','2021-02-06 10:24:56','用户名4','姓名4','手机4','2021-02-06 02:28:00',5),(35,'2021-02-06 02:24:56','标题5','音乐','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian5.jpg','<p>内容5</p>','2021-02-06 10:24:56','用户名5','姓名5','手机5','2021-02-06 02:28:07',6),(36,'2021-02-06 02:24:56','标题6','其他','http://localhost:8080/springbootn4h17/upload/tiezixinxi_fengmian6.jpg','<p>内容6</p>','2021-02-06 10:24:56','用户名6','姓名6','手机6','2021-02-06 02:34:34',8),(1612578759485,'2021-02-06 02:32:39','王者小技巧分享','游戏','http://localhost:8080/springbootn4h17/upload/1612578598532.jpg','<p>王者荣耀露娜连招：1、1技能—3技能—2技能—3技能。2、A—2技能—A—3技能—A—3技能。3、1技能—3技能—A—2技能—A—3技能—A—3技能。</p><p><img src=\"https://img.douxie.com/uploadfile/2018/1127/20181127014502928.jpg\" alt=\"王者荣耀露娜怎么使用连招\"></p><h2>王者荣耀露娜连招</h2><p><strong>1、1技能—3技能—2技能—3技能</strong></p><p>&nbsp;露娜新手玩家入门连招是弦月斩-新月突击-炙热剑芒-新月突击，操作简单粗暴,得手的成功率很高。但是需要注意敌方位移的cd,如果敌方位移还在。可以先强迫对面放位移,然后一套连招将敌人带走。</p><p><strong>2、A—2技能—A—3技能—A—3技能</strong></p><p>这套连招主要是用来打近战伤害高的英雄,玩家如果不小心被近身,使用净化- 炙热剑芒- 新月突击 再来弦月斩 -新月突击循环始终保持,不断进行伤害。</p><p><strong>3、1技能—3技能—A—2技能—A—3技能—A—3技能</strong></p><p>弦月斩—新月突击—A—炙热剑芒—A—新月突击—A—新月突击，利用a来触发月光之舞,玩家可以出触发一次标记。能再多用一次新月突击,然而自己不能保持安全距离,在对方技能放完或者追击的时候可以使用,迅速解决战斗。</p><p>这里发布一些信息，这里的内容都是用于测试的，可以自行添加修改删除的</p>','2021-02-14 16:00:00','1','李铭','15214121412','2021-02-06 02:35:33',3);
/*!40000 ALTER TABLE `tiezixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','gks30zm5mlhf0rxi21r0nreom41lqsai','2021-02-06 02:26:59','2021-02-05 19:38:56'),(2,1612578547937,'1','yonghu','用户','juutgauo9t4om471k8asezucp8435550','2021-02-06 02:29:13','2021-02-05 19:38:01'),(3,11,'001','yonghu','用户','dguilqc6ng2uy9vy50nxlkk6h008f8n2','2021-02-06 02:34:51','2021-02-05 19:40:58');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-06 02:24:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612578547938 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-06 02:24:56','001','001','姓名1','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-02-06 02:24:56','用户2','123456','姓名2','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-02-06 02:24:56','用户3','123456','姓名3','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-02-06 02:24:56','用户4','123456','姓名4','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-02-06 02:24:56','用户5','123456','姓名5','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-02-06 02:24:56','用户6','123456','姓名6','男','http://localhost:8080/springbootn4h17/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1612578547937,'2021-02-06 02:29:07','1','1','李铭','男','http://localhost:8080/springbootn4h17/upload/1612578565688.png','441214121412141211','15214121412');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-06 20:40:39
