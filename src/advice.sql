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

 Date: 12/01/2020 21:42:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advice
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice`  (
  `adviceid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `msg` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adviceid`) USING BTREE,
  INDEX `adviceid`(`userid`) USING BTREE,
  CONSTRAINT `adviceid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advice
-- ----------------------------
INSERT INTO `advice` VALUES (1, 14, '不喜欢', '其他');
INSERT INTO `advice` VALUES (2, 11, '11', '产品建议');
INSERT INTO `advice` VALUES (3, 10, '111', '产品建议');
INSERT INTO `advice` VALUES (4, 10, '222', '其他');

SET FOREIGN_KEY_CHECKS = 1;
