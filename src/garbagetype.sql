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

 Date: 12/01/2020 21:42:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for garbagetype
-- ----------------------------
DROP TABLE IF EXISTS `garbagetype`;
CREATE TABLE `garbagetype`  (
  `garbagetypeId` int(11) NOT NULL AUTO_INCREMENT,
  `garbagetypeName` enum('有害垃圾','干垃圾','湿垃圾','可回收物') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `requirement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`garbagetypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garbagetype
-- ----------------------------
INSERT INTO `garbagetype` VALUES (1, '可回收物', '就是可以再生循环的垃圾。本身或材质可再利用的纸类、硬纸板、玻璃、塑料、金属、塑料包装，与这些材质有关的如：报纸、杂志、广告单及其它干净的纸类等皆可回收。', '可回收物应轻投轻放，清洁干燥、避免污染;\n废纸尽量平整;\n立体包装物请清空内容物，清洁后压扁投放;\n有尖锐边角的，应包裹后投放。');
INSERT INTO `garbagetype` VALUES (2, '湿垃圾', '又称为厨余垃圾、有机垃圾，即易腐垃圾，指食材废料、剩菜剩饭、过期食品、瓜皮果核、花卉绿植、中药药渣等易腐的生物质生活废弃物。', '湿垃圾投放需破袋处理。盛放湿垃圾的容器，如塑料袋等，在投放时应予去除。');
INSERT INTO `garbagetype` VALUES (3, '干垃圾', '即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '禁止混投。干垃圾应投入干垃圾收集容器，并保持周边环境整洁。');
INSERT INTO `garbagetype` VALUES (4, '有害垃圾', '指废电池、废灯管、废药品、废油漆及其容器等对人体健康或者自然环境造成直接或者潜在危害的生活废弃物。', '分类投放有害垃圾时，应注意轻放。');

SET FOREIGN_KEY_CHECKS = 1;
