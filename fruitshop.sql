/*
Navicat MySQL Data Transfer

Source Server         : 课设
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fruitshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-07-09 14:45:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `o_num` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `f_name` char(255) NOT NULL,
  `f_quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`o_num`),
  UNIQUE KEY `o_num` (`o_num`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `f_name` (`f_name`),
  CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`name`) REFERENCES `user` (`username`),
  CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`f_name`) REFERENCES `fruits` (`f_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------

-- ----------------------------
-- Table structure for fruits
-- ----------------------------
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `f_id` char(10) NOT NULL,
  `f_name` char(255) NOT NULL,
  `f_price` decimal(8,2) NOT NULL,
  `f_stock` int(11) NOT NULL,
  PRIMARY KEY (`f_id`,`f_name`),
  UNIQUE KEY `f_id` (`f_id`),
  KEY `f_name` (`f_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fruits
-- ----------------------------

-- ----------------------------
-- Table structure for opertation
-- ----------------------------
DROP TABLE IF EXISTS `opertation`;
CREATE TABLE `opertation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) NOT NULL,
  `opname` varchar(50) NOT NULL,
  `optime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opertation
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` char(50) NOT NULL,
  `sex` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `sex` (`sex`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`),
  KEY `name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_detail`;
DELIMITER ;;
CREATE TRIGGER `insert_detail` AFTER INSERT ON `detail` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('fruits','add a detail',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_detail`;
DELIMITER ;;
CREATE TRIGGER `update_detail` AFTER UPDATE ON `detail` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('detail','update a detail',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_detail`;
DELIMITER ;;
CREATE TRIGGER `delete_detail` AFTER DELETE ON `detail` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('detail','delete a detail',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_fruits`;
DELIMITER ;;
CREATE TRIGGER `insert_fruits` AFTER INSERT ON `fruits` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('fruits','add a fruit',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_fruits`;
DELIMITER ;;
CREATE TRIGGER `update_fruits` AFTER UPDATE ON `fruits` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('fruits','update a fruit',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_fruits`;
DELIMITER ;;
CREATE TRIGGER `delete_fruits` AFTER DELETE ON `fruits` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('fruits','delete a fruit',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_user`;
DELIMITER ;;
CREATE TRIGGER `insert_user` AFTER INSERT ON `user` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('customers','add a user',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_user`;
DELIMITER ;;
CREATE TRIGGER `update_user` AFTER UPDATE ON `user` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('customers','update a user',now())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_user`;
DELIMITER ;;
CREATE TRIGGER `delete_user` AFTER DELETE ON `user` FOR EACH ROW insert into opertaion(tablename,opname,optime)
     values('customers','delete a user',now())
;;
DELIMITER ;
