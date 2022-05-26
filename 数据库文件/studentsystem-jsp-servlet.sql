/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : studentsystem-jsp-servlet

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 26/05/2022 20:09:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chengji
-- ----------------------------
DROP TABLE IF EXISTS `chengji`;
CREATE TABLE `chengji`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NULL DEFAULT NULL,
  `kname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fenshu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`, `teacher`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chengji
-- ----------------------------
INSERT INTO `chengji` VALUES (9, 20, 'Java', '90', '卢老师');
INSERT INTO `chengji` VALUES (11, 21, 'JavaEE', '80', '孙老师');
INSERT INTO `chengji` VALUES (12, 21, '移动应用开发', '80', '唐老师');
INSERT INTO `chengji` VALUES (13, 19, '面向对象UML', '78', '韦老师');
INSERT INTO `chengji` VALUES (15, 19, '移动应用开发', '100', '唐老师');
INSERT INTO `chengji` VALUES (16, 1, 'Java', '80', '卢老师');
INSERT INTO `chengji` VALUES (18, 20, 'JavaEE', '80', '孙老师');
INSERT INTO `chengji` VALUES (19, 20, '面向对象UML', '85', '韦老师');
INSERT INTO `chengji` VALUES (20, 21, 'Oracle数据库', '80', '王老师');
INSERT INTO `chengji` VALUES (21, 20, 'Oracle数据库', '80', '王老师');

-- ----------------------------
-- Table structure for classs
-- ----------------------------
DROP TABLE IF EXISTS `classs`;
CREATE TABLE `classs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classs
-- ----------------------------
INSERT INTO `classs` VALUES (5, '19级软工一班');
INSERT INTO `classs` VALUES (6, '19级软工二班');
INSERT INTO `classs` VALUES (8, '19级软工三班');

-- ----------------------------
-- Table structure for kecheng
-- ----------------------------
DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE `kecheng`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecheng
-- ----------------------------
INSERT INTO `kecheng` VALUES (2, 'JavaEE');
INSERT INTO `kecheng` VALUES (3, '移动应用开发');
INSERT INTO `kecheng` VALUES (4, 'Oracle数据库');
INSERT INTO `kecheng` VALUES (5, '面向对象UML');
INSERT INTO `kecheng` VALUES (6, 'Java');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `classs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (19, 'ljh', '女', 20, '19级软工一班', '软件工程');
INSERT INTO `student` VALUES (20, '张磊', '男', 21, '19级软工一班', '软件工程');
INSERT INTO `student` VALUES (21, '卢家豪', '男', 22, '19级软工一班', '软件工程');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `kname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (24, '孙老师', '男', 30, 'JavaEE');
INSERT INTO `teacher` VALUES (25, '王老师', '女', 35, 'Oracle数据库');
INSERT INTO `teacher` VALUES (26, '唐老师', '女', 40, '移动应用开发');
INSERT INTO `teacher` VALUES (27, '韦老师', '女', 35, '面向对象UML');
INSERT INTO `teacher` VALUES (28, '卢老师', '男', 20, 'Java');

SET FOREIGN_KEY_CHECKS = 1;
