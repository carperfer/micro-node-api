/*
 Navicat MySQL Data Transfer

 Source Server         : Local_microservice
 Source Server Version : 50716
 Source Host           : localhost
 Source Database       : test

 Target Server Version : 50716
 File Encoding         : utf-8

 Date: 07/08/2017 14:19:23 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `clients`
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `clients`
-- ----------------------------
BEGIN;
INSERT INTO `clients` VALUES ('1', 'Juan'), ('2', 'Pedro'), ('3', 'Jose'), ('4', 'Carlos');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
