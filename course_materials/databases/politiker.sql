/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : join

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-08-30 13:43:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for minister
-- ----------------------------
DROP TABLE IF EXISTS `minister`;
CREATE TABLE `minister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of minister
-- ----------------------------
INSERT INTO `minister` VALUES ('1', 'Wolfgang Schäuble');
INSERT INTO `minister` VALUES ('2', 'Frank-Walter Steinmeier');
INSERT INTO `minister` VALUES ('3', 'Brigitte Zypries');
INSERT INTO `minister` VALUES ('4', 'Peer Steinbrück');
INSERT INTO `minister` VALUES ('5', 'Michael Glos');
INSERT INTO `minister` VALUES ('6', 'Franz Müntefering');
INSERT INTO `minister` VALUES ('7', 'Horst Seehofer');
INSERT INTO `minister` VALUES ('8', 'Franz Josef Jung');
INSERT INTO `minister` VALUES ('9', 'Ursula von der Leyen');
INSERT INTO `minister` VALUES ('10', 'Ulla Schmidt');
INSERT INTO `minister` VALUES ('11', 'Wolfgang Tiefensee');
INSERT INTO `minister` VALUES ('12', 'Sigmar Gabriel');
INSERT INTO `minister` VALUES ('13', 'Annette Schavan');
INSERT INTO `minister` VALUES ('14', 'Rjano Rysser');
INSERT INTO `minister` VALUES ('15', 'Silvan Ruf');
INSERT INTO `minister` VALUES ('16', 'Ravindu Kodagoda');
INSERT INTO `minister` VALUES ('17', 'Erik Harder');
INSERT INTO `minister` VALUES ('18', null);

-- ----------------------------
-- Table structure for spd_politiker
-- ----------------------------
DROP TABLE IF EXISTS `spd_politiker`;
CREATE TABLE `spd_politiker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spd_politiker
-- ----------------------------
INSERT INTO `spd_politiker` VALUES ('1', 'Ramon Bister');
INSERT INTO `spd_politiker` VALUES ('2', 'Frank-Walter Steinmeier');
INSERT INTO `spd_politiker` VALUES ('3', 'Brigitte Zypries');
INSERT INTO `spd_politiker` VALUES ('4', 'Peer Steinbrück');
INSERT INTO `spd_politiker` VALUES ('5', 'Ulla Schmidt');
INSERT INTO `spd_politiker` VALUES ('6', 'Wolfgang Tiefensee');
INSERT INTO `spd_politiker` VALUES ('7', 'Sigmar Gabriel');
INSERT INTO `spd_politiker` VALUES ('8', 'Willy Brandt');
INSERT INTO `spd_politiker` VALUES ('9', 'Helmut Schmidt');
INSERT INTO `spd_politiker` VALUES ('10', 'Gerhard Schröder');
INSERT INTO `spd_politiker` VALUES ('11', 'Kurt Beck');
INSERT INTO `spd_politiker` VALUES ('12', 'Johannes Rau');
INSERT INTO `spd_politiker` VALUES ('13', 'Timo Grossenbacher');
INSERT INTO `spd_politiker` VALUES ('14', 'Florian Tinner');
INSERT INTO `spd_politiker` VALUES ('15', 'Roman Weber');
INSERT INTO `spd_politiker` VALUES ('16', 'Silvan Ruf');
INSERT INTO `spd_politiker` VALUES ('17', 'Tom Looser');
INSERT INTO `spd_politiker` VALUES ('18', null);
