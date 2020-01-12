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

 Date: 12/01/2020 21:42:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for garbage
-- ----------------------------
DROP TABLE IF EXISTS `garbage`;
CREATE TABLE `garbage`  (
  `garbageId` int(11) NOT NULL AUTO_INCREMENT,
  `garbageName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `garbageType` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`garbageId`) USING BTREE,
  INDEX `garbageType_idx`(`garbageType`) USING BTREE,
  CONSTRAINT `garbageType` FOREIGN KEY (`garbageType`) REFERENCES `garbagetype` (`garbagetypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garbage
-- ----------------------------
INSERT INTO `garbage` VALUES (1, '塑料瓶 ', 1);
INSERT INTO `garbage` VALUES (2, '化妆品塑料瓶 ', 1);
INSERT INTO `garbage` VALUES (3, '乳酸菌塑料瓶 ', 1);
INSERT INTO `garbage` VALUES (4, '牛奶塑料瓶 ', 1);
INSERT INTO `garbage` VALUES (5, '塑料瓶盖 ', 1);
INSERT INTO `garbage` VALUES (6, '用过的塑料袋 ', 3);
INSERT INTO `garbage` VALUES (7, '早餐塑料袋 ', 3);
INSERT INTO `garbage` VALUES (8, '外卖塑料袋 ', 3);
INSERT INTO `garbage` VALUES (9, '超市塑料袋 ', 3);
INSERT INTO `garbage` VALUES (10, '化妆品玻璃瓶 ', 1);
INSERT INTO `garbage` VALUES (11, '豆浆杯 ', 3);
INSERT INTO `garbage` VALUES (12, '剩菜剩饭 ', 2);
INSERT INTO `garbage` VALUES (13, '剩饭 ', 2);
INSERT INTO `garbage` VALUES (14, '米饭 ', 2);
INSERT INTO `garbage` VALUES (15, '外卖饭盒 ', 3);
INSERT INTO `garbage` VALUES (16, '盒饭 ', 2);
INSERT INTO `garbage` VALUES (17, '指甲油 ', 4);
INSERT INTO `garbage` VALUES (18, '书本 ', 1);
INSERT INTO `garbage` VALUES (19, '拖鞋 ', 1);
INSERT INTO `garbage` VALUES (20, '衣服 ', 1);
INSERT INTO `garbage` VALUES (21, '面膜 ', 3);
INSERT INTO `garbage` VALUES (22, '泡泡糖 ', 3);
INSERT INTO `garbage` VALUES (23, '擦过鼻涕的纸巾 ', 3);
INSERT INTO `garbage` VALUES (24, '纸巾 ', 3);
INSERT INTO `garbage` VALUES (25, '眼镜 ', 3);
INSERT INTO `garbage` VALUES (26, '内衣裤 ', 3);
INSERT INTO `garbage` VALUES (27, '保鲜盒 ', 1);
INSERT INTO `garbage` VALUES (28, '笔 ', 3);
INSERT INTO `garbage` VALUES (29, '鸡蛋 ', 2);
INSERT INTO `garbage` VALUES (30, '苹果核 ', 2);
INSERT INTO `garbage` VALUES (31, '蛋糕 ', 2);
INSERT INTO `garbage` VALUES (32, '胶带 ', 3);
INSERT INTO `garbage` VALUES (33, '面包 ', 2);
INSERT INTO `garbage` VALUES (34, '指甲油瓶子 ', 4);
INSERT INTO `garbage` VALUES (35, '沐浴露瓶 ', 1);
INSERT INTO `garbage` VALUES (36, '耳机 ', 1);
INSERT INTO `garbage` VALUES (37, '耳机线 ', 1);
INSERT INTO `garbage` VALUES (38, '数据线 ', 1);
INSERT INTO `garbage` VALUES (39, '布面鼠标垫 ', 1);
INSERT INTO `garbage` VALUES (40, '水壶 ', 1);
INSERT INTO `garbage` VALUES (41, '布玩偶 ', 1);
INSERT INTO `garbage` VALUES (42, '毛绒玩具 ', 1);
INSERT INTO `garbage` VALUES (43, '牙刷 ', 1);
INSERT INTO `garbage` VALUES (44, '书包 ', 1);
INSERT INTO `garbage` VALUES (45, '报纸 ', 1);
INSERT INTO `garbage` VALUES (46, '办公用纸 ', 1);
INSERT INTO `garbage` VALUES (47, '传单 ', 1);
INSERT INTO `garbage` VALUES (48, '杂志 ', 1);
INSERT INTO `garbage` VALUES (49, '泡沫塑料 ', 1);
INSERT INTO `garbage` VALUES (50, '易拉罐 ', 1);
INSERT INTO `garbage` VALUES (51, '卸妆水 ', 3);
INSERT INTO `garbage` VALUES (52, '过期口红 ', 3);
INSERT INTO `garbage` VALUES (53, '奶茶吸管 ', 3);
INSERT INTO `garbage` VALUES (54, '奶茶杯 ', 3);
INSERT INTO `garbage` VALUES (55, '奶茶盖 ', 3);
INSERT INTO `garbage` VALUES (56, '鼠标垫 ', 3);
INSERT INTO `garbage` VALUES (57, '卫生巾 ', 3);
INSERT INTO `garbage` VALUES (58, '使用过的卫生巾 ', 3);
INSERT INTO `garbage` VALUES (59, '卫生巾包装袋 ', 3);
INSERT INTO `garbage` VALUES (60, '搓澡巾 ', 3);
INSERT INTO `garbage` VALUES (61, '泡面桶 ', 3);
INSERT INTO `garbage` VALUES (62, '泡面勺子 ', 3);
INSERT INTO `garbage` VALUES (63, '泡面袋 ', 3);
INSERT INTO `garbage` VALUES (64, '奶茶 ', 2);
INSERT INTO `garbage` VALUES (65, '奶茶珍珠 ', 2);
INSERT INTO `garbage` VALUES (66, '香蕉皮 ', 2);
INSERT INTO `garbage` VALUES (67, '芒果核 ', 2);
INSERT INTO `garbage` VALUES (68, '芒果皮 ', 2);
INSERT INTO `garbage` VALUES (69, '葡萄干 ', 2);
INSERT INTO `garbage` VALUES (70, '葡萄籽 ', 2);
INSERT INTO `garbage` VALUES (71, '葡萄皮 ', 2);
INSERT INTO `garbage` VALUES (72, '玉米芯 ', 2);
INSERT INTO `garbage` VALUES (73, '玉米棒 ', 2);
INSERT INTO `garbage` VALUES (74, '一次性注射器 ', 4);
INSERT INTO `garbage` VALUES (75, '油漆 ', 4);
INSERT INTO `garbage` VALUES (76, '药 ', 4);
INSERT INTO `garbage` VALUES (77, '感冒药包装 ', 4);
INSERT INTO `garbage` VALUES (78, '感冒药 ', 4);
INSERT INTO `garbage` VALUES (79, '废电池 ', 4);
INSERT INTO `garbage` VALUES (80, '洗发水瓶 ', 1);
INSERT INTO `garbage` VALUES (81, '食品罐头 ', 1);
INSERT INTO `garbage` VALUES (82, '耳机线 ', 1);
INSERT INTO `garbage` VALUES (83, '床单 ', 1);
INSERT INTO `garbage` VALUES (84, '旧床单 ', 1);
INSERT INTO `garbage` VALUES (85, '金属耳环 ', 1);
INSERT INTO `garbage` VALUES (86, '耳环 ', 1);
INSERT INTO `garbage` VALUES (87, '项链 ', 1);
INSERT INTO `garbage` VALUES (88, '快递纸袋 ', 1);
INSERT INTO `garbage` VALUES (89, '快递包装袋 ', 1);
INSERT INTO `garbage` VALUES (90, '钢化膜 ', 1);
INSERT INTO `garbage` VALUES (91, '银行卡 ', 1);
INSERT INTO `garbage` VALUES (92, '玻璃啤酒瓶 ', 1);
INSERT INTO `garbage` VALUES (93, '玻璃水杯 ', 1);
INSERT INTO `garbage` VALUES (94, '护肤品玻璃罐 ', 1);
INSERT INTO `garbage` VALUES (95, '玻璃烟灰缸 ', 1);
INSERT INTO `garbage` VALUES (96, '快递盒内防撞包 ', 3);
INSERT INTO `garbage` VALUES (97, '手机卡 ', 3);
INSERT INTO `garbage` VALUES (98, '发卡 ', 3);
INSERT INTO `garbage` VALUES (99, '头绳 ', 3);
INSERT INTO `garbage` VALUES (100, '玻璃胶 ', 3);
INSERT INTO `garbage` VALUES (101, '伞 ', 3);
INSERT INTO `garbage` VALUES (102, '橡皮泥 ', 3);
INSERT INTO `garbage` VALUES (103, '硬果壳 ', 3);
INSERT INTO `garbage` VALUES (104, '坚果壳 ', 3);
INSERT INTO `garbage` VALUES (105, '烧烤木签 ', 3);
INSERT INTO `garbage` VALUES (106, '烧烤竹签 ', 3);
INSERT INTO `garbage` VALUES (107, '核桃壳 ', 3);
INSERT INTO `garbage` VALUES (108, '甘蔗皮 ', 3);
INSERT INTO `garbage` VALUES (109, '麻辣烫 ', 2);
INSERT INTO `garbage` VALUES (110, '海底捞锅底 ', 2);
INSERT INTO `garbage` VALUES (111, '花生壳 ', 2);
INSERT INTO `garbage` VALUES (112, '瓜子皮 ', 2);
INSERT INTO `garbage` VALUES (113, '茶叶渣 ', 2);
INSERT INTO `garbage` VALUES (114, '肉干 ', 2);
INSERT INTO `garbage` VALUES (115, '风干食品 ', 2);
INSERT INTO `garbage` VALUES (116, '椰子肉 ', 2);
INSERT INTO `garbage` VALUES (117, '冲泡饮料 ', 2);
INSERT INTO `garbage` VALUES (118, '蛋壳 ', 2);
INSERT INTO `garbage` VALUES (119, '水银体温计 ', 4);
INSERT INTO `garbage` VALUES (120, '蓄电池 ', 4);
INSERT INTO `garbage` VALUES (121, '充电电池 ', 4);
INSERT INTO `garbage` VALUES (122, '杀虫剂 ', 4);
INSERT INTO `garbage` VALUES (123, '杀虫喷雾 ', 4);
INSERT INTO `garbage` VALUES (124, '废日光灯管 ', 4);

SET FOREIGN_KEY_CHECKS = 1;
