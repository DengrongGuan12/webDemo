/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : javaee

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2014-10-24 13:03:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `news_inf`
-- ----------------------------
DROP TABLE IF EXISTS `news_inf`;
CREATE TABLE `news_inf` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_inf
-- ----------------------------
INSERT INTO `news_inf` VALUES ('1', '疯狂Java联盟');
INSERT INTO `news_inf` VALUES ('2', 'crazyit.org');
