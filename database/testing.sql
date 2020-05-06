/*
 Navicat Premium Data Transfer

 Source Server         : mis_proyectos_bd
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : testing

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 05/05/2020 20:38:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for country_state_city
-- ----------------------------
DROP TABLE IF EXISTS `country_state_city`;
CREATE TABLE `country_state_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country_state_city
-- ----------------------------
INSERT INTO `country_state_city` VALUES (1, 'USA', 'New York', 'New York city');
INSERT INTO `country_state_city` VALUES (2, 'USA', 'New York', 'Buffalo');
INSERT INTO `country_state_city` VALUES (3, 'USA', 'New York', 'Albany');
INSERT INTO `country_state_city` VALUES (4, 'USA', 'Alabama', 'Birmingham');
INSERT INTO `country_state_city` VALUES (5, 'USA', 'Alabama', 'Huntsvije');
INSERT INTO `country_state_city` VALUES (6, 'USA', 'California', 'Los Angeles');
INSERT INTO `country_state_city` VALUES (7, 'USA', 'California', 'San Francisco');
INSERT INTO `country_state_city` VALUES (8, 'USA', 'California', 'San Diego');
INSERT INTO `country_state_city` VALUES (9, 'Canada', 'Ontario', 'Toronto');
INSERT INTO `country_state_city` VALUES (10, 'Canada', 'Ontario', 'Ottawa');
INSERT INTO `country_state_city` VALUES (11, 'Canada', 'British Columbia', 'Vancouver');
INSERT INTO `country_state_city` VALUES (12, 'Canada', 'Britis Columbia', 'Victoria');
INSERT INTO `country_state_city` VALUES (13, 'Australia', 'New South Wales', 'Sydney');
INSERT INTO `country_state_city` VALUES (14, 'Australia', 'New South Wales', 'Newcastle');
INSERT INTO `country_state_city` VALUES (15, 'Australia', 'Queensland', 'City of Brisbane');
INSERT INTO `country_state_city` VALUES (16, 'Australia', 'Queensland', 'Gold Coast');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for tbl_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE `tbl_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_login
-- ----------------------------
INSERT INTO `tbl_login` VALUES (1, 'Danie', 'Angel', 'male', 'dangel@gmail.com', 'password', '', '936292818');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'John Smith', 'john_smith@gmail.com', NULL, '$2y$10$3t0vyEx/AussJ8uLHDci5O/YcMNdRfpHbHSxhiyZukZ6ABb7NgQ.y', 'gqVzRhblG8DdxexkPIlUEekVyhI87G2jVbakshfdIRcX5rFFvAfpDlZPboty', '2020-05-05 17:39:05', '2020-05-05 17:39:05');

SET FOREIGN_KEY_CHECKS = 1;
