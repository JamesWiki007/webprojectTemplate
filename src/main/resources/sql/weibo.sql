/*
Navicat MySQL Data Transfer

Source Server         : Local_MySQL
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : weibo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-10-06 18:53:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_date` date NOT NULL,
  `c_author_name` varchar(20) NOT NULL,
  `c_content` text,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '2018-08-15', 'aaa', 'hello Spring', '1');
INSERT INTO `comments` VALUES ('2', '2018-08-15', 'bbb', 'hello AngularJS', '2');
INSERT INTO `comments` VALUES ('3', '2018-08-15', 'aaa', 'Good Evening!', '3');
INSERT INTO `comments` VALUES ('4', '2018-08-15', 'ccc', 'Hello aaa, My name is ccc', '3');
INSERT INTO `comments` VALUES ('5', '2018-08-18', 'aaa', 'fdt', '4');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `author_name` varchar(20) NOT NULL,
  `likes` smallint(6) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '2018-08-15', 'aaa', '1', 'hello chengdu');
INSERT INTO `posts` VALUES ('2', '2018-08-15', 'bbb', '2', 'hello beijing');
INSERT INTO `posts` VALUES ('3', '2018-08-15', 'aaa', '13', 'My name is Winking');
INSERT INTO `posts` VALUES ('4', '2018-08-18', 'aaa', '5', 'look');
INSERT INTO `posts` VALUES ('5', '2018-08-18', 'aaa', null, 'wew');
INSERT INTO `posts` VALUES ('6', '2018-08-18', 'ccc', null, 'eredr');
INSERT INTO `posts` VALUES ('7', '2018-08-18', 'ccc', null, 'eredr');
INSERT INTO `posts` VALUES ('8', '2018-08-19', 'aaa', null, 'SDF');
INSERT INTO `posts` VALUES ('21', '2018-10-06', 'bbb', null, 'kkkkkkkkkkkkkkk');
INSERT INTO `posts` VALUES ('22', '2018-10-06', 'bbb', '1', 'kkkkkkkkkkkkkkk');
INSERT INTO `posts` VALUES ('23', '2018-10-06', 'bbb', null, 'kkkkk');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'aaa', '111');
INSERT INTO `users` VALUES ('2', 'bbb', '222');
INSERT INTO `users` VALUES ('3', 'ccc', '333');
INSERT INTO `users` VALUES ('7', 'ttt', 'ttt');
INSERT INTO `users` VALUES ('8', 'qqq', 'qqq');
INSERT INTO `users` VALUES ('9', 'www', 'www');
