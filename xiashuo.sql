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

 Date: 13/03/2022 18:49:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aadmin
-- ----------------------------
DROP TABLE IF EXISTS `aadmin`;
CREATE TABLE `aadmin`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of aadmin
-- ----------------------------

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secondType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '一剑独尊', 'books/img/23811s.jpg', '生死看淡，不服就干。', '青鸾峰上', '玄幻奇幻', '男频');
INSERT INTO `books` VALUES (2, '不科学御兽', 'books/img/82620s.jpg', '这是一个以御兽为主流的异世界。当时宇携带技能图鉴穿越到这里，并培育出一堆奇葩宠兽后，所有御兽师的三观都破碎了……关键词：御兽、宠兽、宠物、召唤。', '轻泉流响', '玄幻奇幻', '男频');
INSERT INTO `books` VALUES (3, '剑道第一仙', 'books/img/56523s.jpg', '我是万古人间一剑修，诸天之上第一仙', '萧瑾瑜', '玄幻奇幻', '男频');
INSERT INTO `books` VALUES (4, '凡人修仙传', 'books/img/5395s.jpg', '一个普通的山村穷小子，偶然之下，进入到当地的江湖小门派，成了一名记名弟子。他以这样的身份，如何在门派中立足？又如何以平庸的资质，进入到修仙者的行列？和其他巨枭魔头，仙宗仙师并列于山海内外？', '忘语', '玄幻奇幻', '男频');

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
) ENGINE = MyISAM AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (56, 'admin', 'd05c1cf22fa59893bfe8d9c069810d62', 'admin', 'user/img/untitled.png');

-- ----------------------------
-- Table structure for 出版分类
-- ----------------------------
DROP TABLE IF EXISTS `出版分类`;
CREATE TABLE `出版分类`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 出版分类
-- ----------------------------
INSERT INTO `出版分类` VALUES (1, 'img/f07552a143924c14ac0ef564251055c5.png', '短篇', '儿童文学 |  影视剧本 | 短篇小说 | 美文游记 | 生活随笔');
INSERT INTO `出版分类` VALUES (2, 'img/d9edc798884d402c8e6f53629f266697.png', '经典名著', '经管励志 | 社科科普 | 古典名著');
INSERT INTO `出版分类` VALUES (3, 'img/efa2fc00cbaf46c9bb278c8bdab1bb66.png', '其他出版', '文史传记 | 悬疑出版 | 宗教哲学');
INSERT INTO `出版分类` VALUES (4, 'img/04ea9dd307c1459da07dd7083f61807d.png', '现代文学', '文学小说 | 原创出版 | 官场职场 | 情感小说');

-- ----------------------------
-- Table structure for 女生分类
-- ----------------------------
DROP TABLE IF EXISTS `女生分类`;
CREATE TABLE `女生分类`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 女生分类
-- ----------------------------
INSERT INTO `女生分类` VALUES (1, 'img/ac20099d3a104eaeac5e008d2e242be6.png', '现代言情', '都市情缘 | 总裁豪门 | 婚恋家庭 | 民国旧影 | 娱乐巨星 | 强势宠婚');
INSERT INTO `女生分类` VALUES (2, 'img/8fab1ef778624fc0aa0975dc9a902d6e.png', '古代言情', '古代情缘 | 穿越架空 | 女尊权谋 | 宫闱宅斗 | 经商种田');
INSERT INTO `女生分类` VALUES (3, 'img/6ca71106288d4a39aae896be143498c5.png', '幻想言情', '仙侠奇缘 | 魔幻情缘 | 穿越时光 | 末世危情 | 网配快穿');
INSERT INTO `女生分类` VALUES (4, 'img/6c59463ec6d24a529fccde3abd7702b3.png', '浪漫青春', '青春校园 | 唯美绝恋');
INSERT INTO `女生分类` VALUES (5, 'img/e6ba7da5ed3e4ed79f590ef05d24403d.png', '轻小说', '青春日常');

-- ----------------------------
-- Table structure for 男生分类
-- ----------------------------
DROP TABLE IF EXISTS `男生分类`;
CREATE TABLE `男生分类`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 男生分类
-- ----------------------------
INSERT INTO `男生分类` VALUES (1, 'img/6e53084bb0654b45925b1c51e2ca370c.png', '玄幻奇幻', '东方玄幻 | 西方魔幻 | 异界争霸 | 洪荒神话');
INSERT INTO `男生分类` VALUES (2, 'img/6e145f7f9ebb4ccc9237e1a21bcfd2ac.png', '现代都市', '现代修真 | 都市纵横 | 都市异能 | 娱乐明星 | 校园生活 | 职场商战 | 小康致富');
INSERT INTO `男生分类` VALUES (3, 'img/9e2804c0ef4b479ba723b10d1dff0267.png', '武侠仙侠', '传统武侠 | 古典仙侠');
INSERT INTO `男生分类` VALUES (4, 'img/0f6cc4e4a29c4d969a6b74efd451b9c2.png', '科幻小说', '未来世界 | 科技争霸 | 古武机甲 | 末世进化 | 时空穿梭');
INSERT INTO `男生分类` VALUES (5, 'img/4683c868554a439ea0335a7a7571f3e8.png', '游戏竞技', '虚拟网游 | 电子竞技 | 体育竞技');
INSERT INTO `男生分类` VALUES (6, 'img/68cd686020a54b9cb6e3b31355be94f8.png', '宅小说', '原生幻想 | 轻松搞笑');

SET FOREIGN_KEY_CHECKS = 1;
