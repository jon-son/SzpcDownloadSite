/*
MySQL Data Transfer
Source Host: 172.16.179.177 
Source Database: SzpcDownloadSite
Target Host: 172.16.179.177 
Target Database: SzpcDownloadSite
Date: 2018/11/15 16:21:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for activity
-- ----------------------------
CREATE TABLE `activity` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `local` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for download
-- ----------------------------
CREATE TABLE `download` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `path` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
CREATE TABLE `recruit` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `local` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `user_id` char(255) NOT NULL,
  `passwd` char(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin');
