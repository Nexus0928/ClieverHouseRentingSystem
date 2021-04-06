/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : rentsystem

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 06/04/2021 16:32:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `a_id` int(0) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for alluser
-- ----------------------------
DROP TABLE IF EXISTS `alluser`;
CREATE TABLE `alluser`  (
  `u_id` int(0) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `u_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式/电话',
  `u_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `u_age` int(0) NOT NULL COMMENT '年龄',
  `u_evidence` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `h_u_img` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房产证件照',
  `u_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '租客' COMMENT '用户类别：房东/租客',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alluser
-- ----------------------------
INSERT INTO `alluser` VALUES (1, '2297207040', '123456', '花样年华', '17340525619', '男', 21, '420624199909281311', NULL, '房东');
INSERT INTO `alluser` VALUES (2, '17340525619', '123456', 'Nexus', '17340525619', '男', 21, '420624199909281311', NULL, '房东');
INSERT INTO `alluser` VALUES (3, '2297207042', '123456', 'Nexus2', '17340525619', '女', 21, '420624199909281311', NULL, '房东');
INSERT INTO `alluser` VALUES (4, '2297207041', '123456', '大鹏', '17340525619', '男', 22, '420624199906241312', NULL, '租客');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `h_id` int(0) NOT NULL AUTO_INCREMENT,
  `u_id` int(0) NOT NULL COMMENT '发布人',
  `h_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小区名字',
  `h_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租房描述',
  `h_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '几室几厅',
  `h_maxNum` int(0) UNSIGNED NOT NULL COMMENT '最大人数限制',
  `h_area` double(5, 2) NOT NULL COMMENT '房屋面积',
  `h_floor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋楼层',
  `h_direct` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '朝向',
  `h_price` double(9, 2) NOT NULL COMMENT '出租价格',
  `h_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出租地址',
  `h_linkman` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人电话',
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publishTime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  PRIMARY KEY (`h_id`) USING BTREE,
  INDEX `fk1`(`u_id`) USING BTREE,
  CONSTRAINT `fk1` FOREIGN KEY (`u_id`) REFERENCES `alluser` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for house_apply
-- ----------------------------
DROP TABLE IF EXISTS `house_apply`;
CREATE TABLE `house_apply`  (
  `h_id` int(0) NOT NULL AUTO_INCREMENT,
  `u_id` int(0) NOT NULL COMMENT '发布人',
  `h_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小区名字',
  `h_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租房描述',
  `h_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '几室几厅',
  `h_maxNum` int(0) UNSIGNED NOT NULL COMMENT '最大人数限制',
  `h_area` double(5, 2) NOT NULL COMMENT '房屋面积',
  `h_floor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋楼层',
  `h_direct` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '朝向',
  `h_price` double(9, 2) NOT NULL COMMENT '出租价格',
  `h_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出租地址',
  `h_linkman` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人电话',
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publishTime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house_apply
-- ----------------------------
INSERT INTO `house_apply` VALUES (9, 3, '好来源房产基地', '欢迎前来面对面进行房源的查看，帮助您更好的挑选房源信息！', '二室一厅', 4, 50.00, '5', '南方', 1500.00, '湖北省武汉市洪山区狮子山街道南李路22号武昌首义学院', '17340525619', 'Nexus2', '2021-04-05 00:00:00');
INSERT INTO `house_apply` VALUES (10, 2, '好梦来酒店', '好梦来，祝您好梦', '一室一厅', 2, 40.00, '3', '东南方', 2000.00, '湖北省武汉市洪山区积玉桥13号', '13108512276', 'Nexus', '2021-04-05 00:00:00');
INSERT INTO `house_apply` VALUES (11, 2, '逸轩酒店', '这是一个正规的大型商业酒店，能满足您的各种出行需求。', '二室一厅', 4, 100.00, '6', '南方', 3500.00, '湖北省武汉市汉阳区龙阳大道陶家岭', '17340525739', 'Nexus', '2021-04-05 00:00:00');
INSERT INTO `house_apply` VALUES (12, 1, '甲等公寓', '邻山傍水，给您最好的民宿体验！', '二室一厅', 4, 117.60, '1', '东南方', 3500.00, '湖北省襄阳市南漳县武安镇', '13108512276', '花样年华', '2021-04-06 00:00:00');

-- ----------------------------
-- Table structure for house_history
-- ----------------------------
DROP TABLE IF EXISTS `house_history`;
CREATE TABLE `house_history`  (
  `h_id` int(0) NOT NULL AUTO_INCREMENT,
  `u_id` int(0) NOT NULL COMMENT '发布人',
  `h_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小区名字',
  `h_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租房描述',
  `h_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '几室几厅',
  `h_maxNum` int(0) UNSIGNED NOT NULL COMMENT '最大人数限制',
  `h_area` double(5, 2) NOT NULL COMMENT '房屋面积',
  `h_floor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋楼层',
  `h_direct` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '朝向',
  `h_price` double(9, 2) NOT NULL COMMENT '出租价格',
  `h_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出租地址',
  `h_linkman` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人电话',
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publishTime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `o_id` int(0) NOT NULL AUTO_INCREMENT,
  `h_id` int(0) NOT NULL,
  `u_id` int(0) NOT NULL,
  `order_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `order_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE,
  INDEX `h2o`(`h_id`) USING BTREE,
  INDEX `u2o`(`u_id`) USING BTREE,
  CONSTRAINT `h2o` FOREIGN KEY (`h_id`) REFERENCES `house` (`h_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `u2o` FOREIGN KEY (`u_id`) REFERENCES `alluser` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_apply
-- ----------------------------
DROP TABLE IF EXISTS `order_apply`;
CREATE TABLE `order_apply`  (
  `o_id` int(0) NOT NULL AUTO_INCREMENT,
  `h_id` int(0) NOT NULL,
  `u_id` int(0) NOT NULL,
  `order_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `order_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_history
-- ----------------------------
DROP TABLE IF EXISTS `order_history`;
CREATE TABLE `order_history`  (
  `o_id` int(0) NOT NULL AUTO_INCREMENT,
  `h_id` int(0) NOT NULL,
  `u_id` int(0) NOT NULL,
  `order_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `order_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
