/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : sales33

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-11-23 14:06:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cusId` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'F');
INSERT INTO `customer` VALUES ('2', 'M');
INSERT INTO `customer` VALUES ('3', 'M');
INSERT INTO `customer` VALUES ('4', 'F');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `proId` int(11) NOT NULL,
  `proTypeId` int(11) DEFAULT NULL,
  `proName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', '洗衣机');
INSERT INTO `product` VALUES ('2', '1', '电视机');
INSERT INTO `product` VALUES ('3', '2', 'mp3');
INSERT INTO `product` VALUES ('4', '2', 'mp4');
INSERT INTO `product` VALUES ('5', '2', '数码相机');
INSERT INTO `product` VALUES ('6', '3', '椅子');
INSERT INTO `product` VALUES ('7', '3', '桌子');

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype` (
  `proTypeId` int(11) NOT NULL,
  `proTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES ('1', '电器');
INSERT INTO `producttype` VALUES ('2', '数码');
INSERT INTO `producttype` VALUES ('3', '家具');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `saleId` int(11) NOT NULL,
  `proId` int(11) DEFAULT NULL,
  `cusId` int(11) DEFAULT NULL,
  `unitPrice` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`saleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '1', '1', '340.34', '2');
INSERT INTO `sale` VALUES ('2', '1', '2', '140.34', '1');
INSERT INTO `sale` VALUES ('3', '2', '3', '240.34', '3');
INSERT INTO `sale` VALUES ('4', '3', '4', '540.34', '4');
INSERT INTO `sale` VALUES ('5', '4', '1', '80.34', '5');
INSERT INTO `sale` VALUES ('6', '5', '2', '90.34', '26');
INSERT INTO `sale` VALUES ('7', '6', '3', '140.34', '7');
INSERT INTO `sale` VALUES ('8', '7', '4', '640.34', '28');
INSERT INTO `sale` VALUES ('9', '6', '1', '140.34', '29');
INSERT INTO `sale` VALUES ('10', '7', '2', '740.34', '29');
INSERT INTO `sale` VALUES ('11', '5', '3', '30.34', '28');
INSERT INTO `sale` VALUES ('12', '4', '4', '1240.34', '72');
INSERT INTO `sale` VALUES ('13', '3', '1', '314.34', '27');
INSERT INTO `sale` VALUES ('14', '3', '2', '45.34', '27');
