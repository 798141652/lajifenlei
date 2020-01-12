/*
 Navicat MySQL Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 49.234.101.49:3306
 Source Schema         : lajifenlei

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 12/01/2020 21:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for star
-- ----------------------------
DROP TABLE IF EXISTS `star`;
CREATE TABLE `star`  (
  `starID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `starNum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`starID`) USING BTREE,
  INDEX `starid`(`userID`) USING BTREE,
  CONSTRAINT `starid` FOREIGN KEY (`userID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES (1, 3, '');
INSERT INTO `star` VALUES (2, 3, '');
INSERT INTO `star` VALUES (3, 3, '');

SET FOREIGN_KEY_CHECKS = 1;
