/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-04-04 12:28:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '精品服装', '288.11');
INSERT INTO `goods` VALUES ('2', '辣条', '2.5');
INSERT INTO `goods` VALUES ('3', '汽车', '888888');
INSERT INTO `goods` VALUES ('4', '电视', '2344');
INSERT INTO `goods` VALUES ('5', '冰箱', '2131');
INSERT INTO `goods` VALUES ('6', '洗衣机', '2588');
INSERT INTO `goods` VALUES ('7', '空调', '1234.88');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1', '6');

-- ----------------------------
-- Table structure for `pay_method`
-- ----------------------------
DROP TABLE IF EXISTS `pay_method`;
CREATE TABLE `pay_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_method
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '1234', '15766668888', '男', '124142@qq.com', '山东省');
INSERT INTO `user` VALUES ('2', 'test1', '111111', '111111', '女', '123123@qq.com', '浙江省');

-- ----------------------------
-- Table structure for `wenzhang`
-- ----------------------------
DROP TABLE IF EXISTS `wenzhang`;
CREATE TABLE `wenzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenzhang
-- ----------------------------
INSERT INTO `wenzhang` VALUES ('1', '测试', '· Unity发布5.6版本开发平台，将支持Google VR开发平台\r\n· 《纽约邮报》手机客户端推送系统被黑 黑客发送抒情诗\r\n· LinkedIn高管告诫年轻人：设定好目标 不要急于求成\r\n· 从“软件”再到“硬件”详细讲解常见的电脑故障以及解决方法\r\n· 苹果欲收购东芝闪存 自己把控闪存的技术了', 'dmin', '2017-04-04 12:10:31');
INSERT INTO `wenzhang` VALUES ('2', '如何用算法学习判定“红楼梦（下）”原作者？ ', '1.作为一个从没看过红楼梦的人，我的大致思路是这样的：用开源的分词工具把全书分词（python的jieba分词），然后统计词频。把出现频次超过100次的词语找出来，人工去掉一些可能因为文章内容造成前后出现不一致的人名、地名；\r\n2.然后每一章按照2中的词频表，看这一章中出现这些词语的频次；\r\n3.前80回、后40回各选15回作为机器学习的数据，让机器学习这些章节的用词特点，然后推算其他章节的用词特点是属于前80回呢、还是后40回；\r\n4.如果机器根据这些用词特征推算的是否属于后40回的结果跟实际的结果吻合，那么就说明后40回的写作风格跟前80回有很大不同，很可能是两个人写的；', 'admin', '2017-04-04 12:11:43');
INSERT INTO `wenzhang` VALUES ('3', ' oracle 分析函数手册', '\r\n以下分析函数虽然是在 oracle 9i 的基础上整理的，但是仍然适用于 10g，11g以及12c等后续版本\r\nOracle从8.1.6开始提供分析函数，分析函数用于计算基于组的某种聚合值，它和聚合函数的不同之处是对于每个组返回多行，而聚合函数对于每个组只返回一行。\r\n下面例子中使用的表来自Oracle自带的HR用户下的表，如果没有安装该用户，可以在SYS用户下运行$ORACLE_HOME/demo/schema/human_resources/hr_main.sql来创建。       \r\n少数几个例子需要访问SH用户下的表，如果没有安装该用户，可以在SYS用户下运行$ORACLE_HOME/demo/schema/sales_history/sh_main.sql来创建。', '匿名', '2017-04-04 12:12:02');