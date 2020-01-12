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

 Date: 12/01/2020 21:43:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photopath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (10, 'upload/d334bd0b-8f13-435e-93bc-092619480656.jpg', '1', '2');
INSERT INTO `user` VALUES (11, 'upload/719cdaa3-b9fb-4afd-b626-aaa40e368c33.jpg', 'admin', 'admin');
INSERT INTO `user` VALUES (12, 'upload/e46ccff0-12b6-47d2-8be2-66faaa03af80.jpg', 'admin', 'admin');
INSERT INTO `user` VALUES (13, 'upload/b475a899-be01-4642-b801-41cc4d7dd10a.png', '1', '1');
INSERT INTO `user` VALUES (14, 'upload/7554a8ec-13b6-4805-9995-9bbbab1a0498.jpg', 'user', '1');
INSERT INTO `user` VALUES (15, 'upload/5cd0c027-411d-4a3e-abdf-c5e98fd535bc.jpg', '嘻嘻', '1');
INSERT INTO `user` VALUES (16, 'upload/9153a4ac-4bcd-42c0-8c22-c677041123a8.jpg', 's490806895', '');
INSERT INTO `user` VALUES (17, 'upload/3e30553a-a57b-4384-ace9-cdc06b979219.jpg', 'test', '1');
INSERT INTO `user` VALUES (18, 'upload/NoImage.jpg', 'nophoto', '1');
INSERT INTO `user` VALUES (19, 'upload/eb936d45-cc3b-4fd4-b1c8-61758eb3a4b9.jpg', '1', '1');
INSERT INTO `user` VALUES (20, 'upload/NoImage.jpg', '丫丫', '123456');
INSERT INTO `user` VALUES (21, 'upload/NoImage.jpg', '可爱', '123');
INSERT INTO `user` VALUES (22, 'upload/NoImage.jpg', '123', '123');
INSERT INTO `user` VALUES (23, 'upload/13f41d38-07ee-4d19-b09a-1193376cbb90.png', '1', '1');
INSERT INTO `user` VALUES (24, 'upload/NoImage.jpg', '帅哥', '');
INSERT INTO `user` VALUES (25, 'upload/3c017737-885f-4b77-9104-8be94ed28cee.jpg', 'q', 'q');

SET FOREIGN_KEY_CHECKS = 1;
