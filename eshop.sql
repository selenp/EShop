/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : eshop

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2018-04-27 00:10:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `directors` varchar(255) DEFAULT NULL,
  `writers` varchar(255) DEFAULT NULL,
  `stars` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('1', '0', 'Captain America: Civil War', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '2h 27min', '2016-05-06', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'Anthony Russo, Joe Russo', 'Christopher Markus (screenplay by), Stephen McFeely (screenplay by)', 'Christopher Markus, Stephen McFeely, Joe Simon, Jack Kirby, Mark Millar, Steven McNiven', 'marvel1.jpg');
INSERT INTO `film` VALUES ('2', '0', 'Captain America: The First Avenger', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '2h 4min', '2011-07-22', 'Steve Rogers, a rejected military soldier transforms into Captain America after taking a dose of a \"Super-Soldier serum\". But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization.', 'Joe Johnston', 'Christopher Markus (screenplay), Stephen McFeely (screenplay)', 'Christopher Markus, Stephen McFeely, Joe Simon, Jack Kirby, Mark Millar, Steven McNiven', 'marvel2.jpg');
INSERT INTO `film` VALUES ('3', '0', 'Thor: The Dark World', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '1h 52min', '2013-11-08', 'When Dr. Jane Foster gets cursed with a powerful entity known as the Aether, Thor is heralded of the cosmic event known as the Convergence and the genocidal Dark Elves.', 'Alan Taylor', 'Christopher Yost (screenplay by) (as Christopher L. Yost), Christopher Markus (screenplay by)', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', 'marvel3.jpg');
INSERT INTO `film` VALUES ('4', '0', 'Avengers: Age of Ultron', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '2h 21min', '2015-05-01', 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', 'Joss Whedon', 'CJoss Whedon, Stan Lee (based on the Marvel comics by)', 'Robert Downey Jr., Chris Evans, Mark Ruffalo', 'marvel4.jpg');
INSERT INTO `film` VALUES ('5', '0', 'Ant-Man', '2.99', 'PG-13', 'Action, Adventure, Comedy', '1h 57min', '2015-07-17', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.', 'Peyton Reed', 'Edgar Wright (screenplay by), Joe Cornish (screenplay by)', 'Paul Rudd, Michael Douglas, Corey Stoll', 'marvel5.jpg');
INSERT INTO `film` VALUES ('6', '0', 'Guardians of the Galaxy Vol. 2', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '2h 16min', '2017-05-05', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill\'s true parentage.', 'James Gunn', 'James Gunn, Dan Abnett (based on the Marvel comics by).', 'Chris Pratt, Zoe Saldana, Dave Bautista.', 'marvel6.jpg');
INSERT INTO `film` VALUES ('7', '1', 'Justice League', '4.99', 'PG-13', 'Action, Adventure, Fantasy', '2h', '2017-11-17', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'Zack Snyder', ' Chris Terrio (screenplay by), Joss Whedon (screenplay by)', 'Ben Affleck, Gal Gadot, Jason Momoa', 'DC1.jpg');
INSERT INTO `film` VALUES ('8', '1', 'Batman v Superman: Dawn of ', '4.99', 'PG-13', 'Action, Adventure, Fantasy', '2h 31min', '2016-03-25', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'Zack Snyder', 'Chris Terrio, David S. Goyer.', 'Ben Affleck, Henry Cavill, Amy Adams.', 'DC2.jpg');
INSERT INTO `film` VALUES ('9', '1', 'Man of Steel', '4.99', 'PG-13', 'Action, Adventure, Fantasy', '2h 31min', '2016-03-25', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'Zack Snyder', ' David S. Goyer (screenplay), David S. Goyer (story).', 'Henry Cavill, Amy Adams, Michael Shannon.', 'DC3.jpg');
INSERT INTO `film` VALUES ('10', '1', 'Aquaman', '4.99', 'PG-13', 'Action, Adventure, Sci-Fi', '1h 54min', '2018-12-21', 'Arthur Curry learns that he is the heir to the underwater kingdom of Atlantis, and must step forward to lead his people and to be a hero to the world.', 'James Wan', 'Will Beall (screenplay), Geoff Johns (story).', 'Amber Heard, Jason Momoa, Nicole Kidman.', 'DC4.jpg');
INSERT INTO `film` VALUES ('11', '1', 'Green Lantern', '2.99', 'PG-13', 'Action, Adventure, Sci-Fi', '1h 54min', '2011-06-17', 'Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.', 'Martin Campbell', 'Greg Berlanti (screenplay), Michael Green (screenplay).', 'Ryan Reynolds, Blake Lively, Peter Sarsgaard.', 'DC5.jpg');
INSERT INTO `film` VALUES ('12', '1', 'The Dark Knight Rises', '2.99', 'PG-13', 'Action, Thriller', '2h 44min', '2012-07-20', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.', 'Christopher Nolan', 'Jonathan Nolan (screenplay), Christopher Nolan (screenplay).', 'Christian Bale, Tom Hardy, Anne Hathaway.', 'DC6.jpg');
INSERT INTO `film` VALUES ('13', '1', 'Jonah Hex', '2.99', 'PG-13', 'Action, Drama, Fantasy', '1h 21min', '2010-06-18', 'The U.S. military makes a scarred bounty hunter with warrants on his own head an offer he cannot refuse: in exchange for his freedom, he must stop a terrorist who is ready to unleash Hell on Earth.', 'Jimmy Hayward', 'Mark Neveldine (screenplay) (as Neveldine), Brian Taylor (screenplay) (as Taylor).', 'Josh Brolin, Megan Fox, John Malkovich.', 'DC7.jpg');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `isPay` char(1) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('14', '2', '1', '1', '1524406501711');
INSERT INTO `record` VALUES ('15', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('21', '2', '3', '1', '1524406501711');
INSERT INTO `record` VALUES ('22', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('23', '2', '8', '1', '1524406501711');
INSERT INTO `record` VALUES ('24', '2', '8', '1', '1524406501711');
INSERT INTO `record` VALUES ('25', '2', '9', '1', '1524406501711');
INSERT INTO `record` VALUES ('27', '2', '1', '1', '1524406501711');
INSERT INTO `record` VALUES ('28', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('29', '2', '1', '1', '1524406501711');
INSERT INTO `record` VALUES ('30', '2', '2', '1', '1524406501711');
INSERT INTO `record` VALUES ('31', '2', '3', '1', '1524406501711');
INSERT INTO `record` VALUES ('32', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('33', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('34', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('35', '2', '7', '1', '1524406501711');
INSERT INTO `record` VALUES ('36', '2', '1', '0', '1524669589023');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'terrie', '3b453885f5181f1b624d0b25f9e79432', '0', '13832485869', 'abc@qq.com', 'beijing', 'zhichunlu', 'dayuncun');
INSERT INTO `user` VALUES ('5', 'terrie1', '3b453885f5181f1b624d0b25f9e79432', '0', '13833833338', 'a@qq.com', 'a1', 'b1', 'c1');
INSERT INTO `user` VALUES ('6', 'admin', '3b453885f5181f1b624d0b25f9e79432', '1', '13833833338', 'a@qq.com', 'a1', 'b1', 'c1');
