/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : xiashuo

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 08/03/2022 18:56:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aasd
-- ----------------------------
DROP TABLE IF EXISTS `aasd`;
CREATE TABLE `aasd`  (
  `id` int NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aasd
-- ----------------------------

-- ----------------------------
-- Table structure for aqwe
-- ----------------------------
DROP TABLE IF EXISTS `aqwe`;
CREATE TABLE `aqwe`  (
  `id` int NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aqwe
-- ----------------------------
INSERT INTO `aqwe` VALUES (2);
INSERT INTO `aqwe` VALUES (4);
INSERT INTO `aqwe` VALUES (3);

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '一剑独尊', 'books/img/23811s.jpg', '生死看淡，不服就干。', 'books/text/一剑独尊.html', '青鸾峰上', '玄幻小说');
INSERT INTO `books` VALUES (2, '不科学御兽', 'books/img/82620s.jpg', '这是一个以御兽为主流的异世界。当时宇携带技能图鉴穿越到这里，并培育出一堆奇葩宠兽后，所有御兽师的三观都破碎了……关键词：御兽、宠兽、宠物、召唤。', 'books/text/不科学御兽.html', '轻泉流响', '玄幻小说');
INSERT INTO `books` VALUES (3, '剑道第一仙', 'books/img/56523s.jpg', '我是万古人间一剑修，诸天之上第一仙', 'books/text/剑道第一仙.html', '萧瑾瑜', '玄幻小说');
INSERT INTO `books` VALUES (4, '凡人修仙传', 'books/img/5395s.jpg', '一个普通的山村穷小子，偶然之下，进入到当地的江湖小门派，成了一名记名弟子。他以这样的身份，如何在门派中立足？又如何以平庸的资质，进入到修仙者的行列？和其他巨枭魔头，仙宗仙师并列于山海内外？', 'books/text/凡人修仙传.html', '忘语', '玄幻小说');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userImg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'qwe', 'd18d86a9edb81f00b78ec77fe62c871a', 'qweeqwe', 'user/img/untitled.png');
INSERT INTO `user` VALUES (2, 'asd', 'fd3d4dfc8ba374db6e97eae51d9ae247', 'wqewqewq', 'user/img/untitled.png');

SET FOREIGN_KEY_CHECKS = 1;
