-- MySQL dump 10.10
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `author` varchar(60) NOT NULL,
  `content` text,
  `description` varchar(200) default NULL,
  `is_published` varchar(1) NOT NULL default '1',
  `is_delete` varchar(1) NOT NULL default '0',
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL default '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_article`
--


/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
LOCK TABLES `t_article` WRITE;
INSERT INTO `t_article` VALUES (1,'测试文章','海上骑鲸客','自定义标题段落格式字体字号代码语言点击上传x元素路径:字数统计','啊发顺丰撒发顺丰 方法萨芬撒发生爱是飞洒发到付V字形大撒飞洒发发顺丰撒地方。','1','0','2018-07-04 08:07:11','0000-00-00 00:00:00',2),(2,'是否','海上骑鲸客','<p>你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？</p>','<p>你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？</p>','1','0','2018-07-04 08:22:09','0000-00-00 00:00:00',2),(3,'是否','海上骑鲸客','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？</p>','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想','1','0','2018-07-04 08:27:24','0000-00-00 00:00:00',2),(4,'是否','海上骑鲸客','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？</p>','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想','1','0','2018-07-04 08:29:09','0000-00-00 00:00:00',2),(5,'是否','海上骑鲸客','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？</p>','<p>&nbsp;&nbsp;&nbsp;&nbsp;你是否早有进入BAT公司的想法，但却因为对其不了解而在门外彷徨？\n								你是否想把技术团队打造成像BAT这些超级互联网公司，但却无从下手？ 你是否已经进入了BAT，但是不知道如何晋升而苦恼？\n								你是否早有进入BAT公司的想','1','0','2018-07-04 08:31:16','0000-00-00 00:00:00',2),(6,'之乎者也','海上骑鲸客','<p>&nbsp;&nbsp;&nbsp;&nbsp;123333333333333333333333333333333333333333333我去二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二滴滴答答的多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多滴滴答答的多多多多多多多多多多多多多多多多多多多多多多多多多多多多多柔柔弱弱若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若若吞吞吐吐拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖拖。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;吾问无为谓无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无无，啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊，仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄仄重中之重出差出差出差出差出差出差出差出差出差出差出差出差出差出差出差出差出差出差惆怅长岑长惆怅长岑长啛啛喳喳尺寸参差尺寸参差啛啛喳喳CC。<br/></p>','<p>&nbsp;&nbsp;&nbsp;&nbsp;123333333333333333333333333333333333333333333我去二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二滴滴答答的多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多','1','0','2018-07-04 08:38:51','0000-00-00 00:00:00',2),(7,'咋IL','海上骑鲸客','<p>精灵，按钮，文本框等大多数实例都具有的条件，我们定义为通用条件。这些条件是最基本，最常用的条件。快速链接：通用条件其它当实例创建时网络当图片加载完毕实例自定义变量比较自定义变量大小与位置比较水平坐标，比较垂直坐标，比较宽度，比较高度，比较透明度，显隐状态，是否在屏幕内碰撞碰撞角度顺时针旋转，处于两角度之间当实例创建时：当所选实例创建时触发。【一次性触发】当游戏中包含所选实例的场景加载时，实例才会被..</p>','<p>精灵，按钮，文本框等大多数实例都具有的条件，我们定义为通用条件。这些条件是最基本，最常用的条件。快速链接：通用条件其它当实例创建时网络当图片加载完毕实例自定义变量比较自定义变量大小与位置比较水平坐标，比较垂直坐标，比较宽度，比较高度，比较透明度，显隐状态，是否在屏幕内碰撞碰撞角度顺时针旋转，处','1','0','2018-07-04 09:00:06','0000-00-00 00:00:00',2),(8,'阿萨德','海上骑鲸客','<p>&nbsp;&nbsp;&nbsp;&nbsp;精灵，按钮，文本框等大多数实例都具有的条件，我们定义为通用条件。这些条件是最基本，最常用的条件。快速链接：通用条件其它当实例创建时网络当图片加载完毕实例自定义变量比较自定义变量大小与位置比较水平坐标。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;比较垂直坐标，比较宽度，比较高度，比较透明度，显隐状态，是否在屏幕内碰撞碰撞角度顺时针旋转，处于两角度之间当实例创建时：当所选实例创建时触发。【一次性触发】当游戏中包含所选实例的场景加载时，实例才会被..&nbsp;&nbsp;&nbsp;&nbsp;</p>','<p>&nbsp;&nbsp;&nbsp;&nbsp;精灵，按钮，文本框等大多数实例都具有的条件，我们定义为通用条件。这些条件是最基本，最常用的条件。快速链接：通用条件其它当实例创建时网络当图片加载完毕实例自定义变量比较自定义变量大小与位置比较水平坐标。</p><p>&nbsp;&nbsp;&nbs','1','0','2018-07-04 09:01:13','0000-00-00 00:00:00',2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sex` varchar(1) default '0' COMMENT '0:女 1:男 2:保密',
  `age` int(2) default '0',
  `email` varchar(32) default NULL,
  `address` varchar(100) default NULL,
  `nickname` varchar(32) default NULL COMMENT '昵称',
  `description` varchar(512) default NULL COMMENT '个人简介',
  `is_delete` varchar(1) default '0' COMMENT '0:有效  1:无效',
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `modify_time` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_user`
--


/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
LOCK TABLES `t_user` WRITE;
INSERT INTO `t_user` VALUES (1,'王占武','123456','0',0,NULL,NULL,NULL,NULL,'0','2018-05-29 08:17:57',NULL),(2,'海上骑鲸客','123456','0',0,NULL,NULL,NULL,NULL,'0','2018-07-04 01:52:34',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

