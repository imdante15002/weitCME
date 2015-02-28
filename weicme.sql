/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : weicme

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-02-25 21:29:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dantes_advertise`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_advertise`;
CREATE TABLE `dantes_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `dateline` int(11) NOT NULL,
  `body` text NOT NULL,
  `time` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_advertise
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_announce`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_announce`;
CREATE TABLE `dantes_announce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `uid` int(11) NOT NULL,
  `body` text NOT NULL,
  `dateline` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_announce
-- ----------------------------
INSERT INTO `dantes_announce` VALUES ('1', '恭贺微剑三视频站正式上线啦', '1', '&lt;p&gt;恭贺微剑三视频站正式上线啦&lt;img src=&quot;/Uploads/image/20141029/1414562941528086.jpg&quot; title=&quot;1414562941528086.jpg&quot; alt=&quot;u=2671916602,2321355889&amp;amp;fm=23&amp;amp;gp=0.jpg&quot;/&gt;&lt;/p&gt;', '1414562942', '0', '0');

-- ----------------------------
-- Table structure for `dantes_article`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_article`;
CREATE TABLE `dantes_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `imgh` varchar(20) DEFAULT NULL,
  `lipic` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `body` text,
  `favour` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `reply` int(11) DEFAULT '0',
  `dateline` int(11) NOT NULL,
  `pubip` varchar(50) NOT NULL,
  `flag` varchar(8) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_article
-- ----------------------------
INSERT INTO `dantes_article` VALUES ('53', '1', '1', '【醉意君生·制图】回忆最初的感动，游历稻香村', '', '【醉意君生·制图】回忆最初的感动，游历稻香村', '195', 'Uploads/images/20141215/1418632795132903.jpg_thumb_195_195.png', null, '&lt;p&gt;　　游历稻香村&lt;/p&gt;&lt;p&gt;　　截图： @Cici阿花&lt;/p&gt;&lt;p&gt;　　制图：醉见盈月倚木棉&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;7.jpg&quot; src=&quot;/Uploads/images/20141215/1418632795132903.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;1.jpg&quot; src=&quot;/Uploads/images/20141215/1418632796258190.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;2.jpg&quot; src=&quot;/Uploads/images/20141215/1418632797616688.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;3.jpg&quot; src=&quot;/Uploads/images/20141215/1418632798906679.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;8.jpg&quot; src=&quot;/Uploads/images/20141215/1418632798580025.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;4.jpg&quot; src=&quot;/Uploads/images/20141215/1418632799128122.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;5.jpg&quot; src=&quot;/Uploads/images/20141215/1418632800932498.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;6.jpg&quot; src=&quot;/Uploads/images/20141215/1418632801659892.jpg&quot; width=&quot;785&quot; height=&quot;354&quot;/&gt;&lt;/center&gt;&lt;p&gt;首发多玩剑三专区&lt;/p&gt;', '0', '0', '10', '0', '1418632871', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('54', '1', '1', '【醉意墨渲】 S i l e n t H i l l', '', '【醉意墨渲】 S i l e n t H i l l', '195', 'Uploads/images/20141215/1418633197810675.jpg_thumb_195_195.png', null, '&lt;p&gt;　　截图： @萤火臾凉_ @袖舞清歌 制图：Minortower&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　某人说这套图是要做寂静岭的，之后我接收了，于是就成了这篇了。&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;1.jpg&quot; src=&quot;/Uploads/images/20141215/1418633197810675.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;2.jpg&quot; src=&quot;/Uploads/images/20141215/1418633198856504.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;3.jpg&quot; src=&quot;/Uploads/images/20141215/1418633199668240.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　Really do not deserve it&lt;/p&gt;&lt;p&gt;　　But now there is nothing you can do&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;4.jpg&quot; src=&quot;/Uploads/images/20141215/1418633200128501.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;5.jpg&quot; src=&quot;/Uploads/images/20141215/1418633201120174.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;6.jpg&quot; src=&quot;/Uploads/images/20141215/1418633204908357.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;7.jpg&quot; src=&quot;/Uploads/images/20141215/1418633205348729.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;8.jpg&quot; src=&quot;/Uploads/images/20141215/1418633206799960.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;9.jpg&quot; src=&quot;/Uploads/images/20141215/1418633207917867.jpg&quot; width=&quot;800&quot; height=&quot;450&quot;/&gt;&lt;/center&gt;&lt;p&gt;【多玩剑三专区首发】&lt;br/&gt;&lt;/p&gt;', '0', '0', '0', '0', '1418633273', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('55', '1', '2', ' 一个七秀写给天策的信 这也许是一个悲伤的故事', '', ' 一个七秀写给天策的信 这也许是一个悲伤的故事', '195', 'Uploads/images/20141215/1418633363978886.jpg_thumb_195_195.png', null, '&lt;p&gt;　　原作者：凤夙戈弋，只想说天策好儿郎，你们还有秀妹妹&lt;/p&gt;&lt;p&gt;　　前几天，我上了一个我很久没上的军娘号，以前大明宫时代的打工号，后来没心思玩天策就放在了那里。&lt;/p&gt;&lt;p&gt;　　我看到了信使那里的信件，想想也知道是系统信件。我点了邮件仓库准备收去甘露天霖，但是除了这个，我还收到了些马草，不知道是谁给我寄的。毕竟这只是一个打工号。&lt;/p&gt;&lt;p&gt;　　我打开了信使，看到了长长的四封信。也不多说废话，那四封信看完之后我的鼻子有点酸。&lt;/p&gt;&lt;p&gt;　　我觉得这几封信不该只有我看到，或者是说只有那么几个人看到，因为信的名字是写给天策。希望诸位天策同门共勉。&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;1.jpg&quot; src=&quot;/Uploads/images/20141215/1418633363978886.jpg&quot; width=&quot;389&quot; height=&quot;233&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;2.jpg&quot; src=&quot;/Uploads/images/20141215/1418633364752539.jpg&quot; width=&quot;382&quot; height=&quot;223&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;3.jpg&quot; src=&quot;/Uploads/images/20141215/1418633364121655.jpg&quot; width=&quot;371&quot; height=&quot;227&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;4.jpg&quot; src=&quot;/Uploads/images/20141215/1418633364412588.jpg&quot; width=&quot;376&quot; height=&quot;154&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;5.jpg&quot; src=&quot;/Uploads/images/20141215/1418633365128363.jpg&quot; width=&quot;375&quot; height=&quot;197&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;6.jpg&quot; src=&quot;/Uploads/images/20141215/1418633365411814.jpg&quot; width=&quot;364&quot; height=&quot;185&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;7.jpg&quot; src=&quot;/Uploads/images/20141215/1418633366674523.jpg&quot; width=&quot;381&quot; height=&quot;233&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;8.jpg&quot; src=&quot;/Uploads/images/20141215/1418633366900224.jpg&quot; width=&quot;397&quot; height=&quot;188&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '1', '1', '0', '1418633440', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('56', '1', '1', ' 开发版DX11更新了纯阳气场酷炫 似土豪之心啊', '', ' 开发版DX11更新了纯阳气场酷炫 似土豪之心啊', '195', 'Uploads/images/20141215/1418633659174795.jpg_thumb_195_195.png', null, '&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img src=&quot;/Uploads/images/20141215/1418633659174795.jpg&quot; title=&quot;1418633659174795.jpg&quot; alt=&quot;183817wuluodi2239qze67.jpg&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;248996-6db6164c06acf5dc7315882f1bad214f.jpg&quot; src=&quot;/Uploads/images/20141215/1418633644300576.jpg&quot; width=&quot;800&quot; height=&quot;460&quot;/&gt;&lt;/center&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;503701-59abf4ea43a51b667e2cdfc80223a206.jpg&quot; src=&quot;/Uploads/images/20141215/1418633645305525.jpg&quot; width=&quot;800&quot; height=&quot;490&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　很炫酷啊有木有&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/images/20141215/1418633646130859.gif&quot; width=&quot;50&quot; height=&quot;50&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　卡不卡还未知 没去人多地方试过&lt;/p&gt;&lt;p&gt;　　楼主去打了个稻香村 没问题 全效不卡&lt;/p&gt;&lt;p&gt;　　补张震山河吧&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;~T%V1PPON64][804DRJH(ON.jpg&quot; src=&quot;/Uploads/images/20141215/1418633646121857.jpg&quot; width=&quot;520&quot; height=&quot;544&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　极限封测时期我也玩过 气场是长这样的&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;Z3$TC)3M3`MLCZ%3Q6X42{I.jpg&quot; src=&quot;/Uploads/images/20141215/1418633650493015.jpg&quot; width=&quot;800&quot; height=&quot;503&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　老图啊 挖坟了&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/images/20141215/1418633650989343.gif&quot; width=&quot;50&quot; height=&quot;50&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　那时候电脑比较渣 所以画质么 就这样了&lt;/p&gt;&lt;p&gt;　　&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;_A5X8S{B$D75@M40W8VQMQV.jpg&quot; src=&quot;/Uploads/images/20141215/1418633655842820.jpg&quot; width=&quot;800&quot; height=&quot;431&quot;/&gt;&lt;/center&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '0', '30', '0', '1418633677', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('57', '1', '8', '截图美不美，就要看大腿', '', '截图美不美，就要看大腿', '195', 'Uploads/images/20141219/1418974315132107.jpg_thumb_195_195.png', null, '&lt;p&gt;&lt;img src=&quot;/Uploads/images/20141219/1418974315132107.jpg&quot; title=&quot;1418974315132107.jpg&quot; alt=&quot;9733b2a4f29c72a9ff3135a6b33de188.jpg&quot;/&gt;&lt;/p&gt;', '3', '0', '15', '0', '1418974317', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('58', '1', '1', '喂喂喂', '问问', '问问', null, '', null, '&lt;p&gt;问问巍峨问问&lt;/p&gt;', '0', '0', '1', '0', '1419229701', '127.0.0.1', null, '0');
INSERT INTO `dantes_article` VALUES ('59', '1', '5', '这种栏目可以是真的么', '这种栏目可以是真的么', '这种栏目可以是真的么', null, '', null, '&lt;p&gt;这种栏目可以是真的么这种栏目可以是真的么&lt;/p&gt;', '0', '0', '0', '0', '1424276883', '0.0.0.0', null, '0');

-- ----------------------------
-- Table structure for `dantes_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_auth_group`;
CREATE TABLE `dantes_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `color` char(32) NOT NULL,
  `maxscore` int(32) NOT NULL,
  `minscore` int(32) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_auth_group
-- ----------------------------
INSERT INTO `dantes_auth_group` VALUES ('1', '超级管理员', 'f60', '0', '0', '1', '1', '1,6,32,33,34,35,7,36,37,38,39,40,9,41,42,10,43,44,45,11,46,47,48,12,49,50,2,13,51,52,53,54,14,55,56,57,15,58,59,60,61,16,62,63,64,3,17,65,66,67,18,68,69,70,19,71,72,73,20,74,75,76,4,21,85,86,87,22,82,83,84,23,81,31,77,78,79,80,5,24,88,25,89,26,90,27,91,28,92,93,94,29,95,96,97,98,99,100');
INSERT INTO `dantes_auth_group` VALUES ('2', '管理员', '00a483', '0', '0', '1', '1', '1,6,32,33,34,35,7,36,37,38,39,40,9,41,42,10,43,44,45,11,46,47,48,12,49,50,2,13,51,52,53,54,14,55,56,57,15,58,59,60,61,16,62,63,64,3,17,65,66,67,18,68,69,70,19,71,72,73,20,74,75,76,4,21,85,86,87,22,82,83,84,23,81,31,77,78,79,80,5,24,88,25,89,26,90,27,91,28,92,93,94,29,95,96,97,98,99,100');
INSERT INTO `dantes_auth_group` VALUES ('3', '网站编辑', '9cdf5a', '0', '0', '1', '1', '1,6,32,33,35,7,36,37,38,39,40,9,41,42,10,43,44,45,11,46,47,48,12,49,2,13,51,52,14,55,56,15,58,59,60,61,16,62,63,64,3,17,65,66,67,18,68,69,70,20,74,75,76');
INSERT INTO `dantes_auth_group` VALUES ('4', '内容审核员', '', '0', '0', '1', '1', '6,7,36,37,38,39,9,41,10,43,44,11,46,48,12,49,50,13,58,59,60,61,16,62,63,17,18,19,20,5,24,25,26,27,28,29,97');
INSERT INTO `dantes_auth_group` VALUES ('5', '技术人员', '', '0', '0', '1', '1', '');
INSERT INTO `dantes_auth_group` VALUES ('10', '普通会员', '', '500', '0', '2', '0', '');
INSERT INTO `dantes_auth_group` VALUES ('9', '中级会员', '', '1000', '500', '2', '0', '');
INSERT INTO `dantes_auth_group` VALUES ('8', '高级会员', '', '1500', '1000', '2', '0', '');
INSERT INTO `dantes_auth_group` VALUES ('7', '金牌会员', '', '5000', '1500', '2', '0', '');
INSERT INTO `dantes_auth_group` VALUES ('6', '钻石会员', '', '0', '5000', '2', '0', '');

-- ----------------------------
-- Table structure for `dantes_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_auth_group_access`;
CREATE TABLE `dantes_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_auth_group_access
-- ----------------------------
INSERT INTO `dantes_auth_group_access` VALUES ('1', '1');
INSERT INTO `dantes_auth_group_access` VALUES ('2', '3');
INSERT INTO `dantes_auth_group_access` VALUES ('3', '1');
INSERT INTO `dantes_auth_group_access` VALUES ('4', '8');

-- ----------------------------
-- Table structure for `dantes_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_auth_rule`;
CREATE TABLE `dantes_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_auth_rule
-- ----------------------------
INSERT INTO `dantes_auth_rule` VALUES ('6', 'Admin/Content/channel', '栏目管理', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('1', 'Admin/Content', '内容', '1', '1', '', '0');
INSERT INTO `dantes_auth_rule` VALUES ('2', 'Admin/Forum', '论坛', '1', '1', '', '0');
INSERT INTO `dantes_auth_rule` VALUES ('3', 'Admin/Operate', '运营', '1', '1', '', '0');
INSERT INTO `dantes_auth_rule` VALUES ('4', 'Admin/Member', '用户', '1', '1', '', '0');
INSERT INTO `dantes_auth_rule` VALUES ('5', 'Admin/Config', '配置', '1', '1', '', '0');
INSERT INTO `dantes_auth_rule` VALUES ('7', 'Admin/Content/article', '内容管理', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('9', 'Admin/Content/page', '页面管理', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('10', 'Admin/Content/category', '分类管理', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('11', 'Admin/Content/slides', '幻灯片管理', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('12', 'Admin/Content/recycle', '内容回收站', '1', '1', '', '1');
INSERT INTO `dantes_auth_rule` VALUES ('13', 'Admin/Forum/index', '版块列表', '1', '1', '', '2');
INSERT INTO `dantes_auth_rule` VALUES ('14', 'Admin/Forum/category', '帖子分类', '1', '1', '', '2');
INSERT INTO `dantes_auth_rule` VALUES ('15', 'Admin/Forum/thread', '所有帖子', '1', '1', '', '2');
INSERT INTO `dantes_auth_rule` VALUES ('16', 'Admin/Forum/examine', '帖子审核', '1', '1', '', '2');
INSERT INTO `dantes_auth_rule` VALUES ('17', 'Admin/Operate/site_notice', '站务公告', '1', '1', '', '3');
INSERT INTO `dantes_auth_rule` VALUES ('18', 'Admin/Operate/flink', '友情链接', '1', '1', '', '3');
INSERT INTO `dantes_auth_rule` VALUES ('19', 'Admin/Operate/advertisement', '广告运营', '1', '1', '', '3');
INSERT INTO `dantes_auth_rule` VALUES ('20', 'Admin/Operate/recommend', '站长推荐', '1', '1', '', '3');
INSERT INTO `dantes_auth_rule` VALUES ('21', 'Admin/Member/user', '用户组', '1', '1', '', '4');
INSERT INTO `dantes_auth_rule` VALUES ('22', 'Admin/Member/role', '管理组', '1', '1', '', '4');
INSERT INTO `dantes_auth_rule` VALUES ('23', 'Admin/Member/repassword', '修改密码', '1', '1', '', '4');
INSERT INTO `dantes_auth_rule` VALUES ('24', 'Admin/Config/index', '站点配置', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('25', 'Admin/Config/seo', 'SEO标题', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('26', 'Admin/Config/upload', '性能设置', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('27', 'Admin/Config/app_key', '端口配置', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('28', 'Admin/Auth/index', '模块管理', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('29', 'Admin/Auth/console', '功能配置', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('97', 'Admin/Auth/qmenu', '快捷菜单', '1', '1', '', '5');
INSERT INTO `dantes_auth_rule` VALUES ('31', 'Admin/Member/index', '用户中心', '1', '1', '', '4');
INSERT INTO `dantes_auth_rule` VALUES ('32', ' Admin/Content/add_channel', '添加栏目', '1', '1', '', '6');
INSERT INTO `dantes_auth_rule` VALUES ('33', ' Admin/Content/ed_channel', '编辑栏目', '1', '1', '', '6');
INSERT INTO `dantes_auth_rule` VALUES ('34', 'Admin/Content/del_channel', '删除栏目', '1', '1', '', '6');
INSERT INTO `dantes_auth_rule` VALUES ('35', 'Admin/Content/upchannel', '更新栏目排序', '1', '1', '', '6');
INSERT INTO `dantes_auth_rule` VALUES ('36', 'Admin/Content/move', '批量移动文章', '1', '1', '', '7');
INSERT INTO `dantes_auth_rule` VALUES ('37', 'Admin/Content/del_all', '批量删除文章', '1', '1', '', '7');
INSERT INTO `dantes_auth_rule` VALUES ('38', 'Admin/Content/add_article', '发布内容', '1', '1', '', '7');
INSERT INTO `dantes_auth_rule` VALUES ('39', 'Admin/Content/ed_article', '编辑文章', '1', '1', '', '7');
INSERT INTO `dantes_auth_rule` VALUES ('40', 'Admin/Content/del_article', '删除文章', '1', '1', '', '7');
INSERT INTO `dantes_auth_rule` VALUES ('41', 'Admin/Content/ed_page', '编辑页面', '1', '1', '', '9');
INSERT INTO `dantes_auth_rule` VALUES ('42', 'Admin/Content/del_page', '删除页面', '1', '1', '', '9');
INSERT INTO `dantes_auth_rule` VALUES ('43', 'Admin/Content/add_category', '添加分类', '1', '1', '', '10');
INSERT INTO `dantes_auth_rule` VALUES ('44', 'Admin/Content/ed_category', '编辑分类', '1', '1', '', '10');
INSERT INTO `dantes_auth_rule` VALUES ('45', 'Admin/Content/del_category', '删除分类', '1', '1', '', '10');
INSERT INTO `dantes_auth_rule` VALUES ('46', 'Admin/Content/add_slides', '添加幻灯片', '1', '1', '', '11');
INSERT INTO `dantes_auth_rule` VALUES ('47', 'Admin/Content/del_slides', '删除幻灯片', '1', '1', '', '11');
INSERT INTO `dantes_auth_rule` VALUES ('48', 'Admin/Content/ed_slides', '编辑幻灯片', '1', '1', '', '11');
INSERT INTO `dantes_auth_rule` VALUES ('49', 'Admin/Content/re_recycle', '回收文章', '1', '1', '', '12');
INSERT INTO `dantes_auth_rule` VALUES ('50', 'Admin/Content/de_recycle', '彻底删除文章', '1', '1', '', '12');
INSERT INTO `dantes_auth_rule` VALUES ('51', 'Admin/Forum/add_forum', '添加版块', '1', '1', '', '13');
INSERT INTO `dantes_auth_rule` VALUES ('52', 'Admin/Forum/upforum', '更新板块版序', '1', '1', '', '13');
INSERT INTO `dantes_auth_rule` VALUES ('53', 'Admin/Forum/del_forum', '删除版块', '1', '1', '', '13');
INSERT INTO `dantes_auth_rule` VALUES ('54', 'Admin/Forum/del_all_forum', '批量删除板块', '1', '1', '', '13');
INSERT INTO `dantes_auth_rule` VALUES ('55', 'Admin/Forum/add_category', '添加帖子分类', '1', '1', '', '14');
INSERT INTO `dantes_auth_rule` VALUES ('56', 'Admin/Forum/ed_category', '编辑帖子分类', '1', '1', '', '14');
INSERT INTO `dantes_auth_rule` VALUES ('57', 'Admin/Forum/del_category', '删除帖子分类', '1', '1', '', '14');
INSERT INTO `dantes_auth_rule` VALUES ('58', 'Admin/Forum/ed_thread', '编辑帖子', '1', '1', '', '15');
INSERT INTO `dantes_auth_rule` VALUES ('59', 'Admin/Forum/del_thread', '删除帖子', '1', '1', '', '15');
INSERT INTO `dantes_auth_rule` VALUES ('60', 'Admin/Forum/del_all_thread', '批量删除帖子', '1', '1', '', '15');
INSERT INTO `dantes_auth_rule` VALUES ('61', 'Admin/Forum/mover_thread', '移动帖子', '1', '1', '', '15');
INSERT INTO `dantes_auth_rule` VALUES ('62', 'Admin/Forum/examine_exe', '审核帖子', '1', '1', '', '16');
INSERT INTO `dantes_auth_rule` VALUES ('63', 'Admin/Forum/no_examine', '不通过帖子', '1', '1', '', '16');
INSERT INTO `dantes_auth_rule` VALUES ('64', 'Admin/Forum/del_examine', '删除待审核帖子', '1', '1', '', '16');
INSERT INTO `dantes_auth_rule` VALUES ('65', 'Admin/Operate/add_notice_exe', '添加公告', '1', '1', '', '17');
INSERT INTO `dantes_auth_rule` VALUES ('66', 'Admin/Operate/ed_notice', '编辑公告', '1', '1', '', '17');
INSERT INTO `dantes_auth_rule` VALUES ('67', 'Admin/Operate/del_notice', '删除公告', '1', '1', '', '17');
INSERT INTO `dantes_auth_rule` VALUES ('68', 'Admin/Operate/add_flink', '添加友情链接', '1', '1', '', '18');
INSERT INTO `dantes_auth_rule` VALUES ('69', ' Admin/Operate/ed_flink', '编辑友情链接', '1', '1', '', '18');
INSERT INTO `dantes_auth_rule` VALUES ('70', ' Admin/Operate/del_flink', '删除友情链接', '1', '1', '', '18');
INSERT INTO `dantes_auth_rule` VALUES ('71', 'Admin/Operate/add_advertisement', '添加广告', '1', '1', '', '19');
INSERT INTO `dantes_auth_rule` VALUES ('72', 'Admin/Operate/ed_advertisement', '编辑广告', '1', '1', '', '19');
INSERT INTO `dantes_auth_rule` VALUES ('73', 'Admin/Operate/del_advertisement', '删除广告', '1', '1', '', '19');
INSERT INTO `dantes_auth_rule` VALUES ('74', 'Admin/Operate/add_recommend', '添加推荐', '1', '1', '', '20');
INSERT INTO `dantes_auth_rule` VALUES ('75', 'Admin/Operate/ed_recommend', '编辑推荐', '1', '1', '', '20');
INSERT INTO `dantes_auth_rule` VALUES ('76', 'Admin/Operate/del_recommend', '删除推荐', '1', '1', '', '20');
INSERT INTO `dantes_auth_rule` VALUES ('77', 'Admin/Member/add_member', '添加用户', '1', '1', '', '31');
INSERT INTO `dantes_auth_rule` VALUES ('78', 'Admin/Member/ed_member', '编辑用户', '1', '1', '', '31');
INSERT INTO `dantes_auth_rule` VALUES ('79', 'Admin/Member/del_member', '删除用户', '1', '1', '', '31');
INSERT INTO `dantes_auth_rule` VALUES ('80', 'Admin/Member/del_all_member', '批量删除用户', '1', '1', '', '31');
INSERT INTO `dantes_auth_rule` VALUES ('81', 'Admin/Member/repass', '修改管理员密码', '1', '1', '', '23');
INSERT INTO `dantes_auth_rule` VALUES ('82', 'Admin/Member/add_role', '添加管理组', '1', '1', '', '22');
INSERT INTO `dantes_auth_rule` VALUES ('83', 'Admin/Member/ed_role', '编辑管理组', '1', '1', '', '22');
INSERT INTO `dantes_auth_rule` VALUES ('84', 'Admin/Member/del_role', '删除管理组', '1', '1', '', '22');
INSERT INTO `dantes_auth_rule` VALUES ('85', 'Admin/Member/add_user', '添加用户组', '1', '1', '', '21');
INSERT INTO `dantes_auth_rule` VALUES ('86', 'Admin/Member/ed_user', '编辑用户组', '1', '1', '', '21');
INSERT INTO `dantes_auth_rule` VALUES ('87', 'Admin/Member/del_user', '删除用户组', '1', '1', '', '21');
INSERT INTO `dantes_auth_rule` VALUES ('88', 'Admin/Config/upsite', '修改站点配置', '1', '1', '', '24');
INSERT INTO `dantes_auth_rule` VALUES ('89', 'Admin/Config/up_seo_exe', '修改SEO设置', '1', '1', '', '25');
INSERT INTO `dantes_auth_rule` VALUES ('90', 'Admin/Config/save_upload', '修改性能设置', '1', '1', '', '26');
INSERT INTO `dantes_auth_rule` VALUES ('91', 'Admin/Config/up_appkey', '修改端口', '1', '1', '', '27');
INSERT INTO `dantes_auth_rule` VALUES ('92', 'Admin/Auth/add_model', '添加模块', '1', '1', '', '28');
INSERT INTO `dantes_auth_rule` VALUES ('93', 'Admin/Auth/ed_model', '编辑模块', '1', '1', '', '28');
INSERT INTO `dantes_auth_rule` VALUES ('94', 'Admin/Auth/del_model', '删除模块', '1', '1', '', '28');
INSERT INTO `dantes_auth_rule` VALUES ('95', 'Admin/Auth/save_console', '保存功能设置', '1', '1', '', '29');
INSERT INTO `dantes_auth_rule` VALUES ('96', 'Admin/Auth/del_console', '删除功能菜单', '1', '1', '', '29');
INSERT INTO `dantes_auth_rule` VALUES ('98', 'Admin/Auth/add_qmenu', '增加快捷菜单', '1', '1', '', '97');
INSERT INTO `dantes_auth_rule` VALUES ('99', 'Admin/Auth/ed_qmenu', '编辑快捷菜单', '1', '1', '', '97');
INSERT INTO `dantes_auth_rule` VALUES ('100', 'Admin/Auth/del_qmenu', '删除快捷菜单', '1', '1', '', '97');

-- ----------------------------
-- Table structure for `dantes_auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_auth_user`;
CREATE TABLE `dantes_auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `rules` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_auth_user
-- ----------------------------
INSERT INTO `dantes_auth_user` VALUES ('1', '普通会员', '0', '');
INSERT INTO `dantes_auth_user` VALUES ('2', '中级会员', '0', '');
INSERT INTO `dantes_auth_user` VALUES ('3', '高级会员', '0', '');
INSERT INTO `dantes_auth_user` VALUES ('4', '金牌会员', '0', '');
INSERT INTO `dantes_auth_user` VALUES ('5', '钻石会员', '0', '');

-- ----------------------------
-- Table structure for `dantes_category`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_category`;
CREATE TABLE `dantes_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_category
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_channel`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_channel`;
CREATE TABLE `dantes_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `pid` int(11) NOT NULL,
  `nav` int(11) NOT NULL,
  `url` varchar(125) DEFAULT NULL,
  `tpl` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_config`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_config`;
CREATE TABLE `dantes_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(125) NOT NULL,
  `siteurl` varchar(255) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `email` varchar(125) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `icp` varchar(50) NOT NULL,
  `count` text NOT NULL,
  `danteskey` varchar(40) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_config
-- ----------------------------
INSERT INTO `dantes_config` VALUES ('1', '微图网-最独特的游戏图片社区', 'http://localhost', '微图网', '763093576', '763093576@qq.com', '0879—2132370', '滇ICP备13003597号-5', '&lt;script type=&quot;text/javascript&quot;&gt;\r\nvar _bdhmProtocol = ((&quot;https:&quot; == document.location.protocol) ? &quot; https://&quot; : &quot; http://&quot;);\r\ndocument.write(unescape(&quot;%3Cscript src=\'&quot; + _bdhmProtocol + &quot;hm.baidu.com/h.js%3Ff84d1f8fa43e07f5db368b7ccab963ba\' type=\'text/javascript\'%3E%3C/script%3E&quot;));\r\n&lt;/script&gt;', '', '微图网', '微图网');

-- ----------------------------
-- Table structure for `dantes_extend_config`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_extend_config`;
CREATE TABLE `dantes_extend_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_url` varchar(255) NOT NULL,
  `up_size` int(11) NOT NULL,
  `thumb_on` int(11) NOT NULL,
  `thumb_size` varchar(20) NOT NULL,
  `ps_on` int(11) NOT NULL,
  `ps_url` char(255) NOT NULL,
  `stc_on` int(11) NOT NULL,
  `stc_url` char(255) NOT NULL,
  `daley_on` int(11) NOT NULL,
  `appid1` char(255) NOT NULL,
  `appid2` char(255) NOT NULL,
  `appid3` char(255) NOT NULL,
  `appkey1` char(255) NOT NULL,
  `appkey2` char(255) NOT NULL,
  `appkey3` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_extend_config
-- ----------------------------
INSERT INTO `dantes_extend_config` VALUES ('1', '/image/', '3145728', '1', '240,60', '0', 'http://img.weij3.com', '0', 'http://stc.weij3.com', '0', '91is743ywdklq3', '34trcg6889324', '73208781eecd', 'YXBwaWQ9N2hpOHR5dXdxMDM1dncwbw==', 'YXBwaWQ9N2hpOHR5dXdxMDM1dncwbw==', 'YXBwaWQ9N2hpOHR5dXdxMDM1dncwbw==');

-- ----------------------------
-- Table structure for `dantes_extend_content`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_extend_content`;
CREATE TABLE `dantes_extend_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `title` varchar(125) NOT NULL,
  `litpic` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dateline` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_extend_content
-- ----------------------------
INSERT INTO `dantes_extend_content` VALUES ('1', '10', '测试信息', '', '&lt;p&gt;测试信息&lt;br/&gt;&lt;/p&gt;', '测试信息', '测试信息', '1416964844', '0');

-- ----------------------------
-- Table structure for `dantes_flink`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_flink`;
CREATE TABLE `dantes_flink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkname` varchar(120) NOT NULL,
  `linkurl` varchar(255) NOT NULL,
  `linkimg` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_flink
-- ----------------------------
INSERT INTO `dantes_flink` VALUES ('1', '剑网三官网', 'http://jx3.xoyo.com', '', '5');

-- ----------------------------
-- Table structure for `dantes_forumdisplay`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_forumdisplay`;
CREATE TABLE `dantes_forumdisplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `nav` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_forumdisplay
-- ----------------------------
INSERT INTO `dantes_forumdisplay` VALUES ('9', '生活杂谈', '0', null, '', '', '', '0', '1', null);
INSERT INTO `dantes_forumdisplay` VALUES ('10', '今日文山', '0', null, '', '', '', '9', '1', null);
INSERT INTO `dantes_forumdisplay` VALUES ('11', '同城活动', '0', null, '', '', '', '9', '2', null);
INSERT INTO `dantes_forumdisplay` VALUES ('12', '文山美食', '0', null, '', '', '', '9', '3', null);
INSERT INTO `dantes_forumdisplay` VALUES ('13', '天天购物', '0', null, '', '', '', '9', '4', null);
INSERT INTO `dantes_forumdisplay` VALUES ('14', '征婚交友', '0', null, '', '', '', '9', '5', null);
INSERT INTO `dantes_forumdisplay` VALUES ('15', '摄影天堂', '0', null, '', '', '', '9', '6', null);
INSERT INTO `dantes_forumdisplay` VALUES ('16', '心情故事', '0', null, '', '', '', '9', '7', null);
INSERT INTO `dantes_forumdisplay` VALUES ('17', '旅游户外', '0', null, '', '', '', '9', '8', null);
INSERT INTO `dantes_forumdisplay` VALUES ('18', '分类信息', '0', null, '', '', '', '0', '2', null);
INSERT INTO `dantes_forumdisplay` VALUES ('19', '住房租售', '0', null, '', '', '', '18', '1', null);
INSERT INTO `dantes_forumdisplay` VALUES ('20', '房产商铺', '0', null, '', '', '', '18', '2', null);
INSERT INTO `dantes_forumdisplay` VALUES ('22', '教育培训', '0', null, '', '', '', '18', '4', null);
INSERT INTO `dantes_forumdisplay` VALUES ('23', '综合事务', '0', null, '', '', '', '0', '3', null);
INSERT INTO `dantes_forumdisplay` VALUES ('24', '站务管理', '0', null, '', '', '', '23', '2', null);
INSERT INTO `dantes_forumdisplay` VALUES ('25', '新手上路', '0', null, '', '', '', '23', '1', null);
INSERT INTO `dantes_forumdisplay` VALUES ('26', '广告合作', '0', null, '', '', '', '23', '3', null);
INSERT INTO `dantes_forumdisplay` VALUES ('29', '招聘求职', '1', null, '', '招聘求职', '招聘求职', '18', '2', null);

-- ----------------------------
-- Table structure for `dantes_member`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_member`;
CREATE TABLE `dantes_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(125) NOT NULL,
  `qq` varchar(25) NOT NULL DEFAULT '',
  `sex` int(11) DEFAULT NULL,
  `avtimg` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `regtime` int(11) NOT NULL,
  `lasttime` int(11) DEFAULT NULL,
  `regip` varchar(125) NOT NULL,
  `lastip` varchar(125) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `wb` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`,`username`,`qq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_member
-- ----------------------------
INSERT INTO `dantes_member` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '763093576@qq.com', '763093576', '1', '/Uploads/avtar/20150130/c4ca4238a0b923820dcc509a6f75849b_200x200.png', '捡起节操继续装逼下去，直到天荒地老！', '1212124', '1423055189', '127.0.0.1', '0.0.0.0', '0', '248', '222', '22', '1');
INSERT INTO `dantes_member` VALUES ('2', 'imdante', '7fa396c1027a58d67e31eb9b9b4f5961ce3d0196', 'imdante@foxmail.com', '', null, null, null, '1423058741', null, '0.0.0.0', null, null, null, null, null, '1');
INSERT INTO `dantes_member` VALUES ('3', '他不是大明星', 'fa8ea574862bfc071bd0e283e2ad565d6997de85', 'imdante80787@qq.com', '', null, null, null, '1423060559', null, '0.0.0.0', null, null, null, null, null, '1');
INSERT INTO `dantes_member` VALUES ('4', '不错来了个女神', 'fa8ea574862bfc071bd0e283e2ad565d6997de85', 'imdante15002@qq.com', '', null, null, null, '1423140986', null, '0.0.0.0', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `dantes_member_count`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_member_count`;
CREATE TABLE `dantes_member_count` (
  `uid` int(11) NOT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_member_count
-- ----------------------------
INSERT INTO `dantes_member_count` VALUES ('1', '22', '534');

-- ----------------------------
-- Table structure for `dantes_member_msg`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_member_msg`;
CREATE TABLE `dantes_member_msg` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `dateline` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_member_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_navigation`;
CREATE TABLE `dantes_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '遍历输出导航',
  `name` varchar(50) NOT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `tpl` varchar(50) DEFAULT NULL,
  `nav` int(11) NOT NULL,
  `style` int(11) DEFAULT NULL,
  `snv` int(11) DEFAULT '0' COMMENT '子导航',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`url`),
  UNIQUE KEY `url` (`url`) USING HASH,
  KEY `id` (`id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_navigation
-- ----------------------------
INSERT INTO `dantes_navigation` VALUES ('5', '0', '招聘', null, 'zhaopin', null, '1', '1', '0', '文山招聘', '文山招聘', '3', '0');
INSERT INTO `dantes_navigation` VALUES ('6', '0', '住房', null, 'zhufang', 'zhufang', '1', '1', '0', '文山住房', '文山住房信息', '4', '0');
INSERT INTO `dantes_navigation` VALUES ('7', '0', '婚恋', null, 'hunlian', null, '1', null, '0', '', null, '6', '0');
INSERT INTO `dantes_navigation` VALUES ('9', '0', '美食', null, 'meishi', '', '1', '0', '0', '文山美食,文山好吃的,文山有哪些美食,文山有哪里特色小吃,文山特色美食', '文山美食从不错过，要吃过，看过，饱过眼福，也要饱过口福！', '7', '0');
INSERT INTO `dantes_navigation` VALUES ('10', '0', '家居', null, 'jiaju', null, '1', null, '0', '', null, '8', '0');
INSERT INTO `dantes_navigation` VALUES ('11', '0', '好店', null, 'haodian', null, '1', null, '0', '', null, '5', '0');

-- ----------------------------
-- Table structure for `dantes_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_recommend`;
CREATE TABLE `dantes_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `timeout` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_session`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_session`;
CREATE TABLE `dantes_session` (
  `session_id` varchar(255) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_session
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_slides`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_slides`;
CREATE TABLE `dantes_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pic` varchar(255) NOT NULL,
  `dateline` int(11) NOT NULL,
  `timeout` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_slides
-- ----------------------------
INSERT INTO `dantes_slides` VALUES ('8', '就问你美不美，还有说不美', '#', 'Uploads/images/slides/20150214/54df0b7ae1708.jpg', '1423903610', '93600', '0', null);
INSERT INTO `dantes_slides` VALUES ('9', '水深了，什么林子都有', '@', 'Uploads/images/slides/20150214/54df0bc3199a7.jpg', '1423903683', '93600', '0', null);
INSERT INTO `dantes_slides` VALUES ('10', '不错的 爱运动的女孩就是美', '#', 'Uploads/images/slides/20150214/54df0bd3dcdb9.jpg', '1423903699', '93600', '0', null);

-- ----------------------------
-- Table structure for `dantes_tags`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_tags`;
CREATE TABLE `dantes_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `click` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_thread`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_thread`;
CREATE TABLE `dantes_thread` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `litpic` varchar(255) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `flag` varchar(5) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `dateline` int(11) NOT NULL,
  `pubip` varchar(50) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `favour` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `exa` int(4) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_thread
-- ----------------------------
INSERT INTO `dantes_thread` VALUES ('1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `dantes_thread` VALUES ('2', '1', '7', null, '标题标题 萌不萌', '', null, null, null, '标题标题 萌不萌', '标题标题 萌不萌', '&lt;h2 style=&quot;box-sizing: border-box; margin: 2em 0px 1.6rem; font-size: 1.25em; color: rgb(51, 51, 51); font-family: &amp;#39;Segoe UI&amp;#39;, &amp;#39;Lucida Grande&amp;#39;, Helvetica, Arial, &amp;#39;Microsoft YaHei&amp;#39;, FreeSans, Arimo, &amp;#39;Droid Sans&amp;#39;, &amp;#39;wenquanyi micro hei&amp;#39;, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Hiragino Sans GB W3&amp;#39;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;Web 组件示例&lt;/h2&gt;&lt;ul style=&quot;box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; padding-left: 2em; color: rgb(51, 51, 51); font-family: &amp;#39;Segoe UI&amp;#39;, &amp;#39;Lucida Grande&amp;#39;, Helvetica, Arial, &amp;#39;Microsoft YaHei&amp;#39;, FreeSans, Arimo, &amp;#39;Droid Sans&amp;#39;, &amp;#39;wenquanyi micro hei&amp;#39;, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Hiragino Sans GB W3&amp;#39;, FontAwesome, sans-serif; line-height: 25.6000003814697px; white-space: normal; background-color: rgb(255, 255, 255);&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;a href=&quot;file:///W:/%E5%A5%BD%E4%B8%9C%E8%A5%BF/AmazeUI-2.1.0/widget.basic.html&quot; style=&quot;box-sizing: border-box; text-decoration: none; color: rgb(14, 144, 210); background-color: transparent;&quot;&gt;widget.basic.html&lt;/a&gt;&amp;nbsp;使用了&amp;nbsp;&lt;a href=&quot;http://amazeui.org/widgets&quot; style=&quot;box-sizing: border-box; text-decoration: none; color: rgb(14, 144, 210); background-color: transparent;&quot;&gt;Web 组件&lt;/a&gt;&amp;nbsp;的 HTML 结构和样式，但没用使用模板在前端渲染数据，供通过后端渲染数据的用户参考。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;a href=&quot;file:///W:/%E5%A5%BD%E4%B8%9C%E8%A5%BF/AmazeUI-2.1.0/widget.html&quot; style=&quot;box-sizing: border-box; text-decoration: none; color: rgb(14, 144, 210); background-color: transparent;&quot;&gt;widget.html&lt;/a&gt;&amp;nbsp;是 Web 组件的展示，更多细节查看：&lt;a href=&quot;http://amazeui.org/widgets&quot; style=&quot;box-sizing: border-box; text-decoration: none; color: rgb(14, 144, 210); background-color: transparent;&quot;&gt;Web 组件&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1424618815', '0.0.0.0', null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for `dantes_thread_category`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_thread_category`;
CREATE TABLE `dantes_thread_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_thread_category
-- ----------------------------

-- ----------------------------
-- Table structure for `dantes_thread_reply`
-- ----------------------------
DROP TABLE IF EXISTS `dantes_thread_reply`;
CREATE TABLE `dantes_thread_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `body` text NOT NULL,
  `dateline` int(11) NOT NULL,
  `pubip` varchar(50) NOT NULL,
  `favour` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dantes_thread_reply
-- ----------------------------
