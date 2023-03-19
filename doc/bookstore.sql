/*
 Navicat Premium Data Transfer

 Source Server         : local_db
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 27/12/2021 14:28:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NULL DEFAULT NULL,
  `pnum` int(11) NULL DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1001, 'java编程思想', 98, 100, '计算机');
INSERT INTO `books` VALUES (1002, '西游记', 10, 20, '文学');
INSERT INTO `books` VALUES (1003, '九阴真经', 20, 30, '武侠');
INSERT INTO `books` VALUES (1004, '365夜睡前好故事', 19.8, 50, '少儿');
INSERT INTO `books` VALUES (1005, '撒哈拉的故事', 16.6, 80, '文学');
INSERT INTO `books` VALUES (1006, '三只小猪', 9.8, 50, '少儿');
INSERT INTO `books` VALUES (1007, '中华上下五千年', 28, 100, '少儿123');
INSERT INTO `books` VALUES (1008, '平凡的世界', 55, 80, '文学');
INSERT INTO `books` VALUES (1009, '心灵鸡汤', 15, 100, '文学');



select *from `books`;