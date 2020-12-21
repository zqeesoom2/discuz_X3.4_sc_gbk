/*
SQLyog Ultimate v8.32 
MySQL - 5.7.26 : Database - ultrax
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ultrax` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `ultrax`;

/*Table structure for table `pre_aljesc` */

DROP TABLE IF EXISTS `pre_aljesc`;

CREATE TABLE `pre_aljesc` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zujin` float NOT NULL,
  `content` mediumtext NOT NULL,
  `pic1` varchar(255) NOT NULL,
  `pic2` varchar(255) NOT NULL,
  `pic3` varchar(255) NOT NULL,
  `pic4` varchar(255) NOT NULL,
  `pic5` varchar(255) NOT NULL,
  `pic6` varchar(255) NOT NULL,
  `pic7` varchar(255) NOT NULL,
  `pic8` varchar(255) NOT NULL,
  `region` int(11) NOT NULL,
  `region1` int(10) NOT NULL,
  `region2` varchar(255) NOT NULL,
  `region3` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `views` mediumint(9) NOT NULL,
  `qq` bigint(20) NOT NULL,
  `tuijian` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL,
  `lxr` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `topstime` int(11) NOT NULL,
  `topetime` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `clientip` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `solve` tinyint(3) NOT NULL,
  `models` varchar(255) NOT NULL,
  `pos` int(10) NOT NULL,
  `pos1` int(10) NOT NULL,
  `particular_year` varchar(255) NOT NULL,
  `mileage` float NOT NULL,
  `displacement` float NOT NULL,
  `gearbox` int(11) NOT NULL,
  `fuel` varchar(100) NOT NULL,
  `emission_standard` varchar(100) NOT NULL,
  `vehicle_color` int(11) NOT NULL,
  `vehicle_level` int(11) NOT NULL,
  `use` int(11) NOT NULL,
  `inspection_expires` varchar(100) NOT NULL,
  `strong_cross` varchar(100) NOT NULL,
  `commercial_insurance` varchar(100) NOT NULL,
  `transfer_fees` varchar(100) NOT NULL,
  `driving_license` varchar(100) NOT NULL,
  `registration_certificate` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `repair_records` varchar(100) NOT NULL,
  `purchase_tax` varchar(100) NOT NULL,
  `a_major_accident` varchar(100) NOT NULL,
  `transfer` varchar(100) NOT NULL,
  `mortgage` varchar(100) NOT NULL,
  `wanted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc` */

insert  into `pre_aljesc`(`id`,`uid`,`username`,`addtime`,`updatetime`,`title`,`zujin`,`content`,`pic1`,`pic2`,`pic3`,`pic4`,`pic5`,`pic6`,`pic7`,`pic8`,`region`,`region1`,`region2`,`region3`,`contact`,`views`,`qq`,`tuijian`,`displayorder`,`lxr`,`qrcode`,`phone`,`topstime`,`topetime`,`tid`,`clientip`,`state`,`solve`,`models`,`pos`,`pos1`,`particular_year`,`mileage`,`displacement`,`gearbox`,`fuel`,`emission_standard`,`vehicle_color`,`vehicle_level`,`use`,`inspection_expires`,`strong_cross`,`commercial_insurance`,`transfer_fees`,`driving_license`,`registration_certificate`,`invoice`,`repair_records`,`purchase_tax`,`a_major_accident`,`transfer`,`mortgage`,`wanted`) values (1,1,'admin',1605840109,1607133595,'[奔驰]2020便宜出售了2',1,'','','','','','','','','',1,2,'3','','13974139587',102,0,1,0,'','20201207155730s9Wz8qQm99kw999999.jpg','android',0,0,0,'127.0.0.1',0,0,'1',1,2,'',0,0,0,'','',0,0,0,'','','','','齐全','','','','','','','能',2),(2,2,'admin2',1607139761,1607744939,'求购一台法拉利',10,'一切正常常！','/source/plugin/violation/images/logo/20201205114242995.jpg','','','','','','','',1,2,'3','','13974398571',18,10,0,0,'','20201209102319z30k9tzbE0767p0900.jpg','android',0,0,0,'127.0.0.1',0,0,'2010款',1,2,'2020',1,5,1,'','',0,0,0,'','','','包含','齐全','齐全','齐全','齐全','齐全','有','能','能',2),(6,1,'admin',1607497542,1607745055,'[奔驰]1998便宜出售了',55,'','','','','','','','','',4,6,'','','13974398571',16,0,0,0,'','20201215155722Z3cDr6NJMQYzOZqQdD.jpg','',0,0,3,'127.0.0.1',0,0,'',1,2,'',0,0,0,'','',0,0,0,'','','','','','','','','','','','',1);

/*Table structure for table `pre_aljesc_attestation` */

DROP TABLE IF EXISTS `pre_aljesc_attestation`;

CREATE TABLE `pre_aljesc_attestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `gongsiname` varchar(255) NOT NULL,
  `mendianname` varchar(255) NOT NULL,
  `num` bigint(20) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `sign` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_aljesc_attestation` */

insert  into `pre_aljesc_attestation`(`id`,`uid`,`username`,`type`,`timestamp`,`gongsiname`,`mendianname`,`num`,`pic`,`sign`) values (2,1,'admin','1',1607590910,'','',9223372036854775807,'source/plugin/violation/images/logo/20201210170137278.jpg',1);

/*Table structure for table `pre_aljesc_collection` */

DROP TABLE IF EXISTS `pre_aljesc_collection`;

CREATE TABLE `pre_aljesc_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC COMMENT='收藏贴子表';

/*Data for the table `pre_aljesc_collection` */

/*Table structure for table `pre_aljesc_comment` */

DROP TABLE IF EXISTS `pre_aljesc_comment`;

CREATE TABLE `pre_aljesc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `dateline` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `upid` (`upid`),
  KEY `dateline` (`dateline`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_comment` */

insert  into `pre_aljesc_comment`(`id`,`upid`,`uid`,`username`,`lid`,`cid`,`dateline`,`content`) values (1,0,2,'admin2',1,0,1605941920,'你好。'),(2,0,2,'admin2',1,0,1605941937,'你怎么样'),(3,2,1,'admin',1,0,1605942252,'不怎么样！');

/*Table structure for table `pre_aljesc_log` */

DROP TABLE IF EXISTS `pre_aljesc_log`;

CREATE TABLE `pre_aljesc_log` (
  `day` int(11) NOT NULL,
  `views` mediumint(9) NOT NULL COMMENT '访问记录多少次',
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_log` */

insert  into `pre_aljesc_log`(`day`,`views`) values (20201118,111),(20201119,199),(20201120,83),(20201121,169),(20201123,7),(20201124,15),(20201204,115),(20201205,80),(20201207,105),(20201209,199),(20201210,39),(20201212,110),(20201215,4),(20201216,1),(20201219,4);

/*Table structure for table `pre_aljesc_position` */

DROP TABLE IF EXISTS `pre_aljesc_position`;

CREATE TABLE `pre_aljesc_position` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `upid` mediumint(9) unsigned NOT NULL,
  `subid` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `displayorder` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `upid` (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_position` */

insert  into `pre_aljesc_position`(`id`,`upid`,`subid`,`subject`,`displayorder`) values (1,0,'2,3','小汽车',0),(2,1,'0','小汔油车',0),(3,1,'','',0),(4,0,'','大车',0);

/*Table structure for table `pre_aljesc_reflashlog` */

DROP TABLE IF EXISTS `pre_aljesc_reflashlog`;

CREATE TABLE `pre_aljesc_reflashlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dateline` int(10) NOT NULL,
  `pay` int(10) NOT NULL,
  `extcredit` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_reflashlog` */

insert  into `pre_aljesc_reflashlog`(`id`,`lid`,`uid`,`username`,`dateline`,`pay`,`extcredit`,`name`,`title`) values (1,1,1,'admin',1607132899,0,0,'',''),(2,1,1,'admin',1607133456,0,0,'',''),(3,1,1,'admin',1607133595,0,0,'',''),(4,2,1,'admin',1607744939,1,0,'',''),(5,6,1,'admin',1607745055,1,0,'','');

/*Table structure for table `pre_aljesc_region` */

DROP TABLE IF EXISTS `pre_aljesc_region`;

CREATE TABLE `pre_aljesc_region` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `upid` mediumint(9) unsigned NOT NULL,
  `subid` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `displayorder` mediumint(9) unsigned NOT NULL,
  `level` tinyint(3) NOT NULL,
  `havechild` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `upid` (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_region` */

insert  into `pre_aljesc_region`(`id`,`upid`,`subid`,`subject`,`displayorder`,`level`,`havechild`) values (1,0,'1,2','湖南',0,0,1),(2,1,'2,3','吉首',0,1,1),(3,2,'3','乾州',0,2,0),(4,0,'6','龙山',1,0,1),(6,4,'6','龙头',0,1,0);

/*Table structure for table `pre_aljesc_setting` */

DROP TABLE IF EXISTS `pre_aljesc_setting`;

CREATE TABLE `pre_aljesc_setting` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` text NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_setting` */

insert  into `pre_aljesc_setting`(`key`,`value`,`a`,`b`,`c`,`d`,`e`) values ('Announcement_rolling','','','','',0,0),('iswatermark','0','','','',0,0),('is_mobile_logo','0','','','',0,0),('logo','source/plugin/violation/images/logo/20201124153220721.jpg','','','',0,0),('mhot','','','','',0,0),('mhotmore','','','','',0,0),('mobilenavbackcolor','','','','',0,0),('mobile_index_ad_1','','','','',0,0),('mobile_index_ad_2','','','','',0,0),('mobile_index_ad_3','','','','',0,0),('mobile_logo','','','','',0,0),('mobile_me_bottom_color','','','','',0,0),('mobile_po_bottom_color','','','','',0,0),('mobile_re_bottom_color','','','','',0,0),('mobile_view_ad_1','','','','',0,0),('qrcode_logo','','','','',0,0);

/*Table structure for table `pre_aljesc_toplog` */

DROP TABLE IF EXISTS `pre_aljesc_toplog`;

CREATE TABLE `pre_aljesc_toplog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dateline` int(10) NOT NULL,
  `pay` int(10) NOT NULL,
  `extcredit` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_toplog` */

insert  into `pre_aljesc_toplog`(`id`,`lid`,`uid`,`username`,`dateline`,`pay`,`extcredit`,`title`,`name`,`endtime`) values (1,1,1,'admin',1607744081,1,2,'[奔驰]2020便宜出售了2','admin',1607830481),(2,1,1,'admin',1607744154,1,2,'[奔驰]2020便宜出售了2','admin',1607916881),(3,1,1,'admin',1607744858,1,2,'[奔驰]2020便宜出售了2','admin',1608003281);

/*Table structure for table `pre_aljesc_user` */

DROP TABLE IF EXISTS `pre_aljesc_user`;

CREATE TABLE `pre_aljesc_user` (
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dateline` int(10) NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0',
  `updatecount` int(10) NOT NULL DEFAULT '0',
  `top` int(10) NOT NULL DEFAULT '0',
  `last` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_aljesc_user` */

insert  into `pre_aljesc_user`(`uid`,`username`,`dateline`,`count`,`updatecount`,`top`,`last`) values (1,'admin',1605670613,5,15,3,1608360170),(2,'admin2',1605941913,1,0,0,1607156980);

/*Table structure for table `pre_common_admincp_cmenu` */

DROP TABLE IF EXISTS `pre_common_admincp_cmenu`;

CREATE TABLE `pre_common_admincp_cmenu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL,
  `clicks` smallint(6) unsigned NOT NULL DEFAULT '1',
  `uid` mediumint(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admincp_cmenu` */

/*Table structure for table `pre_common_admincp_group` */

DROP TABLE IF EXISTS `pre_common_admincp_group`;

CREATE TABLE `pre_common_admincp_group` (
  `cpgroupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cpgroupname` varchar(255) NOT NULL,
  PRIMARY KEY (`cpgroupid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admincp_group` */

insert  into `pre_common_admincp_group`(`cpgroupid`,`cpgroupname`) values (1,'门户管理员'),(2,'论坛管理员'),(3,'群组管理员'),(4,'空间管理员'),(5,'用户管理员');

/*Table structure for table `pre_common_admincp_member` */

DROP TABLE IF EXISTS `pre_common_admincp_member`;

CREATE TABLE `pre_common_admincp_member` (
  `uid` int(10) unsigned NOT NULL,
  `cpgroupid` int(10) unsigned NOT NULL,
  `customperm` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admincp_member` */

/*Table structure for table `pre_common_admincp_perm` */

DROP TABLE IF EXISTS `pre_common_admincp_perm`;

CREATE TABLE `pre_common_admincp_perm` (
  `cpgroupid` smallint(6) unsigned NOT NULL,
  `perm` varchar(255) NOT NULL,
  UNIQUE KEY `cpgroupperm` (`cpgroupid`,`perm`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admincp_perm` */

insert  into `pre_common_admincp_perm`(`cpgroupid`,`perm`) values (1,'albumcategory'),(1,'article'),(1,'block'),(1,'blockstyle'),(1,'blogcategory'),(1,'diytemplate'),(1,'portalcategory'),(1,'topic'),(1,'_allowpost'),(2,'attach'),(2,'forums'),(2,'forums_merge'),(2,'misc_attachtype'),(2,'misc_censor'),(2,'moderate_replies'),(2,'moderate_threads'),(2,'prune'),(2,'recyclebin'),(2,'report'),(2,'threads'),(2,'threads_forumstick'),(2,'threads_postposition'),(2,'threadtypes'),(2,'_allowpost'),(3,'attach_group'),(3,'group_deletegroup'),(3,'group_editgroup'),(3,'group_level'),(3,'group_manage'),(3,'group_setting'),(3,'group_type'),(3,'group_userperm'),(3,'prune_group'),(3,'threads_group'),(3,'_allowpost'),(4,'album'),(4,'blog'),(4,'click'),(4,'comment'),(4,'doing'),(4,'feed'),(4,'pic'),(4,'setting_home'),(4,'share'),(4,'_allowpost'),(5,'admingroup'),(5,'members_access'),(5,'members_add'),(5,'members_ban'),(5,'members_clean'),(5,'members_credit'),(5,'members_edit'),(5,'members_group'),(5,'members_ipban'),(5,'members_medal'),(5,'members_newsletter'),(5,'members_profile'),(5,'members_repeat'),(5,'members_reward'),(5,'members_search'),(5,'members_verify'),(5,'moderate_members'),(5,'specialuser_defaultuser'),(5,'specialuser_follow'),(5,'usergroups'),(5,'verify_verify'),(5,'_allowpost');

/*Table structure for table `pre_common_admincp_session` */

DROP TABLE IF EXISTS `pre_common_admincp_session`;

CREATE TABLE `pre_common_admincp_session` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `panel` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `errorcount` tinyint(1) NOT NULL DEFAULT '0',
  `storage` mediumtext NOT NULL,
  PRIMARY KEY (`uid`,`panel`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admincp_session` */

insert  into `pre_common_admincp_session`(`uid`,`adminid`,`panel`,`ip`,`dateline`,`errorcount`,`storage`) values (1,1,1,'127.0.0.1',1608520216,-1,'');

/*Table structure for table `pre_common_admingroup` */

DROP TABLE IF EXISTS `pre_common_admingroup`;

CREATE TABLE `pre_common_admingroup` (
  `admingid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `alloweditpost` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditpoll` tinyint(1) NOT NULL DEFAULT '0',
  `allowstickthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowmodpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowdelpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowmassprune` tinyint(1) NOT NULL DEFAULT '0',
  `allowrefund` tinyint(1) NOT NULL DEFAULT '0',
  `allowcensorword` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewip` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanip` tinyint(1) NOT NULL DEFAULT '0',
  `allowedituser` tinyint(1) NOT NULL DEFAULT '0',
  `allowmoduser` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanuser` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanvisituser` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostannounce` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewlog` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanpost` tinyint(1) NOT NULL DEFAULT '0',
  `supe_allowpushthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowhighlightthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowlivethread` tinyint(1) NOT NULL DEFAULT '0',
  `allowdigestthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowrecommendthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowbumpthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowclosethread` tinyint(1) NOT NULL DEFAULT '0',
  `allowmovethread` tinyint(1) NOT NULL DEFAULT '0',
  `allowedittypethread` tinyint(1) NOT NULL DEFAULT '0',
  `allowstampthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowstamplist` tinyint(1) NOT NULL DEFAULT '0',
  `allowcopythread` tinyint(1) NOT NULL DEFAULT '0',
  `allowmergethread` tinyint(1) NOT NULL DEFAULT '0',
  `allowsplitthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowrepairthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowwarnpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewreport` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditforum` tinyint(1) NOT NULL DEFAULT '0',
  `allowremovereward` tinyint(1) NOT NULL DEFAULT '0',
  `allowedittrade` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditactivity` tinyint(1) NOT NULL DEFAULT '0',
  `allowstickreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowmanagearticle` tinyint(1) NOT NULL DEFAULT '0',
  `allowaddtopic` tinyint(1) NOT NULL DEFAULT '0',
  `allowmanagetopic` tinyint(1) NOT NULL DEFAULT '0',
  `allowdiy` tinyint(1) NOT NULL DEFAULT '0',
  `allowclearrecycle` tinyint(1) NOT NULL DEFAULT '0',
  `allowmanagetag` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditusertag` tinyint(1) NOT NULL DEFAULT '0',
  `managefeed` tinyint(1) NOT NULL DEFAULT '0',
  `managedoing` tinyint(1) NOT NULL DEFAULT '0',
  `manageshare` tinyint(1) NOT NULL DEFAULT '0',
  `manageblog` tinyint(1) NOT NULL DEFAULT '0',
  `managealbum` tinyint(1) NOT NULL DEFAULT '0',
  `managecomment` tinyint(1) NOT NULL DEFAULT '0',
  `managemagiclog` tinyint(1) NOT NULL DEFAULT '0',
  `managereport` tinyint(1) NOT NULL DEFAULT '0',
  `managehotuser` tinyint(1) NOT NULL DEFAULT '0',
  `managedefaultuser` tinyint(1) NOT NULL DEFAULT '0',
  `managevideophoto` tinyint(1) NOT NULL DEFAULT '0',
  `managemagic` tinyint(1) NOT NULL DEFAULT '0',
  `manageclick` tinyint(1) NOT NULL DEFAULT '0',
  `allowmanagecollection` tinyint(1) NOT NULL DEFAULT '0',
  `allowmakehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admingid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_admingroup` */

insert  into `pre_common_admingroup`(`admingid`,`alloweditpost`,`alloweditpoll`,`allowstickthread`,`allowmodpost`,`allowdelpost`,`allowmassprune`,`allowrefund`,`allowcensorword`,`allowviewip`,`allowbanip`,`allowedituser`,`allowmoduser`,`allowbanuser`,`allowbanvisituser`,`allowpostannounce`,`allowviewlog`,`allowbanpost`,`supe_allowpushthread`,`allowhighlightthread`,`allowlivethread`,`allowdigestthread`,`allowrecommendthread`,`allowbumpthread`,`allowclosethread`,`allowmovethread`,`allowedittypethread`,`allowstampthread`,`allowstamplist`,`allowcopythread`,`allowmergethread`,`allowsplitthread`,`allowrepairthread`,`allowwarnpost`,`allowviewreport`,`alloweditforum`,`allowremovereward`,`allowedittrade`,`alloweditactivity`,`allowstickreply`,`allowmanagearticle`,`allowaddtopic`,`allowmanagetopic`,`allowdiy`,`allowclearrecycle`,`allowmanagetag`,`alloweditusertag`,`managefeed`,`managedoing`,`manageshare`,`manageblog`,`managealbum`,`managecomment`,`managemagiclog`,`managereport`,`managehotuser`,`managedefaultuser`,`managevideophoto`,`managemagic`,`manageclick`,`allowmanagecollection`,`allowmakehtml`) values (1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,1,0,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(3,1,0,1,1,1,0,0,0,1,0,0,1,1,0,0,1,1,0,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(16,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,0,0,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(17,1,0,2,1,0,0,1,0,1,0,0,0,0,0,1,1,1,0,1,0,3,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(18,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(19,0,0,0,1,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `pre_common_adminnote` */

DROP TABLE IF EXISTS `pre_common_adminnote`;

CREATE TABLE `pre_common_adminnote` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `adminid` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_adminnote` */

/*Table structure for table `pre_common_advertisement` */

DROP TABLE IF EXISTS `pre_common_advertisement`;

CREATE TABLE `pre_common_advertisement` (
  `advid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `targets` text NOT NULL,
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`advid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_advertisement` */

/*Table structure for table `pre_common_advertisement_custom` */

DROP TABLE IF EXISTS `pre_common_advertisement_custom`;

CREATE TABLE `pre_common_advertisement_custom` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_advertisement_custom` */

/*Table structure for table `pre_common_banned` */

DROP TABLE IF EXISTS `pre_common_banned`;

CREATE TABLE `pre_common_banned` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip1` smallint(3) NOT NULL DEFAULT '0',
  `ip2` smallint(3) NOT NULL DEFAULT '0',
  `ip3` smallint(3) NOT NULL DEFAULT '0',
  `ip4` smallint(3) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_banned` */

/*Table structure for table `pre_common_block` */

DROP TABLE IF EXISTS `pre_common_block`;

CREATE TABLE `pre_common_block` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `blockclass` varchar(255) NOT NULL DEFAULT '0',
  `blocktype` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `classname` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `blockstyle` text NOT NULL,
  `picwidth` smallint(6) unsigned NOT NULL DEFAULT '0',
  `picheight` smallint(6) unsigned NOT NULL DEFAULT '0',
  `target` varchar(255) NOT NULL DEFAULT '',
  `dateformat` varchar(255) NOT NULL DEFAULT '',
  `dateuformat` tinyint(1) NOT NULL DEFAULT '0',
  `script` varchar(255) NOT NULL DEFAULT '',
  `param` text NOT NULL,
  `shownum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `cachetime` int(10) NOT NULL DEFAULT '0',
  `cachetimerange` char(5) NOT NULL DEFAULT '',
  `punctualupdate` tinyint(1) NOT NULL DEFAULT '0',
  `hidedisplay` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `notinherited` tinyint(1) NOT NULL DEFAULT '0',
  `isblank` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block` */

insert  into `pre_common_block`(`bid`,`blockclass`,`blocktype`,`name`,`title`,`classname`,`summary`,`uid`,`username`,`styleid`,`blockstyle`,`picwidth`,`picheight`,`target`,`dateformat`,`dateuformat`,`script`,`param`,`shownum`,`cachetime`,`cachetimerange`,`punctualupdate`,`hidedisplay`,`dateline`,`notinherited`,`isblank`) values (1,'group_thread',0,'','','','',1,'admin',0,'Array',339,215,'blank','Y-m-d',0,'groupthread','a:8:{s:5:\"gtids\";a:1:{i:0;s:1:\"0\";}s:12:\"rewardstatus\";s:1:\"0\";s:11:\"titlelength\";s:2:\"40\";s:13:\"summarylength\";s:2:\"80\";s:8:\"startrow\";s:1:\"0\";s:5:\"items\";s:1:\"4\";s:7:\"special\";a:1:{i:0;s:1:\"0\";}s:11:\"picrequired\";s:1:\"1\";}',4,0,'',0,0,0,0,0),(2,'group_thread',0,'','','','',1,'admin',24,'',0,0,'blank','Y-m-d',0,'groupthreadspecial','a:6:{s:5:\"gtids\";a:1:{i:0;s:1:\"0\";}s:12:\"rewardstatus\";s:1:\"0\";s:11:\"picrequired\";s:1:\"0\";s:11:\"titlelength\";s:2:\"40\";s:13:\"summarylength\";s:2:\"80\";s:5:\"items\";s:2:\"10\";}',10,3600,'',0,0,0,0,0);

/*Table structure for table `pre_common_block_favorite` */

DROP TABLE IF EXISTS `pre_common_block_favorite`;

CREATE TABLE `pre_common_block_favorite` (
  `favid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`favid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_favorite` */

/*Table structure for table `pre_common_block_item` */

DROP TABLE IF EXISTS `pre_common_block_item`;

CREATE TABLE `pre_common_block_item` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(255) NOT NULL DEFAULT '',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `makethumb` tinyint(1) NOT NULL DEFAULT '0',
  `thumbpath` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `showstyle` text NOT NULL,
  `related` text NOT NULL,
  `fields` text NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `startdate` int(10) unsigned NOT NULL DEFAULT '0',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_item` */

/*Table structure for table `pre_common_block_item_data` */

DROP TABLE IF EXISTS `pre_common_block_item_data`;

CREATE TABLE `pre_common_block_item_data` (
  `dataid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(255) NOT NULL DEFAULT '',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `makethumb` tinyint(1) NOT NULL DEFAULT '0',
  `summary` text NOT NULL,
  `showstyle` text NOT NULL,
  `related` text NOT NULL,
  `fields` text NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `startdate` int(10) unsigned NOT NULL DEFAULT '0',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `isverified` tinyint(1) NOT NULL DEFAULT '0',
  `verifiedtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stickgrade` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid`),
  KEY `bid` (`bid`,`stickgrade`,`displayorder`,`verifiedtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_item_data` */

/*Table structure for table `pre_common_block_permission` */

DROP TABLE IF EXISTS `pre_common_block_permission`;

CREATE TABLE `pre_common_block_permission` (
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowmanage` tinyint(1) NOT NULL DEFAULT '0',
  `allowrecommend` tinyint(1) NOT NULL DEFAULT '0',
  `needverify` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedtplname` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_permission` */

/*Table structure for table `pre_common_block_pic` */

DROP TABLE IF EXISTS `pre_common_block_pic`;

CREATE TABLE `pre_common_block_pic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `bid` (`bid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_pic` */

/*Table structure for table `pre_common_block_style` */

DROP TABLE IF EXISTS `pre_common_block_style`;

CREATE TABLE `pre_common_block_style` (
  `styleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `blockclass` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `getpic` tinyint(1) NOT NULL DEFAULT '0',
  `getsummary` tinyint(1) NOT NULL DEFAULT '0',
  `makethumb` tinyint(1) NOT NULL DEFAULT '0',
  `settarget` tinyint(1) NOT NULL DEFAULT '0',
  `fields` text NOT NULL,
  `moreurl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`),
  KEY `hash` (`hash`),
  KEY `blockclass` (`blockclass`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_style` */

insert  into `pre_common_block_style`(`styleid`,`blockclass`,`name`,`template`,`hash`,`getpic`,`getsummary`,`makethumb`,`settarget`,`fields`,`moreurl`) values (1,'html_html','[内置]空模板','a:9:{s:3:\"raw\";s:0:\"\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";a:0:{}}','ee3e718a',0,0,0,0,'a:0:{}',0),(2,'forum_forum','[内置]版块名称列表','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','c6c48ef5',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(3,'forum_forum','[内置]版块名称＋总帖数','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','91c25611',0,0,0,1,'a:3:{i:0;s:5:\"posts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(4,'forum_forum','[内置]版块名称+总帖数（有序）','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ol>\r\n[loop]\r\n<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ol>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','951323a8',0,0,0,1,'a:3:{i:0;s:5:\"posts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(5,'forum_forum','[内置]版块名称+今日发贴数','a:9:{s:3:\"raw\";s:151:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:81:\"<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','e08c8a30',0,0,0,1,'a:3:{i:0;s:10:\"todayposts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(6,'forum_forum','[内置]版块名称+今日发贴数（有序）','a:9:{s:3:\"raw\";s:151:\"<div class=\"module cl xl xl1\">\r\n<ol>\r\n[loop]\r\n<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ol>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:81:\"<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','12516b2d',0,0,0,1,'a:3:{i:0;s:10:\"todayposts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(7,'forum_forum','[内置]版块名称（两列）','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl2\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','0e51a193',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(8,'forum_forum','[内置]版块名称＋介绍','a:9:{s:3:\"raw\";s:160:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','2bf344ae',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(9,'forum_thread','[内置]帖子标题','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','079cd140',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(10,'forum_thread','[内置]帖子标题+回复数','a:9:{s:3:\"raw\";s:148:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{replies}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:78:\"<li><em>{replies}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','0cc45858',0,0,0,1,'a:3:{i:0;s:7:\"replies\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(11,'forum_thread','[内置]帖子标题+查看数','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{views}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{views}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','c5361e32',0,0,0,1,'a:3:{i:0;s:5:\"views\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(12,'forum_thread','[内置]帖子标题+热度','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{heats}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{heats}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','dfac2b4f',0,0,0,1,'a:3:{i:0;s:5:\"heats\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(13,'forum_thread','[内置]帖子标题+发帖时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','37a3603a',0,0,0,1,'a:3:{i:0;s:8:\"dateline\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(14,'forum_thread','[内置]帖子标题+最后回复时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{lastpost}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{lastpost}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','1ae9c85b',0,0,0,1,'a:3:{i:0;s:8:\"lastpost\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(15,'forum_thread','[内置]帖子标题+作者','a:9:{s:3:\"raw\";s:203:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:133:\"<li><em><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','30def87f',0,0,0,1,'a:4:{i:0;s:8:\"authorid\";i:1;s:6:\"author\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(16,'forum_thread','[内置]帖子标题+作者+摘要','a:9:{s:3:\"raw\";s:251:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:197:\"<dl class=\"cl\">\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','8ebc8d5f',0,1,0,1,'a:5:{i:0;s:8:\"authorid\";i:1;s:6:\"author\";i:2;s:3:\"url\";i:3;s:5:\"title\";i:4;s:7:\"summary\";}',0),(17,'forum_thread','[内置]帖子标题+摘要','a:9:{s:3:\"raw\";s:160:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','1107d2bd',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(18,'forum_thread','[内置]焦点模式','a:9:{s:3:\"raw\";s:164:\"<div class=\"module cl xld fcs\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','b6337920',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(19,'forum_thread','[内置]帖子标题（第一条带摘要）','a:9:{s:3:\"raw\";s:297:\"<div class=\"module cl xl\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n[order=1]\r\n<li>\r\n	<dl class=\"cl xld\">\r\n		<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n		<dd>{summary}</dd>\r\n	</dl> \r\n	<hr class=\"da\" />\r\n</li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{i:1;s:148:\"<li>\r\n	<dl class=\"cl xld\">\r\n		<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n		<dd>{summary}</dd>\r\n	</dl> \r\n	<hr class=\"da\" />\r\n</li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','2e06f8b5',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(24,'group_thread','[内置]帖子标题','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','176fcc68',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(25,'group_thread','[内置]帖子标题+回复数','a:9:{s:3:\"raw\";s:148:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{replies}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:78:\"<li><em>{replies}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','8baa57ad',0,0,0,1,'a:3:{i:0;s:7:\"replies\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(26,'group_thread','[内置]帖子标题+查看数','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{views}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{views}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','8f012db4',0,0,0,1,'a:3:{i:0;s:5:\"views\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(27,'group_thread','[内置]帖子标题+热度','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{heats}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{heats}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','7f002523',0,0,0,1,'a:3:{i:0;s:5:\"heats\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(28,'group_thread','[内置]帖子标题+发帖时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','23ba8554',0,0,0,1,'a:3:{i:0;s:8:\"dateline\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(29,'group_thread','[内置]帖子标题+最后回复时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{lastpost}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{lastpost}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','a6fbd13d',0,0,0,1,'a:3:{i:0;s:8:\"lastpost\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(30,'group_thread','[内置]帖子标题+作者','a:9:{s:3:\"raw\";s:203:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:133:\"<li><em><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','49245e40',0,0,0,1,'a:4:{i:0;s:8:\"authorid\";i:1;s:6:\"author\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(31,'group_thread','[内置]帖子标题+作者+摘要','a:9:{s:3:\"raw\";s:243:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><em class=\"y\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:189:\"<dl class=\"cl\">\r\n	<dt><em class=\"y\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','d9c23f31',0,1,0,1,'a:5:{i:0;s:8:\"authorid\";i:1;s:6:\"author\";i:2;s:3:\"url\";i:3;s:5:\"title\";i:4;s:7:\"summary\";}',0),(32,'group_thread','[内置]帖子标题+摘要','a:9:{s:3:\"raw\";s:160:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','9e90211d',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(33,'group_thread','[内置]焦点模式','a:9:{s:3:\"raw\";s:164:\"<div class=\"module cl xld fcs\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','9670c626',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(34,'group_thread','[内置]帖子标题（第一条带摘要）','a:9:{s:3:\"raw\";s:297:\"<div class=\"module cl xl\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n[order=1]\r\n<li>\r\n	<dl class=\"cl xld\">\r\n		<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n		<dd>{summary}</dd>\r\n	</dl> \r\n	<hr class=\"da\" />\r\n</li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{i:1;s:148:\"<li>\r\n	<dl class=\"cl xld\">\r\n		<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n		<dd>{summary}</dd>\r\n	</dl> \r\n	<hr class=\"da\" />\r\n</li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','9355f559',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(39,'group_group','[内置]群组名称','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','9872d550',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(40,'group_group','[内置]群组名称+成员数','a:9:{s:3:\"raw\";s:150:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{membernum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:80:\"<li><em>{membernum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','20a09ec8',0,0,0,1,'a:3:{i:0;s:9:\"membernum\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(41,'group_group','[内置]群组名称+成员数（有序）','a:9:{s:3:\"raw\";s:150:\"<div class=\"module cl xl xl1\">\r\n<ol>\r\n[loop]\r\n<li><em>{membernum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ol>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:80:\"<li><em>{membernum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','af166b44',0,0,0,1,'a:3:{i:0;s:9:\"membernum\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(42,'group_group','[内置]群组名称+总帖数','a:9:{s:3:\"raw\";s:146:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:76:\"<li><em>{posts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','43ed1e7c',0,0,0,1,'a:3:{i:0;s:5:\"posts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(43,'group_group','[内置]群组名称+今日发贴数','a:9:{s:3:\"raw\";s:151:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:81:\"<li><em>{todayposts}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','3c59217b',0,0,0,1,'a:3:{i:0;s:10:\"todayposts\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(44,'group_group','[内置]群组图标+名称+介绍','a:9:{s:3:\"raw\";s:253:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{icon}\" width=\"48\" height=\"48\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:199:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{icon}\" width=\"48\" height=\"48\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','6f470107',0,1,0,1,'a:4:{i:0;s:3:\"url\";i:1;s:4:\"icon\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(45,'group_group','[内置]群组图标列表','a:9:{s:3:\"raw\";s:208:\"<div class=\"module cl ml mls\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\"{target}><img src=\"{icon}\" width=\"48\" height=\"48\" /></a><p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:138:\"<li><a href=\"{url}\"{target}><img src=\"{icon}\" width=\"48\" height=\"48\" /></a><p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p></li>\";}','f3646b2a',0,0,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:4:\"icon\";i:2;s:5:\"title\";}',0),(46,'group_group','[内置]群组名称（两列）','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl2\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','5279d89d',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(47,'portal_article','[内置]文章标题','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','527a563d',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(48,'portal_article','[内置]文章标题+时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','6e4be436',0,0,0,1,'a:3:{i:0;s:8:\"dateline\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(49,'portal_article','[内置]文章标题+时间（带栏目）','a:9:{s:3:\"raw\";s:206:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{dateline}</em><label>[<a href=\"{caturl}\"{target}>{catname}</a>]</label><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:136:\"<li><em>{dateline}</em><label>[<a href=\"{caturl}\"{target}>{catname}</a>]</label><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','c3b98a2f',0,0,0,1,'a:5:{i:0;s:8:\"dateline\";i:1;s:6:\"caturl\";i:2;s:7:\"catname\";i:3;s:3:\"url\";i:4;s:5:\"title\";}',0),(50,'portal_article','[内置]文章标题+摘要+缩略图','a:9:{s:3:\"raw\";s:279:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:225:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','a5b550ee',1,1,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(51,'portal_article','[内置]文章标题+摘要','a:9:{s:3:\"raw\";s:160:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','e57dbe5a',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(52,'portal_article','[内置]焦点模式','a:9:{s:3:\"raw\";s:164:\"<div class=\"module cl xld fcs\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','3b234c9c',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(53,'portal_article','[内置]文章图片幻灯','a:9:{s:3:\"raw\";s:333:\"<div class=\"module cl slidebox\">\r\n<ul class=\"slideshow\">\r\n[loop]\r\n<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\r\n[/loop]\r\n</ul>\r\n</div>\r\n<script type=\"text/javascript\">\r\nrunslideshow();\r\n</script>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:182:\"<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\";}','8ff81e35',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(54,'portal_article','[内置]文章图文幻灯','a:9:{s:3:\"raw\";s:336:\"<div class=\"module cl xld slideshow\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\r\n<script type=\"text/javascript\">\r\nrunslideshow();\r\n</script>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:211:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','d88aded4',1,1,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(55,'portal_category','[内置]栏目名称','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','6846b818',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(56,'portal_category','[内置]栏目名称（两列）','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl2\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','fa5b40c1',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(57,'portal_topic','[内置]专题名称','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','268501b8',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(58,'portal_topic','[内置]专题名称（两列）','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl2\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','b21a9795',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(59,'portal_topic','[内置]专题名称+介绍+缩略图','a:9:{s:3:\"raw\";s:279:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:225:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','e07e6128',1,1,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(60,'portal_topic','[内置]专题名称+介绍','a:9:{s:3:\"raw\";s:160:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','573d0170',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(61,'portal_topic','[内置]焦点模式','a:9:{s:3:\"raw\";s:164:\"<div class=\"module cl xld fcs\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','7cc2ab53',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(62,'space_doing','[内置]作者+内容','a:9:{s:3:\"raw\";s:202:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\" c=\"1\"{target}>{username}</a>: <a href=\"{url}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:132:\"<li><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\" c=\"1\"{target}>{username}</a>: <a href=\"{url}\"{target}>{title}</a></li>\";}','d0ca1426',0,0,0,1,'a:4:{i:0;s:3:\"uid\";i:1;s:8:\"username\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(63,'space_doing','[内置]头像+作者+内容','a:9:{s:3:\"raw\";s:392:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"home.php?mod=space&uid={uid}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{username}\" /></a></dd>\r\n	<dt><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\"{target}>{username}</a> <em class=\"xg1 xw0\">{dateline}</em></dt>\r\n	<dd><a href=\"{url}\"{target}>{title}</a></dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:338:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"home.php?mod=space&uid={uid}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{username}\" /></a></dd>\r\n	<dt><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\"{target}>{username}</a> <em class=\"xg1 xw0\">{dateline}</em></dt>\r\n	<dd><a href=\"{url}\"{target}>{title}</a></dd>\r\n</dl>\";}','13f43cab',0,0,0,1,'a:6:{i:0;s:3:\"uid\";i:1;s:6:\"avatar\";i:2;s:8:\"username\";i:3;s:8:\"dateline\";i:4;s:3:\"url\";i:5;s:5:\"title\";}',0),(64,'space_doing','[内置]作者+内容（多行）+时间','a:9:{s:3:\"raw\";s:236:\"<div class=\"module cl xl\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\" c=\"1\"{target}>{username}</a>: <a href=\"{url}\"{target}>{title}</a> <span class=\"xg1\">({dateline})</span></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:170:\"<li><a href=\"home.php?mod=space&uid={uid}\" title=\"{username}\" c=\"1\"{target}>{username}</a>: <a href=\"{url}\"{target}>{title}</a> <span class=\"xg1\">({dateline})</span></li>\";}','927ed021',0,0,0,1,'a:5:{i:0;s:3:\"uid\";i:1;s:8:\"username\";i:2;s:3:\"url\";i:3;s:5:\"title\";i:4;s:8:\"dateline\";}',0),(65,'space_blog','[内置]日志标题','a:9:{s:3:\"raw\";s:130:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','9349072a',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(66,'space_blog','[内置]日志标题+作者','a:9:{s:3:\"raw\";s:200:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em><a href=\"home.php?mod=space&uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:130:\"<li><em><a href=\"home.php?mod=space&uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','d2a5c82a',0,0,0,1,'a:4:{i:0;s:3:\"uid\";i:1;s:8:\"username\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(67,'space_blog','[内置]日志标题+发布时间','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{dateline}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','c68ceade',0,0,0,1,'a:3:{i:0;s:8:\"dateline\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(68,'space_blog','[内置]日志标题+评论数','a:9:{s:3:\"raw\";s:149:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><em>{replynum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:79:\"<li><em>{replynum}</em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','0345faa7',0,0,0,1,'a:3:{i:0;s:8:\"replynum\";i:1;s:3:\"url\";i:2;s:5:\"title\";}',0),(69,'space_blog','[内置]日志标题+作者+简介','a:9:{s:3:\"raw\";s:248:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:194:\"<dl class=\"cl\">\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','cd5e700c',0,1,0,1,'a:5:{i:0;s:3:\"uid\";i:1;s:8:\"username\";i:2;s:3:\"url\";i:3;s:5:\"title\";i:4;s:7:\"summary\";}',0),(70,'space_blog','[内置]日志缩略图+标题+简介','a:9:{s:3:\"raw\";s:361:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:307:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?uid={uid}\"{target}>{username}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','323bc8e0',1,1,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:3:\"uid\";i:4;s:8:\"username\";i:5;s:7:\"summary\";}',0),(71,'space_blog','[内置]日志图片幻灯','a:9:{s:3:\"raw\";s:333:\"<div class=\"module cl slidebox\">\r\n<ul class=\"slideshow\">\r\n[loop]\r\n<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\r\n[/loop]\r\n</ul>\r\n</div>\r\n<script type=\"text/javascript\">\r\nrunslideshow();\r\n</script>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:182:\"<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\";}','c23cc347',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(72,'space_blog','[内置]焦点模式','a:9:{s:3:\"raw\";s:164:\"<div class=\"module cl xld fcs\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:106:\"<dl class=\"cl\">\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','3bb0bf67',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(73,'space_album','[内置]相册列表','a:9:{s:3:\"raw\";s:253:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li>\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:187:\"<li>\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\";}','73e0a54f',1,0,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:6:\"picnum\";}',0),(74,'space_album','[内置]相册列表+名称+用户','a:9:{s:3:\"raw\";s:320:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li>\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n	<span><a href=\"home.php?uid={uid}\"{target}>{username}</a></span>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:254:\"<li>\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n	<span><a href=\"home.php?uid={uid}\"{target}>{username}</a></span>\r\n</li>\";}','cc34db30',1,0,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:6:\"picnum\";i:4;s:3:\"uid\";i:5;s:8:\"username\";}',0),(75,'space_pic','[内置]图片列表','a:9:{s:3:\"raw\";s:271:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:205:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','9e9201a8',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(76,'space_pic','[内置]图片幻灯','a:9:{s:3:\"raw\";s:333:\"<div class=\"module cl slidebox\">\r\n<ul class=\"slideshow\">\r\n[loop]\r\n<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\r\n[/loop]\r\n</ul>\r\n</div>\r\n<script type=\"text/javascript\">\r\nrunslideshow();\r\n</script>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:182:\"<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\";}','c5d88e6d',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(77,'member_member','[内置]会员头像列表','a:9:{s:3:\"raw\";s:238:\"<div class=\"module cl ml mls\">\r\n<ul>\r\n[loop]\r\n<li>\r\n	<a href=\"{url}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:168:\"<li>\r\n	<a href=\"{url}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','2ef16e64',0,0,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:6:\"avatar\";i:2;s:5:\"title\";}',0),(78,'member_member','[内置]用户名列表','a:9:{s:3:\"raw\";s:136:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:66:\"<li><a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\";}','ed36c3b0',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(79,'member_member','[内置]头像+用户名+发贴数（有序）','a:9:{s:3:\"raw\";s:223:\"<div class=\"module cl xl xl1\">\r\n<ol>\r\n[loop]\r\n<li><em>{posts}</em><img class=\"vm\" src=\"{avatar}\" width=\"16\" height=\"16\" alt=\"{title}\" /> <a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\r\n[/loop]\r\n</ol>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:153:\"<li><em>{posts}</em><img class=\"vm\" src=\"{avatar}\" width=\"16\" height=\"16\" alt=\"{title}\" /> <a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\";}','b185afb9',0,0,0,1,'a:4:{i:0;s:5:\"posts\";i:1;s:6:\"avatar\";i:2;s:5:\"title\";i:3;s:3:\"url\";}',0),(80,'member_member','[内置]头像+用户名+积分数（有序）','a:9:{s:3:\"raw\";s:225:\"<div class=\"module cl xl xl1\">\r\n<ol>\r\n[loop]\r\n<li><em>{credits}</em><img class=\"vm\" src=\"{avatar}\" width=\"16\" height=\"16\" alt=\"{title}\" /> <a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\r\n[/loop]\r\n</ol>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:155:\"<li><em>{credits}</em><img class=\"vm\" src=\"{avatar}\" width=\"16\" height=\"16\" alt=\"{title}\" /> <a href=\"{url}\" title=\"{title}\" c=\"1\"{target}>{title}</a></li>\";}','8431f4e1',0,0,0,1,'a:4:{i:0;s:7:\"credits\";i:1;s:6:\"avatar\";i:2;s:5:\"title\";i:3;s:3:\"url\";}',0),(81,'forum_trade','[内置]商品列表','a:9:{s:3:\"raw\";s:423:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"padding: 0 12px 10px; width: {picwidth}px;\">\r\n<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" style=\"padding: 1px; border: 1px solid #CCC; background: #FFF;\" /></a>\r\n<p class=\"xs2\"><a href=\"{url}\"{target} class=\"xi1\">{price}</a></p>\r\n<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:357:\"<li style=\"padding: 0 12px 10px; width: {picwidth}px;\">\r\n<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" style=\"padding: 1px; border: 1px solid #CCC; background: #FFF;\" /></a>\r\n<p class=\"xs2\"><a href=\"{url}\"{target} class=\"xi1\">{price}</a></p>\r\n<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','4fd3ffc9',1,0,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:5:\"price\";}',0),(82,'forum_activity','[内置]活动列表','a:9:{s:3:\"raw\";s:326:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{time} {place}</dd>\r\n	<dd> 已有 {applynumber} 人报名</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:272:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{time} {place}</dd>\r\n	<dd> 已有 {applynumber} 人报名</dd>\r\n</dl>\";}','3d04a558',1,0,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:4:\"time\";i:4;s:5:\"place\";i:5;s:11:\"applynumber\";}',0),(83,'group_trade','[内置]商品列表','a:9:{s:3:\"raw\";s:288:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n	<p>{price}</p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:222:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n	<p>{price}</p>\r\n</li>\";}','edd331a7',1,0,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:5:\"price\";}',0),(84,'group_activity','[内置]活动列表','a:9:{s:3:\"raw\";s:326:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{time} {place}</dd>\r\n	<dd> 已有 {applynumber} 人报名</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:272:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{time} {place}</dd>\r\n	<dd> 已有 {applynumber} 人报名</dd>\r\n</dl>\";}','502cc3f6',1,0,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:4:\"time\";i:4;s:5:\"place\";i:5;s:11:\"applynumber\";}',0),(85,'forum_thread','[内置]帖子作者＋标题+摘要（带头像）','a:9:{s:3:\"raw\";s:466:\"<div class=\"module cl xld xlda\">\r\n[loop]\r\n<dl class=\"cl\">\r\n<dd class=\"m\"><a href=\"home.php?mod=space&uid={authorid}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{author}\" /></a></dd>\r\n<dt style=\"padding-bottom: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n<dd style=\"margin-bottom: 0;\">作者: <a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:407:\"<dl class=\"cl\">\r\n<dd class=\"m\"><a href=\"home.php?mod=space&uid={authorid}\" c=\"1\"{target}><img src=\"{avatar}\" width=\"48\" height=\"48\" alt=\"{author}\" /></a></dd>\r\n<dt style=\"padding-bottom: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n<dd style=\"margin-bottom: 0;\">作者: <a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></dd>\r\n</dl>\";}','87d533ea',0,1,0,1,'a:6:{i:0;s:8:\"authorid\";i:1;s:6:\"avatar\";i:2;s:6:\"author\";i:3;s:3:\"url\";i:4;s:5:\"title\";i:5;s:7:\"summary\";}',0),(86,'portal_article','[内置]频道栏目+标题','a:9:{s:3:\"raw\";s:205:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><label>[<a href=\"{caturl}\" title=\"{catname}\"{target}>{catname}</a>]</label><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:135:\"<li><label>[<a href=\"{caturl}\" title=\"{catname}\"{target}>{catname}</a>]</label><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','7720f457',0,0,0,1,'a:4:{i:0;s:6:\"caturl\";i:1;s:7:\"catname\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(87,'forum_thread','[内置]悬赏主题专用样式','a:9:{s:3:\"raw\";s:139:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a>{summary}</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:69:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a>{summary}</li>\";}','56bffda0',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(88,'forum_thread','[内置]首页热议-帖子','a:9:{s:3:\"raw\";s:278:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{author} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:224:\"<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{author} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\";}','08596517',0,1,0,1,'a:4:{i:0;s:6:\"author\";i:1;s:3:\"url\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(89,'group_thread','[内置]首页热议-群组帖子','a:9:{s:3:\"raw\";s:278:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{author} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:224:\"<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{author} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\";}','a75db897',0,1,0,1,'a:4:{i:0;s:6:\"author\";i:1;s:3:\"url\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(90,'space_blog','[内置]首页热议-日志','a:9:{s:3:\"raw\";s:280:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{username} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:226:\"<dl>\r\n	<dd style=\"margin-bottom: 0; font-size: 12px; color: #369\">{username} &#8250;</dd>\r\n	<dt style=\"padding: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd style=\"margin-bottom: 0;\">{summary}</dd>\r\n</dl>\";}','9e68bc9b',0,1,0,1,'a:4:{i:0;s:8:\"username\";i:1;s:3:\"url\";i:2;s:5:\"title\";i:3;s:7:\"summary\";}',0),(91,'forum_thread','[内置]投票主题专用样式','a:9:{s:3:\"raw\";s:166:\"<div class=\"module cl xld b_poll\">\r\n[loop]\r\n<dl>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:105:\"<dl>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\";}','fa07a66f',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(92,'forum_thread','[内置]辩论主题专用样式','a:9:{s:3:\"raw\";s:168:\"<div class=\"module cl xld b_debate\">\r\n[loop]\r\n<dl>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:105:\"<dl>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\";}','6a480986',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(93,'group_activity','[内置]群组活动:大图＋摘要','a:9:{s:3:\"raw\";s:363:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl>\r\n<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"120\" height=\"140\" alt=\"{title}\" /></a></dd>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>\r\n<p class=\"pbn\">{summary}</p>\r\n<p>{place} {class}</p>\r\n<p>时间: {time}</p>\r\n<p>{applynumber} 人关注</p>\r\n</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:309:\"<dl>\r\n<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"120\" height=\"140\" alt=\"{title}\" /></a></dd>\r\n<dt class=\"xs2\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>\r\n<p class=\"pbn\">{summary}</p>\r\n<p>{place} {class}</p>\r\n<p>时间: {time}</p>\r\n<p>{applynumber} 人关注</p>\r\n</dd>\r\n</dl>\";}','11d4011e',1,1,0,1,'a:8:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:7:\"summary\";i:4;s:5:\"place\";i:5;s:5:\"class\";i:6;s:4:\"time\";i:7;s:11:\"applynumber\";}',0),(94,'group_activity','[内置]群组活动:小图＋标题','a:9:{s:3:\"raw\";s:378:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"48\" height=\"48“ alt=\"{title}\" /></a></dd>\r\n<dt style=\"padding-bottom: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd style=\"margin: 0;\"> {time} {place}</dd>\r\n<dd class=\"xg1\" style=\"margin: 0;\">{applynumber} 人关注</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:324:\"<dl class=\"cl\">\r\n<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"48\" height=\"48“ alt=\"{title}\" /></a></dd>\r\n<dt style=\"padding-bottom: 0;\"><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd style=\"margin: 0;\"> {time} {place}</dd>\r\n<dd class=\"xg1\" style=\"margin: 0;\">{applynumber} 人关注</dd>\r\n</dl>\";}','51658dfa',1,0,0,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:4:\"time\";i:4;s:5:\"place\";i:5;s:11:\"applynumber\";}',0),(95,'space_album','[内置]相册列表（竖线分隔）','a:9:{s:3:\"raw\";s:594:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\r\n[/loop]\r\n[order=odd]\r\n<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #CCC; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{s:3:\"odd\";s:279:\"<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #CCC; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:224:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\" title=\"{title}\"{target}>{title}</a> ({picnum})</p>\r\n</li>\";}','771549b7',1,0,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:6:\"picnum\";}',0),(96,'space_pic','[内置]图片列表（竖线分隔）','a:9:{s:3:\"raw\";s:556:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n[order=odd]\r\n<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #EEE; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{s:3:\"odd\";s:268:\"<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #EEE; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:197:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','ab23af19',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(97,'portal_article','[内置]碎片式文章标题列表','a:9:{s:3:\"raw\";s:261:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a>\r\n[/loop]\r\n[order=even]\r\n<a href=\"{url}\" title=\"{title}\"{target} class=\"lit\" style=\"margin-left: 5px; font-size: 12px\">{title}</a></li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{s:4:\"even\";s:110:\"<a href=\"{url}\" title=\"{title}\"{target} class=\"lit\" style=\"margin-left: 5px; font-size: 12px\">{title}</a></li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:55:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a>\";}','bc85eab4',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(98,'portal_article','[内置]文章封面列表（竖线分隔）','a:9:{s:3:\"raw\";s:556:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n[order=odd]\r\n<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #EEE; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/order]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:1:{s:3:\"odd\";s:268:\"<li style=\"margin-right: 18px; padding-right: 24px; border-right: 1px solid #EEE; width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:197:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','6b653acb',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(99,'html_announcement','[内置]站点公告','a:9:{s:3:\"raw\";s:193:\"<div class=\"module cl\">\r\n<ul>\r\n[loop]\r\n<li><img alt=\"公告\" src=\"static/image/common/ann_icon.gif\"><a href=\"{url}\" title=\"{title}\"{target}>{title}（{starttime}）</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:130:\"<li><img alt=\"公告\" src=\"static/image/common/ann_icon.gif\"><a href=\"{url}\" title=\"{title}\"{target}>{title}（{starttime}）</a></li>\";}','1f88cc82',0,0,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:9:\"starttime\";}',0),(100,'forum_thread','[内置]帖子图文展示','a:9:{s:3:\"raw\";s:374:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:320:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','881ee4a3',1,1,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:8:\"authorid\";i:4;s:6:\"author\";i:5;s:7:\"summary\";}',0),(101,'group_thread','[内置]帖子图文列表','a:9:{s:3:\"raw\";s:374:\"<div class=\"module cl xld\">\r\n[loop]\r\n<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\r\n[/loop]\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:320:\"<dl class=\"cl\">\r\n	<dd class=\"m\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a></dd>\r\n	<dt><em class=\"y xg1 xw0\"><a href=\"home.php?mod=space&uid={authorid}\"{target}>{author}</a></em><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n	<dd>{summary}</dd>\r\n</dl>\";}','b67132d6',1,1,1,1,'a:6:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";i:3;s:8:\"authorid\";i:4;s:6:\"author\";i:5;s:7:\"summary\";}',0),(102,'group_thread','[内置][群组名]+群组帖子标题','a:9:{s:3:\"raw\";s:177:\"<div class=\"module cl xl xl1\">\r\n<ul>\r\n[loop]\r\n<li>[<a href=\"{groupurl}\"{target}>{groupname}</a>] <a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:107:\"<li>[<a href=\"{groupurl}\"{target}>{groupname}</a>] <a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','a2f9089e',0,0,0,1,'a:4:{i:0;s:8:\"groupurl\";i:1;s:9:\"groupname\";i:2;s:3:\"url\";i:3;s:5:\"title\";}',0),(103,'other_otherfriendlink','[内置]友情链接图文','a:9:{s:3:\"raw\";s:298:\"<div class=\"bn lk\">\r\n<ul class=\"m cl\">\r\n[loop]\r\n<li class=\"cl\">\r\n<div class=\"forumlogo\"><a href=\"{url}\" {target}><img border=\"0\" alt=\"{title}\" src=\"{pic}\"></a></div>\r\n<div class=\"forumcontent\"><h5><a target=\"_blank\" href=\"{url}\">{title}</a></h5><p>{summary}</p></div>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:226:\"<li class=\"cl\">\r\n<div class=\"forumlogo\"><a href=\"{url}\" {target}><img border=\"0\" alt=\"{title}\" src=\"{pic}\"></a></div>\r\n<div class=\"forumcontent\"><h5><a target=\"_blank\" href=\"{url}\">{title}</a></h5><p>{summary}</p></div>\r\n</li>\";}','b921ea24',0,1,1,1,'a:4:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:3:\"pic\";i:3;s:7:\"summary\";}',0),(104,'other_otherfriendlink','[内置]友情链接仅图片','a:9:{s:3:\"raw\";s:147:\"<div class=\"bn lk\">\r\n<div class=\"cl mbm\">\r\n[loop]\r\n<a href=\"{url}\" {target}><img border=\"0\" alt=\"{title}\" src=\"{pic}\"></a>\r\n[/loop]\r\n</div>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:71:\"<a href=\"{url}\" {target}><img border=\"0\" alt=\"{title}\" src=\"{pic}\"></a>\";}','c8d00338',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:3:\"pic\";}',0),(105,'other_otherfriendlink','[内置]友情链接仅文字','a:9:{s:3:\"raw\";s:118:\"<div class=\"x cl\">\r\n<ul class=\"cl mbm\">\r\n[loop]\r\n<li><a href=\"{url}\" {target}>{title}</a></li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:45:\"<li><a href=\"{url}\" {target}>{title}</a></li>\";}','b615e0d0',0,0,0,1,'a:2:{i:0;s:3:\"url\";i:1;s:5:\"title\";}',0),(106,'other_otherstat','[内置]全部统计信息','a:9:{s:3:\"raw\";s:664:\"[loop]<div class=\"tns\">\r\n<ul>\r\n<li>{posts_title}:<em>{posts}</em></li>\r\n<li>{groups_title}:<em>{groups}</em></li>\r\n<li>{members_title}:<em>{members}</em></li>\r\n<li>{groupnewposts_title}:<em>{groupnewposts}</em></li>\r\n<li>{bbsnewposts_title}:<em>{bbsnewposts}</em></li>\r\n<li>{bbslastposts_title}:<em>{bbslastposts}</em></li>\r\n<li>{onlinemembers_title}:<em>{onlinemembers}</em></li>\r\n<li>{maxmembers_title}:<em>{maxmembers}</em></li>\r\n<li>{doings_title}:<em>{doings}</em></li>\r\n<li>{blogs_title}:<em>{blogs}</em></li>\r\n<li>{albums_title}:<em>{albums}</em></li>\r\n<li>{pics_title}:<em>{pics}</em></li>\r\n<li>{shares_title}:<em>{shares}</em></li>\r\n</ul>\r\n</div>\r\n[/loop]\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:649:\"<div class=\"tns\">\r\n<ul>\r\n<li>{posts_title}:<em>{posts}</em></li>\r\n<li>{groups_title}:<em>{groups}</em></li>\r\n<li>{members_title}:<em>{members}</em></li>\r\n<li>{groupnewposts_title}:<em>{groupnewposts}</em></li>\r\n<li>{bbsnewposts_title}:<em>{bbsnewposts}</em></li>\r\n<li>{bbslastposts_title}:<em>{bbslastposts}</em></li>\r\n<li>{onlinemembers_title}:<em>{onlinemembers}</em></li>\r\n<li>{maxmembers_title}:<em>{maxmembers}</em></li>\r\n<li>{doings_title}:<em>{doings}</em></li>\r\n<li>{blogs_title}:<em>{blogs}</em></li>\r\n<li>{albums_title}:<em>{albums}</em></li>\r\n<li>{pics_title}:<em>{pics}</em></li>\r\n<li>{shares_title}:<em>{shares}</em></li>\r\n</ul>\r\n</div>\";}','027d3e60',0,0,0,0,'a:26:{i:0;s:11:\"posts_title\";i:1;s:5:\"posts\";i:2;s:12:\"groups_title\";i:3;s:6:\"groups\";i:4;s:13:\"members_title\";i:5;s:7:\"members\";i:6;s:19:\"groupnewposts_title\";i:7;s:13:\"groupnewposts\";i:8;s:17:\"bbsnewposts_title\";i:9;s:11:\"bbsnewposts\";i:10;s:18:\"bbslastposts_title\";i:11;s:12:\"bbslastposts\";i:12;s:19:\"onlinemembers_title\";i:13;s:13:\"onlinemembers\";i:14;s:16:\"maxmembers_title\";i:15;s:10:\"maxmembers\";i:16;s:12:\"doings_title\";i:17;s:6:\"doings\";i:18;s:11:\"blogs_title\";i:19;s:5:\"blogs\";i:20;s:12:\"albums_title\";i:21;s:6:\"albums\";i:22;s:10:\"pics_title\";i:23;s:4:\"pics\";i:24;s:12:\"shares_title\";i:25;s:6:\"shares\";}',0),(107,'forum_thread','[内置]一简介+两列标题','a:9:{s:3:\"raw\";s:284:\"<div class=\"bm bw0\">\r\n[index=1]\r\n<dl class=\"cl xld\">\r\n<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\r\n<hr class=\"da\" />\r\n[/index]\r\n<ul class=\"xl xl2 cl\">\r\n[loop]<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:1:{i:1;s:127:\"<dl class=\"cl xld\">\r\n<dt><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></dt>\r\n<dd>{summary}</dd>\r\n</dl>\r\n<hr class=\"da\" />\";}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:60:\"<li><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></li>\";}','9e2ea31f',0,1,0,1,'a:3:{i:0;s:3:\"url\";i:1;s:5:\"title\";i:2;s:7:\"summary\";}',0),(108,'forum_thread','[内置]帖子图片幻灯片','a:9:{s:3:\"raw\";s:333:\"<div class=\"module cl slidebox\">\r\n<ul class=\"slideshow\">\r\n[loop]\r\n<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\r\n[/loop]\r\n</ul>\r\n</div>\r\n<script type=\"text/javascript\">\r\nrunslideshow();\r\n</script>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:182:\"<li style=\"width: {picwidth}px; height: {picheight}px;\"><a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" /></a><span class=\"title\">{title}</span></li>\";}','cba1f109',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0),(109,'forum_thread','[内置]帖子图片列表','a:9:{s:3:\"raw\";s:271:\"<div class=\"module cl ml\">\r\n<ul>\r\n[loop]\r\n<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\r\n[/loop]\r\n</ul>\r\n</div>\";s:6:\"footer\";s:0:\"\";s:6:\"header\";s:0:\"\";s:9:\"indexplus\";a:0:{}s:5:\"index\";a:0:{}s:9:\"orderplus\";a:0:{}s:5:\"order\";a:0:{}s:8:\"loopplus\";a:0:{}s:4:\"loop\";s:205:\"<li style=\"width: {picwidth}px;\">\r\n	<a href=\"{url}\"{target}><img src=\"{pic}\" width=\"{picwidth}\" height=\"{picheight}\" alt=\"{title}\" /></a>\r\n	<p><a href=\"{url}\" title=\"{title}\"{target}>{title}</a></p>\r\n</li>\";}','0ab2e307',1,0,1,1,'a:3:{i:0;s:3:\"url\";i:1;s:3:\"pic\";i:2;s:5:\"title\";}',0);

/*Table structure for table `pre_common_block_xml` */

DROP TABLE IF EXISTS `pre_common_block_xml`;

CREATE TABLE `pre_common_block_xml` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `clientid` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `signtype` varchar(255) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_block_xml` */

/*Table structure for table `pre_common_cache` */

DROP TABLE IF EXISTS `pre_common_cache`;

CREATE TABLE `pre_common_cache` (
  `cachekey` varchar(255) NOT NULL DEFAULT '',
  `cachevalue` mediumblob NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cachekey`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_cache` */

insert  into `pre_common_cache`(`cachekey`,`cachevalue`,`dateline`) values ('checktools_filecheck','a:1:{s:8:\"dateline\";i:1608349245;}',1608349245),('checktools_filecheck_result','a:4:{i:0;i:10;i:1;i:0;i:2;i:9;i:3;i:3;}',1608349245);

/*Table structure for table `pre_common_card` */

DROP TABLE IF EXISTS `pre_common_card`;

CREATE TABLE `pre_common_card` (
  `id` char(255) NOT NULL DEFAULT '',
  `typeid` smallint(6) unsigned NOT NULL DEFAULT '1',
  `maketype` tinyint(1) NOT NULL DEFAULT '0',
  `makeruid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extcreditskey` tinyint(1) NOT NULL DEFAULT '0',
  `extcreditsval` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `cleardateline` int(10) unsigned NOT NULL DEFAULT '0',
  `useddateline` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_card` */

/*Table structure for table `pre_common_card_log` */

DROP TABLE IF EXISTS `pre_common_card_log`;

CREATE TABLE `pre_common_card_log` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `cardrule` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `operation` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`),
  KEY `operation_dateline` (`operation`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_card_log` */

/*Table structure for table `pre_common_card_type` */

DROP TABLE IF EXISTS `pre_common_card_type`;

CREATE TABLE `pre_common_card_type` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `typename` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_card_type` */

/*Table structure for table `pre_common_connect_guest` */

DROP TABLE IF EXISTS `pre_common_connect_guest`;

CREATE TABLE `pre_common_connect_guest` (
  `conopenid` char(32) NOT NULL DEFAULT '',
  `conuin` char(40) NOT NULL DEFAULT '',
  `conuinsecret` char(16) NOT NULL DEFAULT '',
  `conqqnick` char(100) NOT NULL DEFAULT '',
  `conuintoken` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`conopenid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_connect_guest` */

/*Table structure for table `pre_common_credit_log` */

DROP TABLE IF EXISTS `pre_common_credit_log`;

CREATE TABLE `pre_common_credit_log` (
  `logid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `operation` char(3) NOT NULL DEFAULT '',
  `relatedid` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `extcredits1` int(10) NOT NULL,
  `extcredits2` int(10) NOT NULL,
  `extcredits3` int(10) NOT NULL,
  `extcredits4` int(10) NOT NULL,
  `extcredits5` int(10) NOT NULL,
  `extcredits6` int(10) NOT NULL,
  `extcredits7` int(10) NOT NULL,
  `extcredits8` int(10) NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `uid` (`uid`),
  KEY `operation` (`operation`),
  KEY `relatedid` (`relatedid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_credit_log` */

/*Table structure for table `pre_common_credit_log_field` */

DROP TABLE IF EXISTS `pre_common_credit_log_field`;

CREATE TABLE `pre_common_credit_log_field` (
  `logid` mediumint(8) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  KEY `logid` (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_credit_log_field` */

/*Table structure for table `pre_common_credit_rule` */

DROP TABLE IF EXISTS `pre_common_credit_rule`;

CREATE TABLE `pre_common_credit_rule` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rulename` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(20) NOT NULL DEFAULT '',
  `cycletype` tinyint(1) NOT NULL DEFAULT '0',
  `cycletime` int(10) NOT NULL DEFAULT '0',
  `rewardnum` tinyint(2) NOT NULL DEFAULT '1',
  `norepeat` tinyint(1) NOT NULL DEFAULT '0',
  `extcredits1` int(10) NOT NULL DEFAULT '0',
  `extcredits2` int(10) NOT NULL DEFAULT '0',
  `extcredits3` int(10) NOT NULL DEFAULT '0',
  `extcredits4` int(10) NOT NULL DEFAULT '0',
  `extcredits5` int(10) NOT NULL DEFAULT '0',
  `extcredits6` int(10) NOT NULL DEFAULT '0',
  `extcredits7` int(10) NOT NULL DEFAULT '0',
  `extcredits8` int(10) NOT NULL DEFAULT '0',
  `fids` text NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_credit_rule` */

insert  into `pre_common_credit_rule`(`rid`,`rulename`,`action`,`cycletype`,`cycletime`,`rewardnum`,`norepeat`,`extcredits1`,`extcredits2`,`extcredits3`,`extcredits4`,`extcredits5`,`extcredits6`,`extcredits7`,`extcredits8`,`fids`) values (1,'发表主题','post',4,0,0,0,0,2,0,0,0,0,0,0,''),(2,'发表回复','reply',4,0,0,0,0,1,0,0,0,0,0,0,''),(3,'加精华','digest',4,0,0,0,0,5,0,0,0,0,0,0,''),(4,'上传附件','postattach',4,0,0,0,0,0,0,0,0,0,0,0,''),(5,'下载附件','getattach',4,0,0,0,0,0,0,0,0,0,0,0,''),(6,'发短消息','sendpm',4,0,0,0,0,0,0,0,0,0,0,0,''),(7,'搜索','search',4,0,0,0,0,0,0,0,0,0,0,0,''),(8,'访问推广','promotion_visit',4,0,0,0,0,1,0,0,0,0,0,0,''),(9,'注册推广','promotion_register',4,0,0,0,0,2,0,0,0,0,0,0,''),(10,'成功交易','tradefinished',4,0,0,0,0,0,0,0,0,0,0,0,''),(11,'邮箱认证','realemail',0,0,1,0,0,10,0,0,0,0,0,0,''),(12,'设置头像','setavatar',0,0,1,0,0,5,0,0,0,0,0,0,''),(13,'视频认证','videophoto',0,0,1,0,0,10,0,0,0,0,0,0,''),(14,'热点信息','hotinfo',4,0,0,0,0,0,0,0,0,0,0,0,''),(15,'每天登录','daylogin',1,0,1,0,0,2,0,0,0,0,0,0,''),(16,'访问别人空间','visit',1,0,10,2,0,2,0,0,0,0,0,0,''),(17,'打招呼','poke',1,0,10,2,0,1,0,0,0,0,0,0,''),(18,'留言','guestbook',1,0,20,2,0,1,0,0,0,0,0,0,''),(19,'被留言','getguestbook',1,0,5,2,0,1,0,0,0,0,0,0,''),(20,'发表记录','doing',1,0,5,0,0,1,0,0,0,0,0,0,''),(21,'发表日志','publishblog',1,0,3,0,0,2,0,0,0,0,0,0,''),(22,'参与投票','joinpoll',1,0,10,1,0,1,0,0,0,0,0,0,''),(23,'发起分享','createshare',1,0,3,0,0,1,0,0,0,0,0,0,''),(24,'评论','comment',1,0,40,1,0,1,0,0,0,0,0,0,''),(25,'被评论','getcomment',1,0,20,1,0,2,0,0,0,0,0,0,''),(26,'安装应用','installapp',4,0,0,3,0,0,0,0,0,0,0,0,''),(27,'使用应用','useapp',1,0,10,3,0,0,0,0,0,0,0,0,''),(28,'信息表态','click',1,0,10,1,0,0,0,0,0,0,0,0,''),(29,'修改域名','modifydomain',0,0,1,0,0,0,0,0,0,0,0,0,''),(30,'文章评论','portalcomment',1,0,40,1,0,1,0,0,0,0,0,0,''),(31,'淘专辑被订阅','followedcollection',1,0,3,0,0,1,0,0,0,0,0,0,'');

/*Table structure for table `pre_common_credit_rule_log` */

DROP TABLE IF EXISTS `pre_common_credit_rule_log`;

CREATE TABLE `pre_common_credit_rule_log` (
  `clid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cyclenum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extcredits1` int(10) NOT NULL DEFAULT '0',
  `extcredits2` int(10) NOT NULL DEFAULT '0',
  `extcredits3` int(10) NOT NULL DEFAULT '0',
  `extcredits4` int(10) NOT NULL DEFAULT '0',
  `extcredits5` int(10) NOT NULL DEFAULT '0',
  `extcredits6` int(10) NOT NULL DEFAULT '0',
  `extcredits7` int(10) NOT NULL DEFAULT '0',
  `extcredits8` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`clid`),
  KEY `uid` (`uid`,`rid`,`fid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_credit_rule_log` */

insert  into `pre_common_credit_rule_log`(`clid`,`uid`,`rid`,`fid`,`total`,`cyclenum`,`extcredits1`,`extcredits2`,`extcredits3`,`extcredits4`,`extcredits5`,`extcredits6`,`extcredits7`,`extcredits8`,`starttime`,`dateline`) values (1,1,15,0,23,1,0,2,0,0,0,0,0,0,0,1608515491),(2,1,1,0,2,2,0,2,0,0,0,0,0,0,0,1605681779),(3,2,15,0,5,1,0,2,0,0,0,0,0,0,0,1608277619);

/*Table structure for table `pre_common_credit_rule_log_field` */

DROP TABLE IF EXISTS `pre_common_credit_rule_log_field`;

CREATE TABLE `pre_common_credit_rule_log_field` (
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `user` text NOT NULL,
  `app` text NOT NULL,
  PRIMARY KEY (`uid`,`clid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_credit_rule_log_field` */

/*Table structure for table `pre_common_cron` */

DROP TABLE IF EXISTS `pre_common_cron`;

CREATE TABLE `pre_common_cron` (
  `cronid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('user','system','plugin') NOT NULL DEFAULT 'user',
  `name` char(50) NOT NULL DEFAULT '',
  `filename` char(50) NOT NULL DEFAULT '',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `nextrun` int(10) unsigned NOT NULL DEFAULT '0',
  `weekday` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '0',
  `hour` tinyint(2) NOT NULL DEFAULT '0',
  `minute` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`cronid`),
  KEY `nextrun` (`available`,`nextrun`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_cron` */

insert  into `pre_common_cron`(`cronid`,`available`,`type`,`name`,`filename`,`lastrun`,`nextrun`,`weekday`,`day`,`hour`,`minute`) values (1,1,'system','清空今日发帖数','cron_todaypost_daily.php',1608515491,1608566400,-1,-1,0,'0'),(2,1,'system','清空本月在线时间','cron_onlinetime_monthly.php',1607051751,1609430400,-1,1,0,'0'),(3,1,'system','每日数据清理','cron_cleanup_daily.php',1608515550,1608586200,-1,-1,5,'30'),(5,1,'system','每日公告清理','cron_announcement_daily.php',1608515492,1608566400,-1,-1,0,'0'),(6,1,'system','限时操作清理','cron_threadexpiry_hourly.php',1608519736,1608523200,-1,-1,-1,'0'),(7,1,'system','论坛推广清理','cron_promotion_hourly.php',1608515492,1608566400,-1,-1,0,'00'),(8,1,'system','每月主题清理','cron_cleanup_monthly.php',1607051751,1609452000,-1,1,6,'00'),(9,1,'system','道具自动补货','cron_magic_daily.php',1608515492,1608566400,-1,-1,0,'0'),(10,1,'system','每日验证问答更新','cron_secqaa_daily.php',1608515555,1608588000,-1,-1,6,'0'),(11,1,'system','每日标签更新','cron_tag_daily.php',1608515542,1608566400,-1,-1,0,'0'),(12,1,'system','每日勋章更新','cron_medal_daily.php',1608515542,1608566400,-1,-1,0,'0'),(13,1,'system','清理过期动态','cron_cleanfeed.php',1608515544,1608566400,-1,-1,0,'0'),(15,1,'system','定时发布主题','cron_publish_halfhourly.php',1608519736,1608521400,-1,-1,-1,'0	30'),(16,1,'system','每周广播归档','cron_follow_daily.php',1608515550,1608573600,-1,-1,2,'0'),(17,1,'system','更新每日查看数','cron_todayviews_daily.php',1608515550,1608577200,-1,-1,3,'0	5	10	15	20	25	30	35	40	45	50	55'),(18,0,'system','每日用户表优化','cron_member_optimize_daily.php',0,1605606903,-1,-1,2,'0	5	10	15	20	25	30	35	40	45	50	55'),(19,1,'system','统计今日热帖','cron_todayheats_daily.php',1608515547,1608566400,-1,-1,0,'0'),(20,1,'system','更新版块最后发表(防水墙相关)','cron_security_cleanup_lastpost.php',1608515560,1608591600,-1,-1,7,'0');

/*Table structure for table `pre_common_devicetoken` */

DROP TABLE IF EXISTS `pre_common_devicetoken`;

CREATE TABLE `pre_common_devicetoken` (
  `uid` mediumint(8) unsigned NOT NULL,
  `token` char(50) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_devicetoken` */

/*Table structure for table `pre_common_district` */

DROP TABLE IF EXISTS `pre_common_district`;

CREATE TABLE `pre_common_district` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usetype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `upid` (`upid`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=45052 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_district` */


/*Table structure for table `pre_common_diy_data` */

DROP TABLE IF EXISTS `pre_common_diy_data`;

CREATE TABLE `pre_common_diy_data` (
  `targettplname` varchar(100) NOT NULL DEFAULT '',
  `tpldirectory` varchar(80) NOT NULL DEFAULT '',
  `primaltplname` varchar(255) NOT NULL DEFAULT '',
  `diycontent` mediumtext NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`targettplname`,`tpldirectory`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_diy_data` */

insert  into `pre_common_diy_data`(`targettplname`,`tpldirectory`,`primaltplname`,`diycontent`,`name`,`uid`,`username`,`dateline`) values ('group/index','./template/default','group/index','a:3:{s:8:\"spacecss\";s:133:\"#portal_block_1 .dxb_bc {margin-left:0px !important;}#portal_block_2 .dxb_bc {font-size:14px !important;margin-left:10px !important;}\";s:10:\"layoutdata\";a:10:{s:4:\"diy1\";s:0:\"\";s:13:\"diycontenttop\";s:0:\"\";s:4:\"diy5\";a:1:{s:17:\"frame`framelomyGN\";a:3:{s:4:\"attr\";a:4:{s:4:\"name\";s:11:\"framelomyGN\";s:8:\"moveable\";s:4:\"true\";s:9:\"className\";s:28:\"frame move-span cl frame-1-1\";s:6:\"titles\";s:0:\"\";}s:23:\"column`framelomyGN_left\";a:2:{s:4:\"attr\";a:2:{s:4:\"name\";s:16:\"framelomyGN_left\";s:9:\"className\";s:18:\"column frame-1-1-l\";}s:20:\"block`portal_block_1\";a:1:{s:4:\"attr\";a:3:{s:4:\"name\";s:14:\"portal_block_1\";s:9:\"className\";s:15:\"block move-span\";s:6:\"titles\";s:0:\"\";}}}s:25:\"column`framelomyGN_center\";a:2:{s:4:\"attr\";a:2:{s:4:\"name\";s:18:\"framelomyGN_center\";s:9:\"className\";s:18:\"column frame-1-1-r\";}s:20:\"block`portal_block_2\";a:1:{s:4:\"attr\";a:3:{s:4:\"name\";s:14:\"portal_block_2\";s:9:\"className\";s:15:\"block move-span\";s:6:\"titles\";s:0:\"\";}}}}}s:13:\"diycommendtop\";s:0:\"\";s:14:\"diycategorytop\";s:0:\"\";s:16:\"diycontentbottom\";s:0:\"\";s:10:\"diysidetop\";s:0:\"\";s:13:\"diysidemiddle\";s:0:\"\";s:13:\"diysidebottom\";s:0:\"\";s:4:\"diy4\";s:0:\"\";}s:5:\"style\";s:0:\"\";}','',0,'',0);

/*Table structure for table `pre_common_domain` */

DROP TABLE IF EXISTS `pre_common_domain`;

CREATE TABLE `pre_common_domain` (
  `domain` char(30) NOT NULL DEFAULT '',
  `domainroot` char(60) NOT NULL DEFAULT '',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`idtype`),
  KEY `domain` (`domain`,`domainroot`),
  KEY `idtype` (`idtype`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_domain` */

/*Table structure for table `pre_common_failedip` */

DROP TABLE IF EXISTS `pre_common_failedip`;

CREATE TABLE `pre_common_failedip` (
  `ip` char(7) NOT NULL DEFAULT '',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`,`lastupdate`),
  KEY `lastupdate` (`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_failedip` */

/*Table structure for table `pre_common_failedlogin` */

DROP TABLE IF EXISTS `pre_common_failedlogin`;

CREATE TABLE `pre_common_failedlogin` (
  `ip` char(15) NOT NULL DEFAULT '',
  `username` char(32) NOT NULL DEFAULT '',
  `count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_failedlogin` */

/*Table structure for table `pre_common_friendlink` */

DROP TABLE IF EXISTS `pre_common_friendlink`;

CREATE TABLE `pre_common_friendlink` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_friendlink` */

insert  into `pre_common_friendlink`(`id`,`displayorder`,`name`,`url`,`description`,`logo`,`type`) values (1,0,'官方论坛','http://www.discuz.net','提供最新 Discuz! 产品新闻、软件下载与技术交流','static/image/common/logo_88_31.gif',2),(2,4,'专用主机','http://www.verydz.com/','','',2),(3,1,'Comsenz','http://www.comsenz.com','','',2);

/*Table structure for table `pre_common_grouppm` */

DROP TABLE IF EXISTS `pre_common_grouppm`;

CREATE TABLE `pre_common_grouppm` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `numbers` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_grouppm` */

/*Table structure for table `pre_common_invite` */

DROP TABLE IF EXISTS `pre_common_invite`;

CREATE TABLE `pre_common_invite` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `code` char(20) NOT NULL DEFAULT '',
  `fuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fusername` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `email` char(40) NOT NULL DEFAULT '',
  `inviteip` char(15) NOT NULL DEFAULT '',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `regdateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `orderid` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_invite` */

/*Table structure for table `pre_common_magic` */

DROP TABLE IF EXISTS `pre_common_magic`;

CREATE TABLE `pre_common_magic` (
  `magicid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `credit` tinyint(1) NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  `salevolume` smallint(6) unsigned NOT NULL DEFAULT '0',
  `supplytype` tinyint(1) NOT NULL DEFAULT '0',
  `supplynum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `useperoid` tinyint(1) NOT NULL DEFAULT '0',
  `usenum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `magicperm` text NOT NULL,
  `useevent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`magicid`),
  UNIQUE KEY `identifier` (`identifier`),
  KEY `displayorder` (`available`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_magic` */

/*Table structure for table `pre_common_magiclog` */

DROP TABLE IF EXISTS `pre_common_magiclog`;

CREATE TABLE `pre_common_magiclog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(6) unsigned NOT NULL DEFAULT '0',
  `credit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `targetid` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` char(6) DEFAULT NULL,
  `targetuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`dateline`),
  KEY `action` (`action`),
  KEY `targetuid` (`targetuid`,`dateline`),
  KEY `magicid` (`magicid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_magiclog` */

/*Table structure for table `pre_common_mailcron` */

DROP TABLE IF EXISTS `pre_common_mailcron`;

CREATE TABLE `pre_common_mailcron` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_mailcron` */

/*Table structure for table `pre_common_mailqueue` */

DROP TABLE IF EXISTS `pre_common_mailqueue`;

CREATE TABLE `pre_common_mailqueue` (
  `qid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  KEY `mcid` (`cid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_mailqueue` */

/*Table structure for table `pre_common_member` */

DROP TABLE IF EXISTS `pre_common_member`;

CREATE TABLE `pre_common_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '',
  `username` char(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `emailstatus` tinyint(1) NOT NULL DEFAULT '0',
  `avatarstatus` tinyint(1) NOT NULL DEFAULT '0',
  `videophotostatus` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `groupexpiry` int(10) unsigned NOT NULL DEFAULT '0',
  `extgroupids` char(20) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `credits` int(10) NOT NULL DEFAULT '0',
  `notifysound` tinyint(1) NOT NULL DEFAULT '0',
  `timeoffset` char(4) NOT NULL DEFAULT '',
  `newpm` smallint(6) unsigned NOT NULL DEFAULT '0',
  `newprompt` smallint(6) unsigned NOT NULL DEFAULT '0',
  `accessmasks` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmincp` tinyint(1) NOT NULL DEFAULT '0',
  `onlyacceptfriendpm` tinyint(1) NOT NULL DEFAULT '0',
  `conisbind` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `freeze` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `conisbind` (`conisbind`),
  KEY `regdate` (`regdate`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member` */

insert  into `pre_common_member`(`uid`,`email`,`username`,`password`,`status`,`emailstatus`,`avatarstatus`,`videophotostatus`,`adminid`,`groupid`,`groupexpiry`,`extgroupids`,`regdate`,`credits`,`notifysound`,`timeoffset`,`newpm`,`newprompt`,`accessmasks`,`allowadmincp`,`onlyacceptfriendpm`,`conisbind`,`freeze`) values (1,'admin@admin.com','admin','e70a788555553d627e42341388af3bb1',0,0,0,0,1,1,0,'',1605603303,47,0,'',0,5,0,1,0,0,0),(2,'admind@qq.com','admin2','3e8db7c1acdef3dbfcfb835c7946ff48',0,0,0,0,0,10,0,'',1605941114,10,0,'9999',0,0,0,0,0,0,0);

/*Table structure for table `pre_common_member_action_log` */

DROP TABLE IF EXISTS `pre_common_member_action_log`;

CREATE TABLE `pre_common_member_action_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(5) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`,`action`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_action_log` */

/*Table structure for table `pre_common_member_connect` */

DROP TABLE IF EXISTS `pre_common_member_connect`;

CREATE TABLE `pre_common_member_connect` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `conuin` char(40) NOT NULL DEFAULT '',
  `conuinsecret` char(16) NOT NULL DEFAULT '',
  `conopenid` char(32) NOT NULL DEFAULT '',
  `conisfeed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conispublishfeed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conispublisht` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conisregister` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conisqzoneavatar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conisqqshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `conuintoken` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `conuin` (`conuin`),
  KEY `conopenid` (`conopenid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_connect` */

/*Table structure for table `pre_common_member_count` */

DROP TABLE IF EXISTS `pre_common_member_count`;

CREATE TABLE `pre_common_member_count` (
  `uid` mediumint(8) unsigned NOT NULL,
  `extcredits1` int(10) NOT NULL DEFAULT '0',
  `extcredits2` int(10) NOT NULL DEFAULT '0',
  `extcredits3` int(10) NOT NULL DEFAULT '0',
  `extcredits4` int(10) NOT NULL DEFAULT '0',
  `extcredits5` int(10) NOT NULL DEFAULT '0',
  `extcredits6` int(10) NOT NULL DEFAULT '0',
  `extcredits7` int(10) NOT NULL DEFAULT '0',
  `extcredits8` int(10) NOT NULL DEFAULT '0',
  `friends` smallint(6) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `digestposts` smallint(6) unsigned NOT NULL DEFAULT '0',
  `doings` smallint(6) unsigned NOT NULL DEFAULT '0',
  `blogs` smallint(6) unsigned NOT NULL DEFAULT '0',
  `albums` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sharings` smallint(6) unsigned NOT NULL DEFAULT '0',
  `attachsize` int(10) unsigned NOT NULL DEFAULT '0',
  `views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `oltime` smallint(6) unsigned NOT NULL DEFAULT '0',
  `todayattachs` smallint(6) unsigned NOT NULL DEFAULT '0',
  `todayattachsize` int(10) unsigned NOT NULL DEFAULT '0',
  `feeds` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `follower` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `following` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newfollower` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blacklist` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `posts` (`posts`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_count` */

insert  into `pre_common_member_count`(`uid`,`extcredits1`,`extcredits2`,`extcredits3`,`extcredits4`,`extcredits5`,`extcredits6`,`extcredits7`,`extcredits8`,`friends`,`posts`,`threads`,`digestposts`,`doings`,`blogs`,`albums`,`sharings`,`attachsize`,`views`,`oltime`,`todayattachs`,`todayattachsize`,`feeds`,`follower`,`following`,`newfollower`,`blacklist`) values (1,0,45,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,39,0,0,1,0,0,0,0),(2,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0);

/*Table structure for table `pre_common_member_crime` */

DROP TABLE IF EXISTS `pre_common_member_crime`;

CREATE TABLE `pre_common_member_crime` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `operatorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(15) NOT NULL,
  `action` tinyint(5) NOT NULL,
  `reason` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `uid` (`uid`,`action`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_crime` */

/*Table structure for table `pre_common_member_field_forum` */

DROP TABLE IF EXISTS `pre_common_member_field_forum`;

CREATE TABLE `pre_common_member_field_forum` (
  `uid` mediumint(8) unsigned NOT NULL,
  `publishfeed` tinyint(3) NOT NULL DEFAULT '0',
  `customshow` tinyint(1) unsigned NOT NULL DEFAULT '26',
  `customstatus` varchar(30) NOT NULL DEFAULT '',
  `medals` text NOT NULL,
  `sightml` text NOT NULL,
  `groupterms` text NOT NULL,
  `authstr` varchar(20) NOT NULL DEFAULT '',
  `groups` mediumtext NOT NULL,
  `attentiongroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_field_forum` */

insert  into `pre_common_member_field_forum`(`uid`,`publishfeed`,`customshow`,`customstatus`,`medals`,`sightml`,`groupterms`,`authstr`,`groups`,`attentiongroup`) values (1,0,26,'','','','','','',''),(2,0,26,'','','','','','','');

/*Table structure for table `pre_common_member_field_home` */

DROP TABLE IF EXISTS `pre_common_member_field_home`;

CREATE TABLE `pre_common_member_field_home` (
  `uid` mediumint(8) unsigned NOT NULL,
  `videophoto` varchar(255) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacedescription` varchar(255) NOT NULL DEFAULT '',
  `domain` char(15) NOT NULL DEFAULT '',
  `addsize` int(10) unsigned NOT NULL DEFAULT '0',
  `addfriend` smallint(6) unsigned NOT NULL DEFAULT '0',
  `menunum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL DEFAULT '',
  `spacecss` text NOT NULL,
  `blockposition` text NOT NULL,
  `recentnote` text NOT NULL,
  `spacenote` text NOT NULL,
  `privacy` text NOT NULL,
  `feedfriend` mediumtext NOT NULL,
  `acceptemail` text NOT NULL,
  `magicgift` text NOT NULL,
  `stickblogs` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_field_home` */

insert  into `pre_common_member_field_home`(`uid`,`videophoto`,`spacename`,`spacedescription`,`domain`,`addsize`,`addfriend`,`menunum`,`theme`,`spacecss`,`blockposition`,`recentnote`,`spacenote`,`privacy`,`feedfriend`,`acceptemail`,`magicgift`,`stickblogs`) values (1,'','','','',0,0,0,'','','','好天气！','','','','','',''),(2,'','','','',0,0,0,'','','','','','','','','','');

/*Table structure for table `pre_common_member_forum_buylog` */

DROP TABLE IF EXISTS `pre_common_member_forum_buylog`;

CREATE TABLE `pre_common_member_forum_buylog` (
  `uid` mediumint(8) unsigned NOT NULL,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `credits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_forum_buylog` */

/*Table structure for table `pre_common_member_grouppm` */

DROP TABLE IF EXISTS `pre_common_member_grouppm`;

CREATE TABLE `pre_common_member_grouppm` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gpmid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`gpmid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_grouppm` */

/*Table structure for table `pre_common_member_log` */

DROP TABLE IF EXISTS `pre_common_member_log`;

CREATE TABLE `pre_common_member_log` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` char(10) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_log` */

/*Table structure for table `pre_common_member_magic` */

DROP TABLE IF EXISTS `pre_common_member_magic`;

CREATE TABLE `pre_common_member_magic` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`magicid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_magic` */

/*Table structure for table `pre_common_member_medal` */

DROP TABLE IF EXISTS `pre_common_member_medal`;

CREATE TABLE `pre_common_member_medal` (
  `uid` mediumint(8) unsigned NOT NULL,
  `medalid` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`uid`,`medalid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_medal` */

/*Table structure for table `pre_common_member_newprompt` */

DROP TABLE IF EXISTS `pre_common_member_newprompt`;

CREATE TABLE `pre_common_member_newprompt` (
  `uid` mediumint(8) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_newprompt` */

insert  into `pre_common_member_newprompt`(`uid`,`data`) values (1,'a:1:{s:6:\"system\";i:5;}');

/*Table structure for table `pre_common_member_profile` */

DROP TABLE IF EXISTS `pre_common_member_profile`;

CREATE TABLE `pre_common_member_profile` (
  `uid` mediumint(8) unsigned NOT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(255) NOT NULL DEFAULT '',
  `zodiac` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `idcardtype` varchar(255) NOT NULL DEFAULT '',
  `idcard` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(255) NOT NULL DEFAULT '',
  `nationality` varchar(255) NOT NULL DEFAULT '',
  `birthprovince` varchar(255) NOT NULL DEFAULT '',
  `birthcity` varchar(255) NOT NULL DEFAULT '',
  `birthdist` varchar(20) NOT NULL DEFAULT '',
  `birthcommunity` varchar(255) NOT NULL DEFAULT '',
  `resideprovince` varchar(255) NOT NULL DEFAULT '',
  `residecity` varchar(255) NOT NULL DEFAULT '',
  `residedist` varchar(20) NOT NULL DEFAULT '',
  `residecommunity` varchar(255) NOT NULL DEFAULT '',
  `residesuite` varchar(255) NOT NULL DEFAULT '',
  `graduateschool` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `education` varchar(255) NOT NULL DEFAULT '',
  `occupation` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `revenue` varchar(255) NOT NULL DEFAULT '',
  `affectivestatus` varchar(255) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(255) NOT NULL DEFAULT '',
  `height` varchar(255) NOT NULL DEFAULT '',
  `weight` varchar(255) NOT NULL DEFAULT '',
  `alipay` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT '',
  `yahoo` varchar(255) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `taobao` varchar(255) NOT NULL DEFAULT '',
  `site` varchar(255) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `field1` text NOT NULL,
  `field2` text NOT NULL,
  `field3` text NOT NULL,
  `field4` text NOT NULL,
  `field5` text NOT NULL,
  `field6` text NOT NULL,
  `field7` text NOT NULL,
  `field8` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_profile` */

insert  into `pre_common_member_profile`(`uid`,`realname`,`gender`,`birthyear`,`birthmonth`,`birthday`,`constellation`,`zodiac`,`telephone`,`mobile`,`idcardtype`,`idcard`,`address`,`zipcode`,`nationality`,`birthprovince`,`birthcity`,`birthdist`,`birthcommunity`,`resideprovince`,`residecity`,`residedist`,`residecommunity`,`residesuite`,`graduateschool`,`company`,`education`,`occupation`,`position`,`revenue`,`affectivestatus`,`lookingfor`,`bloodtype`,`height`,`weight`,`alipay`,`icq`,`qq`,`yahoo`,`msn`,`taobao`,`site`,`bio`,`interest`,`field1`,`field2`,`field3`,`field4`,`field5`,`field6`,`field7`,`field8`) values (1,'',0,0,0,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(2,'',0,0,0,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');

/*Table structure for table `pre_common_member_profile_setting` */

DROP TABLE IF EXISTS `pre_common_member_profile_setting`;

CREATE TABLE `pre_common_member_profile_setting` (
  `fieldid` varchar(255) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `needverify` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `displayorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `showincard` tinyint(1) NOT NULL DEFAULT '0',
  `showinthread` tinyint(1) NOT NULL DEFAULT '0',
  `showinregister` tinyint(1) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `formtype` varchar(255) NOT NULL,
  `size` smallint(6) unsigned NOT NULL DEFAULT '0',
  `choices` text NOT NULL,
  `validate` text NOT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_profile_setting` */

insert  into `pre_common_member_profile_setting`(`fieldid`,`available`,`invisible`,`needverify`,`title`,`description`,`displayorder`,`required`,`unchangeable`,`showincard`,`showinthread`,`showinregister`,`allowsearch`,`formtype`,`size`,`choices`,`validate`) values ('realname',1,0,0,'真实姓名','',0,0,0,0,0,0,1,'text',0,'',''),('gender',1,0,0,'性别','',0,0,0,0,0,0,1,'select',0,'',''),('birthyear',1,0,0,'出生年份','',0,0,0,0,0,0,1,'select',0,'',''),('birthmonth',1,0,0,'出生月份','',0,0,0,0,0,0,0,'select',0,'',''),('birthday',1,0,0,'生日','',0,0,0,0,0,0,0,'select',0,'',''),('constellation',1,1,0,'星座','星座(根据生日自动计算)',0,0,0,0,0,0,0,'text',0,'',''),('zodiac',1,1,0,'生肖','生肖(根据生日自动计算)',0,0,0,0,0,0,0,'text',0,'',''),('telephone',1,1,0,'固定电话','',0,0,0,0,0,0,0,'text',0,'',''),('mobile',1,1,0,'手机','',0,0,0,0,0,0,0,'text',0,'',''),('idcardtype',1,1,0,'证件类型','身份证 护照 驾驶证等',0,0,0,0,0,0,0,'select',0,'身份证\n护照\n驾驶证',''),('idcard',1,1,0,'证件号','',0,0,0,0,0,0,0,'text',0,'',''),('address',1,1,0,'邮寄地址','',0,0,0,0,0,0,0,'text',0,'',''),('zipcode',1,1,0,'邮编','',0,0,0,0,0,0,0,'text',0,'',''),('nationality',0,0,0,'国籍','',0,0,0,0,0,0,0,'text',0,'',''),('birthprovince',1,0,0,'出生省份','',0,0,0,0,0,0,0,'select',0,'',''),('birthcity',1,0,0,'出生地','',0,0,0,0,0,0,0,'select',0,'',''),('birthdist',1,0,0,'出生县','出生行政区/县',0,0,0,0,0,0,0,'select',0,'',''),('birthcommunity',1,0,0,'出生小区','',0,0,0,0,0,0,0,'select',0,'',''),('resideprovince',1,0,0,'居住省份','',0,0,0,0,0,0,0,'select',0,'',''),('residecity',1,0,0,'居住地','',0,0,0,0,0,0,0,'select',0,'',''),('residedist',1,0,0,'居住县','居住行政区/县',0,0,0,0,0,0,0,'select',0,'',''),('residecommunity',1,0,0,'居住小区','',0,0,0,0,0,0,0,'select',0,'',''),('residesuite',0,0,0,'房间','小区、写字楼门牌号',0,0,0,0,0,0,0,'text',0,'',''),('graduateschool',1,0,0,'毕业学校','',0,0,0,0,0,0,0,'text',0,'',''),('education',1,0,0,'学历','',0,0,0,0,0,0,0,'select',0,'博士\n硕士\n本科\n专科\n中学\n小学\n其它',''),('company',1,0,0,'公司','',0,0,0,0,0,0,0,'text',0,'',''),('occupation',1,0,0,'职业','',0,0,0,0,0,0,0,'text',0,'',''),('position',1,0,0,'职位','',0,0,0,0,0,0,0,'text',0,'',''),('revenue',1,1,0,'年收入','单位 元',0,0,0,0,0,0,0,'text',0,'',''),('affectivestatus',1,1,0,'情感状态','',0,0,0,0,0,0,0,'text',0,'',''),('lookingfor',1,0,0,'交友目的','希望在网站找到什么样的朋友',0,0,0,0,0,0,0,'text',0,'',''),('bloodtype',1,1,0,'血型','',0,0,0,0,0,0,0,'select',0,'A\nB\nAB\nO\n其它',''),('height',0,1,0,'身高','单位 cm',0,0,0,0,0,0,0,'text',0,'',''),('weight',0,1,0,'体重','单位 kg',0,0,0,0,0,0,0,'text',0,'',''),('alipay',1,1,0,'支付宝','',0,0,0,0,0,0,0,'text',0,'',''),('icq',0,1,0,'ICQ','',0,0,0,0,0,0,0,'text',0,'',''),('qq',1,1,0,'QQ','',0,0,0,0,0,0,0,'text',0,'',''),('yahoo',0,1,0,'YAHOO帐号','',0,0,0,0,0,0,0,'text',0,'',''),('msn',1,1,0,'MSN','',0,0,0,0,0,0,0,'text',0,'',''),('taobao',1,1,0,'阿里旺旺','',0,0,0,0,0,0,0,'text',0,'',''),('site',1,0,0,'个人主页','',0,0,0,0,0,0,0,'text',0,'',''),('bio',1,1,0,'自我介绍','',0,0,0,0,0,0,0,'textarea',0,'',''),('interest',1,0,0,'兴趣爱好','',0,0,0,0,0,0,0,'textarea',0,'',''),('field1',0,1,0,'自定义字段1','',0,0,0,0,0,0,0,'text',0,'',''),('field2',0,1,0,'自定义字段2','',0,0,0,0,0,0,0,'text',0,'',''),('field3',0,1,0,'自定义字段3','',0,0,0,0,0,0,0,'text',0,'',''),('field4',0,1,0,'自定义字段4','',0,0,0,0,0,0,0,'text',0,'',''),('field5',0,1,0,'自定义字段5','',0,0,0,0,0,0,0,'text',0,'',''),('field6',0,1,0,'自定义字段6','',0,0,0,0,0,0,0,'text',0,'',''),('field7',0,1,0,'自定义字段7','',0,0,0,0,0,0,0,'text',0,'',''),('field8',0,1,0,'自定义字段8','',0,0,0,0,0,0,0,'text',0,'','');

/*Table structure for table `pre_common_member_security` */

DROP TABLE IF EXISTS `pre_common_member_security`;

CREATE TABLE `pre_common_member_security` (
  `securityid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `fieldid` varchar(255) NOT NULL DEFAULT '',
  `oldvalue` text NOT NULL,
  `newvalue` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`securityid`),
  KEY `uid` (`uid`,`fieldid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_security` */

/*Table structure for table `pre_common_member_secwhite` */

DROP TABLE IF EXISTS `pre_common_member_secwhite`;

CREATE TABLE `pre_common_member_secwhite` (
  `uid` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_secwhite` */

/*Table structure for table `pre_common_member_stat_field` */

DROP TABLE IF EXISTS `pre_common_member_stat_field`;

CREATE TABLE `pre_common_member_stat_field` (
  `optionid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fieldid` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `users` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`optionid`),
  KEY `fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_stat_field` */

/*Table structure for table `pre_common_member_status` */

DROP TABLE IF EXISTS `pre_common_member_status`;

CREATE TABLE `pre_common_member_status` (
  `uid` mediumint(8) unsigned NOT NULL,
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsendmail` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `buyercredit` smallint(6) NOT NULL DEFAULT '0',
  `sellercredit` smallint(6) NOT NULL DEFAULT '0',
  `favtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `profileprogress` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `lastactivity` (`lastactivity`,`invisible`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_status` */

insert  into `pre_common_member_status`(`uid`,`regip`,`lastip`,`port`,`lastvisit`,`lastactivity`,`lastpost`,`lastsendmail`,`invisible`,`buyercredit`,`sellercredit`,`favtimes`,`sharetimes`,`profileprogress`) values (1,'','127.0.0.1',60536,1608519736,1608515550,1605681779,0,0,0,0,0,0,0),(2,'Manual Acting','127.0.0.1',60819,1608277619,1608277619,0,0,0,0,0,0,0,0);

/*Table structure for table `pre_common_member_validate` */

DROP TABLE IF EXISTS `pre_common_member_validate`;

CREATE TABLE `pre_common_member_validate` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `submitdate` int(10) unsigned NOT NULL DEFAULT '0',
  `moddate` int(10) unsigned NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `submittimes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_validate` */

/*Table structure for table `pre_common_member_verify` */

DROP TABLE IF EXISTS `pre_common_member_verify`;

CREATE TABLE `pre_common_member_verify` (
  `uid` mediumint(8) unsigned NOT NULL,
  `verify1` tinyint(1) NOT NULL DEFAULT '0',
  `verify2` tinyint(1) NOT NULL DEFAULT '0',
  `verify3` tinyint(1) NOT NULL DEFAULT '0',
  `verify4` tinyint(1) NOT NULL DEFAULT '0',
  `verify5` tinyint(1) NOT NULL DEFAULT '0',
  `verify6` tinyint(1) NOT NULL DEFAULT '0',
  `verify7` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `verify1` (`verify1`),
  KEY `verify2` (`verify2`),
  KEY `verify3` (`verify3`),
  KEY `verify4` (`verify4`),
  KEY `verify5` (`verify5`),
  KEY `verify6` (`verify6`),
  KEY `verify7` (`verify7`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_verify` */

/*Table structure for table `pre_common_member_verify_info` */

DROP TABLE IF EXISTS `pre_common_member_verify_info`;

CREATE TABLE `pre_common_member_verify_info` (
  `vid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `verifytype` tinyint(1) NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `field` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `verifytype` (`verifytype`,`flag`),
  KEY `uid` (`uid`,`verifytype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_member_verify_info` */

/*Table structure for table `pre_common_myapp` */

DROP TABLE IF EXISTS `pre_common_myapp`;

CREATE TABLE `pre_common_myapp` (
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appname` varchar(60) NOT NULL DEFAULT '',
  `narrow` tinyint(1) NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `version` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userpanelarea` tinyint(1) NOT NULL DEFAULT '0',
  `canvastitle` varchar(60) NOT NULL DEFAULT '',
  `fullscreen` tinyint(1) NOT NULL DEFAULT '0',
  `displayuserpanel` tinyint(1) NOT NULL DEFAULT '0',
  `displaymethod` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `appstatus` tinyint(2) NOT NULL DEFAULT '0',
  `iconstatus` tinyint(2) NOT NULL DEFAULT '0',
  `icondowntime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `flag` (`flag`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_myapp` */

/*Table structure for table `pre_common_myinvite` */

DROP TABLE IF EXISTS `pre_common_myinvite`;

CREATE TABLE `pre_common_myinvite` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL DEFAULT '',
  `appid` mediumint(8) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `myml` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `uid` (`touid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_myinvite` */

/*Table structure for table `pre_common_mytask` */

DROP TABLE IF EXISTS `pre_common_mytask`;

CREATE TABLE `pre_common_mytask` (
  `uid` mediumint(8) unsigned NOT NULL,
  `username` char(15) NOT NULL DEFAULT '',
  `taskid` smallint(6) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `csc` char(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`taskid`),
  KEY `parter` (`taskid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_mytask` */

/*Table structure for table `pre_common_nav` */

DROP TABLE IF EXISTS `pre_common_nav`;

CREATE TABLE `pre_common_nav` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `subtype` tinyint(1) NOT NULL DEFAULT '0',
  `subcols` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL,
  `subname` varchar(255) NOT NULL,
  `suburl` varchar(255) NOT NULL,
  `navtype` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_nav` */

insert  into `pre_common_nav`(`id`,`parentid`,`name`,`title`,`url`,`identifier`,`target`,`type`,`available`,`displayorder`,`highlight`,`level`,`subtype`,`subcols`,`icon`,`subname`,`suburl`,`navtype`,`logo`) values (1,0,'门户','Portal','portal.php','1',0,0,-1,1,0,0,0,0,'','','',0,''),(2,0,'论坛','BBS','forum.php','2',0,0,1,2,0,0,0,0,'','','',0,''),(3,0,'群组','Group','group.php','3',0,0,-1,7,0,0,0,0,'','','',0,''),(4,0,'动态','Space','home.php','4',0,0,-1,8,0,0,0,0,'','','',0,''),(5,0,'插件','Plugin','#','6',0,0,1,9,0,0,0,0,'','','',0,''),(6,0,'帮助','Help','misc.php?mod=faq','7',0,0,0,10,0,0,0,0,'','','',0,''),(7,0,'排行榜','Ranklist','misc.php?mod=ranklist','8',0,0,-1,16,0,0,0,0,'','','',0,''),(8,0,'广播','Follow','home.php?mod=follow','9',0,0,-1,5,0,0,0,0,'','','',0,''),(9,0,'导读','Guide','forum.php?mod=guide','10',0,0,-1,3,0,0,0,0,'','','',0,''),(10,0,'淘帖','Collection','forum.php?mod=collection','11',0,0,-1,11,0,0,0,0,'','','',0,''),(11,0,'日志','Blog','home.php?mod=space&do=blog','12',0,0,-1,12,0,0,0,0,'','','',0,''),(12,0,'相册','Album','home.php?mod=space&do=album','13',0,0,-1,13,0,0,0,0,'','','',0,''),(13,0,'分享','Share','home.php?mod=space&do=share','14',0,0,-1,14,0,0,0,0,'','','',0,''),(14,0,'记录','Doing','home.php?mod=space&do=doing','15',0,0,-1,15,0,0,0,0,'','','',0,''),(15,0,'站点统计','','misc.php?mod=stat','stat',0,0,1,1,0,0,0,0,'','','',1,''),(16,0,'举报','','#','report',0,0,1,2,0,0,0,0,'','','',1,''),(17,0,'Archiver','','archiver/','archiver',0,0,1,3,0,0,0,0,'','','',1,''),(18,0,'手机版','','http://3g.discuz.cc','mobile',0,0,1,3,0,0,0,0,'','','',1,''),(19,0,'小黑屋','','forum.php?mod=misc&action=showdarkroom','darkroom',0,0,1,3,0,0,0,0,'','','',1,''),(20,0,'日志','','home.php?mod=space&do=blog','blog',0,0,-1,2,0,0,0,0,'{STATICURL}image/feed/blog.gif','发布','home.php?mod=spacecp&ac=blog',2,''),(21,0,'相册','','home.php?mod=space&do=album','album',0,0,-1,3,0,0,0,0,'{STATICURL}image/feed/album.gif','上传','home.php?mod=spacecp&ac=upload',2,''),(22,0,'分享','','home.php?mod=space&do=share','share',0,0,-1,4,0,0,0,0,'{STATICURL}image/feed/share.gif','添加','home.php?mod=spacecp&ac=share',2,''),(23,0,'记录','','home.php?mod=space&do=doing','doing',0,0,-1,5,0,0,0,0,'{STATICURL}image/feed/doing.gif','','',2,''),(24,0,'广播','','home.php?mod=follow','follow',0,0,-1,6,0,0,0,0,'{STATICURL}image/feed/follow.gif','','',2,''),(25,0,'{hr}','','','',0,1,1,8,0,0,0,0,'','','',2,''),(26,0,'好友','','home.php?mod=space&do=friend','friend',0,0,0,1,0,0,0,0,'{STATICURL}image/feed/friend_b.png','','',3,''),(27,0,'帖子','','forum.php?mod=guide&view=my','thread',0,0,0,2,0,0,0,0,'{STATICURL}image/feed/thread_b.png','','',3,''),(28,0,'收藏','','home.php?mod=space&do=favorite&view=me','favorite',0,0,0,3,0,0,0,0,'{STATICURL}image/feed/favorite_b.png','','',3,''),(29,0,'道具','','home.php?mod=magic','magic',0,0,1,4,0,0,0,0,'{STATICURL}image/feed/magic_b.png','','',3,''),(30,0,'勋章','','home.php?mod=medal','medal',0,0,1,5,0,0,0,0,'{STATICURL}image/feed/medal_b.png','','',3,''),(31,0,'任务','','home.php?mod=task','task',0,0,1,6,0,0,0,0,'{STATICURL}image/feed/task_b.png','','',3,''),(32,0,'淘帖','','forum.php?mod=collection&op=my','collection',0,0,-1,7,0,0,0,0,'{STATICURL}image/feed/collection_b.png','','',3,''),(33,0,'动态','','home.php','feed',0,0,-1,8,0,0,0,0,'{STATICURL}image/feed/feed_b.png','','',3,''),(34,0,'日志','','home.php?mod=space&do=blog','blog',0,0,-1,9,0,0,0,0,'{STATICURL}image/feed/blog_b.png','','',3,''),(35,0,'相册','','home.php?mod=space&do=album','album',0,0,-1,10,0,0,0,0,'{STATICURL}image/feed/album_b.png','','',3,''),(36,0,'分享','','home.php?mod=space&do=share','share',0,0,-1,11,0,0,0,0,'{STATICURL}image/feed/share_b.png','','',3,''),(37,0,'记录','','home.php?mod=space&do=doing','doing',0,0,-1,12,0,0,0,0,'{STATICURL}image/feed/doing_b.png','','',3,''),(38,0,'留言板','','home.php?mod=space&do=wall','wall',0,0,-1,13,0,0,0,0,'{STATICURL}image/feed/wall_b.png','','',3,''),(39,0,'广播','','home.php?mod=follow','follow',0,0,-1,14,0,0,0,0,'{STATICURL}image/feed/follow_b.png','','',3,''),(40,0,'群组','','group.php','group',0,0,-1,15,0,0,0,0,'{STATICURL}image/feed/group_b.png','','',3,''),(41,0,'门户','','portal.php','portal',0,0,-1,16,0,0,0,0,'{STATICURL}image/feed/portal_b.png','','',3,''),(42,0,'导读','','forum.php?mod=guide','guide',0,0,-1,17,0,0,0,0,'{STATICURL}image/feed/guide_b.png','','',3,''),(43,0,'排行榜','','misc.php?mod=ranklist','ranklist',0,0,-1,18,0,0,0,0,'{STATICURL}image/feed/ranklist_b.png','','',3,''),(44,0,'设为首页','','#','sethomepage',0,0,1,1,0,0,0,0,'','','',4,''),(45,0,'收藏本站','','#','setfavorite',0,0,1,2,0,0,0,0,'','','',4,''),(57,0,'百日无违章','','plugin.php?id=violation','violation',0,3,1,0,0,0,0,0,'','','',0,'');

/*Table structure for table `pre_common_onlinetime` */

DROP TABLE IF EXISTS `pre_common_onlinetime`;

CREATE TABLE `pre_common_onlinetime` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thismonth` smallint(6) unsigned NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_onlinetime` */

insert  into `pre_common_onlinetime`(`uid`,`thismonth`,`total`,`lastupdate`) values (1,1130,2360,1608519736),(2,80,90,1608284983);

/*Table structure for table `pre_common_optimizer` */

DROP TABLE IF EXISTS `pre_common_optimizer`;

CREATE TABLE `pre_common_optimizer` (
  `k` char(100) NOT NULL DEFAULT '',
  `v` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_optimizer` */

/*Table structure for table `pre_common_patch` */

DROP TABLE IF EXISTS `pre_common_patch`;

CREATE TABLE `pre_common_patch` (
  `serial` varchar(10) NOT NULL DEFAULT '',
  `rule` text NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_patch` */

/*Table structure for table `pre_common_plugin` */

DROP TABLE IF EXISTS `pre_common_plugin`;

CREATE TABLE `pre_common_plugin` (
  `pluginid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `datatables` varchar(255) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `modules` text NOT NULL,
  `version` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pluginid`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_plugin` */

insert  into `pre_common_plugin`(`pluginid`,`available`,`adminid`,`name`,`identifier`,`description`,`datatables`,`directory`,`copyright`,`modules`,`version`) values (1,1,1,'掌上论坛','mobile','','','mobile/','Comsenz Inc.','a:4:{i:0;a:10:{s:4:\"name\";s:6:\"mobile\";s:4:\"menu\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:2:\"28\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:1;a:10:{s:4:\"name\";s:6:\"mobile\";s:4:\"menu\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:2:\"11\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}s:6:\"system\";i:2;s:5:\"extra\";a:2:{s:11:\"installtype\";s:0:\"\";s:10:\"langexists\";i:1;}}','1.4.8'),(2,1,1,'百日无违章','violation','','','violation/','','a:10:{i:0;a:11:{s:4:\"name\";s:9:\"violation\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:10:\"百日无违章\";s:3:\"url\";s:23:\"plugin.php?id=violation\";s:4:\"type\";s:1:\"1\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:1;a:11:{s:4:\"name\";s:7:\"setting\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"常用设置\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:2;a:11:{s:4:\"name\";s:6:\"region\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"地区管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:3;a:11:{s:4:\"name\";s:8:\"position\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"分类管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:4;a:11:{s:4:\"name\";s:6:\"mobile\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:2:\"28\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:5;a:11:{s:4:\"name\";s:4:\"data\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"数据管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:6;a:11:{s:4:\"name\";s:11:\"addBusiness\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"添加商家\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:7;a:11:{s:4:\"name\";s:3:\"com\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"组件管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:8;a:11:{s:4:\"name\";s:5:\"attes\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"认证管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}s:5:\"extra\";a:1:{s:10:\"langexists\";s:1:\"1\";}}','1.0'),(3,1,1,'【飞鸟】红包分享','fn_hb_share','','','fn_hb_share/','飞鸟工作室','a:8:{i:0;a:11:{s:4:\"name\";s:7:\"AdminHB\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"添加活动\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:1;a:11:{s:4:\"name\";s:11:\"AdminHBList\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"活动管理\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"1\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:2;a:11:{s:4:\"name\";s:16:\"AdminHBShareList\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"红包记录\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"2\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:3;a:11:{s:4:\"name\";s:15:\"AdminHBShareLog\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"分享记录\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:1:\"3\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:4;a:11:{s:4:\"name\";s:9:\"AdminLang\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:6:\"语言包\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:2:\"88\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:5;a:11:{s:4:\"name\";s:9:\"AdminLink\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"入口链接\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:2:\"89\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:6;a:11:{s:4:\"name\";s:9:\"AdminMore\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:40:\"<span style=\"color:red;\">更多链接</span>\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";s:3:\"100\";s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}s:5:\"extra\";a:3:{s:11:\"installtype\";s:6:\"SC_GBK\";s:10:\"langexists\";s:1:\"0\";s:13:\"uninstallfile\";s:13:\"uninstall.php\";}}','1.7.5'),(4,1,1,'千帆PC手机注册绑定','qfmobile','与千帆APP数据互通，不兼容其他手机插件，请酌情选择使用。(注：请保证千帆插件的版本至少1.2以上)','','qfmobile/','qfmobile','a:4:{i:0;a:11:{s:4:\"name\";s:14:\"mobileqfmobile\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:2:\"28\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:1;a:11:{s:4:\"name\";s:8:\"qfmobile\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:2:\"11\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:2;a:11:{s:4:\"name\";s:7:\"admincp\";s:5:\"param\";s:0:\"\";s:4:\"menu\";s:8:\"参数配置\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}s:5:\"extra\";a:2:{s:11:\"installtype\";s:3:\"gbk\";s:10:\"langexists\";i:1;}}','1.3');

/*Table structure for table `pre_common_pluginvar` */

DROP TABLE IF EXISTS `pre_common_pluginvar`;

CREATE TABLE `pre_common_pluginvar` (
  `pluginvarid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `variable` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`pluginvarid`),
  KEY `pluginid` (`pluginid`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_pluginvar` */

insert  into `pre_common_pluginvar`(`pluginvarid`,`pluginid`,`displayorder`,`title`,`description`,`variable`,`type`,`value`,`extra`) values (1,2,0,'变速箱','','gearbox','textarea','1=自动\r\n2=手动\r\n3=手自一体',''),(2,3,10,'腾讯地图Key','用于查询地区限制，申请地址：http://lbs.qq.com/key.html','MapKey','text','RVZBZ-DNLA4-ZVKUV-X22LS-GJBP2-3TFTQ',''),(3,3,30,'个人中心跳转开关','选择是则提示下载App查看，选择否则进入网页版个人中心','UserSwitch','radio','1',''),(4,3,31,'个人中心App下载提示语','','UserAppPrompt','text','查看个人中心，请下载App查看，点击确定下载',''),(5,3,60,'App下载链接','','AppLink','text','http://dev.fnmoto.com',''),(6,3,61,'App类型','千帆和马甲一定要选择此选项','AppType','select','2','0=请选择\r\n1=马甲App\r\n2=千帆App\r\n3=小云App'),(7,3,62,'App名称','','AppName','text','',''),(8,3,63,'马甲客户端域名','不用带http://','MagDomain','text','',''),(9,3,64,'马甲Secret','马甲后台》配置》开发者配置》添加密钥~~~所需权限：钱包、用户授权','MagSecret','text','',''),(10,3,65,'千帆{hostname}名称','只填写你的hostname即可','qf_hostname','text','xiangxi',''),(11,3,66,'千帆密匙','','qf_secret','text','59bdee8ef0993f36227e272c53dcd738',''),(12,3,67,'千帆收入订单类型ID ...','第一步：请前往小后台>>金币与支付-支付管理-设置-支付设置\r\n第二步：请前往小后台>>金币与支付>>支付管理>>支付JS类型 获取你想要的支付类型','qf_sr_type','number','0',''),(13,3,68,'千帆Moblink密钥','mob的appkey，可以咨询千帆小编','MoblinkKey','text','',''),(14,3,69,'非App查看钱包提示语','','NoAppWalletPrompt','text','查看钱包请到App上查看哦，点击确定下载App',''),(15,3,80,'微信AppId','','WxAppid','text','',''),(16,3,81,'微信Secret','','WxSecret','text','',''),(17,3,90,'分享域名','一行一个，随机抽取，空则使用当前域名，例子：\r\nhttp://www.baidu.com\r\nhttp://www.qq.com\r\nhttp://www.dev.fnmoto.com','ShareDomain','textarea','',''),(18,3,108,'电脑版二维码','是否开启电脑版只展现二维码','PcQrSwitch','radio','0',''),(19,3,109,'电脑版二维码文字','','PcQrText','text','扫一扫，领取大红包',''),(20,3,110,'头像文件夹名','个别站长情况特殊--大家默认即可','FaceName','text','uc_server',''),(21,3,111,'倒计时时间差','由于个别站长在国外，时间差不一样，国内用户默认即可','DownTimeNum','text','+8',''),(22,4,3,'是否开启注册手机短信验证','开启后前台会员注册页面必须通过短信验证手机号才能完成注册','mobilereg','radio','1',''),(23,4,6,'是否开启绑定手机号','开启后，用户可在个人中心绑定手机号','mobilebind','radio','1',''),(24,4,8,'发帖回帖开启强制绑定手机','开启后，用户发帖和回复必须绑定手机号，与板块和用户组配合设置。','mobilelimit','radio','1',''),(25,4,9,'开启强制绑定手机版块','需要强制绑定手机才能发帖和回复的版块，选择空则所有版块都需要，必须先开启强制绑定手机。','mobilelimitfids','forums','a:1:{i:0;s:0:\"\";}',''),(26,4,10,'不限制强制绑定手机用户组','不需要强制绑定手机才能发帖和回复的用户组，选择空则指定所有用户都需要强制绑定手机。','mobilelimituids','groups','a:1:{i:0;s:0:\"\";}',''),(27,4,13,'是否开启手机注册图片验证','开启后前台会员注册页面通过手机号短信绑定需要输入图片验证码防止恶意攻击刷短信。','mobileimgcode','radio','1',''),(28,4,14,'注册页面手机注册提示内容','设置前台注册页，手机注册的提示信息','mobileregtip','textarea','手机注册出现问题？您可以向网站客服求助或者在意见区发帖反馈。',''),(29,2,0,'列表页分页数量','','page','number','20',''),(30,2,0,'上传图片大小限制','单位是k','img_size','number','10240',''),(31,2,0,'允许发布用户组','','lj_groups','groups','a:2:{i:0;s:2:\"10\";i:1;s:1:\"1\";}',''),(32,2,0,'是否审核数据','','isreview','radio','1',''),(33,2,0,'免审核用户组','','mian_groups','groups','',''),(34,2,0,'信息同步到版块','','es_fid','forum','2',''),(35,2,0,'同步到版块主题分类ID下','','threadtypes','number','0',''),(36,2,0,'置顶需要消耗的积分数量:','','toppay','number','1',''),(37,2,0,'置顶积分类型','','topextcredit','extcredit','2',''),(38,2,0,'刷新积分类型','','reflashextcredit','extcredit','2',''),(39,2,0,'刷新需要消耗的积分数量','','reflashpay','number','1',''),(40,2,0,'发布信息消耗积分类型','','releaseextcredit','extcredit','2',''),(41,2,0,'发布信息消耗积分数量','','releasepay','number','1',''),(42,2,0,'认证消耗积分类型','','r_ext','extcredit','2',''),(43,2,0,'认证消耗积分数','格式：个人|商家','r_pay','number','1',''),(44,2,0,'同步论坛内容模板:','双击输入框可扩大/缩小','tongbu_moban','textarea','[size=4][url={url}]{title}[/url] [url={url}][color=red](点击查看详情)[/color][/url]<br/>\r\n价格:{zujin}万元<br/>\r\n品牌:{pos}<br/>\r\n变速箱:{gearbox}<br/>\r\n行驶里程:{mileage}万公里<br/>\r\n联系电话:{tel}<br/>\r\nQQ：{qq}<br/>\r\n联系人：{lxr}<br/>\r\n交易地点：{region}<br/>\r\n[color=red]声明：[/color]{shengming}<br/><br/>\r\n{content}[/size]','');

/*Table structure for table `pre_common_process` */

DROP TABLE IF EXISTS `pre_common_process`;

CREATE TABLE `pre_common_process` (
  `processid` char(32) NOT NULL,
  `expiry` int(10) DEFAULT NULL,
  `extra` int(10) DEFAULT NULL,
  PRIMARY KEY (`processid`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_process` */

/*Table structure for table `pre_common_regip` */

DROP TABLE IF EXISTS `pre_common_regip`;

CREATE TABLE `pre_common_regip` (
  `ip` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(6) NOT NULL DEFAULT '0',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_regip` */

/*Table structure for table `pre_common_relatedlink` */

DROP TABLE IF EXISTS `pre_common_relatedlink`;

CREATE TABLE `pre_common_relatedlink` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `extent` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_relatedlink` */

/*Table structure for table `pre_common_remote_port` */

DROP TABLE IF EXISTS `pre_common_remote_port`;

CREATE TABLE `pre_common_remote_port` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` char(15) NOT NULL DEFAULT '',
  `useip` char(15) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`idtype`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_remote_port` */

/*Table structure for table `pre_common_report` */

DROP TABLE IF EXISTS `pre_common_report`;

CREATE TABLE `pre_common_report` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `urlkey` char(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '1',
  `opuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opname` varchar(15) NOT NULL DEFAULT '',
  `optime` int(10) unsigned NOT NULL DEFAULT '0',
  `opresult` varchar(255) NOT NULL DEFAULT '',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `urlkey` (`urlkey`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_report` */

/*Table structure for table `pre_common_searchindex` */

DROP TABLE IF EXISTS `pre_common_searchindex`;

CREATE TABLE `pre_common_searchindex` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `srchmod` tinyint(3) unsigned NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `searchstring` text NOT NULL,
  `useip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `threadsortid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ids` text NOT NULL,
  PRIMARY KEY (`searchid`),
  KEY `srchmod` (`srchmod`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_searchindex` */

/*Table structure for table `pre_common_seccheck` */

DROP TABLE IF EXISTS `pre_common_seccheck`;

CREATE TABLE `pre_common_seccheck` (
  `ssid` int(10) NOT NULL AUTO_INCREMENT,
  `dateline` int(10) NOT NULL,
  `code` char(6) NOT NULL,
  `succeed` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`ssid`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`),
  KEY `verified` (`verified`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_seccheck` */

/*Table structure for table `pre_common_secquestion` */

DROP TABLE IF EXISTS `pre_common_secquestion`;

CREATE TABLE `pre_common_secquestion` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_secquestion` */

/*Table structure for table `pre_common_session` */

DROP TABLE IF EXISTS `pre_common_session`;

CREATE TABLE `pre_common_session` (
  `sid` char(6) NOT NULL DEFAULT '',
  `ip1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastolupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_session` */

insert  into `pre_common_session`(`sid`,`ip1`,`ip2`,`ip3`,`ip4`,`uid`,`username`,`groupid`,`invisible`,`action`,`lastactivity`,`lastolupdate`,`fid`,`tid`) values ('MCywWX',127,0,0,1,1,'admin',1,0,0,1608519736,1608519736,0,0);

/*Table structure for table `pre_common_setting` */

DROP TABLE IF EXISTS `pre_common_setting`;

CREATE TABLE `pre_common_setting` (
  `skey` varchar(255) NOT NULL DEFAULT '',
  `svalue` text NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_setting` */

insert  into `pre_common_setting`(`skey`,`svalue`) values ('accessemail',''),('activityforumid','0'),('activityfield','a:3:{s:8:\"realname\";s:8:\"真实姓名\";s:6:\"mobile\";s:4:\"手机\";s:2:\"qq\";s:4:\"QQ号\";}'),('activityextnum','0'),('activitypp','8'),('activitycredit','1'),('activitytype','朋友聚会\r\n出外郊游\r\n自驾出行\r\n公益活动\r\n线上活动'),('adminemail','admin@admin.com'),('adminipaccess',''),('adminnotifytypes','verifythread,verifypost,verifyuser,verifyblog,verifydoing,verifypic,verifyshare,verifycommontes,verifyrecycle,verifyrecyclepost,verifyarticle,verifyacommont,verifymedal,verify_1,verify_2,verify_3,verify_4,verify_5,verify_6,verify_7'),('anonymoustext','匿名'),('advtype','a:0:{}'),('allowattachurl','0'),('allowdomain','0'),('alloweditpost','0'),('allowswitcheditor','1'),('allowthreadplugin',''),('allowviewuserthread','a:2:{s:5:\"allow\";s:1:\"1\";s:4:\"fids\";a:1:{i:0;s:0:\"\";}}'),('archiver','1'),('archiverredirect','0'),('attachbanperiods',''),('attachdir','./data/attachment'),('attachexpire',''),('attachimgpost','1'),('attachrefcheck','0'),('attachsave','3'),('attachurl','data/attachment'),('authkey','e96dee19a074eb529ab31cdfdabbc7a2TDHncVr2ebH2s8UoQo'),('authoronleft','1'),('uidlogin','0'),('autoidselect','0'),('avatarmethod','0'),('backupdir','4173ab'),('bannedmessages','1'),('bbclosed',''),('bbname','Discuz! Board'),('bbrules','0'),('bbrulesforce','0'),('bbrulestxt',''),('bdaystatus','0'),('binddomains','a:0:{}'),('boardlicensed','0'),('cacheindexlife','0'),('cachethreaddir','data/threadcache'),('cachethreadlife','0'),('censoremail',''),('censoruser',''),('closedallowactivation','0'),('closedreason',''),('commentfirstpost','1'),('commentitem','					'),('commentnumber','5'),('creditnotice','1'),('creditsformula','posts+digestposts*5+extcredits1*2+extcredits2+extcredits3'),('creditsformulaexp','<u>总积分</u>=<u>发帖数</u>+<u>精华帖数</u>*5+<u>威望</u>*2+<u>金钱</u>+<u>贡献</u>'),('creditsnotify',''),('creditspolicy','a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:6:\"sendpm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:0:{}s:18:\"promotion_register\";a:0:{}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}'),('creditstax','0.2'),('creditstrans','2,0,0,0,0,0,0'),('customauthorinfo','a:1:{i:0;N;}'),('custombackup',''),('dateconvert','1'),('dateformat','Y-n-j'),('debateforumid','0'),('debug','1'),('defaulteditormode','1'),('delayviewcount','0'),('deletereason',''),('disallowfloat','a:1:{i:2;s:9:\"newthread\";}'),('domainroot',''),('domainwhitelist',''),('doublee','1'),('dupkarmarate','0'),('ec_account',''),('ec_contract',''),('ec_credit','a:2:{s:18:\"maxcreditspermonth\";i:6;s:4:\"rank\";a:15:{i:1;i:4;i:2;i:11;i:3;i:41;i:4;i:91;i:5;i:151;i:6;i:251;i:7;i:501;i:8;i:1001;i:9;i:2001;i:10;i:5001;i:11;i:10001;i:12;i:20001;i:13;i:50001;i:14;i:100001;i:15;i:200001;}}'),('ec_maxcredits','1000'),('ec_maxcreditspermonth','0'),('ec_mincredits','0'),('ec_ratio','0'),('ec_tenpay_bargainor',''),('ec_tenpay_key',''),('postappend','0'),('editedby','1'),('editoroptions','6'),('edittimelimit',''),('exchangemincredits','100'),('extcredits','a:8:{i:1;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}'),('fastpost','1'),('forumallowside','0'),('fastsmilies','1'),('feedday','7'),('feedhotday','2'),('feedhotmin','3'),('feedhotnum','3'),('feedmaxnum','100'),('showallfriendnum','8'),('feedtargetblank','1'),('floodctrl','15'),('forumdomains','a:0:{}'),('forumjump','0'),('forumlinkstatus','1'),('forumseparator','1'),('frameon','0'),('framewidth','180'),('friendgroupnum','8'),('ftp','a:10:{s:2:\"on\";s:1:\"0\";s:3:\"ssl\";s:1:\"0\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"attachdir\";s:1:\".\";s:9:\"attachurl\";s:0:\"\";s:7:\"hideurl\";s:1:\"0\";s:7:\"timeout\";s:1:\"0\";}'),('globalstick','1'),('targetblank','0'),('google','1'),('groupstatus','0'),('portalstatus','0'),('followstatus','0'),('collectionstatus','0'),('guidestatus','0'),('feedstatus','0'),('blogstatus','0'),('doingstatus','0'),('albumstatus','0'),('sharestatus','0'),('wallstatus','0'),('rankliststatus','0'),('homestyle','0'),('homepagestyle','0'),('group_allowfeed','1'),('group_admingroupids','a:1:{i:1;s:1:\"1\";}'),('group_imgsizelimit','512'),('group_userperm','a:21:{s:16:\"allowstickthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:17:\"alloweditactivity\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:13:\"allowupbanner\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";}'),('heatthread','a:5:{s:4:\"type\";s:1:\"2\";s:5:\"reply\";i:5;s:9:\"recommend\";i:3;s:6:\"period\";s:2:\"15\";s:10:\"iconlevels\";s:10:\"50,100,200\";}'),('guide','a:2:{s:5:\"hotdt\";i:604800;s:8:\"digestdt\";i:604800;}'),('hideprivate','1'),('historyposts','0	7'),('hottopic','10'),('icp',''),('imageimpath',''),('imagelib','0'),('imagemaxwidth','600'),('watermarkminheight','a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}'),('watermarkminwidth','a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}'),('watermarkquality','a:3:{s:6:\"portal\";s:2:\"90\";s:5:\"forum\";i:90;s:5:\"album\";i:90;}'),('watermarkstatus','a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}'),('watermarktext','a:12:{s:4:\"text\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:8:\"fontpath\";a:3:{s:6:\"portal\";s:21:\"FetteSteinschrift.ttf\";s:5:\"forum\";s:21:\"FetteSteinschrift.ttf\";s:5:\"album\";s:21:\"FetteSteinschrift.ttf\";}s:4:\"size\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"angle\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"color\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:7:\"shadowx\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:7:\"shadowy\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:11:\"shadowcolor\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:10:\"translatex\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:10:\"translatey\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"skewx\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"skewy\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}}'),('watermarktrans','a:3:{s:6:\"portal\";s:2:\"50\";s:5:\"forum\";i:50;s:5:\"album\";i:50;}'),('watermarktype','a:3:{s:6:\"portal\";s:3:\"png\";s:5:\"forum\";s:3:\"png\";s:5:\"album\";s:3:\"png\";}'),('indexhot','a:7:{s:6:\"status\";s:1:\"0\";s:5:\"limit\";s:2:\"10\";s:4:\"days\";s:1:\"7\";s:10:\"expiration\";s:3:\"900\";s:10:\"messagecut\";s:3:\"200\";s:5:\"width\";i:100;s:6:\"height\";i:70;}'),('indextype','classics'),('infosidestatus','0'),('initcredits','0,0,0,0,0,0,0,0,0'),('inviteconfig',''),('ipaccess',''),('ipregctrl',''),('ipverifywhite',''),('jscachelife','1800'),('jsdateformat',''),('jspath','static/js/'),('jsrefdomains',''),('jsstatus','0'),('jswizard',''),('karmaratelimit','0'),('losslessdel','365'),('magicdiscount','85'),('magicmarket','1'),('magicstatus','1'),('mail','a:10:{s:8:\"mailsend\";s:1:\"1\";s:6:\"server\";s:13:\"smtp.21cn.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"1\";s:4:\"from\";s:26:\"Discuz <username@21cn.com>\";s:13:\"auth_username\";s:17:\"username@21cn.com\";s:13:\"auth_password\";s:8:\"password\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";s:15:\"sendmail_silent\";s:1:\"1\";}'),('maxavatarpixel','120'),('maxavatarsize','20000'),('maxbdays','0'),('maxchargespan','0'),('maxfavorites','100'),('maxincperthread','0'),('maxmagicprice','50'),('maxmodworksmonths','3'),('maxonlinelist','0'),('maxonlines','5000'),('maxpage','100'),('maxpolloptions','20'),('maxpostsize','10000'),('maxsigrows','100'),('maxsmilies','10'),('membermaxpages','100'),('memberperpage','25'),('memliststatus','1'),('memory','a:16:{s:13:\"common_member\";i:0;s:19:\"common_member_count\";i:0;s:20:\"common_member_status\";i:0;s:21:\"common_member_profile\";i:0;s:24:\"common_member_field_home\";i:0;s:25:\"common_member_field_forum\";i:0;s:20:\"common_member_verify\";i:0;s:12:\"forum_thread\";i:172800;s:25:\"forum_thread_forumdisplay\";i:300;s:23:\"forum_collectionrelated\";i:0;s:15:\"forum_postcache\";i:300;s:16:\"forum_collection\";i:300;s:11:\"home_follow\";i:86400;s:10:\"forumindex\";i:30;s:8:\"diyblock\";i:300;s:14:\"diyblockoutput\";i:30;}'),('minpostsize','10'),('minpostsize_mobile','0'),('mobile','a:15:{s:11:\"allowmobile\";i:1;s:9:\"allowmnew\";i:1;s:13:\"mobileforward\";i:1;s:14:\"mobileregister\";i:1;s:13:\"mobileseccode\";i:0;s:15:\"mobilehotthread\";i:1;s:19:\"mobiledisplayorder3\";i:1;s:16:\"mobilesimpletype\";i:1;s:18:\"mobiletopicperpage\";i:10;s:17:\"mobilepostperpage\";i:5;s:15:\"mobilecachetime\";i:0;s:15:\"mobileforumview\";i:0;s:14:\"mobilecomefrom\";s:0:\"\";s:13:\"mobilepreview\";i:0;s:3:\"wml\";i:0;}'),('moddisplay','flat'),('modratelimit','0'),('modreasons','广告/SPAM\r\n恶意灌水\r\n违规内容\r\n文不对题\r\n重复发帖\r\n\r\n我很赞同\r\n精品文章\r\n原创内容'),('userreasons','很给力!\r\n神马都是浮云\r\n赞一个!\r\n山寨\r\n淡定'),('modworkstatus','1'),('msgforward','a:3:{s:11:\"refreshtime\";i:2;s:5:\"quick\";i:1;s:8:\"messages\";a:14:{i:0;s:19:\"thread_poll_succeed\";i:1;s:19:\"thread_rate_succeed\";i:2;s:23:\"usergroups_join_succeed\";i:3;s:23:\"usergroups_exit_succeed\";i:4;s:25:\"usergroups_update_succeed\";i:5;s:20:\"buddy_update_succeed\";i:6;s:17:\"post_edit_succeed\";i:7;s:18:\"post_reply_succeed\";i:8;s:24:\"post_edit_delete_succeed\";i:9;s:22:\"post_newthread_succeed\";i:10;s:13:\"admin_succeed\";i:11;s:17:\"pm_delete_succeed\";i:12;s:15:\"search_redirect\";i:13;s:10:\"do_success\";}}'),('msn',''),('networkpage','0'),('newbiespan','2'),('newbietasks',''),('newbietaskupdate',''),('newsletter',''),('newspaceavatar','0'),('nocacheheaders','0'),('oltimespan','10'),('onlinehold','15'),('onlinerecord','3	1607063253'),('pollforumid','0'),('postbanperiods',''),('postmodperiods',''),('postno','#'),('postnocustom','a:4:{i:0;s:5:\"楼主\r\";i:1;s:5:\"沙发\r\";i:2;s:5:\"板凳\r\";i:3;s:4:\"地板\";}'),('postperpage','10'),('privacy','a:2:{s:4:\"view\";a:8:{s:5:\"index\";i:0;s:6:\"friend\";i:0;s:4:\"wall\";i:0;s:4:\"home\";i:0;s:5:\"doing\";i:0;s:4:\"blog\";i:0;s:5:\"album\";i:0;s:5:\"share\";i:0;}s:4:\"feed\";a:5:{s:5:\"doing\";i:1;s:4:\"blog\";i:1;s:6:\"upload\";i:1;s:4:\"poll\";i:1;s:9:\"newthread\";i:1;}}'),('pvfrequence','60'),('pwdsafety','0'),('pwlength','6'),('qihoo','a:9:{s:6:\"status\";i:0;s:9:\"searchbox\";i:6;s:7:\"summary\";i:1;s:6:\"jammer\";i:1;s:9:\"maxtopics\";i:10;s:8:\"keywords\";s:0:\"\";s:10:\"adminemail\";s:0:\"\";s:8:\"validity\";i:1;s:14:\"relatedthreads\";a:6:{s:6:\"bbsnum\";i:0;s:6:\"webnum\";i:0;s:4:\"type\";a:3:{s:4:\"blog\";s:4:\"blog\";s:4:\"news\";s:4:\"news\";s:3:\"bbs\";s:3:\"bbs\";}s:6:\"banurl\";s:0:\"\";s:8:\"position\";i:1;s:8:\"validity\";i:1;}}'),('ratelogon','1'),('ratelogrecord','20'),('relatenum','10'),('relatetime','60'),('realname','0'),('recommendthread','a:7:{s:6:\"status\";s:1:\"0\";s:7:\"addtext\";s:4:\"支持\";s:12:\"subtracttext\";s:4:\"反对\";s:11:\"defaultshow\";s:1:\"1\";s:8:\"daycount\";s:1:\"0\";s:9:\"ownthread\";s:1:\"0\";s:10:\"iconlevels\";s:10:\"50,100,200\";}'),('regclosemessage',''),('regctrl','0'),('strongpw','0'),('regfloodctrl','0'),('regname','register'),('reglinkname','立即注册'),('regstatus','1'),('regverify','0'),('relatedtag',''),('report_reward','a:2:{s:3:\"min\";i:-3;s:3:\"max\";i:3;}'),('rewardforumid','0'),('rewritecompatible',''),('rewritestatus','0'),('rssstatus','1'),('rssttl','60'),('runwizard','1'),('search','a:6:{s:6:\"portal\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"forum\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:4:\"blog\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"album\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"group\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:10:\"collection\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}}'),('sphinxon',''),('sphinxhost',''),('sphinxport',''),('sphinxsubindex','threads,threads_minute'),('sphinxmsgindex','posts,posts_minute'),('sphinxmaxquerytime',''),('sphinxlimit',''),('sphinxrank',''),('searchbanperiods',''),('seccodedata','a:15:{s:4:\"rule\";a:5:{s:8:\"register\";a:3:{s:5:\"allow\";s:1:\"1\";s:8:\"numlimit\";s:0:\"\";s:9:\"timelimit\";s:2:\"60\";}s:5:\"login\";a:7:{s:5:\"allow\";s:1:\"0\";s:7:\"nolocal\";s:1:\"0\";s:8:\"pwsimple\";s:1:\"0\";s:7:\"pwerror\";s:1:\"0\";s:8:\"outofday\";s:0:\"\";s:8:\"numiptry\";s:0:\"\";s:9:\"timeiptry\";s:2:\"60\";}s:4:\"post\";a:5:{s:5:\"allow\";s:1:\"0\";s:8:\"numlimit\";s:0:\"\";s:9:\"timelimit\";s:2:\"60\";s:7:\"nplimit\";s:0:\"\";s:7:\"vplimit\";s:0:\"\";}s:8:\"password\";a:1:{s:5:\"allow\";s:1:\"1\";}s:4:\"card\";a:1:{s:5:\"allow\";s:1:\"1\";}}s:8:\"minposts\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:5:\"width\";i:100;s:6:\"height\";i:30;s:7:\"scatter\";s:0:\"\";s:10:\"background\";s:1:\"0\";s:10:\"adulterate\";s:1:\"0\";s:3:\"ttf\";s:1:\"0\";s:5:\"angle\";s:1:\"0\";s:7:\"warping\";s:1:\"0\";s:5:\"color\";s:1:\"0\";s:4:\"size\";s:1:\"0\";s:6:\"shadow\";s:1:\"0\";s:8:\"animator\";s:1:\"0\";}'),('seccodestatus','1'),('seclevel','1'),('secqaa','a:2:{s:8:\"minposts\";s:1:\"1\";s:6:\"status\";i:0;}'),('sendmailday','0'),('seodescription',''),('seohead',''),('seokeywords',''),('seotitle','a:5:{s:6:\"portal\";s:4:\"门户\";s:5:\"forum\";s:4:\"论坛\";s:5:\"group\";s:4:\"群组\";s:4:\"home\";s:4:\"家园\";s:7:\"userapp\";s:4:\"应用\";}'),('showavatars','1'),('showemail',''),('showimages','1'),('shownewuser','0'),('showsettings','7'),('showsignatures','1'),('sigviewcond','0'),('sitemessage','a:5:{s:4:\"time\";s:1:\"3\";s:8:\"register\";s:0:\"\";s:5:\"login\";s:0:\"\";s:9:\"newthread\";s:0:\"\";s:5:\"reply\";s:0:\"\";}'),('sitename','Comsenz Inc.'),('siteuniqueid','DXULRQtDbe15Gmzr'),('siteurl','http://www.comsenz.com/'),('smcols','8'),('smrows','5'),('smthumb','20'),('spacedata','a:11:{s:9:\"cachelife\";s:3:\"900\";s:14:\"limitmythreads\";s:1:\"5\";s:14:\"limitmyreplies\";s:1:\"5\";s:14:\"limitmyrewards\";s:1:\"5\";s:13:\"limitmytrades\";s:1:\"5\";s:13:\"limitmyvideos\";s:1:\"0\";s:12:\"limitmyblogs\";s:1:\"8\";s:14:\"limitmyfriends\";s:1:\"0\";s:16:\"limitmyfavforums\";s:1:\"5\";s:17:\"limitmyfavthreads\";s:1:\"0\";s:10:\"textlength\";s:3:\"300\";}'),('spacestatus','1'),('srchhotkeywords','活动\r\n交友\r\ndiscuz'),('starthreshold','2'),('statcode',''),('statscachelife','180'),('statstatus',''),('styleid','1'),('styleid1','1'),('styleid2','1'),('styleid3','1'),('stylejump','1'),('subforumsindex','0'),('tagstatus','1'),('taskon','0'),('tasktypes','a:3:{s:9:\"promotion\";a:2:{s:4:\"name\";s:12:\"网站推广任务\";s:7:\"version\";s:3:\"1.0\";}s:4:\"gift\";a:2:{s:4:\"name\";s:10:\"红包类任务\";s:7:\"version\";s:3:\"1.0\";}s:6:\"avatar\";a:2:{s:4:\"name\";s:10:\"头像类任务\";s:7:\"version\";s:3:\"1.0\";}}'),('threadmaxpages','1000'),('threadsticky','全局置顶,分类置顶,本版置顶'),('thumbwidth','400'),('thumbheight','300'),('sourcewidth',''),('sourceheight',''),('thumbquality','100'),('thumbstatus',''),('timeformat','H:i'),('timeoffset','8'),('topcachetime','60'),('topicperpage','20'),('tradeforumid','0'),('transfermincredits','1000'),('uc','a:1:{s:7:\"addfeed\";i:1;}'),('ucactivation','1'),('updatestat','1'),('userdateformat','Y-n-j\r\nY/n/j\r\nj-n-Y\r\nj/n/Y'),('userstatusby','1'),('videophoto','0'),('video_allowalbum','0'),('video_allowblog','0'),('video_allowcomment','0'),('video_allowdoing','1'),('video_allowfriend','1'),('video_allowpoke','1'),('video_allowshare','0'),('video_allowuserapp','0'),('video_allowviewspace','1'),('video_allowwall','1'),('viewthreadtags','100'),('visitbanperiods',''),('visitedforums','10'),('vtonlinestatus','1'),('wapcharset','0'),('wapdateformat','n/j'),('wapmps','500'),('wapppp','5'),('wapregister','0'),('wapstatus','0'),('waptpp','10'),('warningexpiration','30'),('warninglimit','3'),('welcomemsg','1'),('welcomemsgtitle','{username}，您好，感谢您的注册，请阅读以下内容。'),('welcomemsgtxt','尊敬的{username}，您已经注册成为{sitename}的会员，请您在发表言论时，遵守当地法律法规。\r\n如果您有什么疑问可以联系管理员，Email: {adminemail}。\r\n\r\n\r\n{bbname}\r\n{time}'),('whosonlinestatus','3'),('whosonline_contract','0'),('zoomstatus','1	600'),('my_app_status','0'),('my_siteid',''),('my_sitekey',''),('my_closecheckupdate',''),('my_ip',''),('my_search_data',''),('rewardexpiration','30'),('stamplistlevel','3'),('visitedthreads','0'),('navsubhover','0'),('showusercard','1'),('allowspacedomain','0'),('allowgroupdomain','0'),('holddomain','www|*blog*|*space*|*bbs*'),('domain','a:5:{s:12:\"defaultindex\";s:9:\"forum.php\";s:10:\"holddomain\";s:24:\"www|*blog*|*space*|*bbs*\";s:4:\"list\";a:0:{}s:3:\"app\";a:6:{s:5:\"forum\";s:13:\"bbs.discuz.cc\";s:6:\"mobile\";s:12:\"3g.discuz.cc\";s:7:\"default\";s:9:\"discuz.cc\";s:6:\"portal\";s:0:\"\";s:5:\"group\";s:0:\"\";s:4:\"home\";s:0:\"\";}s:4:\"root\";a:5:{s:4:\"home\";s:0:\"\";s:5:\"group\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"topic\";s:0:\"\";s:7:\"channel\";s:0:\"\";}}'),('ranklist','a:11:{s:6:\"status\";s:1:\"1\";s:10:\"cache_time\";s:1:\"1\";s:12:\"index_select\";s:8:\"thisweek\";s:6:\"member\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:6:\"thread\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:4:\"blog\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:4:\"poll\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:8:\"activity\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:7:\"picture\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:5:\"forum\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:5:\"group\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}}'),('fastsmiley','a:1:{i:1;a:16:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:8;s:1:\"5\";i:9;s:1:\"6\";i:10;s:1:\"7\";i:11;s:1:\"8\";i:12;s:1:\"9\";i:13;s:2:\"10\";i:14;s:2:\"11\";i:15;s:2:\"12\";i:16;s:2:\"13\";i:17;s:2:\"14\";i:18;s:2:\"15\";i:19;s:2:\"16\";}}'),('outlandverify','0'),('allowquickviewprofile','1'),('allowmoderatingthread','1'),('editperdel','1'),('defaultindex','forum.php'),('ipregctrltime','72'),('verify','a:8:{i:6;a:6:{s:5:\"title\";s:8:\"实名认证\";s:9:\"available\";s:1:\"0\";s:8:\"showicon\";s:1:\"0\";s:12:\"viewrealname\";s:1:\"0\";s:5:\"field\";a:1:{s:8:\"realname\";s:8:\"realname\";}s:4:\"icon\";b:0;}s:7:\"enabled\";b:0;i:1;a:1:{s:4:\"icon\";s:0:\"\";}i:2;a:1:{s:4:\"icon\";s:0:\"\";}i:3;a:1:{s:4:\"icon\";s:0:\"\";}i:4;a:1:{s:4:\"icon\";s:0:\"\";}i:5;a:1:{s:4:\"icon\";s:0:\"\";}i:7;a:5:{s:5:\"title\";s:8:\"视频认证\";s:9:\"available\";s:1:\"0\";s:8:\"showicon\";s:1:\"0\";s:14:\"viewvideophoto\";s:1:\"0\";s:4:\"icon\";s:0:\"\";}}'),('focus','a:3:{s:5:\"title\";s:8:\"站长推荐\";s:4:\"data\";a:0:{}s:6:\"cookie\";s:1:\"1\";}'),('robotarchiver','0'),('profilegroup','a:5:{s:4:\"base\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:0;s:5:\"title\";s:8:\"基本资料\";s:5:\"field\";a:17:{s:8:\"realname\";s:8:\"realname\";s:6:\"gender\";s:6:\"gender\";s:8:\"birthday\";s:8:\"birthday\";s:9:\"birthcity\";s:9:\"birthcity\";s:10:\"residecity\";s:10:\"residecity\";s:10:\"residedist\";s:10:\"residedist\";s:15:\"affectivestatus\";s:15:\"affectivestatus\";s:10:\"lookingfor\";s:10:\"lookingfor\";s:9:\"bloodtype\";s:9:\"bloodtype\";s:6:\"field1\";s:6:\"field1\";s:6:\"field2\";s:6:\"field2\";s:6:\"field3\";s:6:\"field3\";s:6:\"field4\";s:6:\"field4\";s:6:\"field5\";s:6:\"field5\";s:6:\"field6\";s:6:\"field6\";s:6:\"field7\";s:6:\"field7\";s:6:\"field8\";s:6:\"field8\";}}s:7:\"contact\";a:4:{s:5:\"title\";s:8:\"联系方式\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"1\";s:5:\"field\";a:7:{s:9:\"telephone\";s:9:\"telephone\";s:6:\"mobile\";s:6:\"mobile\";s:2:\"qq\";s:2:\"qq\";s:3:\"msn\";s:3:\"msn\";s:6:\"taobao\";s:6:\"taobao\";s:3:\"icq\";s:3:\"icq\";s:5:\"yahoo\";s:5:\"yahoo\";}}s:3:\"edu\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:2;s:5:\"title\";s:8:\"教育情况\";s:5:\"field\";a:2:{s:14:\"graduateschool\";s:14:\"graduateschool\";s:9:\"education\";s:9:\"education\";}}s:4:\"work\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:3;s:5:\"title\";s:8:\"工作情况\";s:5:\"field\";a:4:{s:7:\"company\";s:7:\"company\";s:10:\"occupation\";s:10:\"occupation\";s:8:\"position\";s:8:\"position\";s:7:\"revenue\";s:7:\"revenue\";}}s:4:\"info\";a:4:{s:5:\"title\";s:8:\"个人信息\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"4\";s:5:\"field\";a:10:{s:10:\"idcardtype\";s:10:\"idcardtype\";s:6:\"idcard\";s:6:\"idcard\";s:7:\"address\";s:7:\"address\";s:7:\"zipcode\";s:7:\"zipcode\";s:4:\"site\";s:4:\"site\";s:3:\"bio\";s:3:\"bio\";s:8:\"interest\";s:8:\"interest\";s:7:\"sightml\";s:7:\"sightml\";s:12:\"customstatus\";s:12:\"customstatus\";s:10:\"timeoffset\";s:10:\"timeoffset\";}}}'),('onlyacceptfriendpm','0'),('pmreportuser','1'),('chatpmrefreshtime','8'),('preventrefresh','1'),('imagelistthumb','0'),('regconnect','1'),('connect','a:19:{s:5:\"allow\";s:1:\"1\";s:4:\"feed\";a:2:{s:5:\"allow\";s:1:\"1\";s:5:\"group\";s:1:\"0\";}s:1:\"t\";a:2:{s:5:\"allow\";s:1:\"1\";s:5:\"group\";s:1:\"0\";}s:10:\"like_allow\";s:1:\"1\";s:7:\"like_qq\";s:0:\"\";s:10:\"turl_allow\";s:1:\"1\";s:7:\"turl_qq\";s:0:\"\";s:8:\"like_url\";s:0:\"\";s:17:\"register_birthday\";s:1:\"0\";s:15:\"register_gender\";s:1:\"0\";s:17:\"register_uinlimit\";s:0:\"\";s:21:\"register_rewardcredit\";s:1:\"1\";s:18:\"register_addcredit\";s:0:\"\";s:16:\"register_groupid\";s:1:\"0\";s:18:\"register_regverify\";s:1:\"1\";s:15:\"register_invite\";s:1:\"0\";s:10:\"newbiespan\";s:0:\"\";s:9:\"turl_code\";s:0:\"\";s:13:\"mblog_app_key\";s:3:\"abc\";}'),('allowwidthauto','1'),('switchwidthauto','1'),('leftsidewidth','0'),('card','a:1:{s:4:\"open\";s:1:\"0\";}'),('report_receive','a:2:{s:9:\"adminuser\";a:1:{i:0;s:1:\"1\";}s:12:\"supmoderator\";N;}'),('leftsideopen','0'),('showexif','0'),('followretainday','7'),('newbie','20'),('collectionteamworkernum','3'),('collectionnum','10'),('blockmaxaggregationitem','20000'),('moddetail','0'),('antitheft','a:2:{s:5:\"allow\";i:0;s:3:\"max\";i:200;}'),('repliesrank','0'),('threadblacklist','1'),('threadhotreplies','0'),('threadfilternum','10'),('hidefilteredpost','0'),('forumdisplaythreadpreview','1'),('nofilteredpost','0'),('filterednovote','1'),('numbercard','a:1:{s:3:\"row\";a:3:{i:1;s:7:\"threads\";i:2;s:5:\"posts\";i:3;s:7:\"credits\";}}'),('darkroom','1'),('creditspolicymobile','0'),('showsignin','1'),('showfjump','1'),('grid','a:8:{s:8:\"showgrid\";s:1:\"0\";s:8:\"gridtype\";s:1:\"0\";s:8:\"textleng\";s:2:\"30\";s:4:\"fids\";a:1:{i:0;i:0;}s:9:\"highlight\";s:1:\"1\";s:11:\"targetblank\";s:1:\"1\";s:8:\"showtips\";s:1:\"1\";s:9:\"cachelife\";s:3:\"600\";}'),('showfollowcollection','8'),('allowfastreply','0'),('notifyusers','a:1:{i:1;a:2:{s:8:\"username\";s:5:\"admin\";s:5:\"types\";s:20:\"11111111111111111111\";}}'),('homestatus','0'),('article_tags','a:8:{i:1;s:4:\"原创\";i:2;s:4:\"热点\";i:3;s:4:\"组图\";i:4;s:4:\"爆料\";i:5;s:4:\"头条\";i:6;s:4:\"幻灯\";i:7;s:4:\"滚动\";i:8;s:4:\"推荐\";}'),('disfixednv_forumindex','0'),('forumpicstyle','a:3:{s:10:\"thumbwidth\";i:0;s:11:\"thumbheight\";i:0;s:8:\"thumbnum\";i:0;}'),('disfixednv_forumdisplay','0'),('disfixedavatar','0'),('disfixednv_viewthread','0'),('threadguestlite','0'),('close_leftinfo','0'),('close_leftinfo_userctrl','0'),('guestviewthumb','a:3:{s:4:\"flag\";i:0;s:5:\"width\";i:100;s:6:\"height\";i:100;}'),('guesttipsinthread','a:2:{s:4:\"flag\";i:0;s:4:\"text\";s:0:\"\";}'),('allowreplybg','0');

/*Table structure for table `pre_common_smiley` */

DROP TABLE IF EXISTS `pre_common_smiley`;

CREATE TABLE `pre_common_smiley` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) unsigned NOT NULL,
  `displayorder` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('smiley','stamp','stamplist') NOT NULL DEFAULT 'smiley',
  `code` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_smiley` */

insert  into `pre_common_smiley`(`id`,`typeid`,`displayorder`,`type`,`code`,`url`) values (1,1,1,'smiley',':)','smile.gif'),(2,1,2,'smiley',':(','sad.gif'),(3,1,3,'smiley',':D','biggrin.gif'),(4,1,4,'smiley',':\'(','cry.gif'),(5,1,5,'smiley',':@','huffy.gif'),(6,1,6,'smiley',':o','shocked.gif'),(7,1,7,'smiley',':P','tongue.gif'),(8,1,8,'smiley',':$','shy.gif'),(9,1,9,'smiley',';P','titter.gif'),(10,1,10,'smiley',':L','sweat.gif'),(11,1,11,'smiley',':Q','mad.gif'),(12,1,12,'smiley',':lol','lol.gif'),(13,1,13,'smiley',':loveliness:','loveliness.gif'),(14,1,14,'smiley',':funk:','funk.gif'),(15,1,15,'smiley',':curse:','curse.gif'),(16,1,16,'smiley',':dizzy:','dizzy.gif'),(17,1,17,'smiley',':shutup:','shutup.gif'),(18,1,18,'smiley',':sleepy:','sleepy.gif'),(19,1,19,'smiley',':hug:','hug.gif'),(20,1,20,'smiley',':victory:','victory.gif'),(21,1,21,'smiley',':time:','time.gif'),(22,1,22,'smiley',':kiss:','kiss.gif'),(23,1,23,'smiley',':handshake','handshake.gif'),(24,1,24,'smiley',':call:','call.gif'),(25,2,1,'smiley','{:2_25:}','01.gif'),(26,2,2,'smiley','{:2_26:}','02.gif'),(27,2,3,'smiley','{:2_27:}','03.gif'),(28,2,4,'smiley','{:2_28:}','04.gif'),(29,2,5,'smiley','{:2_29:}','05.gif'),(30,2,6,'smiley','{:2_30:}','06.gif'),(31,2,7,'smiley','{:2_31:}','07.gif'),(32,2,8,'smiley','{:2_32:}','08.gif'),(33,2,9,'smiley','{:2_33:}','09.gif'),(34,2,10,'smiley','{:2_34:}','10.gif'),(35,2,11,'smiley','{:2_35:}','11.gif'),(36,2,12,'smiley','{:2_36:}','12.gif'),(37,2,13,'smiley','{:2_37:}','13.gif'),(38,2,14,'smiley','{:2_38:}','14.gif'),(39,2,15,'smiley','{:2_39:}','15.gif'),(40,2,16,'smiley','{:2_40:}','16.gif'),(41,3,1,'smiley','{:3_41:}','01.gif'),(42,3,2,'smiley','{:3_42:}','02.gif'),(43,3,3,'smiley','{:3_43:}','03.gif'),(44,3,4,'smiley','{:3_44:}','04.gif'),(45,3,5,'smiley','{:3_45:}','05.gif'),(46,3,6,'smiley','{:3_46:}','06.gif'),(47,3,7,'smiley','{:3_47:}','07.gif'),(48,3,8,'smiley','{:3_48:}','08.gif'),(49,3,9,'smiley','{:3_49:}','09.gif'),(50,3,10,'smiley','{:3_50:}','10.gif'),(51,3,11,'smiley','{:3_51:}','11.gif'),(52,3,12,'smiley','{:3_52:}','12.gif'),(53,3,13,'smiley','{:3_53:}','13.gif'),(54,3,14,'smiley','{:3_54:}','14.gif'),(55,3,15,'smiley','{:3_55:}','15.gif'),(56,3,16,'smiley','{:3_56:}','16.gif'),(57,3,17,'smiley','{:3_57:}','17.gif'),(58,3,18,'smiley','{:3_58:}','18.gif'),(59,3,19,'smiley','{:3_59:}','19.gif'),(60,3,20,'smiley','{:3_60:}','20.gif'),(61,3,21,'smiley','{:3_61:}','21.gif'),(62,3,22,'smiley','{:3_62:}','22.gif'),(63,3,23,'smiley','{:3_63:}','23.gif'),(64,3,24,'smiley','{:3_64:}','24.gif'),(65,0,0,'stamp','精华','001.gif'),(66,0,1,'stamp','热帖','002.gif'),(67,0,2,'stamp','美图','003.gif'),(68,0,3,'stamp','优秀','004.gif'),(69,0,4,'stamp','置顶','005.gif'),(70,0,5,'stamp','推荐','006.gif'),(71,0,6,'stamp','原创','007.gif'),(72,0,7,'stamp','版主推荐','008.gif'),(73,0,8,'stamp','爆料','009.gif'),(74,0,9,'stamplist','精华','001.small.gif'),(75,0,10,'stamplist','热帖','002.small.gif'),(76,0,11,'stamplist','美图','003.small.gif'),(77,0,12,'stamplist','优秀','004.small.gif'),(78,0,13,'stamplist','置顶','005.small.gif'),(79,0,14,'stamplist','推荐','006.small.gif'),(80,0,15,'stamplist','原创','007.small.gif'),(81,0,16,'stamplist','版主推荐','008.small.gif'),(82,0,17,'stamplist','爆料','009.small.gif'),(83,4,19,'stamp','编辑采用','010.gif'),(84,0,18,'stamplist','编辑采用','010.small.gif'),(85,0,20,'stamplist','新人帖','011.small.gif');

/*Table structure for table `pre_common_sphinxcounter` */

DROP TABLE IF EXISTS `pre_common_sphinxcounter`;

CREATE TABLE `pre_common_sphinxcounter` (
  `indexid` tinyint(1) NOT NULL,
  `maxid` int(10) NOT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_sphinxcounter` */

/*Table structure for table `pre_common_stat` */

DROP TABLE IF EXISTS `pre_common_stat`;

CREATE TABLE `pre_common_stat` (
  `daytime` int(10) unsigned NOT NULL DEFAULT '0',
  `login` int(10) unsigned NOT NULL DEFAULT '0',
  `mobilelogin` int(10) unsigned NOT NULL DEFAULT '0',
  `connectlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `register` int(10) unsigned NOT NULL DEFAULT '0',
  `invite` int(10) unsigned NOT NULL DEFAULT '0',
  `appinvite` int(10) unsigned NOT NULL DEFAULT '0',
  `doing` int(10) unsigned NOT NULL DEFAULT '0',
  `blog` int(10) unsigned NOT NULL DEFAULT '0',
  `pic` int(10) unsigned NOT NULL DEFAULT '0',
  `poll` int(10) unsigned NOT NULL DEFAULT '0',
  `activity` int(10) unsigned NOT NULL DEFAULT '0',
  `share` int(10) unsigned NOT NULL DEFAULT '0',
  `thread` int(10) unsigned NOT NULL DEFAULT '0',
  `docomment` int(10) unsigned NOT NULL DEFAULT '0',
  `blogcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `piccomment` int(10) unsigned NOT NULL DEFAULT '0',
  `sharecomment` int(10) unsigned NOT NULL DEFAULT '0',
  `reward` int(10) unsigned NOT NULL DEFAULT '0',
  `debate` int(10) unsigned NOT NULL DEFAULT '0',
  `trade` int(10) unsigned NOT NULL DEFAULT '0',
  `group` int(10) unsigned NOT NULL DEFAULT '0',
  `groupjoin` int(10) unsigned NOT NULL DEFAULT '0',
  `groupthread` int(10) unsigned NOT NULL DEFAULT '0',
  `grouppost` int(10) unsigned NOT NULL DEFAULT '0',
  `post` int(10) unsigned NOT NULL DEFAULT '0',
  `wall` int(10) unsigned NOT NULL DEFAULT '0',
  `poke` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `sendpm` int(10) unsigned NOT NULL DEFAULT '0',
  `friend` int(10) unsigned NOT NULL DEFAULT '0',
  `addfriend` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`daytime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_stat` */

insert  into `pre_common_stat`(`daytime`,`login`,`mobilelogin`,`connectlogin`,`register`,`invite`,`appinvite`,`doing`,`blog`,`pic`,`poll`,`activity`,`share`,`thread`,`docomment`,`blogcomment`,`piccomment`,`sharecomment`,`reward`,`debate`,`trade`,`group`,`groupjoin`,`groupthread`,`grouppost`,`post`,`wall`,`poke`,`click`,`sendpm`,`friend`,`addfriend`) values (20201117,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201118,1,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201119,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201120,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201121,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201123,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201124,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201125,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201126,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201127,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201128,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201204,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201205,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201207,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201209,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201210,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201212,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201214,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201215,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201216,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201218,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201219,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20201221,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `pre_common_statuser` */

DROP TABLE IF EXISTS `pre_common_statuser`;

CREATE TABLE `pre_common_statuser` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `daytime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` char(20) NOT NULL DEFAULT '',
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_statuser` */

insert  into `pre_common_statuser`(`uid`,`daytime`,`type`) values (1,20201221,'login');

/*Table structure for table `pre_common_style` */

DROP TABLE IF EXISTS `pre_common_style`;

CREATE TABLE `pre_common_style` (
  `styleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `templateid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `extstyle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_style` */

insert  into `pre_common_style`(`styleid`,`name`,`available`,`templateid`,`extstyle`) values (1,'默认风格',1,1,'t1	t2	t3	t4	t5|');

/*Table structure for table `pre_common_stylevar` */

DROP TABLE IF EXISTS `pre_common_stylevar`;

CREATE TABLE `pre_common_stylevar` (
  `stylevarid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `variable` text NOT NULL,
  `substitute` text NOT NULL,
  PRIMARY KEY (`stylevarid`),
  KEY `styleid` (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_stylevar` */

insert  into `pre_common_stylevar`(`stylevarid`,`styleid`,`variable`,`substitute`) values (211,1,'font','Tahoma,\'Microsoft Yahei\',\'Simsun\''),(210,1,'fontsize','12px/1.5'),(209,1,'titlebgcolor','#E5EDF2 titlebg.png repeat-x 0 0'),(208,1,'menuhoverbgcolor','#005AB4 nv_a.png no-repeat 50% -33px'),(207,1,'lightlink','#FFF'),(206,1,'floatbgcolor','#FFF'),(205,1,'dropmenubgcolor','#FEFEFE'),(204,1,'floatmaskbgcolor','#000'),(203,1,'dropmenuborder','#DDD'),(202,1,'specialbg','#E5EDF2'),(201,1,'specialborder','#C2D5E3'),(200,1,'commonbg','#F2F2F2'),(199,1,'commonborder','#CDCDCD'),(198,1,'inputbg','#FFF'),(197,1,'stypeid','1'),(196,1,'inputborderdarkcolor','#848484'),(195,1,'headerbgcolor',''),(194,1,'headerborder','0'),(193,1,'sidebgcolor',' vlineb.png repeat-y 0 0'),(192,1,'msgfontsize','14px'),(191,1,'bgcolor','#FFF background.png repeat-x 0 0'),(190,1,'noticetext','#F26C4F'),(189,1,'highlightlink','#369'),(188,1,'link','#333'),(187,1,'lighttext','#999'),(186,1,'midtext','#666'),(185,1,'tabletext','#444'),(184,1,'smfontsize','0.83em'),(181,1,'smfont','Arial'),(182,1,'threadtitlefontsize','14px'),(183,1,'threadtitlefont','Tahoma,\'Microsoft Yahei\',\'Simsun\''),(91,0,'menuhoverbgcolor','#005AB4 nv_a.png no-repeat 50% -33px'),(92,0,'lightlink','#FFF'),(93,0,'floatbgcolor','#FFF'),(94,0,'dropmenubgcolor','#FEFEFE'),(95,0,'floatmaskbgcolor','#000'),(96,0,'dropmenuborder','#DDD'),(97,0,'specialbg','#E5EDF2'),(98,0,'specialborder','#C2D5E3'),(99,0,'commonbg','#F2F2F2'),(100,0,'commonborder','#CDCDCD'),(101,0,'inputbg','#FFF'),(102,0,'stypeid','1'),(103,0,'inputborderdarkcolor','#848484'),(104,0,'headerbgcolor',''),(105,0,'headerborder','0'),(106,0,'sidebgcolor',' vlineb.png repeat-y 0 0'),(107,0,'msgfontsize','14px'),(108,0,'bgcolor','#FFF background.png repeat-x 0 0'),(109,0,'noticetext','#F26C4F'),(110,0,'highlightlink','#369'),(111,0,'link','#333'),(112,0,'lighttext','#999'),(113,0,'midtext','#666'),(114,0,'tabletext','#444'),(115,0,'smfontsize','0.83em'),(116,0,'threadtitlefont','Tahoma,Helvetica,\'SimSun\',sans-serif'),(117,0,'threadtitlefontsize','14px'),(118,0,'smfont','Tahoma,Helvetica,sans-serif'),(119,0,'titlebgcolor','#E5EDF2 titlebg.png repeat-x 0 0'),(120,0,'fontsize','12px/1.5'),(121,0,'font','Tahoma,Helvetica,\'SimSun\',sans-serif'),(122,0,'styleimgdir',''),(123,0,'imgdir',''),(124,0,'boardimg','logo.png'),(125,0,'available',''),(126,0,'headertext','#444'),(127,0,'footertext','#666'),(128,0,'menubgcolor','#2B7ACD nv.png no-repeat 0 0'),(129,0,'menutext','#FFF'),(130,0,'menuhovertext','#FFF'),(131,0,'wrapbg','#FFF'),(132,0,'wrapbordercolor','#CCC'),(133,0,'contentwidth','630px'),(134,0,'contentseparate','#C2D5E3'),(135,0,'inputborder','#E0E0E0'),(225,1,'inputborder','#E0E0E0'),(224,1,'contentseparate','#C2D5E3'),(223,1,'contentwidth','630px'),(222,1,'wrapbordercolor','#CCC'),(221,1,'wrapbg','#FFF'),(220,1,'menuhovertext','#FFF'),(219,1,'menutext','#FFF'),(218,1,'menubgcolor','#2B7ACD nv.png no-repeat 0 0'),(217,1,'footertext','#666'),(216,1,'headertext','#444'),(215,1,'available',''),(214,1,'boardimg','logo.png'),(213,1,'imgdir',''),(212,1,'styleimgdir','');

/*Table structure for table `pre_common_syscache` */

DROP TABLE IF EXISTS `pre_common_syscache`;

CREATE TABLE `pre_common_syscache` (
  `cname` varchar(32) NOT NULL,
  `ctype` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `data` mediumblob NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_syscache` */

insert  into `pre_common_syscache`(`cname`,`ctype`,`dateline`,`data`) values ('userstats',1,1607929477,'a:2:{s:12:\"totalmembers\";i:2;s:10:\"newsetuser\";s:6:\"admin2\";}'),('cronnextrun',0,1608519736,'1608521400'),('adminmenu',1,1608089316,'a:3:{i:0;a:3:{s:3:\"url\";s:29:\"plugins&operation=config&do=4\";s:6:\"action\";s:16:\"plugins_config_4\";s:4:\"name\";s:18:\"ǧ��PC�ֻ�ע���\";}i:1;a:3:{s:3:\"url\";s:29:\"plugins&operation=config&do=3\";s:6:\"action\";s:16:\"plugins_config_3\";s:4:\"name\";s:16:\"�����񡿺������\";}i:2;a:3:{s:3:\"url\";s:29:\"plugins&operation=config&do=2\";s:6:\"action\";s:16:\"plugins_config_2\";s:4:\"name\";s:10:\"������Υ��\";}}'),('setting',1,1608089316,'a:437:{s:11:\"accessemail\";s:0:\"\";s:15:\"activityforumid\";s:1:\"0\";s:13:\"activityfield\";s:80:\"a:3:{s:8:\"realname\";s:8:\"��ʵ����\";s:6:\"mobile\";s:4:\"�ֻ�\";s:2:\"qq\";s:4:\"QQ��\";}\";s:14:\"activityextnum\";s:1:\"0\";s:10:\"activitypp\";s:1:\"8\";s:14:\"activitycredit\";s:1:\"1\";s:12:\"activitytype\";s:48:\"���Ѿۻ�\r\n���⽼��\r\n�Լݳ���\r\n����\r\n���ϻ\";s:10:\"adminemail\";s:15:\"admin@admin.com\";s:13:\"adminipaccess\";s:0:\"\";s:16:\"adminnotifytypes\";s:231:\"verifythread,verifypost,verifyuser,verifyblog,verifydoing,verifypic,verifyshare,verifycommontes,verifyrecycle,verifyrecyclepost,verifyarticle,verifyacommont,verifymedal,verify_1,verify_2,verify_3,verify_4,verify_5,verify_6,verify_7\";s:13:\"anonymoustext\";s:4:\"����\";s:7:\"advtype\";a:0:{}s:14:\"allowattachurl\";s:1:\"0\";s:11:\"allowdomain\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"0\";s:17:\"allowswitcheditor\";s:1:\"1\";s:19:\"allowviewuserthread\";s:0:\"\";s:8:\"archiver\";s:1:\"1\";s:16:\"archiverredirect\";s:1:\"0\";s:16:\"attachbanperiods\";s:0:\"\";s:9:\"attachdir\";s:64:\"D:/phpstudy_pro/WWW/Discuz_X3.4_SC_GBK/upload/./data/attachment/\";s:12:\"attachexpire\";s:0:\"\";s:13:\"attachimgpost\";s:1:\"1\";s:14:\"attachrefcheck\";s:1:\"0\";s:10:\"attachsave\";s:1:\"3\";s:9:\"attachurl\";s:16:\"data/attachment/\";s:7:\"authkey\";s:50:\"e96dee19a074eb529ab31cdfdabbc7a2TDHncVr2ebH2s8UoQo\";s:12:\"authoronleft\";s:1:\"1\";s:8:\"uidlogin\";s:1:\"0\";s:12:\"autoidselect\";s:1:\"0\";s:12:\"avatarmethod\";s:1:\"0\";s:14:\"bannedmessages\";s:1:\"1\";s:8:\"bbclosed\";s:0:\"\";s:6:\"bbname\";s:13:\"Discuz! Board\";s:7:\"bbrules\";s:1:\"0\";s:12:\"bbrulesforce\";s:1:\"0\";s:10:\"bbrulestxt\";s:0:\"\";s:10:\"bdaystatus\";s:1:\"0\";s:11:\"binddomains\";s:6:\"a:0:{}\";s:13:\"boardlicensed\";s:1:\"0\";s:14:\"cacheindexlife\";s:1:\"0\";s:14:\"cachethreaddir\";s:16:\"data/threadcache\";s:15:\"cachethreadlife\";s:1:\"0\";s:11:\"censoremail\";s:0:\"\";s:10:\"censoruser\";s:0:\"\";s:21:\"closedallowactivation\";s:1:\"0\";s:16:\"commentfirstpost\";s:1:\"1\";s:11:\"commentitem\";a:6:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}s:13:\"commentnumber\";i:0;s:12:\"creditnotice\";s:1:\"1\";s:14:\"creditsformula\";s:112:\"$member[\'posts\']+$member[\'digestposts\']*5+$member[\'extcredits1\']*2+$member[\'extcredits2\']+$member[\'extcredits3\']\";s:17:\"creditsformulaexp\";s:83:\"<u>�ܻ���</u>=<u>������</u>+<u>��������</u>*5+<u>����</u>*2+<u>��Ǯ</u>+<u>����</u>\";s:13:\"creditspolicy\";a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:6:\"sendpm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";b:1;s:18:\"promotion_register\";b:1;s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}s:10:\"creditstax\";s:3:\"0.2\";s:12:\"creditstrans\";s:1:\"2\";s:11:\"dateconvert\";s:1:\"1\";s:10:\"dateformat\";s:5:\"Y-n-j\";s:13:\"debateforumid\";s:1:\"0\";s:5:\"debug\";s:1:\"1\";s:17:\"defaulteditormode\";s:1:\"1\";s:14:\"delayviewcount\";s:1:\"0\";s:12:\"deletereason\";s:0:\"\";s:13:\"disallowfloat\";s:9:\"newthread\";s:10:\"domainroot\";s:0:\"\";s:7:\"doublee\";s:1:\"1\";s:12:\"dupkarmarate\";s:1:\"0\";s:10:\"ec_account\";s:0:\"\";s:11:\"ec_contract\";s:0:\"\";s:9:\"ec_credit\";a:2:{s:18:\"maxcreditspermonth\";i:6;s:4:\"rank\";a:15:{i:1;i:4;i:2;i:11;i:3;i:41;i:4;i:91;i:5;i:151;i:6;i:251;i:7;i:501;i:8;i:1001;i:9;i:2001;i:10;i:5001;i:11;i:10001;i:12;i:20001;i:13;i:50001;i:14;i:100001;i:15;i:200001;}}s:13:\"ec_maxcredits\";s:4:\"1000\";s:21:\"ec_maxcreditspermonth\";s:1:\"0\";s:13:\"ec_mincredits\";s:1:\"0\";s:8:\"ec_ratio\";s:1:\"0\";s:19:\"ec_tenpay_bargainor\";s:0:\"\";s:13:\"ec_tenpay_key\";s:0:\"\";s:10:\"postappend\";s:1:\"0\";s:8:\"editedby\";s:1:\"1\";s:13:\"editoroptions\";s:1:\"6\";s:13:\"edittimelimit\";s:0:\"\";s:18:\"exchangemincredits\";s:3:\"100\";s:10:\"extcredits\";a:3:{i:1;a:7:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"����\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:7:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"��Ǯ\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:7:{s:3:\"img\";s:0:\"\";s:5:\"title\";s:4:\"����\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}s:8:\"fastpost\";s:1:\"1\";s:14:\"forumallowside\";s:1:\"0\";s:11:\"fastsmilies\";s:1:\"1\";s:7:\"feedday\";s:1:\"7\";s:10:\"feedhotday\";s:1:\"2\";s:10:\"feedhotmin\";s:1:\"3\";s:10:\"feedhotnum\";s:1:\"3\";s:10:\"feedmaxnum\";s:3:\"100\";s:16:\"showallfriendnum\";s:1:\"8\";s:15:\"feedtargetblank\";s:1:\"1\";s:9:\"floodctrl\";s:2:\"15\";s:12:\"forumdomains\";s:6:\"a:0:{}\";s:9:\"forumjump\";s:1:\"0\";s:15:\"forumlinkstatus\";s:1:\"1\";s:14:\"forumseparator\";s:1:\"1\";s:7:\"frameon\";s:1:\"0\";s:10:\"framewidth\";s:3:\"180\";s:14:\"friendgroupnum\";s:1:\"8\";s:3:\"ftp\";a:11:{s:2:\"on\";s:1:\"0\";s:3:\"ssl\";s:1:\"0\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"attachdir\";s:1:\".\";s:9:\"attachurl\";s:1:\"/\";s:7:\"hideurl\";s:1:\"0\";s:7:\"timeout\";s:1:\"0\";s:6:\"connid\";i:0;}s:11:\"globalstick\";s:1:\"1\";s:11:\"targetblank\";s:1:\"0\";s:6:\"google\";s:1:\"1\";s:11:\"groupstatus\";s:1:\"0\";s:12:\"portalstatus\";s:1:\"0\";s:12:\"followstatus\";s:1:\"0\";s:16:\"collectionstatus\";s:1:\"0\";s:11:\"guidestatus\";s:1:\"0\";s:10:\"feedstatus\";s:1:\"0\";s:10:\"blogstatus\";s:1:\"0\";s:11:\"doingstatus\";s:1:\"0\";s:11:\"albumstatus\";s:1:\"0\";s:11:\"sharestatus\";s:1:\"0\";s:10:\"wallstatus\";s:1:\"0\";s:14:\"rankliststatus\";s:1:\"0\";s:9:\"homestyle\";s:1:\"0\";s:13:\"homepagestyle\";s:1:\"0\";s:15:\"group_allowfeed\";s:1:\"1\";s:19:\"group_admingroupids\";s:18:\"a:1:{i:1;s:1:\"1\";}\";s:18:\"group_imgsizelimit\";s:3:\"512\";s:14:\"group_userperm\";s:684:\"a:21:{s:16:\"allowstickthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:17:\"alloweditactivity\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:13:\"allowupbanner\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";}\";s:10:\"heatthread\";a:5:{s:4:\"type\";s:1:\"2\";s:5:\"reply\";i:5;s:9:\"recommend\";i:3;s:6:\"period\";s:2:\"15\";s:10:\"iconlevels\";a:3:{i:2;s:3:\"200\";i:1;s:3:\"100\";i:0;s:2:\"50\";}}s:5:\"guide\";s:51:\"a:2:{s:5:\"hotdt\";i:604800;s:8:\"digestdt\";i:604800;}\";s:11:\"hideprivate\";s:1:\"1\";s:12:\"historyposts\";s:3:\"0	7\";s:8:\"hottopic\";s:2:\"10\";s:3:\"icp\";s:0:\"\";s:8:\"imagelib\";s:1:\"0\";s:13:\"imagemaxwidth\";i:600;s:18:\"watermarkminheight\";s:67:\"a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}\";s:17:\"watermarkminwidth\";s:67:\"a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}\";s:16:\"watermarkquality\";s:62:\"a:3:{s:6:\"portal\";s:2:\"90\";s:5:\"forum\";i:90;s:5:\"album\";i:90;}\";s:15:\"watermarkstatus\";s:67:\"a:3:{s:6:\"portal\";s:1:\"0\";s:5:\"forum\";s:1:\"0\";s:5:\"album\";s:1:\"0\";}\";s:13:\"watermarktext\";a:12:{s:4:\"text\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:8:\"fontpath\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:4:\"size\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"angle\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"color\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:7:\"shadowx\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:7:\"shadowy\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:11:\"shadowcolor\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:10:\"translatex\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:10:\"translatey\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"skewx\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}s:5:\"skewy\";a:3:{s:6:\"portal\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"album\";s:0:\"\";}}s:14:\"watermarktrans\";s:62:\"a:3:{s:6:\"portal\";s:2:\"50\";s:5:\"forum\";i:50;s:5:\"album\";i:50;}\";s:13:\"watermarktype\";a:3:{s:6:\"portal\";s:3:\"png\";s:5:\"forum\";s:3:\"png\";s:5:\"album\";s:3:\"png\";}s:8:\"indexhot\";a:7:{s:6:\"status\";s:1:\"0\";s:5:\"limit\";s:2:\"10\";s:4:\"days\";s:1:\"7\";s:10:\"expiration\";s:3:\"900\";s:10:\"messagecut\";s:3:\"200\";s:5:\"width\";i:100;s:6:\"height\";i:70;}s:9:\"indextype\";s:8:\"classics\";s:14:\"infosidestatus\";b:0;s:11:\"initcredits\";s:17:\"0,0,0,0,0,0,0,0,0\";s:12:\"inviteconfig\";a:1:{s:16:\"invitecodeprompt\";s:0:\"\";}s:8:\"ipaccess\";s:0:\"\";s:11:\"jscachelife\";s:4:\"1800\";s:12:\"jsdateformat\";s:0:\"\";s:6:\"jspath\";s:10:\"static/js/\";s:12:\"jsrefdomains\";s:0:\"\";s:8:\"jsstatus\";s:1:\"0\";s:14:\"karmaratelimit\";s:1:\"0\";s:11:\"losslessdel\";s:3:\"365\";s:13:\"magicdiscount\";s:2:\"85\";s:11:\"magicmarket\";s:1:\"1\";s:11:\"magicstatus\";s:1:\"1\";s:4:\"mail\";s:318:\"a:10:{s:8:\"mailsend\";s:1:\"1\";s:6:\"server\";s:13:\"smtp.21cn.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"1\";s:4:\"from\";s:26:\"Discuz <username@21cn.com>\";s:13:\"auth_username\";s:17:\"username@21cn.com\";s:13:\"auth_password\";s:8:\"password\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";s:15:\"sendmail_silent\";s:1:\"1\";}\";s:14:\"maxavatarpixel\";s:3:\"120\";s:13:\"maxavatarsize\";s:5:\"20000\";s:8:\"maxbdays\";s:1:\"0\";s:13:\"maxchargespan\";s:1:\"0\";s:12:\"maxfavorites\";s:3:\"100\";s:15:\"maxincperthread\";s:1:\"0\";s:13:\"maxmagicprice\";s:2:\"50\";s:17:\"maxmodworksmonths\";s:1:\"3\";s:13:\"maxonlinelist\";s:1:\"0\";s:7:\"maxpage\";s:3:\"100\";s:14:\"maxpolloptions\";s:2:\"20\";s:11:\"maxpostsize\";s:5:\"10000\";s:10:\"maxsigrows\";s:3:\"100\";s:10:\"maxsmilies\";s:2:\"10\";s:14:\"membermaxpages\";s:3:\"100\";s:13:\"memberperpage\";s:2:\"25\";s:13:\"memliststatus\";s:1:\"1\";s:6:\"memory\";a:16:{s:13:\"common_member\";i:0;s:19:\"common_member_count\";i:0;s:20:\"common_member_status\";i:0;s:21:\"common_member_profile\";i:0;s:24:\"common_member_field_home\";i:0;s:25:\"common_member_field_forum\";i:0;s:20:\"common_member_verify\";i:0;s:12:\"forum_thread\";i:172800;s:25:\"forum_thread_forumdisplay\";i:300;s:23:\"forum_collectionrelated\";i:0;s:15:\"forum_postcache\";i:300;s:16:\"forum_collection\";i:300;s:11:\"home_follow\";i:86400;s:10:\"forumindex\";i:30;s:8:\"diyblock\";i:300;s:14:\"diyblockoutput\";i:30;}s:11:\"minpostsize\";s:2:\"10\";s:18:\"minpostsize_mobile\";s:1:\"0\";s:6:\"mobile\";a:15:{s:11:\"allowmobile\";i:1;s:9:\"allowmnew\";i:1;s:13:\"mobileforward\";i:1;s:14:\"mobileregister\";i:1;s:13:\"mobileseccode\";i:0;s:15:\"mobilehotthread\";i:1;s:19:\"mobiledisplayorder3\";i:1;s:16:\"mobilesimpletype\";i:1;s:18:\"mobiletopicperpage\";i:10;s:17:\"mobilepostperpage\";i:5;s:15:\"mobilecachetime\";i:0;s:15:\"mobileforumview\";i:0;s:14:\"mobilecomefrom\";s:0:\"\";s:13:\"mobilepreview\";i:0;s:3:\"wml\";i:0;}s:10:\"moddisplay\";s:4:\"flat\";s:12:\"modratelimit\";s:1:\"0\";s:11:\"userreasons\";s:42:\"�ܸ���!\r\n�������Ǹ���\r\n��һ��!\r\nɽկ\r\n����\";s:13:\"modworkstatus\";s:1:\"1\";s:10:\"msgforward\";s:504:\"a:3:{s:11:\"refreshtime\";i:2;s:5:\"quick\";i:1;s:8:\"messages\";a:14:{i:0;s:19:\"thread_poll_succeed\";i:1;s:19:\"thread_rate_succeed\";i:2;s:23:\"usergroups_join_succeed\";i:3;s:23:\"usergroups_exit_succeed\";i:4;s:25:\"usergroups_update_succeed\";i:5;s:20:\"buddy_update_succeed\";i:6;s:17:\"post_edit_succeed\";i:7;s:18:\"post_reply_succeed\";i:8;s:24:\"post_edit_delete_succeed\";i:9;s:22:\"post_newthread_succeed\";i:10;s:13:\"admin_succeed\";i:11;s:17:\"pm_delete_succeed\";i:12;s:15:\"search_redirect\";i:13;s:10:\"do_success\";}}\";s:3:\"msn\";s:0:\"\";s:11:\"networkpage\";s:1:\"0\";s:10:\"newbiespan\";s:1:\"2\";s:11:\"newbietasks\";s:0:\"\";s:16:\"newbietaskupdate\";s:0:\"\";s:14:\"newspaceavatar\";s:1:\"0\";s:14:\"nocacheheaders\";s:1:\"0\";s:10:\"oltimespan\";s:2:\"10\";s:10:\"onlinehold\";i:900;s:12:\"onlinerecord\";s:12:\"3	1607063253\";s:11:\"pollforumid\";s:1:\"0\";s:14:\"postbanperiods\";s:0:\"\";s:14:\"postmodperiods\";s:0:\"\";s:11:\"postperpage\";s:2:\"10\";s:7:\"privacy\";a:2:{s:4:\"view\";a:8:{s:5:\"index\";i:0;s:6:\"friend\";i:0;s:4:\"wall\";i:0;s:4:\"home\";i:0;s:5:\"doing\";i:0;s:4:\"blog\";i:0;s:5:\"album\";i:0;s:5:\"share\";i:0;}s:4:\"feed\";a:5:{s:5:\"doing\";i:1;s:4:\"blog\";i:1;s:6:\"upload\";i:1;s:4:\"poll\";i:1;s:9:\"newthread\";i:1;}}s:11:\"pvfrequence\";s:2:\"60\";s:9:\"pwdsafety\";s:1:\"0\";s:8:\"pwlength\";s:1:\"6\";s:5:\"qihoo\";a:9:{s:6:\"status\";i:0;s:9:\"searchbox\";i:6;s:7:\"summary\";i:1;s:6:\"jammer\";i:1;s:9:\"maxtopics\";i:10;s:8:\"keywords\";s:0:\"\";s:10:\"adminemail\";s:0:\"\";s:8:\"validity\";i:1;s:14:\"relatedthreads\";a:6:{s:6:\"bbsnum\";i:0;s:6:\"webnum\";i:0;s:4:\"type\";a:3:{s:4:\"blog\";s:4:\"blog\";s:4:\"news\";s:4:\"news\";s:3:\"bbs\";s:3:\"bbs\";}s:6:\"banurl\";s:0:\"\";s:8:\"position\";i:1;s:8:\"validity\";i:1;}}s:9:\"ratelogon\";s:1:\"1\";s:13:\"ratelogrecord\";s:2:\"20\";s:9:\"relatenum\";s:2:\"10\";s:10:\"relatetime\";s:2:\"60\";s:8:\"realname\";s:1:\"0\";s:15:\"recommendthread\";a:1:{s:5:\"allow\";i:0;}s:15:\"regclosemessage\";s:0:\"\";s:7:\"regctrl\";s:1:\"0\";s:8:\"strongpw\";b:0;s:12:\"regfloodctrl\";s:1:\"0\";s:7:\"regname\";s:8:\"register\";s:11:\"reglinkname\";s:8:\"����ע��\";s:9:\"regstatus\";s:1:\"1\";s:9:\"regverify\";s:1:\"0\";s:10:\"relatedtag\";b:0;s:13:\"report_reward\";s:35:\"a:2:{s:3:\"min\";i:-3;s:3:\"max\";i:3;}\";s:13:\"rewardforumid\";s:1:\"0\";s:17:\"rewritecompatible\";s:0:\"\";s:13:\"rewritestatus\";b:0;s:9:\"rssstatus\";s:1:\"1\";s:6:\"rssttl\";s:2:\"60\";s:9:\"runwizard\";s:1:\"1\";s:6:\"search\";a:6:{s:6:\"portal\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"forum\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:4:\"blog\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"album\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:5:\"group\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}s:10:\"collection\";a:4:{s:6:\"status\";i:1;s:10:\"searchctrl\";i:10;s:6:\"maxspm\";i:10;s:16:\"maxsearchresults\";i:500;}}s:8:\"sphinxon\";s:0:\"\";s:10:\"sphinxhost\";s:0:\"\";s:10:\"sphinxport\";s:0:\"\";s:14:\"sphinxsubindex\";s:22:\"threads,threads_minute\";s:14:\"sphinxmsgindex\";s:18:\"posts,posts_minute\";s:18:\"sphinxmaxquerytime\";s:0:\"\";s:11:\"sphinxlimit\";s:0:\"\";s:10:\"sphinxrank\";s:0:\"\";s:16:\"searchbanperiods\";s:0:\"\";s:11:\"seccodedata\";a:15:{s:4:\"rule\";a:5:{s:8:\"register\";a:3:{s:5:\"allow\";s:1:\"1\";s:8:\"numlimit\";s:0:\"\";s:9:\"timelimit\";s:2:\"60\";}s:5:\"login\";a:7:{s:5:\"allow\";s:1:\"0\";s:7:\"nolocal\";s:1:\"0\";s:8:\"pwsimple\";s:1:\"0\";s:7:\"pwerror\";s:1:\"0\";s:8:\"outofday\";s:0:\"\";s:8:\"numiptry\";s:0:\"\";s:9:\"timeiptry\";s:2:\"60\";}s:4:\"post\";a:5:{s:5:\"allow\";s:1:\"0\";s:8:\"numlimit\";s:0:\"\";s:9:\"timelimit\";s:2:\"60\";s:7:\"nplimit\";s:0:\"\";s:7:\"vplimit\";s:0:\"\";}s:8:\"password\";a:1:{s:5:\"allow\";s:1:\"1\";}s:4:\"card\";a:1:{s:5:\"allow\";s:1:\"1\";}}s:8:\"minposts\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:5:\"width\";i:100;s:6:\"height\";i:30;s:7:\"scatter\";s:0:\"\";s:10:\"background\";s:1:\"0\";s:10:\"adulterate\";s:1:\"0\";s:3:\"ttf\";s:1:\"0\";s:5:\"angle\";s:1:\"0\";s:7:\"warping\";s:1:\"0\";s:5:\"color\";s:1:\"0\";s:4:\"size\";s:1:\"0\";s:6:\"shadow\";s:1:\"0\";s:8:\"animator\";s:1:\"0\";}s:13:\"seccodestatus\";s:1:\"1\";s:8:\"seclevel\";s:1:\"1\";s:6:\"secqaa\";a:2:{s:8:\"minposts\";s:1:\"1\";s:6:\"status\";i:0;}s:11:\"sendmailday\";s:1:\"0\";s:14:\"seodescription\";b:0;s:7:\"seohead\";s:0:\"\";s:11:\"seokeywords\";b:0;s:8:\"seotitle\";a:5:{s:6:\"portal\";s:4:\"�Ż�\";s:5:\"forum\";s:4:\"��̳\";s:5:\"group\";s:4:\"Ⱥ��\";s:4:\"home\";s:4:\"��԰\";s:7:\"userapp\";s:4:\"Ӧ��\";}s:11:\"showavatars\";s:1:\"1\";s:9:\"showemail\";s:0:\"\";s:10:\"showimages\";s:1:\"1\";s:11:\"shownewuser\";s:1:\"0\";s:12:\"showsettings\";s:1:\"7\";s:14:\"showsignatures\";s:1:\"1\";s:11:\"sigviewcond\";s:1:\"0\";s:11:\"sitemessage\";a:5:{s:4:\"time\";i:3000;s:8:\"register\";a:0:{}s:5:\"login\";a:0:{}s:9:\"newthread\";a:0:{}s:5:\"reply\";a:0:{}}s:8:\"sitename\";s:12:\"Comsenz Inc.\";s:12:\"siteuniqueid\";s:16:\"DXULRQtDbe15Gmzr\";s:7:\"siteurl\";s:23:\"http://www.comsenz.com/\";s:6:\"smcols\";s:1:\"8\";s:6:\"smrows\";s:1:\"5\";s:7:\"smthumb\";s:2:\"20\";s:9:\"spacedata\";a:11:{s:9:\"cachelife\";s:3:\"900\";s:14:\"limitmythreads\";s:1:\"5\";s:14:\"limitmyreplies\";s:1:\"5\";s:14:\"limitmyrewards\";s:1:\"5\";s:13:\"limitmytrades\";s:1:\"5\";s:13:\"limitmyvideos\";s:1:\"0\";s:12:\"limitmyblogs\";s:1:\"8\";s:14:\"limitmyfriends\";s:1:\"0\";s:16:\"limitmyfavforums\";s:1:\"5\";s:17:\"limitmyfavthreads\";s:1:\"0\";s:10:\"textlength\";s:3:\"300\";}s:11:\"spacestatus\";s:1:\"1\";s:15:\"srchhotkeywords\";a:3:{i:0;s:5:\"�\r\";i:1;s:5:\"����\r\";i:2;s:6:\"discuz\";}s:13:\"starthreshold\";s:1:\"2\";s:8:\"statcode\";s:0:\"\";s:14:\"statscachelife\";s:3:\"180\";s:10:\"statstatus\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:8:\"styleid1\";s:1:\"1\";s:8:\"styleid2\";s:1:\"1\";s:8:\"styleid3\";s:1:\"1\";s:9:\"stylejump\";s:1:\"1\";s:14:\"subforumsindex\";s:1:\"0\";s:9:\"tagstatus\";s:1:\"1\";s:6:\"taskon\";s:1:\"0\";s:9:\"tasktypes\";s:225:\"a:3:{s:9:\"promotion\";a:2:{s:4:\"name\";s:12:\"��վ�ƹ�����\";s:7:\"version\";s:3:\"1.0\";}s:4:\"gift\";a:2:{s:4:\"name\";s:10:\"���������\";s:7:\"version\";s:3:\"1.0\";}s:6:\"avatar\";a:2:{s:4:\"name\";s:10:\"ͷ��������\";s:7:\"version\";s:3:\"1.0\";}}\";s:14:\"threadmaxpages\";s:4:\"1000\";s:12:\"threadsticky\";a:3:{i:0;s:8:\"ȫ���ö�\";i:1;s:8:\"�����ö�\";i:2;s:8:\"�����ö�\";}s:10:\"thumbwidth\";s:3:\"400\";s:11:\"thumbheight\";s:3:\"300\";s:11:\"sourcewidth\";s:0:\"\";s:12:\"sourceheight\";s:0:\"\";s:12:\"thumbquality\";s:3:\"100\";s:11:\"thumbstatus\";s:0:\"\";s:10:\"timeformat\";s:3:\"H:i\";s:10:\"timeoffset\";s:1:\"8\";s:12:\"topcachetime\";s:2:\"60\";s:12:\"topicperpage\";s:2:\"20\";s:12:\"tradeforumid\";s:1:\"0\";s:18:\"transfermincredits\";s:4:\"1000\";s:2:\"uc\";a:1:{s:7:\"addfeed\";i:1;}s:12:\"ucactivation\";s:1:\"1\";s:10:\"updatestat\";s:1:\"1\";s:14:\"userdateformat\";s:26:\"Y-n-j\r\nY/n/j\r\nj-n-Y\r\nj/n/Y\";s:12:\"userstatusby\";s:1:\"1\";s:10:\"videophoto\";s:1:\"0\";s:16:\"video_allowalbum\";s:1:\"0\";s:15:\"video_allowblog\";s:1:\"0\";s:18:\"video_allowcomment\";s:1:\"0\";s:16:\"video_allowdoing\";s:1:\"1\";s:17:\"video_allowfriend\";s:1:\"1\";s:15:\"video_allowpoke\";s:1:\"1\";s:16:\"video_allowshare\";s:1:\"0\";s:18:\"video_allowuserapp\";s:1:\"0\";s:20:\"video_allowviewspace\";s:1:\"1\";s:15:\"video_allowwall\";s:1:\"1\";s:14:\"viewthreadtags\";s:3:\"100\";s:15:\"visitbanperiods\";s:0:\"\";s:13:\"visitedforums\";s:2:\"10\";s:14:\"vtonlinestatus\";s:1:\"1\";s:10:\"wapcharset\";s:1:\"0\";s:13:\"wapdateformat\";s:3:\"n/j\";s:6:\"wapmps\";s:3:\"500\";s:6:\"wapppp\";s:1:\"5\";s:11:\"wapregister\";s:1:\"0\";s:9:\"wapstatus\";s:1:\"0\";s:6:\"waptpp\";s:2:\"10\";s:17:\"warningexpiration\";s:2:\"30\";s:12:\"warninglimit\";s:1:\"3\";s:10:\"welcomemsg\";s:1:\"1\";s:15:\"welcomemsgtitle\";s:48:\"{username}�����ã���л����ע�ᣬ���Ķ��������ݡ�\";s:13:\"welcomemsgtxt\";s:163:\"�𾴵�{username}�����Ѿ�ע���Ϊ{sitename}�Ļ�Ա�������ڷ�������ʱ�����ص��ط��ɷ��档\r\n�������ʲô���ʿ�����ϵ����Ա��Email: {adminemail}��\r\n\r\n\r\n{bbname}\r\n{time}\";s:16:\"whosonlinestatus\";s:1:\"3\";s:19:\"whosonline_contract\";s:1:\"0\";s:10:\"zoomstatus\";s:1:\"1\";s:13:\"my_app_status\";s:1:\"0\";s:9:\"my_siteid\";s:0:\"\";s:10:\"my_sitekey\";s:0:\"\";s:19:\"my_closecheckupdate\";s:0:\"\";s:5:\"my_ip\";s:0:\"\";s:14:\"my_search_data\";b:0;s:16:\"rewardexpiration\";s:2:\"30\";s:14:\"stamplistlevel\";s:1:\"3\";s:14:\"visitedthreads\";s:1:\"0\";s:11:\"navsubhover\";s:1:\"0\";s:12:\"showusercard\";s:1:\"1\";s:16:\"allowspacedomain\";s:1:\"0\";s:16:\"allowgroupdomain\";s:1:\"0\";s:10:\"holddomain\";s:24:\"www|*blog*|*space*|*bbs*\";s:6:\"domain\";a:5:{s:12:\"defaultindex\";s:9:\"forum.php\";s:10:\"holddomain\";s:24:\"www|*blog*|*space*|*bbs*\";s:4:\"list\";a:0:{}s:3:\"app\";a:6:{s:5:\"forum\";s:13:\"bbs.discuz.cc\";s:6:\"mobile\";s:12:\"3g.discuz.cc\";s:7:\"default\";s:9:\"discuz.cc\";s:6:\"portal\";s:0:\"\";s:5:\"group\";s:0:\"\";s:4:\"home\";s:0:\"\";}s:4:\"root\";a:5:{s:4:\"home\";s:0:\"\";s:5:\"group\";s:0:\"\";s:5:\"forum\";s:0:\"\";s:5:\"topic\";s:0:\"\";s:7:\"channel\";s:0:\"\";}}s:8:\"ranklist\";a:11:{s:6:\"status\";s:1:\"1\";s:10:\"cache_time\";s:1:\"1\";s:12:\"index_select\";s:8:\"thisweek\";s:6:\"member\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:6:\"thread\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:4:\"blog\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:4:\"poll\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:8:\"activity\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:7:\"picture\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:5:\"forum\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}s:5:\"group\";a:3:{s:9:\"available\";s:1:\"1\";s:10:\"cache_time\";s:1:\"5\";s:8:\"show_num\";s:2:\"20\";}}s:13:\"outlandverify\";s:1:\"0\";s:21:\"allowquickviewprofile\";s:1:\"1\";s:21:\"allowmoderatingthread\";s:1:\"1\";s:10:\"editperdel\";s:1:\"1\";s:12:\"defaultindex\";s:9:\"forum.php\";s:13:\"ipregctrltime\";s:2:\"72\";s:6:\"verify\";a:8:{i:6;a:6:{s:5:\"title\";s:8:\"ʵ����֤\";s:9:\"available\";s:1:\"0\";s:8:\"showicon\";s:1:\"0\";s:12:\"viewrealname\";s:1:\"0\";s:5:\"field\";a:1:{s:8:\"realname\";s:8:\"realname\";}s:4:\"icon\";b:0;}s:7:\"enabled\";b:0;i:1;a:1:{s:4:\"icon\";s:0:\"\";}i:2;a:1:{s:4:\"icon\";s:0:\"\";}i:3;a:1:{s:4:\"icon\";s:0:\"\";}i:4;a:1:{s:4:\"icon\";s:0:\"\";}i:5;a:1:{s:4:\"icon\";s:0:\"\";}i:7;a:5:{s:5:\"title\";s:8:\"��Ƶ��֤\";s:9:\"available\";s:1:\"0\";s:8:\"showicon\";s:1:\"0\";s:14:\"viewvideophoto\";s:1:\"0\";s:4:\"icon\";s:0:\"\";}}s:5:\"focus\";a:0:{}s:13:\"robotarchiver\";s:1:\"0\";s:12:\"profilegroup\";a:5:{s:4:\"base\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:0;s:5:\"title\";s:8:\"��������\";s:5:\"field\";a:17:{s:8:\"realname\";s:8:\"realname\";s:6:\"gender\";s:6:\"gender\";s:8:\"birthday\";s:8:\"birthday\";s:9:\"birthcity\";s:9:\"birthcity\";s:10:\"residecity\";s:10:\"residecity\";s:10:\"residedist\";s:10:\"residedist\";s:15:\"affectivestatus\";s:15:\"affectivestatus\";s:10:\"lookingfor\";s:10:\"lookingfor\";s:9:\"bloodtype\";s:9:\"bloodtype\";s:6:\"field1\";s:6:\"field1\";s:6:\"field2\";s:6:\"field2\";s:6:\"field3\";s:6:\"field3\";s:6:\"field4\";s:6:\"field4\";s:6:\"field5\";s:6:\"field5\";s:6:\"field6\";s:6:\"field6\";s:6:\"field7\";s:6:\"field7\";s:6:\"field8\";s:6:\"field8\";}}s:7:\"contact\";a:4:{s:5:\"title\";s:8:\"��ϵ��ʽ\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"1\";s:5:\"field\";a:7:{s:9:\"telephone\";s:9:\"telephone\";s:6:\"mobile\";s:6:\"mobile\";s:2:\"qq\";s:2:\"qq\";s:3:\"msn\";s:3:\"msn\";s:6:\"taobao\";s:6:\"taobao\";s:3:\"icq\";s:3:\"icq\";s:5:\"yahoo\";s:5:\"yahoo\";}}s:3:\"edu\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:2;s:5:\"title\";s:8:\"�������\";s:5:\"field\";a:2:{s:14:\"graduateschool\";s:14:\"graduateschool\";s:9:\"education\";s:9:\"education\";}}s:4:\"work\";a:4:{s:9:\"available\";i:1;s:12:\"displayorder\";i:3;s:5:\"title\";s:8:\"�������\";s:5:\"field\";a:4:{s:7:\"company\";s:7:\"company\";s:10:\"occupation\";s:10:\"occupation\";s:8:\"position\";s:8:\"position\";s:7:\"revenue\";s:7:\"revenue\";}}s:4:\"info\";a:4:{s:5:\"title\";s:8:\"������Ϣ\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"4\";s:5:\"field\";a:10:{s:10:\"idcardtype\";s:10:\"idcardtype\";s:6:\"idcard\";s:6:\"idcard\";s:7:\"address\";s:7:\"address\";s:7:\"zipcode\";s:7:\"zipcode\";s:4:\"site\";s:4:\"site\";s:3:\"bio\";s:3:\"bio\";s:8:\"interest\";s:8:\"interest\";s:7:\"sightml\";s:7:\"sightml\";s:12:\"customstatus\";s:12:\"customstatus\";s:10:\"timeoffset\";s:10:\"timeoffset\";}}}s:18:\"onlyacceptfriendpm\";s:1:\"0\";s:12:\"pmreportuser\";s:1:\"1\";s:17:\"chatpmrefreshtime\";s:1:\"8\";s:14:\"preventrefresh\";s:1:\"1\";s:14:\"imagelistthumb\";s:1:\"0\";s:10:\"regconnect\";s:1:\"1\";s:7:\"connect\";a:0:{}s:14:\"allowwidthauto\";s:1:\"1\";s:15:\"switchwidthauto\";s:1:\"1\";s:13:\"leftsidewidth\";s:1:\"0\";s:4:\"card\";a:1:{s:4:\"open\";s:1:\"0\";}s:14:\"report_receive\";s:62:\"a:2:{s:9:\"adminuser\";a:1:{i:0;s:1:\"1\";}s:12:\"supmoderator\";N;}\";s:12:\"leftsideopen\";s:1:\"0\";s:8:\"showexif\";s:1:\"0\";s:15:\"followretainday\";s:1:\"7\";s:6:\"newbie\";s:2:\"20\";s:23:\"collectionteamworkernum\";s:1:\"3\";s:13:\"collectionnum\";s:2:\"10\";s:23:\"blockmaxaggregationitem\";s:5:\"20000\";s:9:\"moddetail\";s:1:\"0\";s:9:\"antitheft\";a:2:{s:5:\"allow\";i:0;s:3:\"max\";i:200;}s:11:\"repliesrank\";s:1:\"0\";s:15:\"threadblacklist\";s:1:\"1\";s:16:\"threadhotreplies\";s:1:\"0\";s:15:\"threadfilternum\";s:2:\"10\";s:16:\"hidefilteredpost\";s:1:\"0\";s:25:\"forumdisplaythreadpreview\";s:1:\"1\";s:14:\"nofilteredpost\";s:1:\"0\";s:14:\"filterednovote\";s:1:\"1\";s:10:\"numbercard\";s:74:\"a:1:{s:3:\"row\";a:3:{i:1;s:7:\"threads\";i:2;s:5:\"posts\";i:3;s:7:\"credits\";}}\";s:8:\"darkroom\";s:1:\"1\";s:19:\"creditspolicymobile\";s:1:\"0\";s:10:\"showsignin\";s:1:\"1\";s:9:\"showfjump\";s:1:\"1\";s:4:\"grid\";a:8:{s:8:\"showgrid\";s:1:\"0\";s:8:\"gridtype\";s:1:\"0\";s:8:\"textleng\";s:2:\"30\";s:4:\"fids\";a:1:{i:0;i:0;}s:9:\"highlight\";s:1:\"1\";s:11:\"targetblank\";s:1:\"1\";s:8:\"showtips\";s:1:\"1\";s:9:\"cachelife\";s:3:\"600\";}s:20:\"showfollowcollection\";s:1:\"8\";s:14:\"allowfastreply\";s:1:\"0\";s:11:\"notifyusers\";s:83:\"a:1:{i:1;a:2:{s:8:\"username\";s:5:\"admin\";s:5:\"types\";s:20:\"11111111111111111111\";}}\";s:10:\"homestatus\";s:1:\"0\";s:12:\"article_tags\";a:8:{i:1;s:4:\"ԭ��\";i:2;s:4:\"�ȵ�\";i:3;s:4:\"��ͼ\";i:4;s:4:\"����\";i:5;s:4:\"ͷ��\";i:6;s:4:\"�õ�\";i:7;s:4:\"����\";i:8;s:4:\"�Ƽ�\";}s:21:\"disfixednv_forumindex\";s:1:\"0\";s:13:\"forumpicstyle\";s:70:\"a:3:{s:10:\"thumbwidth\";i:0;s:11:\"thumbheight\";i:0;s:8:\"thumbnum\";i:0;}\";s:23:\"disfixednv_forumdisplay\";s:1:\"0\";s:14:\"disfixedavatar\";s:1:\"0\";s:21:\"disfixednv_viewthread\";s:1:\"0\";s:15:\"threadguestlite\";s:1:\"0\";s:14:\"close_leftinfo\";s:1:\"0\";s:23:\"close_leftinfo_userctrl\";s:1:\"0\";s:14:\"guestviewthumb\";a:3:{s:4:\"flag\";i:0;s:5:\"width\";i:100;s:6:\"height\";i:100;}s:17:\"guesttipsinthread\";a:2:{s:4:\"flag\";i:0;s:4:\"text\";s:0:\"\";}s:12:\"allowreplybg\";s:1:\"0\";s:14:\"newusergroupid\";s:2:\"10\";s:18:\"buyusergroupexists\";s:1:\"0\";s:9:\"forumfids\";a:0:{}s:7:\"version\";s:4:\"X3.4\";s:13:\"cachethreadon\";i:0;s:6:\"styles\";a:1:{i:1;s:8:\"Ĭ�Ϸ��\";}s:11:\"creditnames\";s:23:\"1|����|,2|��Ǯ|,3|����|\";s:17:\"creditstransextra\";a:10:{i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"2\";i:8;s:1:\"2\";i:9;s:1:\"2\";i:10;s:1:\"2\";}s:14:\"exchangestatus\";b:0;s:14:\"transferstatus\";b:1;s:10:\"ucenterurl\";s:26:\"http://discuz.cc/uc_server\";s:9:\"tradeopen\";i:1;s:11:\"medalstatus\";i:0;s:7:\"plugins\";a:3:{s:9:\"available\";a:4:{i:0;s:8:\"qfmobile\";i:1;s:11:\"fn_hb_share\";i:2;s:9:\"violation\";i:3;s:6:\"mobile\";}s:4:\"func\";a:2:{s:16:\"hookscriptmobile\";a:2:{s:6:\"common\";b:1;s:10:\"discuzcode\";b:1;}s:10:\"hookscript\";a:2:{s:6:\"common\";b:1;s:10:\"discuzcode\";b:1;}}s:7:\"version\";a:4:{s:8:\"qfmobile\";s:3:\"1.3\";s:11:\"fn_hb_share\";s:5:\"1.7.5\";s:9:\"violation\";s:3:\"1.0\";s:6:\"mobile\";s:5:\"1.4.8\";}}s:11:\"pluginlinks\";a:0:{}s:10:\"hookscript\";a:6:{s:6:\"global\";a:4:{s:24:\"validateVerificationCode\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:24:\"validateVerificationCode\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:24:\"validateVerificationCode\";}}}}s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}s:6:\"member\";a:2:{s:8:\"register\";a:4:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:11:\"outputfuncs\";a:1:{s:14:\"register_input\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:21:\"register_input_output\";}}}s:5:\"funcs\";a:1:{s:23:\"register_logging_method\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:23:\"register_logging_method\";}}}}s:24:\"validateVerificationCode\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:24:\"validateVerificationCode\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:24:\"validateVerificationCode\";}}}}}s:4:\"home\";a:2:{s:15:\"spacecp_profile\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:11:\"outputfuncs\";a:1:{s:22:\"spacecp_profile_bottom\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:29:\"spacecp_profile_bottom_output\";}}}}s:24:\"validateVerificationCode\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:24:\"validateVerificationCode\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:24:\"validateVerificationCode\";}}}}}s:5:\"forum\";a:8:{s:4:\"post\";a:4:{s:6:\"module\";a:2:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:2:{s:8:\"qfmobile\";s:1:\"0\";s:6:\"mobile\";s:1:\"0\";}s:11:\"outputfuncs\";a:2:{s:14:\"post_btn_extra\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:21:\"post_btn_extra_output\";}}s:22:\"post_infloat_btn_extra\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:29:\"post_infloat_btn_extra_output\";}}}s:12:\"messagefuncs\";a:1:{s:11:\"post_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:19:\"post_mobile_message\";}}}}s:12:\"forumdisplay\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:11:\"outputfuncs\";a:1:{s:31:\"forumdisplay_fastpost_btn_extra\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:38:\"forumdisplay_fastpost_btn_extra_output\";}}}}s:10:\"viewthread\";a:3:{s:6:\"module\";a:2:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:2:{s:8:\"qfmobile\";s:1:\"0\";s:6:\"mobile\";s:1:\"0\";}s:11:\"outputfuncs\";a:3:{s:17:\"viewthread_bottom\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:24:\"viewthread_bottom_output\";}}s:27:\"viewthread_fastpost_content\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:34:\"viewthread_fastpost_content_output\";}}s:21:\"viewthread_postbottom\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:28:\"viewthread_postbottom_output\";}}}}s:24:\"validateVerificationCode\";a:3:{s:6:\"module\";a:1:{s:8:\"qfmobile\";s:17:\"qfmobile/qfmobile\";}s:7:\"adminid\";a:1:{s:8:\"qfmobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:24:\"validateVerificationCode\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:24:\"validateVerificationCode\";}}}}s:4:\"misc\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:12:\"messagefuncs\";a:1:{s:11:\"misc_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:19:\"misc_mobile_message\";}}}}s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}s:4:\"misc\";a:3:{s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}s:7:\"connect\";a:4:{s:5:\"login\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:12:\"messagefuncs\";a:1:{s:12:\"login_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:20:\"login_mobile_message\";}}}}s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}}s:16:\"hookscriptmobile\";a:3:{s:5:\"forum\";a:6:{s:10:\"viewthread\";a:4:{s:6:\"module\";a:2:{s:8:\"qfmobile\";s:23:\"qfmobile/mobileqfmobile\";s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:2:{s:8:\"qfmobile\";s:1:\"0\";s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:21:\"viewthread_top_mobile\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:21:\"viewthread_top_mobile\";}}}s:11:\"outputfuncs\";a:1:{s:21:\"viewthread_postbottom\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:28:\"viewthread_postbottom_output\";}}}}s:4:\"post\";a:4:{s:6:\"module\";a:2:{s:8:\"qfmobile\";s:23:\"qfmobile/mobileqfmobile\";s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:2:{s:8:\"qfmobile\";s:1:\"0\";s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:18:\"post_bottom_mobile\";a:1:{i:0;a:2:{i:0;s:8:\"qfmobile\";i:1;s:18:\"post_bottom_mobile\";}}}s:12:\"messagefuncs\";a:1:{s:11:\"post_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:19:\"post_mobile_message\";}}}}s:4:\"misc\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:12:\"messagefuncs\";a:1:{s:11:\"misc_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:19:\"misc_mobile_message\";}}}}s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}s:6:\"global\";a:4:{s:5:\"index\";a:3:{s:6:\"module\";a:1:{s:9:\"violation\";s:16:\"violation/mobile\";}s:7:\"adminid\";a:1:{s:9:\"violation\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:16:\"index_top_mobile\";a:1:{i:0;a:2:{i:0;s:9:\"violation\";i:1;s:16:\"index_top_mobile\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:2:{s:20:\"global_header_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:20:\"global_header_mobile\";}}s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}}s:4:\"misc\";a:3:{s:6:\"common\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:6:\"common\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:6:\"common\";}}}}s:10:\"discuzcode\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:10:\"discuzcode\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:10:\"discuzcode\";}}}}s:6:\"global\";a:3:{s:6:\"module\";a:1:{s:6:\"mobile\";s:13:\"mobile/mobile\";}s:7:\"adminid\";a:1:{s:6:\"mobile\";s:1:\"0\";}s:5:\"funcs\";a:1:{s:13:\"global_mobile\";a:1:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:13:\"global_mobile\";}}}}}}s:13:\"threadplugins\";a:0:{}s:11:\"specialicon\";a:0:{}s:4:\"navs\";a:4:{i:157;a:6:{s:7:\"navname\";s:10:\"������Υ��\";s:8:\"filename\";s:23:\"plugin.php?id=violation\";s:9:\"available\";s:1:\"1\";s:5:\"navid\";s:8:\"mn_N8087\";s:5:\"level\";s:1:\"0\";s:3:\"nav\";s:81:\"id=\"mn_N8087\" ><a href=\"plugin.php?id=violation\" hidefocus=\"true\"  >������Υ��</a\";}i:2;a:6:{s:7:\"navname\";s:4:\"��̳\";s:8:\"filename\";s:9:\"forum.php\";s:9:\"available\";s:1:\"1\";s:5:\"navid\";s:8:\"mn_forum\";s:5:\"level\";s:1:\"0\";s:3:\"nav\";s:100:\"id=\"mn_forum\" ><a href=\"http://bbs.discuz.cc\" hidefocus=\"true\" title=\"BBS\"  >��̳<span>BBS</span></a\";}i:6;a:3:{s:7:\"navname\";s:4:\"���\";s:8:\"filename\";s:1:\"#\";s:9:\"available\";i:0;}i:7;a:6:{s:7:\"navname\";s:4:\"����\";s:8:\"filename\";s:16:\"misc.php?mod=faq\";s:9:\"available\";s:1:\"0\";s:5:\"navid\";s:8:\"mn_N0a2c\";s:5:\"level\";s:1:\"0\";s:3:\"nav\";s:98:\"id=\"mn_N0a2c\" ><a href=\"misc.php?mod=faq\" hidefocus=\"true\" title=\"Help\"  >����<span>Help</span></a\";}}s:7:\"subnavs\";a:0:{}s:8:\"menunavs\";s:0:\"\";s:6:\"navmns\";a:2:{s:10:\"plugin.php\";a:1:{i:0;a:2:{i:0;a:1:{s:2:\"id\";s:9:\"violation\";}i:1;s:8:\"mn_N8087\";}}s:8:\"misc.php\";a:1:{i:0;a:2:{i:0;a:1:{s:3:\"mod\";s:3:\"faq\";}i:1;s:8:\"mn_N0a2c\";}}}s:5:\"navmn\";a:1:{s:9:\"forum.php\";s:8:\"mn_forum\";}s:6:\"navdms\";a:0:{}s:8:\"navlogos\";N;s:10:\"footernavs\";a:5:{s:4:\"stat\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:8:\"վ��ͳ��\";s:4:\"code\";s:41:\"<a href=\"misc.php?mod=stat\" >վ��ͳ��</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:4:\"stat\";}s:6:\"report\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:4:\"�ٱ�\";s:4:\"code\";s:119:\"<a href=\"javascript:;\"  onclick=\"showWindow(\'miscreport\', \'misc.php?mod=report&url=\'+REPORTURL);return false;\">�ٱ�</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:6:\"report\";}s:8:\"archiver\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:8:\"Archiver\";s:4:\"code\";s:54:\"<a href=\"http://bbs.discuz.cc/archiver/\" >Archiver</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:8:\"archiver\";}s:6:\"mobile\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:6:\"�ֻ���\";s:4:\"code\";s:41:\"<a href=\"http://3g.discuz.cc\" >�ֻ���</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:6:\"mobile\";}s:8:\"darkroom\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:6:\"С����\";s:4:\"code\";s:60:\"<a href=\"forum.php?mod=misc&action=showdarkroom\" >С����</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:8:\"darkroom\";}}s:9:\"spacenavs\";a:1:{i:125;a:4:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:4:\"{hr}\";s:4:\"code\";s:26:\"</ul><hr class=\"da\" /><ul>\";s:5:\"level\";s:1:\"0\";}}s:6:\"mynavs\";a:6:{s:5:\"magic\";a:4:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:4:\"����\";s:4:\"code\";s:129:\"<a href=\"home.php?mod=magic\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/magic_b.png) !important\">����</a>\";s:5:\"level\";s:1:\"0\";}s:5:\"medal\";a:4:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:4:\"ѫ��\";s:4:\"code\";s:129:\"<a href=\"home.php?mod=medal\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/medal_b.png) !important\">ѫ��</a>\";s:5:\"level\";s:1:\"0\";}s:4:\"task\";a:4:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:4:\"����\";s:4:\"code\";s:127:\"<a href=\"home.php?mod=task\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/task_b.png) !important\">����</a>\";s:5:\"level\";s:1:\"0\";}s:6:\"friend\";a:4:{s:9:\"available\";s:1:\"0\";s:7:\"navname\";s:4:\"����\";s:4:\"code\";s:140:\"<a href=\"home.php?mod=space&do=friend\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/friend_b.png) !important\">����</a>\";s:5:\"level\";s:1:\"0\";}s:6:\"thread\";a:4:{s:9:\"available\";s:1:\"0\";s:7:\"navname\";s:4:\"����\";s:4:\"code\";s:139:\"<a href=\"forum.php?mod=guide&view=my\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/thread_b.png) !important\">����</a>\";s:5:\"level\";s:1:\"0\";}s:8:\"favorite\";a:4:{s:9:\"available\";s:1:\"0\";s:7:\"navname\";s:4:\"�ղ�\";s:4:\"code\";s:152:\"<a href=\"home.php?mod=space&do=favorite&view=me\" style=\"background-image:url(http://bbs.discuz.cc/static/image/feed/favorite_b.png) !important\">�ղ�</a>\";s:5:\"level\";s:1:\"0\";}}s:7:\"topnavs\";a:1:{i:0;a:2:{s:11:\"sethomepage\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:8:\"��Ϊ��ҳ\";s:4:\"code\";s:84:\"<a href=\"javascript:;\"  onclick=\"setHomepage(\'http://bbs.discuz.cc/\');\">��Ϊ��ҳ</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:11:\"sethomepage\";}s:11:\"setfavorite\";a:6:{s:9:\"available\";s:1:\"1\";s:7:\"navname\";s:8:\"�ղر�վ\";s:4:\"code\";s:109:\"<a href=\"http://bbs.discuz.cc/\"  onclick=\"addFavorite(this.href, \'Discuz! Board\');return false;\">�ղر�վ</a>\";s:4:\"type\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:2:\"id\";s:11:\"setfavorite\";}}}s:11:\"profilenode\";a:2:{s:8:\"template\";a:1:{i:0;a:2:{s:4:\"left\";s:187:\"{vyFv2FMN}\r\n{eD4MGV2O}\r\n{J7Ayh1N7}\r\n{koP9aYkf}\r\n{o1PF2RF3}\r\n{EZ28yz1G}\r\n<dl class=\"pil cl\">\r\n	<dt>{K81dpY89}</dt><dd>{dh4YZohR}</dd>\r\n</dl>\r\n{S1dfF89h}\r\n<dl class=\"pil cl\">{uHhvA2dN}</dl>\";s:3:\"top\";s:62:\"<dl class=\"cl\">\r\n<dt>{by8Hky34}</dt><dd>{RRiZf9mo}</dd>\r\n</dl>\";}}s:4:\"code\";a:1:{i:0;a:2:{s:4:\"left\";a:10:{s:10:\"{vyFv2FMN}\";a:4:{i:0;s:10:\"numbercard\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:10:\"{eD4MGV2O}\";a:4:{i:0;s:9:\"groupicon\";i:1;s:3:\"<p>\";i:2;s:4:\"</p>\";i:3;s:0:\"\";}s:10:\"{J7Ayh1N7}\";a:4:{i:0;s:11:\"authortitle\";i:1;s:7:\"<p><em>\";i:2;s:9:\"</em></p>\";i:3;s:0:\"\";}s:10:\"{koP9aYkf}\";a:4:{i:0;s:12:\"customstatus\";i:1;s:15:\"<p class=\"xg1\">\";i:2;s:4:\"</p>\";i:3;s:0:\"\";}s:10:\"{o1PF2RF3}\";a:4:{i:0;s:4:\"star\";i:1;s:3:\"<p>\";i:2;s:4:\"</p>\";i:3;s:0:\"\";}s:10:\"{EZ28yz1G}\";a:4:{i:0;s:15:\"upgradeprogress\";i:1;s:3:\"<p>\";i:2;s:4:\"</p>\";i:3;s:0:\"\";}s:10:\"{K81dpY89}\";a:4:{i:0;s:8:\"baseinfo\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:9:\"credits,1\";}s:10:\"{dh4YZohR}\";a:4:{i:0;s:8:\"baseinfo\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:9:\"credits,0\";}s:10:\"{S1dfF89h}\";a:4:{i:0;s:5:\"medal\";i:1;s:19:\"<p class=\"md_ctrl\">\";i:2;s:4:\"</p>\";i:3;s:0:\"\";}s:10:\"{uHhvA2dN}\";a:4:{i:0;s:8:\"baseinfo\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:10:\"field_qq,0\";}}s:3:\"top\";a:2:{s:10:\"{by8Hky34}\";a:4:{i:0;s:8:\"baseinfo\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:9:\"credits,1\";}s:10:\"{RRiZf9mo}\";a:4:{i:0;s:8:\"baseinfo\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:9:\"credits,0\";}}}}}s:13:\"allowsynlogin\";i:0;s:9:\"ucappopen\";a:0:{}s:5:\"ucapp\";a:0:{}s:9:\"uchomeurl\";s:0:\"\";s:9:\"discuzurl\";s:16:\"http://discuz.cc\";s:8:\"homeshow\";s:1:\"0\";s:8:\"csspathv\";s:11:\"data/cache/\";s:7:\"csspath\";s:17:\"data/cache/style_\";s:8:\"reginput\";a:4:{s:8:\"username\";s:6:\"Ke88Ke\";s:8:\"password\";s:6:\"Jz8n9S\";s:9:\"password2\";s:6:\"Piy2eS\";s:5:\"email\";s:6:\"ZX4Y5T\";}s:6:\"output\";a:2:{s:3:\"str\";a:2:{s:6:\"search\";a:4:{s:5:\"forum\";s:18:\"<a href=\"forum.php\";s:6:\"portal\";s:19:\"<a href=\"portal.php\";s:5:\"group\";s:18:\"<a href=\"group.php\";s:4:\"home\";s:17:\"<a href=\"home.php\";}s:7:\"replace\";a:4:{s:5:\"forum\";s:39:\"<a href=\"http://bbs.discuz.cc/forum.php\";s:6:\"portal\";s:36:\"<a href=\"http://discuz.cc/portal.php\";s:5:\"group\";s:35:\"<a href=\"http://discuz.cc/group.php\";s:4:\"home\";s:34:\"<a href=\"http://discuz.cc/home.php\";}}s:4:\"preg\";a:0:{}}s:8:\"parseflv\";a:8:{i:56;a:1:{i:0;s:10:\"www.56.com\";}s:3:\"ku6\";a:2:{i:0;s:15:\"v.ku6.com/show/\";i:1;s:23:\"v.ku6.com/special/show_\";}s:2:\"qq\";a:2:{i:0;s:16:\"v.qq.com/x/page/\";i:1;s:17:\"v.qq.com/x/cover/\";}s:4:\"sina\";a:2:{i:0;s:22:\"video.sina.com.cn/v/b/\";i:1;s:24:\"you.video.sina.com.cn/b/\";}s:4:\"sohu\";a:2:{i:0;s:17:\"my.tv.sohu.com/u/\";i:1;s:18:\"v.blog.sohu.com/u/\";}s:5:\"tudou\";a:1:{i:0;s:24:\"tudou.com/programs/view/\";}s:5:\"youku\";a:1:{i:0;s:19:\"v.youku.com/v_show/\";}s:7:\"youtube\";a:1:{i:0;s:22:\"www.youtube.com/watch?\";}}}'),('admingroup_1',1,1607929477,'a:62:{s:8:\"admingid\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"1\";s:16:\"allowstickthread\";s:1:\"3\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"1\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"1\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"1\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"1\";s:17:\"alloweditactivity\";s:1:\"1\";s:15:\"allowstickreply\";s:1:\"1\";s:18:\"allowmanagearticle\";s:1:\"1\";s:13:\"allowaddtopic\";s:1:\"1\";s:16:\"allowmanagetopic\";s:1:\"1\";s:8:\"allowdiy\";s:1:\"1\";s:17:\"allowclearrecycle\";s:1:\"1\";s:14:\"allowmanagetag\";s:1:\"1\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"1\";s:11:\"managedoing\";s:1:\"1\";s:11:\"manageshare\";s:1:\"1\";s:10:\"manageblog\";s:1:\"1\";s:11:\"managealbum\";s:1:\"1\";s:13:\"managecomment\";s:1:\"1\";s:14:\"managemagiclog\";s:1:\"1\";s:12:\"managereport\";s:1:\"1\";s:13:\"managehotuser\";s:1:\"1\";s:17:\"managedefaultuser\";s:1:\"1\";s:16:\"managevideophoto\";s:1:\"1\";s:11:\"managemagic\";s:1:\"1\";s:11:\"manageclick\";s:1:\"1\";s:21:\"allowmanagecollection\";s:1:\"1\";s:13:\"allowmakehtml\";s:1:\"1\";}'),('admingroup_2',1,1607929477,'a:62:{s:8:\"admingid\";s:1:\"2\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"2\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"1\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"1\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"1\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"1\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('admingroup_3',1,1607929477,'a:62:{s:8:\"admingid\";s:1:\"3\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"1\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('admingroup_16',1,1607929477,'a:62:{s:8:\"admingid\";s:2:\"16\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"1\";s:12:\"allowmodpost\";s:1:\"0\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"0\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"1\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('admingroup_17',1,1607929477,'a:62:{s:8:\"admingid\";s:2:\"17\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"2\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('admingroup_18',1,1607929477,'a:62:{s:8:\"admingid\";s:2:\"18\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"0\";s:12:\"allowmodpost\";s:1:\"0\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"0\";s:20:\"supe_allowpushthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"0\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"0\";s:20:\"allowrecommendthread\";s:1:\"0\";s:15:\"allowbumpthread\";s:1:\"0\";s:16:\"allowclosethread\";s:1:\"0\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"0\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"0\";s:15:\"allowviewreport\";s:1:\"0\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('admingroup_19',1,1607929477,'a:62:{s:8:\"admingid\";s:2:\"19\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"0\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"0\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"0\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"0\";s:20:\"allowrecommendthread\";s:1:\"0\";s:15:\"allowbumpthread\";s:1:\"0\";s:16:\"allowclosethread\";s:1:\"0\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"0\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"0\";s:15:\"allowviewreport\";s:1:\"0\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";}'),('advs',1,1607929477,'a:3:{s:8:\"evalcode\";a:0:{}s:10:\"parameters\";a:0:{}s:4:\"code\";a:0:{}}'),('albumcategory',1,1607929477,'a:0:{}'),('announcements',1,1607929477,'a:0:{}'),('announcements_forum',1,1607929477,'a:0:{}'),('antitheft',1,1607929477,'a:1:{i:0;a:1:{s:5:\"range\";a:1:{i:0;a:2:{s:3:\"min\";b:0;s:3:\"max\";b:0;}}}}'),('attachtype',1,1608089316,'a:0:{}'),('bbcodes',1,1607929477,'a:13:{i:1;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:2;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:3;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:10;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:11;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:12;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:13;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:14;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:15;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:16;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:17;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:18;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}i:19;a:2:{s:11:\"searcharray\";a:1:{i:0;s:27:\"/\\[qq]([^\"\\[]+?)\\[\\/qq\\]/is\";}s:12:\"replacearray\";a:1:{i:0;s:166:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin=\\1&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";}}}'),('bbcodes_display',1,1607929477,'a:13:{i:1;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:2;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:3;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:10;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:11;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:12;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:13;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:14;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:15;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:16;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:17;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:18;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}i:19;a:1:{s:2:\"qq\";a:12:{s:2:\"id\";s:1:\"2\";s:9:\"available\";s:1:\"2\";s:4:\"icon\";s:9:\"bb_qq.gif\";s:11:\"replacement\";s:167:\"<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>\";s:7:\"example\";s:15:\"[qq]688888[/qq]\";s:11:\"explanation\";s:46:\"��ʾ QQ ����״̬�������ͼ����Ժ�������������\";s:6:\"params\";s:1:\"1\";s:6:\"prompt\";s:203:\"������ QQ ����:<a href=\"\" class=\"xi2\" onclick=\"this.href=\\\'http://wp.qq.com/set.html?from=discuz&uin=\\\'+$(\\\'e_cst1_qq_param_1\\\').value\" target=\"_blank\" style=\"float:right;\">����QQ����״̬&nbsp;&nbsp;</a>\";s:4:\"nest\";s:1:\"1\";s:12:\"displayorder\";s:2:\"21\";s:4:\"perm\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"10\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"15\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"18\";i:12;s:2:\"19\";}s:1:\"i\";i:1;}}}'),('blogcategory',1,1607929477,'a:0:{}'),('censor',1,1607929477,'a:3:{s:6:\"filter\";a:0:{}s:6:\"banned\";a:1:{i:0;s:9:\"/(��Ʒ)/i\";}s:3:\"mod\";a:0:{}}'),('click',1,1607929477,'a:3:{s:6:\"blogid\";a:5:{i:1;a:6:{s:7:\"clickid\";s:1:\"1\";s:4:\"name\";s:4:\"·��\";s:4:\"icon\";s:9:\"luguo.gif\";s:6:\"idtype\";s:6:\"blogid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:2;a:6:{s:7:\"clickid\";s:1:\"2\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:10:\"leiren.gif\";s:6:\"idtype\";s:6:\"blogid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:3;a:6:{s:7:\"clickid\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:10:\"woshou.gif\";s:6:\"idtype\";s:6:\"blogid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:4;a:6:{s:7:\"clickid\";s:1:\"4\";s:4:\"name\";s:4:\"�ʻ�\";s:4:\"icon\";s:11:\"xianhua.gif\";s:6:\"idtype\";s:6:\"blogid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:5;a:6:{s:7:\"clickid\";s:1:\"5\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:9:\"jidan.gif\";s:6:\"idtype\";s:6:\"blogid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}}s:5:\"picid\";a:5:{i:1;a:6:{s:7:\"clickid\";s:1:\"6\";s:4:\"name\";s:4:\"Ư��\";s:4:\"icon\";s:13:\"piaoliang.gif\";s:6:\"idtype\";s:5:\"picid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:2;a:6:{s:7:\"clickid\";s:1:\"7\";s:4:\"name\";s:4:\"���\";s:4:\"icon\";s:8:\"kubi.gif\";s:6:\"idtype\";s:5:\"picid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:3;a:6:{s:7:\"clickid\";s:1:\"8\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:10:\"leiren.gif\";s:6:\"idtype\";s:5:\"picid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:4;a:6:{s:7:\"clickid\";s:1:\"9\";s:4:\"name\";s:4:\"�ʻ�\";s:4:\"icon\";s:11:\"xianhua.gif\";s:6:\"idtype\";s:5:\"picid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:5;a:6:{s:7:\"clickid\";s:2:\"10\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:9:\"jidan.gif\";s:6:\"idtype\";s:5:\"picid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}}s:3:\"aid\";a:5:{i:1;a:6:{s:7:\"clickid\";s:2:\"11\";s:4:\"name\";s:4:\"·��\";s:4:\"icon\";s:9:\"luguo.gif\";s:6:\"idtype\";s:3:\"aid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:2;a:6:{s:7:\"clickid\";s:2:\"12\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:10:\"leiren.gif\";s:6:\"idtype\";s:3:\"aid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:3;a:6:{s:7:\"clickid\";s:2:\"13\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:10:\"woshou.gif\";s:6:\"idtype\";s:3:\"aid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:4;a:6:{s:7:\"clickid\";s:2:\"14\";s:4:\"name\";s:4:\"�ʻ�\";s:4:\"icon\";s:11:\"xianhua.gif\";s:6:\"idtype\";s:3:\"aid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}i:5;a:6:{s:7:\"clickid\";s:2:\"15\";s:4:\"name\";s:4:\"����\";s:4:\"icon\";s:9:\"jidan.gif\";s:6:\"idtype\";s:3:\"aid\";s:9:\"available\";s:1:\"1\";s:12:\"displayorder\";s:1:\"0\";}}}'),('connect_blacklist',1,1607929477,'a:0:{}'),('creditrule',1,1608089316,'a:31:{s:18:\"followedcollection\";a:17:{s:3:\"rid\";s:2:\"31\";s:8:\"rulename\";s:12:\"��ר��������\";s:6:\"action\";s:18:\"followedcollection\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"3\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:54:\"%E6%B7%98%E4%B8%93%E8%BE%91%E8%A2%AB%E8%AE%A2%E9%98%85\";}s:13:\"portalcomment\";a:17:{s:3:\"rid\";s:2:\"30\";s:8:\"rulename\";s:8:\"��������\";s:6:\"action\";s:13:\"portalcomment\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"40\";s:8:\"norepeat\";s:1:\"1\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E6%96%87%E7%AB%A0%E8%AF%84%E8%AE%BA\";}s:12:\"modifydomain\";a:17:{s:3:\"rid\";s:2:\"29\";s:8:\"rulename\";s:8:\"�޸�����\";s:6:\"action\";s:12:\"modifydomain\";s:9:\"cycletype\";s:1:\"0\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"1\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E4%BF%AE%E6%94%B9%E5%9F%9F%E5%90%8D\";}s:5:\"click\";a:17:{s:3:\"rid\";s:2:\"28\";s:8:\"rulename\";s:8:\"��Ϣ��̬\";s:6:\"action\";s:5:\"click\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"10\";s:8:\"norepeat\";s:1:\"1\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E4%BF%A1%E6%81%AF%E8%A1%A8%E6%80%81\";}s:6:\"useapp\";a:17:{s:3:\"rid\";s:2:\"27\";s:8:\"rulename\";s:8:\"ʹ��Ӧ��\";s:6:\"action\";s:6:\"useapp\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"10\";s:8:\"norepeat\";s:1:\"3\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E4%BD%BF%E7%94%A8%E5%BA%94%E7%94%A8\";}s:10:\"installapp\";a:17:{s:3:\"rid\";s:2:\"26\";s:8:\"rulename\";s:8:\"��װӦ��\";s:6:\"action\";s:10:\"installapp\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"3\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%AE%89%E8%A3%85%E5%BA%94%E7%94%A8\";}s:10:\"getcomment\";a:17:{s:3:\"rid\";s:2:\"25\";s:8:\"rulename\";s:6:\"������\";s:6:\"action\";s:10:\"getcomment\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"20\";s:8:\"norepeat\";s:1:\"1\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:27:\"%E8%A2%AB%E8%AF%84%E8%AE%BA\";}s:7:\"comment\";a:17:{s:3:\"rid\";s:2:\"24\";s:8:\"rulename\";s:4:\"����\";s:6:\"action\";s:7:\"comment\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"40\";s:8:\"norepeat\";s:1:\"1\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:18:\"%E8%AF%84%E8%AE%BA\";}s:11:\"createshare\";a:17:{s:3:\"rid\";s:2:\"23\";s:8:\"rulename\";s:8:\"�������\";s:6:\"action\";s:11:\"createshare\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"3\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E8%B5%B7%E5%88%86%E4%BA%AB\";}s:8:\"joinpoll\";a:17:{s:3:\"rid\";s:2:\"22\";s:8:\"rulename\";s:8:\"����ͶƱ\";s:6:\"action\";s:8:\"joinpoll\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"10\";s:8:\"norepeat\";s:1:\"1\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%82%E4%B8%8E%E6%8A%95%E7%A5%A8\";}s:11:\"publishblog\";a:17:{s:3:\"rid\";s:2:\"21\";s:8:\"rulename\";s:8:\"������־\";s:6:\"action\";s:11:\"publishblog\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"3\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E8%A1%A8%E6%97%A5%E5%BF%97\";}s:5:\"doing\";a:17:{s:3:\"rid\";s:2:\"20\";s:8:\"rulename\";s:8:\"������¼\";s:6:\"action\";s:5:\"doing\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"5\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E8%A1%A8%E8%AE%B0%E5%BD%95\";}s:12:\"getguestbook\";a:17:{s:3:\"rid\";s:2:\"19\";s:8:\"rulename\";s:6:\"������\";s:6:\"action\";s:12:\"getguestbook\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"5\";s:8:\"norepeat\";s:1:\"2\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:27:\"%E8%A2%AB%E7%95%99%E8%A8%80\";}s:9:\"guestbook\";a:17:{s:3:\"rid\";s:2:\"18\";s:8:\"rulename\";s:4:\"����\";s:6:\"action\";s:9:\"guestbook\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"20\";s:8:\"norepeat\";s:1:\"2\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:18:\"%E7%95%99%E8%A8%80\";}s:4:\"poke\";a:17:{s:3:\"rid\";s:2:\"17\";s:8:\"rulename\";s:6:\"���к�\";s:6:\"action\";s:4:\"poke\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"10\";s:8:\"norepeat\";s:1:\"2\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:27:\"%E6%89%93%E6%8B%9B%E5%91%BC\";}s:5:\"visit\";a:17:{s:3:\"rid\";s:2:\"16\";s:8:\"rulename\";s:12:\"���ʱ��˿ռ�\";s:6:\"action\";s:5:\"visit\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:2:\"10\";s:8:\"norepeat\";s:1:\"2\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:54:\"%E8%AE%BF%E9%97%AE%E5%88%AB%E4%BA%BA%E7%A9%BA%E9%97%B4\";}s:8:\"daylogin\";a:17:{s:3:\"rid\";s:2:\"15\";s:8:\"rulename\";s:8:\"ÿ���¼\";s:6:\"action\";s:8:\"daylogin\";s:9:\"cycletype\";s:1:\"1\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"1\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E6%AF%8F%E5%A4%A9%E7%99%BB%E5%BD%95\";}s:7:\"hotinfo\";a:17:{s:3:\"rid\";s:2:\"14\";s:8:\"rulename\";s:8:\"�ȵ���Ϣ\";s:6:\"action\";s:7:\"hotinfo\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E7%83%AD%E7%82%B9%E4%BF%A1%E6%81%AF\";}s:10:\"videophoto\";a:17:{s:3:\"rid\";s:2:\"13\";s:8:\"rulename\";s:8:\"��Ƶ��֤\";s:6:\"action\";s:10:\"videophoto\";s:9:\"cycletype\";s:1:\"0\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"1\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:2:\"10\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E8%A7%86%E9%A2%91%E8%AE%A4%E8%AF%81\";}s:9:\"setavatar\";a:17:{s:3:\"rid\";s:2:\"12\";s:8:\"rulename\";s:8:\"����ͷ��\";s:6:\"action\";s:9:\"setavatar\";s:9:\"cycletype\";s:1:\"0\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"1\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"5\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E8%AE%BE%E7%BD%AE%E5%A4%B4%E5%83%8F\";}s:9:\"realemail\";a:17:{s:3:\"rid\";s:2:\"11\";s:8:\"rulename\";s:8:\"������֤\";s:6:\"action\";s:9:\"realemail\";s:9:\"cycletype\";s:1:\"0\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"1\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:2:\"10\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E9%82%AE%E7%AE%B1%E8%AE%A4%E8%AF%81\";}s:13:\"tradefinished\";a:17:{s:3:\"rid\";s:2:\"10\";s:8:\"rulename\";s:8:\"�ɹ�����\";s:6:\"action\";s:13:\"tradefinished\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E6%88%90%E5%8A%9F%E4%BA%A4%E6%98%93\";}s:18:\"promotion_register\";a:17:{s:3:\"rid\";s:1:\"9\";s:8:\"rulename\";s:8:\"ע���ƹ�\";s:6:\"action\";s:18:\"promotion_register\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E6%B3%A8%E5%86%8C%E6%8E%A8%E5%B9%BF\";}s:15:\"promotion_visit\";a:17:{s:3:\"rid\";s:1:\"8\";s:8:\"rulename\";s:8:\"�����ƹ�\";s:6:\"action\";s:15:\"promotion_visit\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E8%AE%BF%E9%97%AE%E6%8E%A8%E5%B9%BF\";}s:6:\"search\";a:17:{s:3:\"rid\";s:1:\"7\";s:8:\"rulename\";s:4:\"����\";s:6:\"action\";s:6:\"search\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:18:\"%E6%90%9C%E7%B4%A2\";}s:6:\"sendpm\";a:17:{s:3:\"rid\";s:1:\"6\";s:8:\"rulename\";s:8:\"������Ϣ\";s:6:\"action\";s:6:\"sendpm\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E7%9F%AD%E6%B6%88%E6%81%AF\";}s:9:\"getattach\";a:17:{s:3:\"rid\";s:1:\"5\";s:8:\"rulename\";s:8:\"���ظ���\";s:6:\"action\";s:9:\"getattach\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E4%B8%8B%E8%BD%BD%E9%99%84%E4%BB%B6\";}s:10:\"postattach\";a:17:{s:3:\"rid\";s:1:\"4\";s:8:\"rulename\";s:8:\"�ϴ�����\";s:6:\"action\";s:10:\"postattach\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"0\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E4%B8%8A%E4%BC%A0%E9%99%84%E4%BB%B6\";}s:6:\"digest\";a:17:{s:3:\"rid\";s:1:\"3\";s:8:\"rulename\";s:6:\"�Ӿ���\";s:6:\"action\";s:6:\"digest\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"5\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:27:\"%E5%8A%A0%E7%B2%BE%E5%8D%8E\";}s:5:\"reply\";a:17:{s:3:\"rid\";s:1:\"2\";s:8:\"rulename\";s:8:\"�����ظ�\";s:6:\"action\";s:5:\"reply\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"1\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E8%A1%A8%E5%9B%9E%E5%A4%8D\";}s:4:\"post\";a:17:{s:3:\"rid\";s:1:\"1\";s:8:\"rulename\";s:8:\"��������\";s:6:\"action\";s:4:\"post\";s:9:\"cycletype\";s:1:\"4\";s:9:\"cycletime\";s:1:\"0\";s:9:\"rewardnum\";s:1:\"0\";s:8:\"norepeat\";s:1:\"0\";s:11:\"extcredits1\";s:1:\"0\";s:11:\"extcredits2\";s:1:\"2\";s:11:\"extcredits3\";s:1:\"0\";s:11:\"extcredits4\";s:1:\"0\";s:11:\"extcredits5\";s:1:\"0\";s:11:\"extcredits6\";s:1:\"0\";s:11:\"extcredits7\";s:1:\"0\";s:11:\"extcredits8\";s:1:\"0\";s:4:\"fids\";s:0:\"\";s:11:\"rulenameuni\";s:36:\"%E5%8F%91%E8%A1%A8%E4%B8%BB%E9%A2%98\";}}'),('custominfo',1,1607929477,'a:4:{s:9:\"fieldsadd\";s:0:\"\";s:7:\"setting\";a:0:{}s:7:\"profile\";a:0:{}s:6:\"postno\";a:5:{i:0;s:12:\"<sup>#</sup>\";i:1;s:4:\"¥��\";i:2;s:4:\"ɳ��\";i:3;s:4:\"���\";i:4;s:4:\"�ذ�\";}}'),('diytemplatename',1,1607929477,'a:1:{s:11:\"group/index\";s:4:\"��ҳ\";}'),('diytemplatenamegroup',1,1607929477,'a:1:{s:11:\"group/index\";b:1;}'),('domainwhitelist',1,1607929477,'a:0:{}'),('fields_connect_register',1,1607929477,'a:0:{}'),('fields_optional',1,1607929477,'a:37:{s:14:\"field_realname\";a:16:{s:7:\"fieldid\";s:8:\"realname\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��ʵ����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_gender\";a:16:{s:7:\"fieldid\";s:6:\"gender\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�Ա�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_birthyear\";a:16:{s:7:\"fieldid\";s:9:\"birthyear\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_birthmonth\";a:16:{s:7:\"fieldid\";s:10:\"birthmonth\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�����·�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:14:\"field_birthday\";a:16:{s:7:\"fieldid\";s:8:\"birthday\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:19:\"field_constellation\";a:16:{s:7:\"fieldid\";s:13:\"constellation\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"����\";s:11:\"description\";s:22:\"����(���������Զ�����)\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_zodiac\";a:16:{s:7:\"fieldid\";s:6:\"zodiac\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"��Ф\";s:11:\"description\";s:22:\"��Ф(���������Զ�����)\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_telephone\";a:16:{s:7:\"fieldid\";s:9:\"telephone\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�̶��绰\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_mobile\";a:16:{s:7:\"fieldid\";s:6:\"mobile\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�ֻ�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_idcardtype\";a:16:{s:7:\"fieldid\";s:10:\"idcardtype\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"֤������\";s:11:\"description\";s:20:\"����֤ ���� ��ʻ֤��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_idcard\";a:16:{s:7:\"fieldid\";s:6:\"idcard\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"֤����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:13:\"field_address\";a:16:{s:7:\"fieldid\";s:7:\"address\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�ʼĵ�ַ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:13:\"field_zipcode\";a:16:{s:7:\"fieldid\";s:7:\"zipcode\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�ʱ�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:19:\"field_birthprovince\";a:16:{s:7:\"fieldid\";s:13:\"birthprovince\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����ʡ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_birthcity\";a:16:{s:7:\"fieldid\";s:9:\"birthcity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_birthdist\";a:16:{s:7:\"fieldid\";s:9:\"birthdist\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:13:\"����������/��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:20:\"field_birthcommunity\";a:16:{s:7:\"fieldid\";s:14:\"birthcommunity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����С��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:20:\"field_resideprovince\";a:16:{s:7:\"fieldid\";s:14:\"resideprovince\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��סʡ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_residecity\";a:16:{s:7:\"fieldid\";s:10:\"residecity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"��ס��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_residedist\";a:16:{s:7:\"fieldid\";s:10:\"residedist\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"��ס��\";s:11:\"description\";s:13:\"��ס������/��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:21:\"field_residecommunity\";a:16:{s:7:\"fieldid\";s:15:\"residecommunity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��סС��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:20:\"field_graduateschool\";a:16:{s:7:\"fieldid\";s:14:\"graduateschool\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��ҵѧУ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_education\";a:16:{s:7:\"fieldid\";s:9:\"education\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ѧ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:13:\"field_company\";a:16:{s:7:\"fieldid\";s:7:\"company\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"��˾\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_occupation\";a:16:{s:7:\"fieldid\";s:10:\"occupation\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ְҵ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:14:\"field_position\";a:16:{s:7:\"fieldid\";s:8:\"position\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ְλ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:13:\"field_revenue\";a:16:{s:7:\"fieldid\";s:7:\"revenue\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:7:\"��λ Ԫ\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:21:\"field_affectivestatus\";a:16:{s:7:\"fieldid\";s:15:\"affectivestatus\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"���״̬\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:16:\"field_lookingfor\";a:16:{s:7:\"fieldid\";s:10:\"lookingfor\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����Ŀ��\";s:11:\"description\";s:26:\"ϣ������վ�ҵ�ʲô��������\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:15:\"field_bloodtype\";a:16:{s:7:\"fieldid\";s:9:\"bloodtype\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"Ѫ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_alipay\";a:16:{s:7:\"fieldid\";s:6:\"alipay\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"֧����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:8:\"field_qq\";a:16:{s:7:\"fieldid\";s:2:\"qq\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:2:\"QQ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:9:\"field_msn\";a:16:{s:7:\"fieldid\";s:3:\"msn\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:3:\"MSN\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:12:\"field_taobao\";a:16:{s:7:\"fieldid\";s:6:\"taobao\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:10:\"field_site\";a:16:{s:7:\"fieldid\";s:4:\"site\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"������ҳ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:9:\"field_bio\";a:16:{s:7:\"fieldid\";s:3:\"bio\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"���ҽ���\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:8:\"textarea\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}s:14:\"field_interest\";a:16:{s:7:\"fieldid\";s:8:\"interest\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��Ȥ����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:8:\"textarea\";s:4:\"size\";s:1:\"0\";s:8:\"validate\";s:0:\"\";}}'),('fields_register',1,1607929477,'a:0:{}'),('fields_required',1,1607929477,'a:0:{}'),('focus',1,1607929477,'a:3:{s:5:\"title\";s:8:\"վ���Ƽ�\";s:6:\"cookie\";i:1;s:4:\"data\";a:0:{}}'),('forumlinks',1,1607929477,'a:3:{i:0;s:264:\"<li class=\"lk_logo mbm bbda cl\"><img src=\"static/image/common/logo_88_31.gif\" border=\"0\" alt=\"�ٷ���̳\" /><div class=\"lk_content z\"><h5><a href=\"http://www.discuz.net\" target=\"_blank\">�ٷ���̳</a></h5><p>�ṩ���� Discuz! ��Ʒ���š����������뼼������</p></div></li>\";i:1;s:0:\"\";i:2;s:172:\"<li><a href=\"http://www.comsenz.com\" target=\"_blank\" title=\"Comsenz\">Comsenz</a></li><li><a href=\"http://www.verydz.com/\" target=\"_blank\" title=\"ר������\">ר������</a></li>\";}'),('forumrecommend',1,1608515550,'a:0:{}'),('forums',1,1608089316,'a:2:{i:1;a:14:{s:3:\"fid\";s:1:\"1\";s:4:\"type\";s:5:\"group\";s:4:\"name\";s:7:\"Discuz!\";s:3:\"fup\";s:1:\"0\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:7:\"orderby\";s:8:\"lastpost\";s:7:\"ascdesc\";s:4:\"DESC\";s:6:\"status\";s:1:\"1\";s:5:\"extra\";a:0:{}s:6:\"plugin\";N;s:7:\"archive\";s:1:\"0\";s:6:\"domain\";s:0:\"\";s:12:\"havepassword\";i:0;}i:2;a:17:{s:3:\"fid\";s:1:\"2\";s:4:\"type\";s:5:\"forum\";s:4:\"name\";s:8:\"Ĭ�ϰ��\";s:3:\"fup\";s:1:\"1\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:7:\"orderby\";s:8:\"lastpost\";s:7:\"ascdesc\";s:4:\"DESC\";s:5:\"users\";N;s:6:\"status\";s:1:\"1\";s:5:\"extra\";a:2:{s:9:\"namecolor\";s:0:\"\";s:9:\"iconwidth\";s:0:\"\";}s:6:\"plugin\";N;s:16:\"allowpostspecial\";s:6:\"000001\";s:11:\"commentitem\";s:0:\"\";s:7:\"archive\";s:1:\"0\";s:6:\"domain\";s:0:\"\";s:12:\"havepassword\";i:0;}}'),('forumstick',1,1607929477,'a:0:{}'),('globalstick',1,1607929477,'a:1:{s:6:\"global\";a:2:{s:4:\"tids\";s:0:\"\";s:5:\"count\";i:0;}}'),('groupicon',1,1607929477,'a:4:{i:1;s:36:\"static/image/common/online_admin.gif\";i:2;s:39:\"static/image/common/online_supermod.gif\";i:3;s:40:\"static/image/common/online_moderator.gif\";i:0;s:37:\"static/image/common/online_member.gif\";}'),('grouplevels',1,1607929477,'a:3:{i:1;a:9:{s:7:\"levelid\";s:1:\"1\";s:4:\"type\";s:7:\"default\";s:10:\"leveltitle\";s:6:\"��ͨ��\";s:13:\"creditshigher\";s:10:\"-999999999\";s:12:\"creditslower\";s:3:\"500\";s:4:\"icon\";s:0:\"\";s:13:\"creditspolicy\";b:0;s:10:\"postpolicy\";a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";i:0;s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";i:0;s:6:\"jammer\";i:0;s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:7:\"jpg,gif\";}s:13:\"specialswitch\";a:5:{s:15:\"allowchangename\";s:1:\"1\";s:15:\"allowchangetype\";s:1:\"1\";s:15:\"allowclosegroup\";s:1:\"1\";s:15:\"allowthreadtype\";s:1:\"1\";s:13:\"membermaximum\";s:0:\"\";}}i:2;a:9:{s:7:\"levelid\";s:1:\"2\";s:4:\"type\";s:7:\"default\";s:10:\"leveltitle\";s:4:\"�м�\";s:13:\"creditshigher\";s:3:\"500\";s:12:\"creditslower\";s:4:\"3000\";s:4:\"icon\";s:0:\"\";s:13:\"creditspolicy\";a:2:{s:4:\"post\";s:1:\"1\";s:5:\"reply\";s:1:\"1\";}s:10:\"postpolicy\";a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";i:0;s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";i:0;s:6:\"jammer\";i:0;s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:11:\"jpg,gif,rar\";}s:13:\"specialswitch\";b:0;}i:3;a:9:{s:7:\"levelid\";s:1:\"3\";s:4:\"type\";s:7:\"default\";s:10:\"leveltitle\";s:4:\"�߼�\";s:13:\"creditshigher\";s:4:\"3000\";s:12:\"creditslower\";s:9:\"999999999\";s:4:\"icon\";s:0:\"\";s:13:\"creditspolicy\";a:2:{s:4:\"post\";s:1:\"1\";s:5:\"reply\";s:1:\"1\";}s:10:\"postpolicy\";a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:6:\"jammer\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:31:\"jpg,gif,png,bmp,rar,doc,txt,zip\";}s:13:\"specialswitch\";b:0;}}'),('groupreadaccess',1,1607929477,'a:14:{i:0;a:3:{s:7:\"groupid\";s:1:\"7\";s:10:\"readaccess\";s:1:\"1\";s:10:\"grouptitle\";s:4:\"�ο�\";}i:1;a:3:{s:7:\"groupid\";s:2:\"10\";s:10:\"readaccess\";s:2:\"10\";s:10:\"grouptitle\";s:8:\"������·\";}i:2;a:3:{s:7:\"groupid\";s:2:\"11\";s:10:\"readaccess\";s:2:\"20\";s:10:\"grouptitle\";s:8:\"ע���Ա\";}i:3;a:3:{s:7:\"groupid\";s:2:\"12\";s:10:\"readaccess\";s:2:\"30\";s:10:\"grouptitle\";s:8:\"�м���Ա\";}i:4;a:3:{s:7:\"groupid\";s:2:\"13\";s:10:\"readaccess\";s:2:\"50\";s:10:\"grouptitle\";s:8:\"�߼���Ա\";}i:5;a:3:{s:7:\"groupid\";s:2:\"14\";s:10:\"readaccess\";s:2:\"70\";s:10:\"grouptitle\";s:8:\"���ƻ�Ա\";}i:6;a:3:{s:7:\"groupid\";s:2:\"15\";s:10:\"readaccess\";s:2:\"90\";s:10:\"grouptitle\";s:8:\"��̳Ԫ��\";}i:7;a:3:{s:7:\"groupid\";s:1:\"3\";s:10:\"readaccess\";s:3:\"100\";s:10:\"grouptitle\";s:4:\"����\";}i:8;a:3:{s:7:\"groupid\";s:2:\"16\";s:10:\"readaccess\";s:3:\"100\";s:10:\"grouptitle\";s:8:\"ʵϰ����\";}i:9;a:3:{s:7:\"groupid\";s:2:\"19\";s:10:\"readaccess\";s:3:\"100\";s:10:\"grouptitle\";s:6:\"���Ա\";}i:10;a:3:{s:7:\"groupid\";s:1:\"2\";s:10:\"readaccess\";s:3:\"150\";s:10:\"grouptitle\";s:8:\"��������\";}i:11;a:3:{s:7:\"groupid\";s:2:\"17\";s:10:\"readaccess\";s:3:\"150\";s:10:\"grouptitle\";s:8:\"��վ�༭\";}i:12;a:3:{s:7:\"groupid\";s:1:\"1\";s:10:\"readaccess\";s:3:\"200\";s:10:\"grouptitle\";s:6:\"����Ա\";}i:13;a:3:{s:7:\"groupid\";s:2:\"18\";s:10:\"readaccess\";s:3:\"200\";s:10:\"grouptitle\";s:10:\"��Ϣ���Ա\";}}'),('grouptype',1,1607929477,'a:2:{s:5:\"first\";a:6:{i:3;a:13:{s:3:\"fid\";s:1:\"3\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"Ӱ��\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:4:{i:0;s:1:\"9\";i:1;s:2:\"10\";i:2;s:2:\"11\";i:3;s:2:\"12\";}}i:4;a:13:{s:3:\"fid\";s:1:\"4\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"���\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:4:{i:0;s:2:\"13\";i:1;s:2:\"14\";i:2;s:2:\"15\";i:3;s:2:\"16\";}}i:5;a:13:{s:3:\"fid\";s:1:\"5\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:5:{i:0;s:2:\"17\";i:1;s:2:\"18\";i:2;s:2:\"19\";i:3;s:2:\"20\";i:4;s:2:\"21\";}}i:6;a:13:{s:3:\"fid\";s:1:\"6\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:7:{i:0;s:2:\"22\";i:1;s:2:\"23\";i:2;s:2:\"24\";i:3;s:2:\"25\";i:4;s:2:\"26\";i:5;s:2:\"27\";i:6;s:2:\"28\";}}i:7;a:13:{s:3:\"fid\";s:1:\"7\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��Ϸ\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:2:{i:0;s:2:\"33\";i:1;s:2:\"35\";}}i:8;a:13:{s:3:\"fid\";s:1:\"8\";s:4:\"type\";s:5:\"group\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";i:0;s:10:\"secondlist\";a:4:{i:0;s:2:\"29\";i:1;s:2:\"30\";i:2;s:2:\"31\";i:3;s:2:\"32\";}}}s:6:\"second\";a:26:{i:9;a:12:{s:3:\"fid\";s:1:\"9\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��Ӱ\";s:3:\"fup\";s:1:\"3\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:10;a:12:{s:3:\"fid\";s:2:\"10\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"3\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:11;a:12:{s:3:\"fid\";s:2:\"11\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��Ƶ\";s:3:\"fup\";s:1:\"3\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:12;a:12:{s:3:\"fid\";s:2:\"12\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"3\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:13;a:12:{s:3:\"fid\";s:2:\"13\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"4\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:14;a:12:{s:3:\"fid\";s:2:\"14\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"4\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:15;a:12:{s:3:\"fid\";s:2:\"15\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��˵\";s:3:\"fup\";s:1:\"4\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:16;a:12:{s:3:\"fid\";s:2:\"16\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"4\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:17;a:12:{s:3:\"fid\";s:2:\"17\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��ʳ\";s:3:\"fup\";s:1:\"5\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:18;a:12:{s:3:\"fid\";s:2:\"18\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"5\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:19;a:12:{s:3:\"fid\";s:2:\"19\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"5\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:20;a:12:{s:3:\"fid\";s:2:\"20\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"5\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:21;a:12:{s:3:\"fid\";s:2:\"21\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"5\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:22;a:12:{s:3:\"fid\";s:2:\"22\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"ʱ��\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:23;a:12:{s:3:\"fid\";s:2:\"23\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:24;a:12:{s:3:\"fid\";s:2:\"24\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"��Ӱ\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:25;a:12:{s:3:\"fid\";s:2:\"25\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:26;a:12:{s:3:\"fid\";s:2:\"26\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:27;a:12:{s:3:\"fid\";s:2:\"27\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:28;a:12:{s:3:\"fid\";s:2:\"28\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"���\";s:3:\"fup\";s:1:\"6\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:29;a:12:{s:3:\"fid\";s:2:\"29\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"8\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:30;a:12:{s:3:\"fid\";s:2:\"30\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"8\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:31;a:12:{s:3:\"fid\";s:2:\"31\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:6:\"��ë��\";s:3:\"fup\";s:1:\"8\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:32;a:12:{s:3:\"fid\";s:2:\"32\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:6:\"ƹ����\";s:3:\"fup\";s:1:\"8\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:33;a:12:{s:3:\"fid\";s:2:\"33\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"7\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}i:35;a:12:{s:3:\"fid\";s:2:\"35\";s:4:\"type\";s:5:\"forum\";s:6:\"status\";s:1:\"3\";s:4:\"name\";s:4:\"����\";s:3:\"fup\";s:1:\"7\";s:12:\"displayorder\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:10:\"moderators\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:8:\"groupnum\";s:1:\"0\";}}}'),('heats',1,1607929477,'a:0:{}'),('ipbanned',1,1607929477,'a:0:{}'),('ipctrl',1,1607929477,'a:2:{s:9:\"ipregctrl\";s:0:\"\";s:13:\"ipverifywhite\";s:0:\"\";}'),('magics',1,1607929477,'a:0:{}'),('medals',1,1607929477,'a:0:{}'),('modreasons',1,1607929477,'a:9:{i:0;s:9:\"���/SPAM\";i:1;s:8:\"�����ˮ\";i:2;s:8:\"Υ������\";i:3;s:8:\"�Ĳ�����\";i:4;s:8:\"�ظ�����\";i:5;s:0:\"\";i:6;s:8:\"�Һ���ͬ\";i:7;s:8:\"��Ʒ����\";i:8;s:8:\"ԭ������\";}'),('userreasons',1,1607929477,'a:5:{i:0;s:7:\"�ܸ���!\";i:1;s:12:\"�������Ǹ���\";i:2;s:7:\"��һ��!\";i:3;s:4:\"ɽկ\";i:4;s:4:\"����\";}'),('onlinelist',1,1607929477,'a:5:{s:6:\"legend\";s:322:\"<img src=\"static/image/common/online_admin.gif\" /> ����Ա &nbsp; &nbsp; &nbsp; <img src=\"static/image/common/online_supermod.gif\" /> �������� &nbsp; &nbsp; &nbsp; <img src=\"static/image/common/online_moderator.gif\" /> ���� &nbsp; &nbsp; &nbsp; <img src=\"static/image/common/online_member.gif\" /> ��Ա &nbsp; &nbsp; &nbsp; \";i:1;s:16:\"online_admin.gif\";i:2;s:19:\"online_supermod.gif\";i:3;s:20:\"online_moderator.gif\";i:0;s:17:\"online_member.gif\";}'),('plugin',1,1607929477,'a:3:{s:8:\"qfmobile\";a:7:{s:9:\"mobilereg\";s:1:\"1\";s:10:\"mobilebind\";s:1:\"1\";s:11:\"mobilelimit\";s:1:\"1\";s:15:\"mobilelimitfids\";s:17:\"a:1:{i:0;s:0:\"\";}\";s:15:\"mobilelimituids\";s:17:\"a:1:{i:0;s:0:\"\";}\";s:13:\"mobileimgcode\";s:1:\"1\";s:12:\"mobileregtip\";s:60:\"�ֻ�ע��������⣿����������վ�ͷ��������������������������\";}s:11:\"fn_hb_share\";a:20:{s:6:\"MapKey\";s:35:\"RVZBZ-DNLA4-ZVKUV-X22LS-GJBP2-3TFTQ\";s:10:\"UserSwitch\";s:1:\"1\";s:13:\"UserAppPrompt\";s:41:\"�鿴�������ģ�������App�鿴�����ȷ������\";s:7:\"AppLink\";s:21:\"http://dev.fnmoto.com\";s:7:\"AppType\";s:1:\"2\";s:7:\"AppName\";s:0:\"\";s:9:\"MagDomain\";s:0:\"\";s:9:\"MagSecret\";s:0:\"\";s:11:\"qf_hostname\";s:7:\"xiangxi\";s:9:\"qf_secret\";s:32:\"59bdee8ef0993f36227e272c53dcd738\";s:10:\"qf_sr_type\";s:1:\"0\";s:10:\"MoblinkKey\";s:0:\"\";s:17:\"NoAppWalletPrompt\";s:40:\"�鿴Ǯ���뵽App�ϲ鿴Ŷ�����ȷ������App\";s:7:\"WxAppid\";s:0:\"\";s:8:\"WxSecret\";s:0:\"\";s:11:\"ShareDomain\";s:0:\"\";s:10:\"PcQrSwitch\";s:1:\"0\";s:8:\"PcQrText\";s:18:\"ɨһɨ����ȡ����\";s:8:\"FaceName\";s:9:\"uc_server\";s:11:\"DownTimeNum\";s:2:\"+8\";}s:9:\"violation\";a:17:{s:7:\"gearbox\";s:26:\"1=�Զ�\r\n2=�ֶ�\r\n3=����һ��\";s:4:\"page\";s:2:\"20\";s:8:\"img_size\";s:5:\"10240\";s:9:\"lj_groups\";s:31:\"a:2:{i:0;s:2:\"10\";i:1;s:1:\"1\";}\";s:8:\"isreview\";s:1:\"1\";s:11:\"mian_groups\";s:0:\"\";s:6:\"es_fid\";s:1:\"2\";s:11:\"threadtypes\";s:1:\"0\";s:6:\"toppay\";s:1:\"1\";s:12:\"topextcredit\";s:1:\"2\";s:16:\"reflashextcredit\";s:1:\"2\";s:10:\"reflashpay\";s:1:\"1\";s:16:\"releaseextcredit\";s:1:\"2\";s:10:\"releasepay\";s:1:\"1\";s:5:\"r_ext\";s:1:\"2\";s:5:\"r_pay\";s:1:\"1\";s:12:\"tongbu_moban\";s:329:\"[size=4][url={url}]{title}[/url] [url={url}][color=red](����鿴����)[/color][/url]<br/>\r\n�۸�:{zujin}��Ԫ<br/>\r\nƷ��:{pos}<br/>\r\n������:{gearbox}<br/>\r\n��ʻ���:{mileage}����<br/>\r\n��ϵ�绰:{tel}<br/>\r\nQQ��{qq}<br/>\r\n��ϵ�ˣ�{lxr}<br/>\r\n���׵ص㣺{region}<br/>\r\n[color=red]������[/color]{shengming}<br/><br/>\r\n{content}[/size]\";}}'),('portalcategory',1,1607929477,'a:0:{}'),('postimg',1,1607929477,'a:2:{s:6:\"hrline\";a:15:{i:0;a:1:{s:3:\"url\";s:5:\"0.gif\";}i:1;a:1:{s:3:\"url\";s:5:\"1.gif\";}i:2;a:1:{s:3:\"url\";s:5:\"2.gif\";}i:3;a:1:{s:3:\"url\";s:5:\"3.gif\";}i:4;a:1:{s:3:\"url\";s:5:\"4.gif\";}i:5;a:1:{s:3:\"url\";s:5:\"5.gif\";}i:6;a:1:{s:3:\"url\";s:9:\"line1.png\";}i:7;a:1:{s:3:\"url\";s:9:\"line2.png\";}i:8;a:1:{s:3:\"url\";s:9:\"line3.png\";}i:9;a:1:{s:3:\"url\";s:9:\"line4.png\";}i:10;a:1:{s:3:\"url\";s:9:\"line5.png\";}i:11;a:1:{s:3:\"url\";s:9:\"line6.png\";}i:12;a:1:{s:3:\"url\";s:9:\"line7.png\";}i:13;a:1:{s:3:\"url\";s:9:\"line8.png\";}i:14;a:1:{s:3:\"url\";s:9:\"line9.png\";}}s:6:\"postbg\";a:14:{i:0;a:1:{s:3:\"url\";s:5:\"0.gif\";}i:1;a:1:{s:3:\"url\";s:5:\"1.jpg\";}i:2;a:1:{s:3:\"url\";s:5:\"2.jpg\";}i:3;a:1:{s:3:\"url\";s:5:\"3.jpg\";}i:4;a:1:{s:3:\"url\";s:7:\"bg1.png\";}i:5;a:1:{s:3:\"url\";s:8:\"bg10.png\";}i:6;a:1:{s:3:\"url\";s:7:\"bg2.png\";}i:7;a:1:{s:3:\"url\";s:7:\"bg3.png\";}i:8;a:1:{s:3:\"url\";s:7:\"bg4.png\";}i:9;a:1:{s:3:\"url\";s:7:\"bg5.png\";}i:10;a:1:{s:3:\"url\";s:7:\"bg6.png\";}i:11;a:1:{s:3:\"url\";s:7:\"bg7.png\";}i:12;a:1:{s:3:\"url\";s:7:\"bg8.png\";}i:13;a:1:{s:3:\"url\";s:7:\"bg9.png\";}}}'),('profilesetting',1,1607929477,'a:37:{s:8:\"realname\";a:17:{s:7:\"fieldid\";s:8:\"realname\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��ʵ����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:6:\"gender\";a:17:{s:7:\"fieldid\";s:6:\"gender\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�Ա�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"birthyear\";a:17:{s:7:\"fieldid\";s:9:\"birthyear\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"1\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"birthmonth\";a:17:{s:7:\"fieldid\";s:10:\"birthmonth\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�����·�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:8:\"birthday\";a:17:{s:7:\"fieldid\";s:8:\"birthday\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:13:\"constellation\";a:17:{s:7:\"fieldid\";s:13:\"constellation\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"����\";s:11:\"description\";s:22:\"����(���������Զ�����)\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:6:\"zodiac\";a:17:{s:7:\"fieldid\";s:6:\"zodiac\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"��Ф\";s:11:\"description\";s:22:\"��Ф(���������Զ�����)\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"telephone\";a:17:{s:7:\"fieldid\";s:9:\"telephone\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�̶��绰\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:6:\"mobile\";a:17:{s:7:\"fieldid\";s:6:\"mobile\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�ֻ�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"idcardtype\";a:17:{s:7:\"fieldid\";s:10:\"idcardtype\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"֤������\";s:11:\"description\";s:20:\"����֤ ���� ��ʻ֤��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:18:\"����֤\n����\n��ʻ֤\";s:8:\"validate\";s:0:\"\";}s:6:\"idcard\";a:17:{s:7:\"fieldid\";s:6:\"idcard\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"֤����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:7:\"address\";a:17:{s:7:\"fieldid\";s:7:\"address\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"�ʼĵ�ַ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:7:\"zipcode\";a:17:{s:7:\"fieldid\";s:7:\"zipcode\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"�ʱ�\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:13:\"birthprovince\";a:17:{s:7:\"fieldid\";s:13:\"birthprovince\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����ʡ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"birthcity\";a:17:{s:7:\"fieldid\";s:9:\"birthcity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"birthdist\";a:17:{s:7:\"fieldid\";s:9:\"birthdist\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:13:\"����������/��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:14:\"birthcommunity\";a:17:{s:7:\"fieldid\";s:14:\"birthcommunity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����С��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:14:\"resideprovince\";a:17:{s:7:\"fieldid\";s:14:\"resideprovince\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��סʡ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"residecity\";a:17:{s:7:\"fieldid\";s:10:\"residecity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"��ס��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"residedist\";a:17:{s:7:\"fieldid\";s:10:\"residedist\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"��ס��\";s:11:\"description\";s:13:\"��ס������/��\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:15:\"residecommunity\";a:17:{s:7:\"fieldid\";s:15:\"residecommunity\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��סС��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:14:\"graduateschool\";a:17:{s:7:\"fieldid\";s:14:\"graduateschool\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��ҵѧУ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"education\";a:17:{s:7:\"fieldid\";s:9:\"education\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ѧ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:34:\"��ʿ\n˶ʿ\n����\nר��\n��ѧ\nСѧ\n����\";s:8:\"validate\";s:0:\"\";}s:7:\"company\";a:17:{s:7:\"fieldid\";s:7:\"company\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"��˾\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"occupation\";a:17:{s:7:\"fieldid\";s:10:\"occupation\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ְҵ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:8:\"position\";a:17:{s:7:\"fieldid\";s:8:\"position\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"ְλ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:7:\"revenue\";a:17:{s:7:\"fieldid\";s:7:\"revenue\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"������\";s:11:\"description\";s:7:\"��λ Ԫ\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:15:\"affectivestatus\";a:17:{s:7:\"fieldid\";s:15:\"affectivestatus\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"���״̬\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:10:\"lookingfor\";a:17:{s:7:\"fieldid\";s:10:\"lookingfor\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"����Ŀ��\";s:11:\"description\";s:26:\"ϣ������վ�ҵ�ʲô��������\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:9:\"bloodtype\";a:17:{s:7:\"fieldid\";s:9:\"bloodtype\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:4:\"Ѫ��\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:6:\"select\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:13:\"A\nB\nAB\nO\n����\";s:8:\"validate\";s:0:\"\";}s:6:\"alipay\";a:17:{s:7:\"fieldid\";s:6:\"alipay\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:6:\"֧����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:2:\"qq\";a:17:{s:7:\"fieldid\";s:2:\"qq\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:2:\"QQ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:3:\"msn\";a:17:{s:7:\"fieldid\";s:3:\"msn\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:3:\"MSN\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:6:\"taobao\";a:17:{s:7:\"fieldid\";s:6:\"taobao\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��������\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:4:\"site\";a:17:{s:7:\"fieldid\";s:4:\"site\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"������ҳ\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:4:\"text\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:3:\"bio\";a:17:{s:7:\"fieldid\";s:3:\"bio\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"1\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"���ҽ���\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:8:\"textarea\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}s:8:\"interest\";a:17:{s:7:\"fieldid\";s:8:\"interest\";s:9:\"available\";s:1:\"1\";s:9:\"invisible\";s:1:\"0\";s:10:\"needverify\";s:1:\"0\";s:5:\"title\";s:8:\"��Ȥ����\";s:11:\"description\";s:0:\"\";s:12:\"displayorder\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"unchangeable\";s:1:\"0\";s:10:\"showincard\";s:1:\"0\";s:12:\"showinthread\";s:1:\"0\";s:14:\"showinregister\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:8:\"formtype\";s:8:\"textarea\";s:4:\"size\";s:1:\"0\";s:7:\"choices\";s:0:\"\";s:8:\"validate\";s:0:\"\";}}'),('relatedlink',1,1607929477,'a:0:{}'),('secqaa',1,1607929477,'a:9:{i:1;N;i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;N;i:8;N;i:9;N;}'),('smileycodes',1,1607929477,'a:64:{i:1;s:2:\":)\";i:2;s:2:\":(\";i:3;s:2:\":D\";i:4;s:3:\":\'(\";i:5;s:2:\":@\";i:6;s:2:\":o\";i:7;s:2:\":P\";i:8;s:2:\":$\";i:9;s:2:\";P\";i:10;s:2:\":L\";i:11;s:2:\":Q\";i:12;s:4:\":lol\";i:13;s:12:\":loveliness:\";i:14;s:6:\":funk:\";i:15;s:7:\":curse:\";i:16;s:7:\":dizzy:\";i:17;s:8:\":shutup:\";i:18;s:8:\":sleepy:\";i:19;s:5:\":hug:\";i:20;s:9:\":victory:\";i:21;s:6:\":time:\";i:22;s:6:\":kiss:\";i:23;s:10:\":handshake\";i:24;s:6:\":call:\";i:25;s:8:\"{:2_25:}\";i:26;s:8:\"{:2_26:}\";i:27;s:8:\"{:2_27:}\";i:28;s:8:\"{:2_28:}\";i:29;s:8:\"{:2_29:}\";i:30;s:8:\"{:2_30:}\";i:31;s:8:\"{:2_31:}\";i:32;s:8:\"{:2_32:}\";i:33;s:8:\"{:2_33:}\";i:34;s:8:\"{:2_34:}\";i:35;s:8:\"{:2_35:}\";i:36;s:8:\"{:2_36:}\";i:37;s:8:\"{:2_37:}\";i:38;s:8:\"{:2_38:}\";i:39;s:8:\"{:2_39:}\";i:40;s:8:\"{:2_40:}\";i:41;s:8:\"{:3_41:}\";i:42;s:8:\"{:3_42:}\";i:43;s:8:\"{:3_43:}\";i:44;s:8:\"{:3_44:}\";i:45;s:8:\"{:3_45:}\";i:46;s:8:\"{:3_46:}\";i:47;s:8:\"{:3_47:}\";i:48;s:8:\"{:3_48:}\";i:49;s:8:\"{:3_49:}\";i:50;s:8:\"{:3_50:}\";i:51;s:8:\"{:3_51:}\";i:52;s:8:\"{:3_52:}\";i:53;s:8:\"{:3_53:}\";i:54;s:8:\"{:3_54:}\";i:55;s:8:\"{:3_55:}\";i:56;s:8:\"{:3_56:}\";i:57;s:8:\"{:3_57:}\";i:58;s:8:\"{:3_58:}\";i:59;s:8:\"{:3_59:}\";i:60;s:8:\"{:3_60:}\";i:61;s:8:\"{:3_61:}\";i:62;s:8:\"{:3_62:}\";i:63;s:8:\"{:3_63:}\";i:64;s:8:\"{:3_64:}\";}'),('smileytypes',1,1607929477,'a:3:{i:1;a:5:{s:9:\"available\";s:1:\"1\";s:4:\"name\";s:4:\"Ĭ��\";s:4:\"type\";s:6:\"smiley\";s:12:\"displayorder\";s:1:\"1\";s:9:\"directory\";s:7:\"default\";}i:2;a:5:{s:9:\"available\";s:1:\"1\";s:4:\"name\";s:4:\"���\";s:4:\"type\";s:6:\"smiley\";s:12:\"displayorder\";s:1:\"2\";s:9:\"directory\";s:10:\"coolmonkey\";}i:3;a:5:{s:9:\"available\";s:1:\"1\";s:4:\"name\";s:6:\"������\";s:4:\"type\";s:6:\"smiley\";s:12:\"displayorder\";s:1:\"3\";s:9:\"directory\";s:8:\"grapeman\";}}'),('smilies',1,1607929477,'a:3:{s:11:\"searcharray\";a:64:{i:13;s:16:\"/\\:loveliness\\:/\";i:23;s:13:\"/\\:handshake/\";i:20;s:13:\"/\\:victory\\:/\";i:41;s:14:\"/\\{\\:3_41\\:\\}/\";i:26;s:14:\"/\\{\\:2_26\\:\\}/\";i:58;s:14:\"/\\{\\:3_58\\:\\}/\";i:43;s:14:\"/\\{\\:3_43\\:\\}/\";i:28;s:14:\"/\\{\\:2_28\\:\\}/\";i:60;s:14:\"/\\{\\:3_60\\:\\}/\";i:45;s:14:\"/\\{\\:3_45\\:\\}/\";i:30;s:14:\"/\\{\\:2_30\\:\\}/\";i:62;s:14:\"/\\{\\:3_62\\:\\}/\";i:47;s:14:\"/\\{\\:3_47\\:\\}/\";i:32;s:14:\"/\\{\\:2_32\\:\\}/\";i:64;s:14:\"/\\{\\:3_64\\:\\}/\";i:17;s:12:\"/\\:shutup\\:/\";i:49;s:14:\"/\\{\\:3_49\\:\\}/\";i:34;s:14:\"/\\{\\:2_34\\:\\}/\";i:51;s:14:\"/\\{\\:3_51\\:\\}/\";i:36;s:14:\"/\\{\\:2_36\\:\\}/\";i:53;s:14:\"/\\{\\:3_53\\:\\}/\";i:38;s:14:\"/\\{\\:2_38\\:\\}/\";i:55;s:14:\"/\\{\\:3_55\\:\\}/\";i:40;s:14:\"/\\{\\:2_40\\:\\}/\";i:25;s:14:\"/\\{\\:2_25\\:\\}/\";i:57;s:14:\"/\\{\\:3_57\\:\\}/\";i:42;s:14:\"/\\{\\:3_42\\:\\}/\";i:27;s:14:\"/\\{\\:2_27\\:\\}/\";i:59;s:14:\"/\\{\\:3_59\\:\\}/\";i:44;s:14:\"/\\{\\:3_44\\:\\}/\";i:29;s:14:\"/\\{\\:2_29\\:\\}/\";i:61;s:14:\"/\\{\\:3_61\\:\\}/\";i:46;s:14:\"/\\{\\:3_46\\:\\}/\";i:31;s:14:\"/\\{\\:2_31\\:\\}/\";i:63;s:14:\"/\\{\\:3_63\\:\\}/\";i:48;s:14:\"/\\{\\:3_48\\:\\}/\";i:33;s:14:\"/\\{\\:2_33\\:\\}/\";i:18;s:12:\"/\\:sleepy\\:/\";i:50;s:14:\"/\\{\\:3_50\\:\\}/\";i:35;s:14:\"/\\{\\:2_35\\:\\}/\";i:52;s:14:\"/\\{\\:3_52\\:\\}/\";i:37;s:14:\"/\\{\\:2_37\\:\\}/\";i:54;s:14:\"/\\{\\:3_54\\:\\}/\";i:39;s:14:\"/\\{\\:2_39\\:\\}/\";i:56;s:14:\"/\\{\\:3_56\\:\\}/\";i:15;s:11:\"/\\:curse\\:/\";i:16;s:11:\"/\\:dizzy\\:/\";i:21;s:10:\"/\\:time\\:/\";i:14;s:10:\"/\\:funk\\:/\";i:22;s:10:\"/\\:kiss\\:/\";i:24;s:10:\"/\\:call\\:/\";i:19;s:9:\"/\\:hug\\:/\";i:12;s:7:\"/\\:lol/\";i:4;s:7:\"/\\:\'\\(/\";i:9;s:4:\"/;P/\";i:11;s:5:\"/\\:Q/\";i:2;s:6:\"/\\:\\(/\";i:6;s:5:\"/\\:o/\";i:8;s:6:\"/\\:\\$/\";i:10;s:5:\"/\\:L/\";i:1;s:6:\"/\\:\\)/\";i:3;s:5:\"/\\:D/\";i:5;s:5:\"/\\:@/\";i:7;s:5:\"/\\:P/\";}s:12:\"replacearray\";a:64:{i:13;s:14:\"loveliness.gif\";i:23;s:13:\"handshake.gif\";i:20;s:11:\"victory.gif\";i:41;s:6:\"01.gif\";i:26;s:6:\"02.gif\";i:58;s:6:\"18.gif\";i:43;s:6:\"03.gif\";i:28;s:6:\"04.gif\";i:60;s:6:\"20.gif\";i:45;s:6:\"05.gif\";i:30;s:6:\"06.gif\";i:62;s:6:\"22.gif\";i:47;s:6:\"07.gif\";i:32;s:6:\"08.gif\";i:64;s:6:\"24.gif\";i:17;s:10:\"shutup.gif\";i:49;s:6:\"09.gif\";i:34;s:6:\"10.gif\";i:51;s:6:\"11.gif\";i:36;s:6:\"12.gif\";i:53;s:6:\"13.gif\";i:38;s:6:\"14.gif\";i:55;s:6:\"15.gif\";i:40;s:6:\"16.gif\";i:25;s:6:\"01.gif\";i:57;s:6:\"17.gif\";i:42;s:6:\"02.gif\";i:27;s:6:\"03.gif\";i:59;s:6:\"19.gif\";i:44;s:6:\"04.gif\";i:29;s:6:\"05.gif\";i:61;s:6:\"21.gif\";i:46;s:6:\"06.gif\";i:31;s:6:\"07.gif\";i:63;s:6:\"23.gif\";i:48;s:6:\"08.gif\";i:33;s:6:\"09.gif\";i:18;s:10:\"sleepy.gif\";i:50;s:6:\"10.gif\";i:35;s:6:\"11.gif\";i:52;s:6:\"12.gif\";i:37;s:6:\"13.gif\";i:54;s:6:\"14.gif\";i:39;s:6:\"15.gif\";i:56;s:6:\"16.gif\";i:15;s:9:\"curse.gif\";i:16;s:9:\"dizzy.gif\";i:21;s:8:\"time.gif\";i:14;s:8:\"funk.gif\";i:22;s:8:\"kiss.gif\";i:24;s:8:\"call.gif\";i:19;s:7:\"hug.gif\";i:12;s:7:\"lol.gif\";i:4;s:7:\"cry.gif\";i:9;s:10:\"titter.gif\";i:11;s:7:\"mad.gif\";i:2;s:7:\"sad.gif\";i:6;s:11:\"shocked.gif\";i:8;s:7:\"shy.gif\";i:10;s:9:\"sweat.gif\";i:1;s:9:\"smile.gif\";i:3;s:11:\"biggrin.gif\";i:5;s:9:\"huffy.gif\";i:7;s:10:\"tongue.gif\";}s:9:\"typearray\";a:64:{i:13;s:1:\"1\";i:23;s:1:\"1\";i:20;s:1:\"1\";i:41;s:1:\"3\";i:26;s:1:\"2\";i:58;s:1:\"3\";i:43;s:1:\"3\";i:28;s:1:\"2\";i:60;s:1:\"3\";i:45;s:1:\"3\";i:30;s:1:\"2\";i:62;s:1:\"3\";i:47;s:1:\"3\";i:32;s:1:\"2\";i:64;s:1:\"3\";i:17;s:1:\"1\";i:49;s:1:\"3\";i:34;s:1:\"2\";i:51;s:1:\"3\";i:36;s:1:\"2\";i:53;s:1:\"3\";i:38;s:1:\"2\";i:55;s:1:\"3\";i:40;s:1:\"2\";i:25;s:1:\"2\";i:57;s:1:\"3\";i:42;s:1:\"3\";i:27;s:1:\"2\";i:59;s:1:\"3\";i:44;s:1:\"3\";i:29;s:1:\"2\";i:61;s:1:\"3\";i:46;s:1:\"3\";i:31;s:1:\"2\";i:63;s:1:\"3\";i:48;s:1:\"3\";i:33;s:1:\"2\";i:18;s:1:\"1\";i:50;s:1:\"3\";i:35;s:1:\"2\";i:52;s:1:\"3\";i:37;s:1:\"2\";i:54;s:1:\"3\";i:39;s:1:\"2\";i:56;s:1:\"3\";i:15;s:1:\"1\";i:16;s:1:\"1\";i:21;s:1:\"1\";i:14;s:1:\"1\";i:22;s:1:\"1\";i:24;s:1:\"1\";i:19;s:1:\"1\";i:12;s:1:\"1\";i:4;s:1:\"1\";i:9;s:1:\"1\";i:11;s:1:\"1\";i:2;s:1:\"1\";i:6;s:1:\"1\";i:8;s:1:\"1\";i:10;s:1:\"1\";i:1;s:1:\"1\";i:3;s:1:\"1\";i:5;s:1:\"1\";i:7;s:1:\"1\";}}'),('threadtableids',0,1607929477,''),('threadtable_info',0,1607929477,''),('posttable_info',0,1607929477,''),('posttableids',0,1607929477,''),('stamps',1,1607929477,'a:21:{i:0;a:4:{s:3:\"url\";s:7:\"001.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:1;a:4:{s:3:\"url\";s:7:\"002.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:2;a:4:{s:3:\"url\";s:7:\"003.gif\";s:4:\"text\";s:4:\"��ͼ\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:3;a:4:{s:3:\"url\";s:7:\"004.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:4;a:4:{s:3:\"url\";s:7:\"005.gif\";s:4:\"text\";s:4:\"�ö�\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:5;a:4:{s:3:\"url\";s:7:\"006.gif\";s:4:\"text\";s:4:\"�Ƽ�\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:6;a:4:{s:3:\"url\";s:7:\"007.gif\";s:4:\"text\";s:4:\"ԭ��\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:7;a:4:{s:3:\"url\";s:7:\"008.gif\";s:4:\"text\";s:8:\"�����Ƽ�\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:8;a:4:{s:3:\"url\";s:7:\"009.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:9;a:4:{s:3:\"url\";s:13:\"001.small.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:10;a:4:{s:3:\"url\";s:13:\"002.small.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:11;a:4:{s:3:\"url\";s:13:\"003.small.gif\";s:4:\"text\";s:4:\"��ͼ\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:12;a:4:{s:3:\"url\";s:13:\"004.small.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:13;a:4:{s:3:\"url\";s:13:\"005.small.gif\";s:4:\"text\";s:4:\"�ö�\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:14;a:4:{s:3:\"url\";s:13:\"006.small.gif\";s:4:\"text\";s:4:\"�Ƽ�\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:15;a:4:{s:3:\"url\";s:13:\"007.small.gif\";s:4:\"text\";s:4:\"ԭ��\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:16;a:4:{s:3:\"url\";s:13:\"008.small.gif\";s:4:\"text\";s:8:\"�����Ƽ�\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:17;a:4:{s:3:\"url\";s:13:\"009.small.gif\";s:4:\"text\";s:4:\"����\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:18;a:4:{s:3:\"url\";s:13:\"010.small.gif\";s:4:\"text\";s:8:\"�༭����\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}i:19;a:4:{s:3:\"url\";s:7:\"010.gif\";s:4:\"text\";s:8:\"�༭����\";s:4:\"type\";s:5:\"stamp\";s:4:\"icon\";i:0;}i:20;a:4:{s:3:\"url\";s:13:\"011.small.gif\";s:4:\"text\";s:6:\"������\";s:4:\"type\";s:9:\"stamplist\";s:4:\"icon\";i:1;}}'),('stamptypeid',1,1607929477,'a:2:{i:0;s:1:\"8\";i:4;s:2:\"19\";}'),('style_1',1,1607929477,'a:66:{s:7:\"styleid\";s:1:\"1\";s:4:\"name\";s:8:\"Ĭ�Ϸ��\";s:9:\"available\";s:0:\"\";s:10:\"templateid\";s:1:\"1\";s:8:\"extstyle\";a:5:{i:0;a:3:{i:0;s:27:\"./template/default/style/t1\";i:1;s:2:\"��\";i:2;s:7:\"#BA350F\";}i:1;a:3:{i:0;s:27:\"./template/default/style/t2\";i:1;s:2:\"��\";i:2;s:7:\"#429296\";}i:2;a:3:{i:0;s:27:\"./template/default/style/t3\";i:1;s:2:\"��\";i:2;s:7:\"#FE9500\";}i:3;a:3:{i:0;s:27:\"./template/default/style/t4\";i:1;s:2:\"��\";i:2;s:7:\"#9934B7\";}i:4;a:3:{i:0;s:27:\"./template/default/style/t5\";i:1;s:2:\"��\";i:2;s:7:\"#0053B9\";}}s:7:\"tplname\";s:12:\"Ĭ��ģ����ϵ\";s:9:\"directory\";s:18:\"./template/default\";s:9:\"copyright\";s:28:\"������ʢ�´��Ƽ��������ι�˾\";s:6:\"tpldir\";s:18:\"./template/default\";s:4:\"font\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:8:\"fontsize\";s:8:\"12px/1.5\";s:12:\"titlebgcolor\";s:7:\"#E5EDF2\";s:16:\"menuhoverbgcolor\";s:7:\"#005AB4\";s:9:\"lightlink\";s:4:\"#FFF\";s:12:\"floatbgcolor\";s:4:\"#FFF\";s:15:\"dropmenubgcolor\";s:7:\"#FEFEFE\";s:16:\"floatmaskbgcolor\";s:4:\"#000\";s:14:\"dropmenuborder\";s:4:\"#DDD\";s:9:\"specialbg\";s:7:\"#E5EDF2\";s:13:\"specialborder\";s:7:\"#C2D5E3\";s:8:\"commonbg\";s:7:\"#F2F2F2\";s:12:\"commonborder\";s:7:\"#CDCDCD\";s:7:\"inputbg\";s:4:\"#FFF\";s:7:\"stypeid\";s:1:\"1\";s:20:\"inputborderdarkcolor\";s:7:\"#848484\";s:13:\"headerbgcolor\";s:0:\"\";s:12:\"headerborder\";s:1:\"0\";s:11:\"sidebgcolor\";s:0:\"\";s:11:\"msgfontsize\";s:4:\"14px\";s:7:\"bgcolor\";s:4:\"#FFF\";s:10:\"noticetext\";s:7:\"#F26C4F\";s:13:\"highlightlink\";s:4:\"#369\";s:4:\"link\";s:4:\"#333\";s:9:\"lighttext\";s:4:\"#999\";s:7:\"midtext\";s:4:\"#666\";s:9:\"tabletext\";s:4:\"#444\";s:10:\"smfontsize\";s:6:\"0.83em\";s:6:\"smfont\";s:5:\"Arial\";s:19:\"threadtitlefontsize\";s:4:\"14px\";s:15:\"threadtitlefont\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:11:\"inputborder\";s:7:\"#E0E0E0\";s:15:\"contentseparate\";s:7:\"#C2D5E3\";s:12:\"contentwidth\";s:5:\"630px\";s:15:\"wrapbordercolor\";s:4:\"#CCC\";s:6:\"wrapbg\";s:4:\"#FFF\";s:13:\"menuhovertext\";s:4:\"#FFF\";s:8:\"menutext\";s:4:\"#FFF\";s:11:\"menubgcolor\";s:7:\"#2B7ACD\";s:10:\"footertext\";s:4:\"#666\";s:10:\"headertext\";s:4:\"#444\";s:8:\"boardimg\";s:28:\"static/image/common/logo.png\";s:6:\"imgdir\";s:19:\"static/image/common\";s:11:\"styleimgdir\";s:19:\"static/image/common\";s:11:\"titlebgcode\";s:71:\"background: #E5EDF2 url(\"static/image/common/titlebg.png\") repeat-x 0 0\";s:15:\"menuhoverbgcode\";s:75:\"background: #005AB4 url(\"static/image/common/nv_a.png\") no-repeat 50% -33px\";s:11:\"floatbgcode\";s:16:\"background: #FFF\";s:14:\"dropmenubgcode\";s:19:\"background: #FEFEFE\";s:15:\"floatmaskbgcode\";s:16:\"background: #000\";s:12:\"headerbgcode\";s:0:\"\";s:10:\"sidebgcode\";s:62:\"background: url(\"static/image/common/vlineb.png\") repeat-y 0 0\";s:6:\"bgcode\";s:71:\"background: #FFF url(\"static/image/common/background.png\") repeat-x 0 0\";s:10:\"menubgcode\";s:67:\"background: #2B7ACD url(\"static/image/common/nv.png\") no-repeat 0 0\";s:9:\"boardlogo\";s:73:\"<img src=\"static/image/common/logo.png\" alt=\"Discuz! Board\" border=\"0\" />\";s:4:\"bold\";s:4:\"bold\";s:15:\"defaultextstyle\";s:0:\"\";s:7:\"verhash\";s:3:\"MUk\";}'),('style_default',1,1607929477,'a:66:{s:7:\"styleid\";s:1:\"1\";s:4:\"name\";s:8:\"Ĭ�Ϸ��\";s:9:\"available\";s:0:\"\";s:10:\"templateid\";s:1:\"1\";s:8:\"extstyle\";a:5:{i:0;a:3:{i:0;s:27:\"./template/default/style/t1\";i:1;s:2:\"��\";i:2;s:7:\"#BA350F\";}i:1;a:3:{i:0;s:27:\"./template/default/style/t2\";i:1;s:2:\"��\";i:2;s:7:\"#429296\";}i:2;a:3:{i:0;s:27:\"./template/default/style/t3\";i:1;s:2:\"��\";i:2;s:7:\"#FE9500\";}i:3;a:3:{i:0;s:27:\"./template/default/style/t4\";i:1;s:2:\"��\";i:2;s:7:\"#9934B7\";}i:4;a:3:{i:0;s:27:\"./template/default/style/t5\";i:1;s:2:\"��\";i:2;s:7:\"#0053B9\";}}s:7:\"tplname\";s:12:\"Ĭ��ģ����ϵ\";s:9:\"directory\";s:18:\"./template/default\";s:9:\"copyright\";s:28:\"������ʢ�´��Ƽ��������ι�˾\";s:6:\"tpldir\";s:18:\"./template/default\";s:4:\"font\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:8:\"fontsize\";s:8:\"12px/1.5\";s:12:\"titlebgcolor\";s:7:\"#E5EDF2\";s:16:\"menuhoverbgcolor\";s:7:\"#005AB4\";s:9:\"lightlink\";s:4:\"#FFF\";s:12:\"floatbgcolor\";s:4:\"#FFF\";s:15:\"dropmenubgcolor\";s:7:\"#FEFEFE\";s:16:\"floatmaskbgcolor\";s:4:\"#000\";s:14:\"dropmenuborder\";s:4:\"#DDD\";s:9:\"specialbg\";s:7:\"#E5EDF2\";s:13:\"specialborder\";s:7:\"#C2D5E3\";s:8:\"commonbg\";s:7:\"#F2F2F2\";s:12:\"commonborder\";s:7:\"#CDCDCD\";s:7:\"inputbg\";s:4:\"#FFF\";s:7:\"stypeid\";s:1:\"1\";s:20:\"inputborderdarkcolor\";s:7:\"#848484\";s:13:\"headerbgcolor\";s:0:\"\";s:12:\"headerborder\";s:1:\"0\";s:11:\"sidebgcolor\";s:0:\"\";s:11:\"msgfontsize\";s:4:\"14px\";s:7:\"bgcolor\";s:4:\"#FFF\";s:10:\"noticetext\";s:7:\"#F26C4F\";s:13:\"highlightlink\";s:4:\"#369\";s:4:\"link\";s:4:\"#333\";s:9:\"lighttext\";s:4:\"#999\";s:7:\"midtext\";s:4:\"#666\";s:9:\"tabletext\";s:4:\"#444\";s:10:\"smfontsize\";s:6:\"0.83em\";s:6:\"smfont\";s:5:\"Arial\";s:19:\"threadtitlefontsize\";s:4:\"14px\";s:15:\"threadtitlefont\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:11:\"inputborder\";s:7:\"#E0E0E0\";s:15:\"contentseparate\";s:7:\"#C2D5E3\";s:12:\"contentwidth\";s:5:\"630px\";s:15:\"wrapbordercolor\";s:4:\"#CCC\";s:6:\"wrapbg\";s:4:\"#FFF\";s:13:\"menuhovertext\";s:4:\"#FFF\";s:8:\"menutext\";s:4:\"#FFF\";s:11:\"menubgcolor\";s:7:\"#2B7ACD\";s:10:\"footertext\";s:4:\"#666\";s:10:\"headertext\";s:4:\"#444\";s:8:\"boardimg\";s:28:\"static/image/common/logo.png\";s:6:\"imgdir\";s:19:\"static/image/common\";s:11:\"styleimgdir\";s:19:\"static/image/common\";s:11:\"titlebgcode\";s:71:\"background: #E5EDF2 url(\"static/image/common/titlebg.png\") repeat-x 0 0\";s:15:\"menuhoverbgcode\";s:75:\"background: #005AB4 url(\"static/image/common/nv_a.png\") no-repeat 50% -33px\";s:11:\"floatbgcode\";s:16:\"background: #FFF\";s:14:\"dropmenubgcode\";s:19:\"background: #FEFEFE\";s:15:\"floatmaskbgcode\";s:16:\"background: #000\";s:12:\"headerbgcode\";s:0:\"\";s:10:\"sidebgcode\";s:62:\"background: url(\"static/image/common/vlineb.png\") repeat-y 0 0\";s:6:\"bgcode\";s:71:\"background: #FFF url(\"static/image/common/background.png\") repeat-x 0 0\";s:10:\"menubgcode\";s:67:\"background: #2B7ACD url(\"static/image/common/nv.png\") no-repeat 0 0\";s:9:\"boardlogo\";s:73:\"<img src=\"static/image/common/logo.png\" alt=\"Discuz! Board\" border=\"0\" />\";s:4:\"bold\";s:4:\"bold\";s:15:\"defaultextstyle\";s:0:\"\";s:7:\"verhash\";s:3:\"MUk\";}'),('usergroups',1,1607929477,'a:19:{i:9;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"���ƻ�Ա\";s:13:\"creditshigher\";s:8:\"-9999999\";s:12:\"creditslower\";s:1:\"0\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:1;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:6:\"����Ա\";s:5:\"stars\";s:1:\"9\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"200\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:10:\"maxsigsize\";s:3:\"500\";s:14:\"allowbegincode\";s:1:\"1\";s:12:\"userstatusby\";i:1;}i:2;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:8:\"��������\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"150\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"300\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:3;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:4:\"����\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"100\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"200\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:4;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:8:\"��ֹ����\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:5;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:8:\"��ֹ����\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:6;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:7:\"��ֹ IP\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:7;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:4:\"�ο�\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"1\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:8;a:12:{s:4:\"type\";s:6:\"system\";s:10:\"grouptitle\";s:12:\"�ȴ���֤��Ա\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:2:\"50\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:10;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"������·\";s:13:\"creditshigher\";s:1:\"0\";s:12:\"creditslower\";s:2:\"50\";s:5:\"stars\";s:1:\"1\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"10\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:2:\"80\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:16;a:12:{s:4:\"type\";s:7:\"special\";s:10:\"grouptitle\";s:8:\"ʵϰ����\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"100\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"200\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:17;a:12:{s:4:\"type\";s:7:\"special\";s:10:\"grouptitle\";s:8:\"��վ�༭\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"150\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"300\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:18;a:12:{s:4:\"type\";s:7:\"special\";s:10:\"grouptitle\";s:10:\"��Ϣ���Ա\";s:5:\"stars\";s:1:\"9\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"200\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"500\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:19;a:12:{s:4:\"type\";s:7:\"special\";s:10:\"grouptitle\";s:6:\"���Ա\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:3:\"100\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"200\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:11;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"ע���Ա\";s:13:\"creditshigher\";s:2:\"50\";s:12:\"creditslower\";s:3:\"200\";s:5:\"stars\";s:1:\"2\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"20\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"100\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:12;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"�м���Ա\";s:13:\"creditshigher\";s:3:\"200\";s:12:\"creditslower\";s:3:\"500\";s:5:\"stars\";s:1:\"3\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"30\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"150\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:13;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"�߼���Ա\";s:13:\"creditshigher\";s:3:\"500\";s:12:\"creditslower\";s:4:\"1000\";s:5:\"stars\";s:1:\"4\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"50\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"200\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:14;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"���ƻ�Ա\";s:13:\"creditshigher\";s:4:\"1000\";s:12:\"creditslower\";s:4:\"3000\";s:5:\"stars\";s:1:\"6\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"70\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"300\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}i:15;a:14:{s:4:\"type\";s:6:\"member\";s:10:\"grouptitle\";s:8:\"��̳Ԫ��\";s:13:\"creditshigher\";s:4:\"3000\";s:12:\"creditslower\";s:7:\"9999999\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"readaccess\";s:2:\"90\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"500\";s:14:\"allowbegincode\";s:1:\"0\";s:12:\"userstatusby\";i:1;}}'),('usergroup_1',1,1607929477,'a:189:{s:7:\"groupid\";s:1:\"1\";s:8:\"radminid\";s:1:\"1\";s:10:\"grouptitle\";s:6:\"����Ա\";s:5:\"stars\";s:1:\"9\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"2\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"1\";s:15:\"allowmailinvite\";s:1:\"1\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"200\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"3\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:3:\"127\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"1\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"1\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"1\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"30\";s:10:\"maxsigsize\";s:3:\"500\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"200\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"255\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"1\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"1\";s:13:\"allowstatdata\";s:1:\"1\";s:16:\"videophotoignore\";s:1:\"1\";s:19:\"allowviewvideophoto\";s:1:\"1\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:2:\"30\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"3\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"1\";s:17:\"allowdownlocalimg\";s:1:\"1\";s:18:\"allowdownremoteimg\";s:1:\"1\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"1\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"3\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"1\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"1\";s:14:\"allowbegincode\";s:1:\"1\";s:7:\"allowat\";s:2:\"50\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"1\";s:16:\"allowstickthread\";s:1:\"3\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"1\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"1\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"1\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"1\";s:17:\"alloweditactivity\";s:1:\"1\";s:15:\"allowstickreply\";s:1:\"1\";s:18:\"allowmanagearticle\";s:1:\"1\";s:13:\"allowaddtopic\";s:1:\"1\";s:16:\"allowmanagetopic\";s:1:\"1\";s:8:\"allowdiy\";s:1:\"1\";s:17:\"allowclearrecycle\";s:1:\"1\";s:14:\"allowmanagetag\";s:1:\"1\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"1\";s:11:\"managedoing\";s:1:\"1\";s:11:\"manageshare\";s:1:\"1\";s:10:\"manageblog\";s:1:\"1\";s:11:\"managealbum\";s:1:\"1\";s:13:\"managecomment\";s:1:\"1\";s:14:\"managemagiclog\";s:1:\"1\";s:12:\"managereport\";s:1:\"1\";s:13:\"managehotuser\";s:1:\"1\";s:17:\"managedefaultuser\";s:1:\"1\";s:16:\"managevideophoto\";s:1:\"1\";s:11:\"managemagic\";s:1:\"1\";s:11:\"manageclick\";s:1:\"1\";s:21:\"allowmanagecollection\";s:1:\"1\";s:13:\"allowmakehtml\";s:1:\"1\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_2',1,1607929477,'a:189:{s:7:\"groupid\";s:1:\"2\";s:8:\"radminid\";s:1:\"2\";s:10:\"grouptitle\";s:8:\"��������\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"1\";s:15:\"allowmailinvite\";s:1:\"1\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"150\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"3\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"1\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"1\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"20\";s:10:\"maxsigsize\";s:3:\"300\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"180\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"255\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:2:\"20\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"1\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"2\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"1\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"1\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"1\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"1\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"1\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_3',1,1607929477,'a:189:{s:7:\"groupid\";s:1:\"3\";s:8:\"radminid\";s:1:\"3\";s:10:\"grouptitle\";s:4:\"����\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"1\";s:15:\"allowmailinvite\";s:1:\"1\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"100\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"1\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"10\";s:10:\"maxsigsize\";s:3:\"200\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"160\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"224\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:2:\"15\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"1\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"1\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"1\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"1\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"1\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_4',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"4\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"��ֹ����\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:1:\"0\";s:10:\"readaccess\";s:1:\"0\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"0\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"0\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"0\";s:16:\"allowcommentitem\";s:1:\"0\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_5',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"5\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"��ֹ����\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"0\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:1:\"0\";s:10:\"readaccess\";s:1:\"0\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"0\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"0\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"0\";s:16:\"allowcommentitem\";s:1:\"0\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_6',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"6\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:7:\"��ֹ IP\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"0\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:1:\"0\";s:10:\"readaccess\";s:1:\"0\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"0\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"0\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"0\";s:16:\"allowcommentitem\";s:1:\"0\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_7',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"7\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:4:\"�ο�\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:1:\"1\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:2:\"19\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"0\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:19:\"gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"0\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"0\";s:16:\"allowcommentitem\";s:1:\"0\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_8',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"8\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:12:\"�ȴ���֤��Ա\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:1:\"0\";s:10:\"readaccess\";s:1:\"0\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"2\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:2:\"50\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"0\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"0\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"system\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_9',1,1607929477,'a:128:{s:7:\"groupid\";s:1:\"9\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"���ƻ�Ա\";s:5:\"stars\";s:1:\"0\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:1:\"0\";s:10:\"readaccess\";s:1:\"0\";s:9:\"allowpost\";s:1:\"0\";s:10:\"allowreply\";s:1:\"0\";s:13:\"allowpostpoll\";s:1:\"0\";s:15:\"allowpostreward\";s:1:\"0\";s:14:\"allowposttrade\";s:1:\"0\";s:17:\"allowpostactivity\";s:1:\"0\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"0\";s:13:\"allowgetimage\";s:1:\"0\";s:15:\"allowpostattach\";s:1:\"0\";s:14:\"allowpostimage\";s:1:\"0\";s:9:\"allowvote\";s:1:\"0\";s:11:\"allowsearch\";s:1:\"0\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"0\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"0\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:1:\"0\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:45:\"chm,pdf,zip,rar,tar,gz,bzip2,gif,jpg,jpeg,png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"1\";s:15:\"maxmagicsweight\";s:1:\"0\";s:15:\"allowpostdebate\";s:1:\"0\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"0\";s:14:\"allowrecommend\";s:1:\"0\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"0\";s:19:\"allowcommentarticle\";s:1:\"0\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"0\";s:10:\"allowdoing\";s:1:\"0\";s:11:\"allowupload\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"0\";s:11:\"allowfriend\";s:1:\"0\";s:10:\"allowclick\";s:1:\"0\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"0\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"0\";s:20:\"allowgroupdirectpost\";s:1:\"0\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"0\";s:20:\"allowspacediyimgcode\";s:1:\"0\";s:16:\"allowcommentpost\";s:1:\"0\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:1:\"0\";s:22:\"allowcommentcollection\";s:1:\"0\";s:21:\"allowcreatecollection\";s:1:\"0\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:8:\"-9999999\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_10',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"10\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"������·\";s:5:\"stars\";s:1:\"1\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"10\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"1\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:2:\"80\";s:13:\"maxattachsize\";s:7:\"1024000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:2:\"40\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"5\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"0\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:2:\"50\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_11',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"11\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"ע���Ա\";s:5:\"stars\";s:1:\"2\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"20\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"1\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"100\";s:13:\"maxattachsize\";s:7:\"1024000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:2:\"60\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"5\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:2:\"50\";s:17:\"groupcreditslower\";s:3:\"200\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_12',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"12\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"�м���Ա\";s:5:\"stars\";s:1:\"3\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"30\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"1\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"150\";s:13:\"maxattachsize\";s:7:\"1024000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:2:\"80\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:1:\"5\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:3:\"200\";s:17:\"groupcreditslower\";s:3:\"500\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_13',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"13\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"�߼���Ա\";s:5:\"stars\";s:1:\"4\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"50\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"0\";s:18:\"allowsetattachperm\";s:1:\"0\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"0\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"200\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"100\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"0\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:2:\"10\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:3:\"500\";s:17:\"groupcreditslower\";s:4:\"1000\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_14',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"14\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"���ƻ�Ա\";s:5:\"stars\";s:1:\"6\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"70\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"300\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"120\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:2:\"10\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:4:\"1000\";s:17:\"groupcreditslower\";s:4:\"3000\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_15',1,1607929477,'a:128:{s:7:\"groupid\";s:2:\"15\";s:8:\"radminid\";s:1:\"0\";s:10:\"grouptitle\";s:8:\"��̳Ԫ��\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:2:\"90\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"0\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"1\";s:13:\"allowtransfer\";s:1:\"0\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"1\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:1:\"0\";s:10:\"maxsigsize\";s:3:\"500\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"140\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:1:\"0\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"1\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:2:\"10\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:9:\"grouptype\";s:6:\"member\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:4:\"3000\";s:17:\"groupcreditslower\";s:7:\"9999999\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_16',1,1607929477,'a:189:{s:7:\"groupid\";s:2:\"16\";s:8:\"radminid\";s:1:\"3\";s:10:\"grouptitle\";s:8:\"ʵϰ����\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"100\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"1\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"10\";s:10:\"maxsigsize\";s:3:\"200\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"160\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"188\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"0\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"0\";s:15:\"allowbuildgroup\";s:2:\"15\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"1\";s:12:\"allowmodpost\";s:1:\"0\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"0\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"1\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:7:\"special\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_17',1,1607929477,'a:189:{s:7:\"groupid\";s:2:\"17\";s:8:\"radminid\";s:1:\"2\";s:10:\"grouptitle\";s:8:\"��վ�༭\";s:5:\"stars\";s:1:\"8\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"150\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"3\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"1\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"20\";s:10:\"maxsigsize\";s:3:\"300\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"180\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"255\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"0\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:2:\"15\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"2\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"1\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"1\";s:12:\"allowviewlog\";s:1:\"1\";s:12:\"allowbanpost\";s:1:\"1\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"1\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"3\";s:20:\"allowrecommendthread\";s:1:\"1\";s:15:\"allowbumpthread\";s:1:\"1\";s:16:\"allowclosethread\";s:1:\"1\";s:15:\"allowmovethread\";s:1:\"1\";s:19:\"allowedittypethread\";s:1:\"1\";s:16:\"allowstampthread\";s:1:\"1\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"1\";s:16:\"allowmergethread\";s:1:\"1\";s:16:\"allowsplitthread\";s:1:\"1\";s:17:\"allowrepairthread\";s:1:\"1\";s:13:\"allowwarnpost\";s:1:\"1\";s:15:\"allowviewreport\";s:1:\"1\";s:14:\"alloweditforum\";s:1:\"1\";s:17:\"allowremovereward\";s:1:\"1\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:7:\"special\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_18',1,1607929477,'a:189:{s:7:\"groupid\";s:2:\"18\";s:8:\"radminid\";s:1:\"1\";s:10:\"grouptitle\";s:10:\"��Ϣ���Ա\";s:5:\"stars\";s:1:\"9\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"200\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"3\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"0\";s:14:\"allowinvisible\";s:1:\"1\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"1\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"0\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"30\";s:10:\"maxsigsize\";s:3:\"500\";s:13:\"maxattachsize\";s:1:\"0\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"1\";s:16:\"attachextensions\";s:0:\"\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"200\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"255\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"3\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:2:\"15\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:1:\"5\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"0\";s:12:\"allowmodpost\";s:1:\"0\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"0\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"0\";s:12:\"allowbanuser\";s:1:\"0\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"0\";s:20:\"supe_allowpushthread\";s:1:\"1\";s:20:\"allowhighlightthread\";s:1:\"0\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"0\";s:20:\"allowrecommendthread\";s:1:\"0\";s:15:\"allowbumpthread\";s:1:\"0\";s:16:\"allowclosethread\";s:1:\"0\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"0\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"0\";s:15:\"allowviewreport\";s:1:\"0\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:7:\"special\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('usergroup_19',1,1607929477,'a:189:{s:7:\"groupid\";s:2:\"19\";s:8:\"radminid\";s:1:\"3\";s:10:\"grouptitle\";s:6:\"���Ա\";s:5:\"stars\";s:1:\"7\";s:5:\"color\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"allowvisit\";s:1:\"1\";s:11:\"allowsendpm\";s:1:\"1\";s:11:\"allowinvite\";s:1:\"0\";s:15:\"allowmailinvite\";s:1:\"0\";s:12:\"maxinvitenum\";s:1:\"0\";s:11:\"inviteprice\";s:1:\"0\";s:12:\"maxinviteday\";s:2:\"10\";s:10:\"readaccess\";s:3:\"100\";s:9:\"allowpost\";s:1:\"1\";s:10:\"allowreply\";s:1:\"1\";s:13:\"allowpostpoll\";s:1:\"1\";s:15:\"allowpostreward\";s:1:\"1\";s:14:\"allowposttrade\";s:1:\"1\";s:17:\"allowpostactivity\";s:1:\"1\";s:15:\"allowdirectpost\";s:1:\"1\";s:14:\"allowgetattach\";s:1:\"1\";s:13:\"allowgetimage\";s:1:\"1\";s:15:\"allowpostattach\";s:1:\"1\";s:14:\"allowpostimage\";s:1:\"1\";s:9:\"allowvote\";s:1:\"1\";s:11:\"allowsearch\";s:2:\"95\";s:12:\"allowcstatus\";s:1:\"1\";s:14:\"allowinvisible\";s:1:\"0\";s:13:\"allowtransfer\";s:1:\"1\";s:16:\"allowsetreadperm\";s:1:\"1\";s:18:\"allowsetattachperm\";s:1:\"1\";s:12:\"allowposttag\";s:1:\"0\";s:13:\"allowhidecode\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:14:\"allowanonymous\";s:1:\"0\";s:14:\"allowsigbbcode\";s:1:\"1\";s:15:\"allowsigimgcode\";s:1:\"1\";s:11:\"allowmagics\";s:1:\"2\";s:17:\"disableperiodctrl\";s:1:\"1\";s:8:\"reasonpm\";s:1:\"0\";s:8:\"maxprice\";s:2:\"10\";s:10:\"maxsigsize\";s:3:\"200\";s:13:\"maxattachsize\";s:7:\"2048000\";s:13:\"maxsizeperday\";s:1:\"0\";s:17:\"maxthreadsperhour\";s:1:\"0\";s:15:\"maxpostsperhour\";s:1:\"0\";s:16:\"attachextensions\";s:55:\"chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png\";s:9:\"raterange\";a:0:{}s:11:\"loginreward\";s:0:\"\";s:13:\"mintradeprice\";s:1:\"1\";s:13:\"maxtradeprice\";s:1:\"0\";s:14:\"minrewardprice\";s:1:\"1\";s:14:\"maxrewardprice\";s:1:\"0\";s:14:\"magicsdiscount\";s:1:\"0\";s:15:\"maxmagicsweight\";s:3:\"160\";s:15:\"allowpostdebate\";s:1:\"1\";s:10:\"tradestick\";s:1:\"5\";s:6:\"exempt\";s:3:\"188\";s:12:\"maxattachnum\";s:1:\"0\";s:12:\"allowposturl\";s:1:\"3\";s:14:\"allowrecommend\";s:1:\"0\";s:18:\"allowpostrushreply\";s:1:\"0\";s:12:\"maxfriendnum\";s:1:\"0\";s:12:\"maxspacesize\";i:0;s:12:\"allowcomment\";s:1:\"1\";s:19:\"allowcommentarticle\";s:4:\"1000\";s:14:\"searchinterval\";s:1:\"0\";s:12:\"searchignore\";s:1:\"0\";s:9:\"allowblog\";s:1:\"1\";s:10:\"allowdoing\";s:1:\"1\";s:11:\"allowupload\";s:1:\"1\";s:10:\"allowshare\";s:1:\"1\";s:12:\"allowblogmod\";s:1:\"0\";s:13:\"allowdoingmod\";s:1:\"0\";s:14:\"allowuploadmod\";s:1:\"0\";s:13:\"allowsharemod\";s:1:\"0\";s:8:\"allowcss\";s:1:\"0\";s:9:\"allowpoke\";s:1:\"1\";s:11:\"allowfriend\";s:1:\"1\";s:10:\"allowclick\";s:1:\"1\";s:10:\"allowmagic\";s:1:\"0\";s:9:\"allowstat\";s:1:\"0\";s:13:\"allowstatdata\";s:1:\"0\";s:16:\"videophotoignore\";s:1:\"0\";s:19:\"allowviewvideophoto\";s:1:\"0\";s:9:\"allowmyop\";s:1:\"1\";s:13:\"magicdiscount\";s:1:\"0\";s:12:\"domainlength\";s:1:\"5\";s:7:\"seccode\";s:1:\"1\";s:15:\"disablepostctrl\";s:1:\"1\";s:15:\"allowbuildgroup\";s:2:\"15\";s:20:\"allowgroupdirectpost\";s:1:\"3\";s:17:\"allowgroupposturl\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:16:\"allowpostarticle\";s:1:\"0\";s:17:\"allowdownlocalimg\";s:1:\"0\";s:18:\"allowdownremoteimg\";s:1:\"0\";s:19:\"allowpostarticlemod\";s:1:\"0\";s:17:\"allowspacediyhtml\";s:1:\"0\";s:19:\"allowspacediybbcode\";s:1:\"1\";s:20:\"allowspacediyimgcode\";s:1:\"1\";s:16:\"allowcommentpost\";s:1:\"2\";s:16:\"allowcommentitem\";s:1:\"1\";s:17:\"allowcommentreply\";s:1:\"0\";s:16:\"allowreplycredit\";s:1:\"1\";s:12:\"ignorecensor\";s:1:\"0\";s:14:\"allowsendallpm\";s:1:\"0\";s:17:\"allowsendpmmaxnum\";s:1:\"0\";s:12:\"maximagesize\";s:1:\"0\";s:14:\"allowmediacode\";s:1:\"0\";s:14:\"allowbegincode\";s:1:\"0\";s:7:\"allowat\";s:1:\"0\";s:19:\"allowsetpublishdate\";s:1:\"0\";s:21:\"allowfollowcollection\";s:2:\"30\";s:22:\"allowcommentcollection\";s:1:\"1\";s:21:\"allowcreatecollection\";s:1:\"5\";s:12:\"forcesecques\";s:1:\"0\";s:10:\"forcelogin\";s:1:\"0\";s:7:\"closead\";s:1:\"0\";s:17:\"buildgroupcredits\";s:1:\"0\";s:15:\"allowimgcontent\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"0\";s:13:\"alloweditpoll\";s:1:\"0\";s:16:\"allowstickthread\";s:1:\"0\";s:12:\"allowmodpost\";s:1:\"1\";s:12:\"allowdelpost\";s:1:\"0\";s:14:\"allowmassprune\";s:1:\"0\";s:11:\"allowrefund\";s:1:\"0\";s:15:\"allowcensorword\";s:1:\"0\";s:11:\"allowviewip\";s:1:\"1\";s:10:\"allowbanip\";s:1:\"1\";s:13:\"allowedituser\";s:1:\"0\";s:12:\"allowmoduser\";s:1:\"1\";s:12:\"allowbanuser\";s:1:\"1\";s:17:\"allowbanvisituser\";s:1:\"0\";s:17:\"allowpostannounce\";s:1:\"0\";s:12:\"allowviewlog\";s:1:\"0\";s:12:\"allowbanpost\";s:1:\"0\";s:20:\"supe_allowpushthread\";s:1:\"0\";s:20:\"allowhighlightthread\";s:1:\"0\";s:15:\"allowlivethread\";s:1:\"0\";s:17:\"allowdigestthread\";s:1:\"0\";s:20:\"allowrecommendthread\";s:1:\"0\";s:15:\"allowbumpthread\";s:1:\"0\";s:16:\"allowclosethread\";s:1:\"0\";s:15:\"allowmovethread\";s:1:\"0\";s:19:\"allowedittypethread\";s:1:\"0\";s:16:\"allowstampthread\";s:1:\"0\";s:14:\"allowstamplist\";s:1:\"0\";s:15:\"allowcopythread\";s:1:\"0\";s:16:\"allowmergethread\";s:1:\"0\";s:16:\"allowsplitthread\";s:1:\"0\";s:17:\"allowrepairthread\";s:1:\"0\";s:13:\"allowwarnpost\";s:1:\"0\";s:15:\"allowviewreport\";s:1:\"0\";s:14:\"alloweditforum\";s:1:\"0\";s:17:\"allowremovereward\";s:1:\"0\";s:14:\"allowedittrade\";s:1:\"0\";s:17:\"alloweditactivity\";s:1:\"0\";s:15:\"allowstickreply\";s:1:\"0\";s:18:\"allowmanagearticle\";s:1:\"0\";s:13:\"allowaddtopic\";s:1:\"0\";s:16:\"allowmanagetopic\";s:1:\"0\";s:8:\"allowdiy\";s:1:\"0\";s:17:\"allowclearrecycle\";s:1:\"0\";s:14:\"allowmanagetag\";s:1:\"0\";s:16:\"alloweditusertag\";s:1:\"0\";s:10:\"managefeed\";s:1:\"0\";s:11:\"managedoing\";s:1:\"0\";s:11:\"manageshare\";s:1:\"0\";s:10:\"manageblog\";s:1:\"0\";s:11:\"managealbum\";s:1:\"0\";s:13:\"managecomment\";s:1:\"0\";s:14:\"managemagiclog\";s:1:\"0\";s:12:\"managereport\";s:1:\"0\";s:13:\"managehotuser\";s:1:\"0\";s:17:\"managedefaultuser\";s:1:\"0\";s:16:\"managevideophoto\";s:1:\"0\";s:11:\"managemagic\";s:1:\"0\";s:11:\"manageclick\";s:1:\"0\";s:21:\"allowmanagecollection\";s:1:\"0\";s:13:\"allowmakehtml\";s:1:\"0\";s:9:\"grouptype\";s:7:\"special\";s:11:\"grouppublic\";b:0;s:18:\"groupcreditshigher\";s:1:\"0\";s:17:\"groupcreditslower\";s:1:\"0\";s:17:\"allowthreadplugin\";a:0:{}s:6:\"plugin\";N;}'),('blockclass',1,1605603304,'a:7:{s:5:\"forum\";a:2:{s:4:\"name\";s:6:\"��̳��\";s:4:\"subs\";a:4:{s:14:\"forum_activity\";a:3:{s:4:\"name\";s:8:\"�ģ��\";s:6:\"fields\";a:15:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:9:\"���URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"����ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:4:\"time\";a:3:{s:4:\"name\";s:8:\"�ʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:10:\"expiration\";a:3:{s:4:\"name\";s:12:\"������ֹʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:9:\"������UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:4:\"cost\";a:3:{s:4:\"name\";s:8:\"ÿ�˻���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"place\";a:3:{s:4:\"name\";s:8:\"��ص�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:5:\"class\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"gender\";a:3:{s:4:\"name\";s:8:\"�Ա�Ҫ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"number\";a:3:{s:4:\"name\";s:8:\"��Ҫ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"applynumber\";a:3:{s:4:\"name\";s:10:\"�ѱ�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:3:{s:8:\"activity\";s:10:\"�߼��Զ���\";s:12:\"activitycity\";s:8:\"ͬ�ǻ\";s:11:\"activitynew\";s:8:\"���»\";}}s:11:\"forum_forum\";a:3:{s:4:\"name\";s:8:\"���ģ��\";s:6:\"fields\";a:8:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"������\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:4:\"icon\";a:3:{s:4:\"name\";s:8:\"���ͼ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"posts\";a:3:{s:4:\"name\";s:10:\"���������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"threads\";a:3:{s:4:\"name\";s:10:\"��黰����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"todayposts\";a:3:{s:4:\"name\";s:14:\"������������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:1:{s:5:\"forum\";s:8:\"��̳���\";}}s:12:\"forum_thread\";a:3:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"fields\";a:26:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:7:\"����URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"���ӱ���\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"����ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:6:\"author\";a:3:{s:4:\"name\";s:4:\"¥��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:7:\"¥��UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"¥��ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"¥��ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"¥��ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"forumurl\";a:3:{s:4:\"name\";s:7:\"���URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"forumname\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"typename\";a:3:{s:4:\"name\";s:12:\"�����������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"typeicon\";a:3:{s:4:\"name\";s:12:\"�������ͼ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"typeurl\";a:3:{s:4:\"name\";s:11:\"�������URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"sortname\";a:3:{s:4:\"name\";s:12:\"������Ϣ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"sorturl\";a:3:{s:4:\"name\";s:11:\"������ϢURL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"posts\";a:3:{s:4:\"name\";s:8:\"�ܷ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"todayposts\";a:3:{s:4:\"name\";s:10:\"���շ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"lastposter\";a:3:{s:4:\"name\";s:12:\"���ظ�����\";s:8:\"formtype\";s:6:\"string\";s:8:\"datatype\";s:6:\"string\";}s:8:\"lastpost\";a:3:{s:4:\"name\";s:12:\"���ظ�ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:7:\"replies\";a:3:{s:4:\"name\";s:6:\"�ظ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"views\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"heats\";a:3:{s:4:\"name\";s:6:\"�ȶ�ֵ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"recommends\";a:3:{s:4:\"name\";s:6:\"�Ƽ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:7:{s:6:\"thread\";s:10:\"�߼��Զ���\";s:12:\"threaddigest\";s:6:\"������\";s:9:\"threadhot\";s:6:\"������\";s:9:\"threadnew\";s:6:\"������\";s:13:\"threadspecial\";s:10:\"����������\";s:15:\"threadspecified\";s:8:\"ָ������\";s:11:\"threadstick\";s:6:\"�ö���\";}}s:11:\"forum_trade\";a:3:{s:4:\"name\";s:8:\"��Ʒģ��\";s:6:\"fields\";a:9:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:12:\"��ƷͼƬ��ַ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��Ʒ˵��\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:10:\"totalitems\";a:3:{s:4:\"name\";s:14:\"��Ʒ�ۼ��۳���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"author\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:11:\"��Ʒ����UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"price\";a:3:{s:4:\"name\";s:8:\"��Ʒ�۸�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}}s:6:\"script\";a:4:{s:5:\"trade\";s:10:\"�߼��Զ���\";s:8:\"tradehot\";s:8:\"������Ʒ\";s:8:\"tradenew\";s:6:\"����Ʒ\";s:14:\"tradespecified\";s:8:\"ָ����Ʒ\";}}}}s:5:\"group\";a:2:{s:4:\"name\";s:6:\"Ⱥ����\";s:4:\"subs\";a:4:{s:11:\"group_group\";a:3:{s:4:\"name\";s:8:\"Ⱥ��ģ��\";s:6:\"fields\";a:16:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"Ⱥ��ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"Ⱥ�����\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:4:\"icon\";a:3:{s:4:\"name\";s:8:\"Ⱥ��ͼ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:11:\"foundername\";a:3:{s:4:\"name\";s:6:\"��ʼ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"founderuid\";a:3:{s:4:\"name\";s:9:\"��ʼ��UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"posts\";a:3:{s:4:\"name\";s:8:\"�ܷ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"todayposts\";a:3:{s:4:\"name\";s:10:\"���շ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"threads\";a:3:{s:4:\"name\";s:8:\"�ܻ�����\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:3:\"int\";}s:9:\"membernum\";a:3:{s:4:\"name\";s:6:\"��Ա��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:5:\"level\";a:3:{s:4:\"name\";s:8:\"Ⱥ��ȼ�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:13:\"commoncredits\";a:3:{s:4:\"name\";s:12:\"Ⱥ�鹫������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"activity\";a:3:{s:4:\"name\";s:10:\"Ⱥ���Ծ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:4:{s:5:\"group\";s:10:\"�߼��Զ���\";s:8:\"grouphot\";s:8:\"����Ⱥ��\";s:8:\"groupnew\";s:8:\"����Ⱥ��\";s:14:\"groupspecified\";s:8:\"ָ��Ⱥ��\";}}s:14:\"group_activity\";a:3:{s:4:\"name\";s:8:\"Ⱥ��\";s:6:\"fields\";a:15:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:9:\"���URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"����ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:4:\"time\";a:3:{s:4:\"name\";s:8:\"�ʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:10:\"expiration\";a:3:{s:4:\"name\";s:12:\"������ֹʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:9:\"������UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:4:\"cost\";a:3:{s:4:\"name\";s:8:\"ÿ�˻���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"place\";a:3:{s:4:\"name\";s:8:\"��ص�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:5:\"class\";a:3:{s:4:\"name\";s:8:\"�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"gender\";a:3:{s:4:\"name\";s:8:\"�Ա�Ҫ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:6:\"number\";a:3:{s:4:\"name\";s:8:\"��Ҫ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"applynumber\";a:3:{s:4:\"name\";s:10:\"�ѱ�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:3:{s:13:\"groupactivity\";s:8:\"Ⱥ��\";s:17:\"groupactivitycity\";s:8:\"ͬ�ǻ\";s:16:\"groupactivitynew\";s:8:\"���»\";}}s:12:\"group_thread\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:6:\"fields\";a:20:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"���ӱ���\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"����ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:6:\"author\";a:3:{s:4:\"name\";s:4:\"¥��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:7:\"¥��UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"¥��ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"¥��ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"¥��ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"posts\";a:3:{s:4:\"name\";s:12:\"������������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"todayposts\";a:3:{s:4:\"name\";s:14:\"�������������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"lastpost\";a:3:{s:4:\"name\";s:16:\"���������ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:12:\"���ⷢ��ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:7:\"replies\";a:3:{s:4:\"name\";s:10:\"����ظ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"views\";a:3:{s:4:\"name\";s:10:\"����鿴��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"heats\";a:3:{s:4:\"name\";s:8:\"�����ȶ�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"recommends\";a:3:{s:4:\"name\";s:10:\"�����Ƽ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:9:\"groupname\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"groupurl\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}}s:6:\"script\";a:5:{s:11:\"groupthread\";s:10:\"�߼��Զ���\";s:14:\"groupthreadhot\";s:8:\"��������\";s:14:\"groupthreadnew\";s:6:\"������\";s:18:\"groupthreadspecial\";s:8:\"��������\";s:20:\"groupthreadspecified\";s:8:\"ָ������\";}}s:11:\"group_trade\";a:3:{s:4:\"name\";s:8:\"Ⱥ����Ʒ\";s:6:\"fields\";a:9:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:12:\"��ƷͼƬ��ַ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��Ʒ˵��\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:10:\"totalitems\";a:3:{s:4:\"name\";s:14:\"��Ʒ�ۼ��۳���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"author\";a:3:{s:4:\"name\";s:8:\"��Ʒ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}s:8:\"authorid\";a:3:{s:4:\"name\";s:11:\"��Ʒ����UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:5:\"price\";a:3:{s:4:\"name\";s:8:\"��Ʒ�۸�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"text\";}}s:6:\"script\";a:4:{s:10:\"grouptrade\";s:10:\"�߼��Զ���\";s:13:\"grouptradehot\";s:8:\"������Ʒ\";s:13:\"grouptradenew\";s:6:\"����Ʒ\";s:19:\"grouptradespecified\";s:8:\"ָ����Ʒ\";}}}}s:4:\"html\";a:2:{s:4:\"name\";s:6:\"չʾ��\";s:4:\"subs\";a:2:{s:9:\"html_html\";a:3:{s:4:\"name\";s:8:\"��̬ģ��\";s:6:\"fields\";a:0:{}s:6:\"script\";a:11:{s:3:\"adv\";s:8:\"վ����\";s:6:\"banner\";s:8:\"ͼƬ���\";s:5:\"blank\";s:10:\"�Զ���HTML\";s:9:\"forumtree\";s:8:\"����б�\";s:10:\"friendlink\";s:8:\"��������\";s:6:\"google\";s:6:\"GOOGLE\";s:4:\"line\";s:6:\"�ָ���\";s:6:\"search\";s:6:\"������\";s:4:\"sort\";s:8:\"������Ϣ\";s:4:\"stat\";s:8:\"����ͳ��\";s:5:\"vedio\";s:8:\"������Ƶ\";}}s:17:\"html_announcement\";a:3:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"fields\";a:5:{s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:9:\"starttime\";a:3:{s:4:\"name\";s:8:\"��ʼʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"date\";}s:7:\"endtime\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:4:\"date\";}}s:6:\"script\";a:1:{s:12:\"announcement\";s:8:\"վ�㹫��\";}}}}s:6:\"member\";a:2:{s:4:\"name\";s:6:\"��Ա��\";s:4:\"subs\";a:1:{s:13:\"member_member\";a:3:{s:4:\"name\";s:8:\"��Աģ��\";s:6:\"fields\";a:55:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"�ռ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:6:\"�û���\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"�û�ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"regdate\";a:3:{s:4:\"name\";s:8:\"ע��ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:5:\"posts\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"threads\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"digestposts\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"credits\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"reason\";a:3:{s:4:\"name\";s:8:\"�Ƽ�ԭ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"unitprice\";a:3:{s:4:\"name\";s:16:\"���۵��η��ʵ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"showcredit\";a:3:{s:4:\"name\";s:10:\"�����ܻ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"shownote\";a:3:{s:4:\"name\";s:12:\"�����ϰ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:11:\"extcredits1\";a:3:{s:4:\"name\";s:4:\"����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"extcredits2\";a:3:{s:4:\"name\";s:4:\"��Ǯ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"extcredits3\";a:3:{s:4:\"name\";s:4:\"����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"realname\";a:3:{s:4:\"name\";s:8:\"��ʵ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"gender\";a:3:{s:4:\"name\";s:4:\"�Ա�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"birthyear\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"birthmonth\";a:3:{s:4:\"name\";s:8:\"�����·�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"birthday\";a:3:{s:4:\"name\";s:4:\"����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"constellation\";a:3:{s:4:\"name\";s:4:\"����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"zodiac\";a:3:{s:4:\"name\";s:4:\"��Ф\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"telephone\";a:3:{s:4:\"name\";s:8:\"�̶��绰\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"mobile\";a:3:{s:4:\"name\";s:4:\"�ֻ�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"idcardtype\";a:3:{s:4:\"name\";s:8:\"֤������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"idcard\";a:3:{s:4:\"name\";s:6:\"֤����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"address\";a:3:{s:4:\"name\";s:8:\"�ʼĵ�ַ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"zipcode\";a:3:{s:4:\"name\";s:4:\"�ʱ�\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"birthprovince\";a:3:{s:4:\"name\";s:8:\"����ʡ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"birthcity\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"birthdist\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:14:\"birthcommunity\";a:3:{s:4:\"name\";s:8:\"����С��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:14:\"resideprovince\";a:3:{s:4:\"name\";s:8:\"��סʡ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"residecity\";a:3:{s:4:\"name\";s:6:\"��ס��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"residedist\";a:3:{s:4:\"name\";s:6:\"��ס��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:15:\"residecommunity\";a:3:{s:4:\"name\";s:8:\"��סС��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:14:\"graduateschool\";a:3:{s:4:\"name\";s:8:\"��ҵѧУ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"education\";a:3:{s:4:\"name\";s:4:\"ѧ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"company\";a:3:{s:4:\"name\";s:4:\"��˾\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"occupation\";a:3:{s:4:\"name\";s:4:\"ְҵ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"position\";a:3:{s:4:\"name\";s:4:\"ְλ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"revenue\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:15:\"affectivestatus\";a:3:{s:4:\"name\";s:8:\"���״̬\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"lookingfor\";a:3:{s:4:\"name\";s:8:\"����Ŀ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:9:\"bloodtype\";a:3:{s:4:\"name\";s:4:\"Ѫ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"alipay\";a:3:{s:4:\"name\";s:6:\"֧����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:2:\"qq\";a:3:{s:4:\"name\";s:2:\"QQ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:3:\"msn\";a:3:{s:4:\"name\";s:3:\"MSN\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"taobao\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:4:\"site\";a:3:{s:4:\"name\";s:8:\"������ҳ\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:3:\"bio\";a:3:{s:4:\"name\";s:8:\"���ҽ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"interest\";a:3:{s:4:\"name\";s:8:\"��Ȥ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}}s:6:\"script\";a:7:{s:6:\"member\";s:10:\"�߼��Զ���\";s:12:\"membercredit\";s:8:\"��������\";s:9:\"membernew\";s:6:\"�»�Ա\";s:11:\"memberposts\";s:8:\"��������\";s:10:\"membershow\";s:8:\"��������\";s:13:\"memberspecial\";s:8:\"�����Ա\";s:15:\"memberspecified\";s:8:\"ָ���û�\";}}}}s:5:\"other\";a:2:{s:4:\"name\";s:6:\"������\";s:4:\"subs\";a:2:{s:21:\"other_otherfriendlink\";a:3:{s:4:\"name\";s:8:\"��������\";s:6:\"fields\";a:4:{s:3:\"url\";a:3:{s:4:\"name\";s:7:\"վ��URL\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"վ������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"վ��LOGO\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"վ����\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}}s:6:\"script\";a:1:{s:15:\"otherfriendlink\";s:10:\"�߼��Զ���\";}}s:15:\"other_otherstat\";a:3:{s:4:\"name\";s:8:\"ͳ��ģ��\";s:6:\"fields\";a:26:{s:5:\"posts\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"posts_title\";a:3:{s:4:\"name\";s:10:\"������ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"groups\";a:3:{s:4:\"name\";s:8:\"Ⱥ������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:12:\"groups_title\";a:3:{s:4:\"name\";s:10:\"Ⱥ����ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"members\";a:3:{s:4:\"name\";s:8:\"��Ա����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:13:\"members_title\";a:3:{s:4:\"name\";s:10:\"��Ա��ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"groupnewposts\";a:3:{s:4:\"name\";s:12:\"Ⱥ����շ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:19:\"groupnewposts_title\";a:3:{s:4:\"name\";s:14:\"���շ�����ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:11:\"bbsnewposts\";a:3:{s:4:\"name\";s:14:\"��̳���շ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:17:\"bbsnewposts_title\";a:3:{s:4:\"name\";s:14:\"���շ�����ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:12:\"bbslastposts\";a:3:{s:4:\"name\";s:14:\"��̳���շ�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:18:\"bbslastposts_title\";a:3:{s:4:\"name\";s:14:\"���շ�����ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"onlinemembers\";a:3:{s:4:\"name\";s:14:\"��ǰ���߻�Ա��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:19:\"onlinemembers_title\";a:3:{s:4:\"name\";s:18:\"��ǰ���߻�Ա��ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"maxmembers\";a:3:{s:4:\"name\";s:18:\"��ʷ������߻�Ա��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:16:\"maxmembers_title\";a:3:{s:4:\"name\";s:18:\"��ʷ���������ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"doings\";a:3:{s:4:\"name\";s:6:\"��̬��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:12:\"doings_title\";a:3:{s:4:\"name\";s:10:\"��̬��ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"blogs\";a:3:{s:4:\"name\";s:6:\"��־��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:11:\"blogs_title\";a:3:{s:4:\"name\";s:10:\"��־��ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"albums\";a:3:{s:4:\"name\";s:6:\"�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:12:\"albums_title\";a:3:{s:4:\"name\";s:10:\"�����ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:4:\"pics\";a:3:{s:4:\"name\";s:6:\"ͼƬ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"pics_title\";a:3:{s:4:\"name\";s:10:\"ͼƬ��ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"shares\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:12:\"shares_title\";a:3:{s:4:\"name\";s:10:\"������ʾ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}}s:6:\"script\";a:1:{s:9:\"otherstat\";s:10:\"�߼��Զ���\";}}}}s:6:\"portal\";a:2:{s:4:\"name\";s:6:\"�Ż���\";s:4:\"subs\";a:3:{s:14:\"portal_article\";a:3:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"fields\";a:16:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"uid\";a:3:{s:4:\"name\";s:7:\"����UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"�û�ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"���±���\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"���·���\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"���¼��\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:6:\"caturl\";a:3:{s:4:\"name\";s:8:\"��Ŀ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:7:\"catname\";a:3:{s:4:\"name\";s:8:\"��Ŀ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"articles\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"viewnum\";a:3:{s:4:\"name\";s:6:\"�鿴��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:10:\"commentnum\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:4:{s:7:\"article\";s:10:\"�߼��Զ���\";s:10:\"articlehot\";s:8:\"��������\";s:10:\"articlenew\";s:8:\"��������\";s:16:\"articlespecified\";s:8:\"ָ������\";}}s:15:\"portal_category\";a:3:{s:4:\"name\";s:8:\"������Ŀ\";s:6:\"fields\";a:4:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��Ŀ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"��Ŀ����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:8:\"articles\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:1:{s:14:\"portalcategory\";s:8:\"������Ŀ\";}}s:12:\"portal_topic\";a:3:{s:4:\"name\";s:8:\"ר��ģ��\";s:6:\"fields\";a:9:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"ר������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"ר������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"ר�����\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"ר�����\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:3:\"uid\";a:3:{s:4:\"name\";s:9:\"������UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:7:\"viewnum\";a:3:{s:4:\"name\";s:6:\"�鿴��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:4:{s:5:\"topic\";s:10:\"�߼��Զ���\";s:8:\"topichot\";s:8:\"����ר��\";s:8:\"topicnew\";s:8:\"����ר��\";s:14:\"topicspecified\";s:8:\"ָ��ר��\";}}}}s:5:\"space\";a:2:{s:4:\"name\";s:6:\"�ռ���\";s:4:\"subs\";a:4:{s:11:\"space_album\";a:3:{s:4:\"name\";s:8:\"���ģ��\";s:6:\"fields\";a:9:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"�������\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"������\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:3:\"uid\";a:3:{s:4:\"name\";s:7:\"�û�UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"�û���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:10:\"updatetime\";a:3:{s:4:\"name\";s:8:\"��������\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:6:\"picnum\";a:3:{s:4:\"name\";s:6:\"��Ƭ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:3:{s:5:\"album\";s:10:\"�߼��Զ���\";s:8:\"albumnew\";s:8:\"�������\";s:14:\"albumspecified\";s:8:\"ָ�����\";}}s:10:\"space_blog\";a:3:{s:4:\"name\";s:8:\"��־ģ��\";s:6:\"fields\";a:21:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��־����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"��־����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"��־���\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"��־ͼƬ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:3:\"uid\";a:3:{s:4:\"name\";s:7:\"����UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"�û�ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"replynum\";a:3:{s:4:\"name\";s:6:\"������\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:7:\"viewnum\";a:3:{s:4:\"name\";s:6:\"�����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click1\";a:3:{s:4:\"name\";s:7:\"��̬��1\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click2\";a:3:{s:4:\"name\";s:7:\"��̬��2\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click3\";a:3:{s:4:\"name\";s:7:\"��̬��3\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click4\";a:3:{s:4:\"name\";s:7:\"��̬��4\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click5\";a:3:{s:4:\"name\";s:7:\"��̬��5\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click6\";a:3:{s:4:\"name\";s:7:\"��̬��6\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click7\";a:3:{s:4:\"name\";s:7:\"��̬��7\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click8\";a:3:{s:4:\"name\";s:7:\"��̬��8\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:4:{s:4:\"blog\";s:10:\"�߼��Զ���\";s:7:\"bloghot\";s:8:\"������־\";s:7:\"blognew\";s:8:\"������־\";s:13:\"blogspecified\";s:8:\"ָ����־\";}}s:11:\"space_doing\";a:3:{s:4:\"name\";s:8:\"��¼ģ��\";s:6:\"fields\";a:10:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"��¼����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"��¼����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"uid\";a:3:{s:4:\"name\";s:7:\"�û�UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"pic\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"�û���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:6:\"avatar\";a:3:{s:4:\"name\";s:8:\"�û�ͷ��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:13:\"avatar_middle\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:10:\"avatar_big\";a:3:{s:4:\"name\";s:12:\"�û�ͷ��(��)\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"����ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:8:\"replynum\";a:3:{s:4:\"name\";s:6:\"�ظ���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:3:{s:5:\"doing\";s:10:\"�߼��Զ���\";s:8:\"doinghot\";s:8:\"���ż�¼\";s:8:\"doingnew\";s:8:\"���¼�¼\";}}s:9:\"space_pic\";a:3:{s:4:\"name\";s:8:\"ͼƬģ��\";s:6:\"fields\";a:17:{s:2:\"id\";a:3:{s:4:\"name\";s:6:\"����ID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:3:\"url\";a:3:{s:4:\"name\";s:8:\"ͼƬ����\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:5:\"title\";a:3:{s:4:\"name\";s:8:\"ͼƬ����\";s:8:\"formtype\";s:5:\"title\";s:8:\"datatype\";s:5:\"title\";}s:3:\"pic\";a:3:{s:4:\"name\";s:8:\"ͼƬ��ַ\";s:8:\"formtype\";s:3:\"pic\";s:8:\"datatype\";s:3:\"pic\";}s:7:\"summary\";a:3:{s:4:\"name\";s:8:\"ͼƬ˵��\";s:8:\"formtype\";s:7:\"summary\";s:8:\"datatype\";s:7:\"summary\";}s:3:\"uid\";a:3:{s:4:\"name\";s:7:\"�û�UID\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:8:\"username\";a:3:{s:4:\"name\";s:6:\"�û���\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:6:\"string\";}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"�ϴ�ʱ��\";s:8:\"formtype\";s:4:\"date\";s:8:\"datatype\";s:4:\"date\";}s:7:\"viewnum\";a:3:{s:4:\"name\";s:6:\"�鿴��\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click1\";a:3:{s:4:\"name\";s:7:\"��̬��1\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click2\";a:3:{s:4:\"name\";s:7:\"��̬��2\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click3\";a:3:{s:4:\"name\";s:7:\"��̬��3\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click4\";a:3:{s:4:\"name\";s:7:\"��̬��4\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click5\";a:3:{s:4:\"name\";s:7:\"��̬��5\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click6\";a:3:{s:4:\"name\";s:7:\"��̬��6\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click7\";a:3:{s:4:\"name\";s:7:\"��̬��7\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}s:6:\"click8\";a:3:{s:4:\"name\";s:7:\"��̬��8\";s:8:\"formtype\";s:4:\"text\";s:8:\"datatype\";s:3:\"int\";}}s:6:\"script\";a:4:{s:3:\"pic\";s:10:\"�߼��Զ���\";s:6:\"pichot\";s:8:\"����ͼƬ\";s:6:\"picnew\";s:8:\"����ͼƬ\";s:12:\"picspecified\";s:8:\"ָ��ͼƬ\";}}}}}'),('blockconvert',1,1605603304,'a:4:{s:5:\"forum\";a:4:{s:14:\"forum_activity\";a:1:{s:14:\"group_activity\";a:4:{s:4:\"name\";s:8:\"Ⱥ��\";s:6:\"script\";s:13:\"groupactivity\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}}s:11:\"forum_forum\";a:2:{s:11:\"group_group\";a:4:{s:4:\"name\";s:8:\"Ⱥ��ģ��\";s:6:\"script\";s:5:\"group\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}s:15:\"portal_category\";a:4:{s:4:\"name\";s:8:\"������Ŀ\";s:6:\"script\";s:14:\"portalcategory\";s:10:\"searchkeys\";a:1:{i:0;s:7:\"threads\";}s:11:\"replacekeys\";a:1:{i:0;s:8:\"articles\";}}}s:12:\"forum_thread\";a:3:{s:14:\"portal_article\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:7:\"article\";s:10:\"searchkeys\";a:7:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:8:\"forumurl\";i:3;s:9:\"forumname\";i:4;s:5:\"posts\";i:5;s:5:\"views\";i:6;s:7:\"replies\";}s:11:\"replacekeys\";a:7:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:6:\"caturl\";i:3;s:7:\"catname\";i:4;s:8:\"articles\";i:5;s:7:\"viewnum\";i:6;s:10:\"commentnum\";}}s:10:\"space_blog\";a:4:{s:4:\"name\";s:8:\"��־ģ��\";s:6:\"script\";s:4:\"blog\";s:10:\"searchkeys\";a:4:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:5:\"views\";i:3;s:7:\"replies\";}s:11:\"replacekeys\";a:4:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:7:\"viewnum\";i:3;s:8:\"replynum\";}}s:12:\"group_thread\";a:4:{s:4:\"name\";s:8:\"Ⱥ������\";s:6:\"script\";s:11:\"groupthread\";s:10:\"searchkeys\";a:2:{i:0;s:9:\"forumname\";i:1;s:8:\"forumurl\";}s:11:\"replacekeys\";a:2:{i:0;s:9:\"groupname\";i:1;s:8:\"groupurl\";}}}s:11:\"forum_trade\";a:1:{s:11:\"group_trade\";a:4:{s:4:\"name\";s:8:\"Ⱥ����Ʒ\";s:6:\"script\";s:10:\"grouptrade\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}}}s:5:\"group\";a:4:{s:11:\"group_group\";a:2:{s:11:\"forum_forum\";a:4:{s:4:\"name\";s:8:\"���ģ��\";s:6:\"script\";s:5:\"forum\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}s:15:\"portal_category\";a:4:{s:4:\"name\";s:8:\"������Ŀ\";s:6:\"script\";s:14:\"portalcategory\";s:10:\"searchkeys\";a:1:{i:0;s:7:\"threads\";}s:11:\"replacekeys\";a:1:{i:0;s:8:\"articles\";}}}s:14:\"group_activity\";a:1:{s:14:\"forum_activity\";a:4:{s:4:\"name\";s:8:\"�ģ��\";s:6:\"script\";s:8:\"activity\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}}s:12:\"group_thread\";a:3:{s:14:\"portal_article\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:7:\"article\";s:10:\"searchkeys\";a:7:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:8:\"groupurl\";i:3;s:9:\"groupname\";i:4;s:5:\"posts\";i:5;s:5:\"views\";i:6;s:7:\"replies\";}s:11:\"replacekeys\";a:7:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:6:\"caturl\";i:3;s:7:\"catname\";i:4;s:8:\"articles\";i:5;s:7:\"viewnum\";i:6;s:10:\"commentnum\";}}s:10:\"space_blog\";a:4:{s:4:\"name\";s:8:\"��־ģ��\";s:6:\"script\";s:4:\"blog\";s:10:\"searchkeys\";a:4:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:5:\"views\";i:3;s:7:\"replies\";}s:11:\"replacekeys\";a:4:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:7:\"viewnum\";i:3;s:8:\"replynum\";}}s:12:\"forum_thread\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:6:\"thread\";s:11:\"replacekeys\";a:2:{i:0;s:9:\"forumname\";i:1;s:8:\"forumurl\";}s:10:\"searchkeys\";a:2:{i:0;s:9:\"groupname\";i:1;s:8:\"groupurl\";}}}s:11:\"group_trade\";a:1:{s:11:\"forum_trade\";a:4:{s:4:\"name\";s:8:\"��Ʒģ��\";s:6:\"script\";s:5:\"trade\";s:10:\"searchkeys\";a:0:{}s:11:\"replacekeys\";a:0:{}}}}s:6:\"portal\";a:2:{s:14:\"portal_article\";a:3:{s:12:\"forum_thread\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:6:\"thread\";s:10:\"searchkeys\";a:7:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:6:\"caturl\";i:3;s:7:\"catname\";i:4;s:8:\"articles\";i:5;s:7:\"viewnum\";i:6;s:10:\"commentnum\";}s:11:\"replacekeys\";a:7:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:8:\"forumurl\";i:3;s:9:\"forumname\";i:4;s:5:\"posts\";i:5;s:5:\"views\";i:6;s:7:\"replies\";}}s:12:\"group_thread\";a:4:{s:4:\"name\";s:8:\"Ⱥ������\";s:6:\"script\";s:11:\"groupthread\";s:10:\"searchkeys\";a:7:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:6:\"caturl\";i:3;s:7:\"catname\";i:4;s:8:\"articles\";i:5;s:7:\"viewnum\";i:6;s:10:\"commentnum\";}s:11:\"replacekeys\";a:7:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:8:\"groupurl\";i:3;s:9:\"groupname\";i:4;s:5:\"posts\";i:5;s:5:\"views\";i:6;s:7:\"replies\";}}s:10:\"space_blog\";a:4:{s:4:\"name\";s:8:\"��־ģ��\";s:6:\"script\";s:4:\"blog\";s:10:\"searchkeys\";a:1:{i:0;s:10:\"commentnum\";}s:11:\"replacekeys\";a:1:{i:0;s:8:\"replynum\";}}}s:15:\"portal_category\";a:2:{s:11:\"forum_forum\";a:4:{s:4:\"name\";s:8:\"���ģ��\";s:6:\"script\";s:5:\"forum\";s:10:\"searchkeys\";a:1:{i:0;s:8:\"articles\";}s:11:\"replacekeys\";a:1:{i:0;s:7:\"threads\";}}s:11:\"group_group\";a:4:{s:4:\"name\";s:8:\"Ⱥ��ģ��\";s:6:\"script\";s:5:\"group\";s:10:\"searchkeys\";a:1:{i:0;s:8:\"articles\";}s:11:\"replacekeys\";a:1:{i:0;s:7:\"threads\";}}}}s:5:\"space\";a:1:{s:10:\"space_blog\";a:3:{s:12:\"forum_thread\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:6:\"thread\";s:10:\"searchkeys\";a:4:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:7:\"viewnum\";i:3;s:8:\"replynum\";}s:11:\"replacekeys\";a:4:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:5:\"views\";i:3;s:7:\"replies\";}}s:12:\"group_thread\";a:4:{s:4:\"name\";s:8:\"Ⱥ������\";s:6:\"script\";s:11:\"groupthread\";s:10:\"searchkeys\";a:4:{i:0;s:8:\"username\";i:1;s:3:\"uid\";i:2;s:7:\"viewnum\";i:3;s:8:\"replynum\";}s:11:\"replacekeys\";a:4:{i:0;s:6:\"author\";i:1;s:8:\"authorid\";i:2;s:5:\"views\";i:3;s:7:\"replies\";}}s:14:\"portal_article\";a:4:{s:4:\"name\";s:8:\"����ģ��\";s:6:\"script\";s:7:\"article\";s:10:\"searchkeys\";a:1:{i:0;s:8:\"replynum\";}s:11:\"replacekeys\";a:1:{i:0;s:10:\"commentnum\";}}}}}'),('pluginlanguage_script',1,1607929477,'a:3:{s:6:\"mobile\";a:14:{s:14:\"mobile_tip_ios\";s:95:\"<a href=\"http://www.discuz.net/mobile.php?platform=ios\">��������̳���ʱ�վ,ӵ�и����Ķ�����</a>\";s:18:\"mobile_tip_android\";s:99:\"<a href=\"http://www.discuz.net/mobile.php?platform=android\">��������̳���ʱ�վ,ӵ�и����Ķ�����</a>\";s:14:\"mobile_tip_wp7\";s:104:\"<a href=\"http://www.discuz.net/mobile.php?platform=windowsphone\">��������̳���ʱ�վ,ӵ�и����Ķ�����</a>\";s:23:\"mobile_extend_newthread\";s:8:\"���·���\";s:22:\"mobile_extend_newreply\";s:8:\"���»ظ�\";s:20:\"mobile_extend_digest\";s:8:\"���¾���\";s:20:\"mobile_extend_newpic\";s:8:\"����ͼƬ\";s:19:\"mobile_fromtype_ios\";s:18:\"����: iPhone�ͻ���\";s:23:\"mobile_fromtype_android\";s:19:\"����: Android�ͻ���\";s:28:\"mobile_fromtype_windowsphone\";s:24:\"����: WindowsPhone�ͻ���\";s:26:\"mobile_post_author_visible\";s:14:\"���������߿ɼ�\";s:26:\"mobilesign_formhash_failed\";s:24:\"formhash��֤ʧ�ܻ�δ��¼\";s:18:\"mobilesign_success\";s:8:\"ǩ���ɹ�\";s:17:\"mobilesign_failed\";s:12:\"�ѽ��й�ǩ��\";}s:11:\"fn_hb_share\";a:177:{s:11:\"Alert_title\";s:4:\"��Ϣ\";s:12:\"MsgBox_title\";s:8:\"��ܰ����\";s:14:\"MsgBox_msg_del\";s:34:\"ִ��ɾ�����޷��ָ���ȷ��������\";s:9:\"MsgBox_ok\";s:4:\"ȷ��\";s:9:\"MsgBox_no\";s:4:\"ȡ��\";s:13:\"MsgBox_del_ok\";s:8:\"ɾ���ɹ�\";s:14:\"MsgBox_del_err\";s:8:\"ɾ��ʧ��\";s:9:\"AjaxError\";s:22:\"����ʧ�ܣ�����״̬Ϊ��\";s:9:\"EditTitle\";s:4:\"�༭\";s:8:\"AddTitle\";s:4:\"����\";s:10:\"SelectNull\";s:10:\"--��ѡ��--\";s:9:\"SortTitle\";s:4:\"����\";s:8:\"DelTitle\";s:4:\"ɾ��\";s:5:\"DelOk\";s:10:\"ɾ���ɹ���\";s:6:\"DelErr\";s:10:\"ɾ��ʧ�ܣ�\";s:8:\"UpdateOk\";s:8:\"���³ɹ�\";s:9:\"UpdateErr\";s:8:\"����ʧ��\";s:10:\"UpdateTime\";s:8:\"����ʱ��\";s:12:\"SearchSubmit\";s:4:\"����\";s:14:\"OperationTitle\";s:4:\"����\";s:10:\"PluginLink\";s:8:\"��ڵ�ַ\";s:8:\"AllTitle\";s:4:\"ȫ��\";s:3:\"Yes\";s:2:\"��\";s:2:\"No\";s:2:\"��\";s:6:\"ChkAll\";s:4:\"ȫѡ\";s:12:\"DisplayOrder\";s:8:\"��ʾ˳��\";s:9:\"TimeTitle\";s:8:\"����ʱ��\";s:6:\"ImgErr\";s:52:\"ͼƬ��ʽ����ȷ�����ϴ�jpg,jpeg,gif,png,bmp��ʽ��ͼƬ\";s:5:\"Close\";s:4:\"�ر�\";s:12:\"DisplayTitle\";s:8:\"�Ƿ���ʾ\";s:14:\"DisplayIsTitle\";s:4:\"��ʾ\";s:14:\"DisplayNoTitle\";s:6:\"����ʾ\";s:10:\"StateTitle\";s:4:\"״̬\";s:4:\"Back\";s:4:\"����\";s:10:\"AppBymeErr\";s:31:\"�������µ�¼app���ٴ�֮ǰҳ��\";s:12:\"KeywordTitle\";s:6:\"�ؼ���\";s:5:\"Title\";s:4:\"����\";s:13:\"UserNameTitle\";s:6:\"�û���\";s:7:\"DescAsc\";a:2:{s:4:\"desc\";s:4:\"����\";s:3:\"asc\";s:4:\"����\";}s:5:\"IsApp\";s:11:\"�Ƿ�App��\";s:8:\"IsAppPoP\";s:16:\"�Ƿ������ⵯ��\";s:14:\"IsAppPoPPrompt\";s:25:\"����������ֱ����ʾ����App\";s:13:\"IsAppRandText\";s:22:\"������������������\";s:19:\"IsAppRandTextPrompt\";s:65:\"����ʽ�������С���-��������---���ӣ�1-10������������???����\";s:8:\"IsAppBtn\";s:19:\"��������App��ť����\";s:15:\"IsAppPromptText\";s:13:\"����App��ʾ��\";s:20:\"IsAppPromptSmallText\";s:15:\"����App����ʾ��\";s:16:\"IsAppTextDefault\";s:15:\"ǰ��App��ȡ���\";s:21:\"IsAppSmallTextDefault\";s:19:\"ע����߿���100ԪŶ\";s:15:\"IsAppBtnDefault\";s:8:\"��ȡ���\";s:11:\"IsAppPrompt\";s:21:\"�����ÿ���App����Ч\";s:5:\"Color\";s:8:\"������ɫ\";s:10:\"ShareTitle\";s:8:\"��������\";s:9:\"ShareDesc\";s:8:\"��������\";s:9:\"ShareLogo\";s:8:\"����ͼƬ\";s:15:\"ProhibitAddress\";s:12:\"�ɲ���ĳ���\";s:18:\"ProhibitAddressErr\";s:39:\"���������ֻ���ڡ�{Address}�����в���Ŷ\";s:21:\"ProhibitAddressPrompt\";s:104:\"������Щ��γ�Ȼ�Ipֻ�ܻ�ȡ��������������ʹ�ùؼ�����ʽ����������У�����ݼ��ɣ�������У�����,����,��ɽ\";s:9:\"NoDataAdd\";s:30:\"��û�л�������ں�̨���ӻ\";s:17:\"CountDownTimeText\";s:6:\"����ʱ\";s:3:\"Day\";s:2:\"��\";s:5:\"Hours\";s:2:\"ʱ\";s:7:\"Minutes\";s:2:\"��\";s:7:\"Seconds\";s:2:\"��\";s:10:\"WinningLog\";s:8:\"�����¼\";s:8:\"Business\";s:8:\"�̼ҽ���\";s:9:\"Businesss\";s:10:\"���̼ҽ���\";s:15:\"BusinesssPrompt\";s:229:\"���ô˴����������̼ҽ�����Ч��һ��һ�̼ң�����ʽ���̼�ͼƬ����|�̼�����(��Ϊ��)<br>���磺source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com<br>source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com\";s:4:\"Rule\";s:4:\"����\";s:15:\"WinningLogTitle\";s:12:\"�����¼����\";s:13:\"BusinessTitle\";s:12:\"�̼ҽ�������\";s:9:\"RuleTitle\";s:8:\"��������\";s:4:\"More\";s:12:\"������ظ���\";s:10:\"NoDataMore\";s:10:\"û�и�����\";s:16:\"FixedMaskHBTitle\";s:14:\"��ϲ����ú��\";s:19:\"FixedMaskHBMyWallet\";s:13:\"�鿴�ҵ�Ǯ��>\";s:19:\"FixedMaskHBBtnShare\";s:12:\"����������\";s:4:\"Yuan\";s:2:\"Ԫ\";s:6:\"FnOpen\";s:8:\"�򿪺��\";s:11:\"BannerTitle\";s:4:\"���\";s:12:\"BannerPrompt\";s:13:\"����640 * 320\";s:10:\"BannerLink\";s:8:\"�������\";s:14:\"StartTimeTitle\";s:8:\"��ʼʱ��\";s:12:\"EndTimeTitle\";s:8:\"����ʱ��\";s:12:\"SurplusTitle\";s:14:\"ʣ������ʾ��\";s:13:\"SurplusPrompt\";s:135:\"{Surplus}����ʣ��������{em}��Ҫ�Ӵֵģ�����ɫ����{/em}��{br}�������У����磺��ʣ{em}{Surplus}{/em}�������������{em}5��200Ԫ���{/em}\";s:6:\"EndErr\";s:16:\"��Ѿ�������Ŷ\";s:13:\"PoPShareTitle\";s:16:\"����������ť����\";s:16:\"StartDatelinePoP\";s:10:\"�����ʱ��\";s:13:\"NoActivityErr\";s:12:\"û�иûŶ\";s:11:\"SharePrompt\";s:12:\"��ʾ��������\";s:16:\"SharePromptTitle\";s:26:\"�����󣬾Ϳ�����ȡ�����Ŷ\";s:7:\"ShareOk\";s:34:\"��ϲ�㣬�����ɹ������ȷ����ȡ���\";s:8:\"ShareErr\";s:8:\"����ʧ��\";s:15:\"AlreadyReceived\";s:18:\"���Ѿ���ȡ�������\";s:6:\"HBList\";s:8:\"����б�\";s:12:\"HBListPrompt\";s:173:\"һ��һ�������<a href=\"plugin.php?id=fn_hb_share&m=calculation\" target=\"_blank\" style=\"color:#09c;font-weight:bold;\">����������ɺ���б�</a><br>���ӣ�0.01<br>1<br>3<br>\";s:13:\"ShareCountErr\";s:30:\"������һ��������Ѿ���ȡ����Ŷ\";s:10:\"HbShareErr\";s:14:\"�����ȡ������\";s:13:\"WalletContent\";s:8:\"��ȡ���\";s:20:\"NoDataWinningLogList\";s:16:\"��û�к����¼Ŷ\";s:11:\"NumberTitle\";s:18:\"ÿ����ȡ���ٸ����\";s:16:\"ParticipateCount\";s:8:\"��������\";s:15:\"ShareCounrTitle\";s:8:\"��������\";s:15:\"WinningNumCount\";s:12:\"��ȡ�������\";s:14:\"ShareTypeTitle\";s:8:\"��������\";s:14:\"ShareTimeTitle\";s:8:\"����ʱ��\";s:9:\"HuoDongId\";s:6:\"�Id\";s:10:\"HBShareLog\";s:8:\"������¼\";s:11:\"HBShareList\";s:8:\"�����¼\";s:10:\"MoneyTitle\";s:4:\"���\";s:7:\"HbState\";a:2:{i:0;s:6:\"δ��ȡ\";i:1;s:6:\"����ȡ\";}s:16:\"CalculationTitle\";s:12:\"�������ɺ��\";s:18:\"CalculationRandNum\";s:14:\"���ɶ��ٸ����\";s:18:\"CalculationMinimum\";s:16:\"���ɺ����ͽ��\";s:17:\"CalculationSubmit\";s:8:\"��ʼ����\";s:9:\"MyStateNo\";s:12:\"δ��ȡ�ĺ��\";s:10:\"HbStateBtn\";a:2:{i:0;s:10:\"��ȡ��Ǯ��\";i:1;s:6:\"����ȡ\";}s:6:\"HbErr1\";s:22:\"���Ѿ���ȡ�˸ú����Ŷ\";s:5:\"HbErr\";s:50:\"��ȡ���ʧ���ˣ�̫������ȡ����������һ��������ȡ\";s:4:\"HbOk\";s:26:\"��ϲ�����ɹ���ȡ�����Ǯ��\";s:17:\"SuccessShareTitle\";s:16:\"�쵽�����������\";s:15:\"SuccessShareDes\";s:16:\"�쵽�����������\";s:18:\"SuccessSharePrompt\";s:97:\"{Money}���������{Surplus}����ʣ��������{Count}��������ܸ�����{MoneyCount}��������������\";s:19:\"SuccessShareDefault\";s:58:\"���������쵽��{Money}Ԫ�������ʣ{Surplus}���������������\";s:14:\"SuccessShareOk\";s:16:\"��ϲ�㣬�����ɹ�\";s:8:\"NavTitle\";s:8:\"��������\";s:9:\"NavPrompt\";s:66:\"1�����̼ҽ��ܣ�2���������¼��3�������򣬸�ʽ��1,2,3��2,1,3��3,2,1\";s:10:\"NavDefault\";s:5:\"1,2,3\";s:12:\"RegdateTitle\";s:16:\"�û�ע��ʱ������\";s:18:\"RegdateTitlePrompt\";s:46:\"�û�ע��ʱ����ڡ��û�ע��ʱ�����ơ��ſ�����\";s:13:\"RegdatePrompt\";s:22:\"�û�ע��ʱ��������ʾ��\";s:15:\"RegdatePromptTo\";s:86:\"{Time}�����û�ע��ʱ�����Ƶ�ֵ��{RegTime}�����û�ע��ʱ�䣬{span}��ҪƮ�������{/span}\";s:14:\"RegdateDefault\";s:109:\"�����ϻ�Ա��Ŷ���ú��ֻ��{span}{Time}{/span}����ʱ��ע��Ļ�Ա��ȡŶ����ע���ʱ���ǣ�{span}{RegTime}{/span}\";s:5:\"Times\";s:12:\"����ʱ������\";s:11:\"TimesPrompt\";s:240:\"���ô���󣬵������õĿ�ʼʱ�䣬����ʱ����Ч���Һ���б�������ÿ����ӵ�����������ʽ����ʼʱ��(��-��-�� ʱ:��)|����ʱ��(��-��-�� ʱ:��)|���ַ�������������ӣ�<br>2017-12-30 09:00|2018-01-01 09:00|100<br>2017-01-02 09:00|2018-01-03 09:00|200\";s:9:\"TimesText\";s:36:\"��{Num}�ֺ������{em}{Time}{/em}����\";s:12:\"RankingTitle\";s:6:\"���а�\";s:11:\"HBListOrder\";s:12:\"�����¼����\";s:14:\"HBListOrderArr\";a:2:{s:5:\"money\";s:4:\"���\";s:8:\"dateline\";s:4:\"ʱ��\";}s:17:\"HBListOrderResult\";s:16:\"�����¼�������\";s:11:\"HBListLimit\";s:20:\"�����¼ÿ�ε�������\";s:9:\"RoundLoop\";s:22:\"��һ���Ƿ�ɼ�������\";s:15:\"RoundLoopPrompt\";s:16:\"���ö���ʱ����Ч\";s:9:\"ShareMode\";s:8:\"������ʽ\";s:15:\"ShareModePrompt\";s:27:\"������ʽ��ǧ�����R��App��Ч\";s:12:\"ShareModeArr\";a:2:{i:0;s:4:\"ȫ��\";i:1;s:6:\"����Ȧ\";}s:8:\"HandleHB\";s:26:\"һ�����ŵ�ǰҳ��δ��ȡ���\";s:5:\"OpErr\";s:36:\"����ʧ�ܣ��㻹û��ѡ����Ҫ����������\";s:10:\"HandleHBOk\";s:19:\"�ɹ�����{Num}�����\";s:9:\"ReceiveHB\";s:10:\"��ȡ��Ǯ��\";s:4:\"WXFX\";s:14:\"��Ҫ��������\";s:6:\"Err200\";s:22:\"���ź���û���������Ŷ\";s:3:\"Own\";s:4:\"�Լ�\";s:14:\"UserGroupTitle\";s:10:\"�û�������\";s:15:\"UserGroupPrompt\";s:24:\"�մ��������ƣ���Ctrl��ѡ\";s:12:\"UserGroupErr\";s:28:\"����ǰ�û��鲻������ȡ���Ŷ\";s:14:\"ExtcreditsList\";s:8:\"��������\";s:13:\"ExtcreditsNum\";s:24:\"�������ڶ��ٲ�����ȡ���\";s:16:\"ExtcreditsNumErr\";s:73:\"����ǰ<span style=color:red>{Extcredits}</span>̫������������ȡ���κ��Ŷ\";s:6:\"Poster\";s:8:\"���ɺ���\";s:9:\"NavPoster\";s:12:\"����<br>����\";s:10:\"PosterLoad\";s:18:\"���������У����Ժ�\";s:12:\"PosterQrcode\";s:18:\"����ʶ���ά�����\";s:11:\"PosterShare\";s:40:\"������ͼ����ͼƬ����������Ȧ���͸�����\";s:13:\"PosterContent\";s:8:\"��������\";s:20:\"PosterContentDefault\";s:40:\"����{AppName}������{br}{em}{Money}{em}Ԫ\";s:19:\"PosterContentPrompt\";s:122:\"ǧ��App�ſ�ʹ�ú�������,{AppName}����APP���֣�{Money}������ǰ������Ľ�{br}�������У�{em}������Ҫ�Ӵּ���ɫ����{/em}\";s:7:\"OpenApp\";s:7:\"��App\";s:14:\"FictitiousData\";s:8:\"��������\";s:20:\"FictitiousDataPrompt\";s:173:\"һ��һ������Ҫ�������ֺ�������������磺��5����������������ݣ����ܵ�6��Ҳ�����������ݣ���ʽ���ڼ������������������|���|uid|�û���<br>ʵ����5|100|1|admin<br>8|200|5|test\";s:6:\"GpsErr\";s:14:\"��λʧ����ʾ��\";s:12:\"GpsErrPrompt\";s:11:\"ǧ��App��Ч\";s:13:\"GpsErrDefault\";s:31:\"��λʧ����Ŷ���뿪��App��λȨ��\";s:11:\"NoAppSwitch\";s:13:\"����ʾ����App\";s:17:\"NoAppSwitchPrompt\";s:22:\"������վ�����󣬿ɺ���\";s:7:\"GpsLoad\";s:14:\"��λ�У����Ե�\";}s:8:\"qfmobile\";a:14:{s:30:\"qfmobile_register_mobile_exist\";s:16:\"���ֻ��Ѿ���ע��\";s:31:\"qfmobile_register_imgcode_error\";s:22:\"����д��ȷ��ͼƬ��֤��\";s:23:\"qfmobile_register_close\";s:16:\"�ֻ�ע���Ѿ��ر�\";s:34:\"qfmobile_register_mobile_error_tip\";s:18:\"����д��ȷ���ֻ���\";s:38:\"qfmobile_register_verifycode_error_tip\";s:22:\"����д��ȷ�Ķ�����֤��\";s:30:\"qfmobile_register_snedsms_fast\";s:16:\"��Ǹ������̫����\";s:31:\"qfmobile_register_sendsms_error\";s:22:\"����������Ӧ������ʧ��\";s:33:\"qfmobile_register_sendsms_succeed\";s:8:\"���ͳɹ�\";s:32:\"qfmobile_register_sendsms_failed\";s:8:\"����ʧ��\";s:35:\"qfmobile_register_verifycode_failed\";s:14:\"������֤�����\";s:36:\"qfmobile_register_verifycode_succeed\";s:14:\"������֤����ȷ\";s:22:\"qfmobile_plugin_closed\";s:12:\"����ѹرգ�\";s:33:\"qfmobile_input_search_placeholder\";s:6:\"�ֻ���\";s:24:\"qfmobile_bind_mobile_not\";s:42:\"����δ���ֻ���,���ȵ�PC����APP���ֻ���\";}}'),('pluginlanguage_template',1,1607929477,'a:3:{s:6:\"mobile\";a:29:{s:11:\"mobile_tips\";s:156:\"�Ƽ�ʹ�ö�ά���ղز�������̳<br />ʹ�ö�ά���ղ���̳�ķ�����<br />1��װ������̳Ӧ�ú󣬵��ʹ�ö�ά���ղ���̳��<br />2������ά��������������м����ղسɹ���\";s:8:\"username\";s:6:\"�û���\";s:8:\"password\";s:4:\"����\";s:16:\"password_confirm\";s:8:\"ȷ������\";s:5:\"email\";s:5:\"Email\";s:11:\"invite_code\";s:6:\"������\";s:16:\"register_message\";s:8:\"ע��ԭ��\";s:7:\"seccode\";s:6:\"��֤��\";s:14:\"change_seccode\";s:6:\"��һ��\";s:6:\"secqaa\";s:8:\"��֤�ʴ�\";s:5:\"close\";s:4:\"�ر�\";s:10:\"admin_tips\";s:110:\"�𾴵�վ������������Discuz!�����Ŀ¼�ϴ�\"mobile.png\"ͼƬ(�ߴ�178x178)����ȷ����̳�ͻ����ܳɹ���õ���̳��logo\";s:10:\"iphone_alt\";s:21:\"iphone-������ƻ���ֻ�\";s:11:\"android_alt\";s:47:\"Android-������װ�а�׿ϵͳ������/HTC/С�׵��ֻ�\";s:16:\"windowsphone_alt\";s:51:\"WinodwsPhone-������װ��΢��WindowsPhone7 ϵͳ���ֻ�\";s:16:\"discuzmobile_alt\";s:12:\"������̳����\";s:6:\"tips_1\";s:18:\"��ʱ��أ����ٷ���\";s:11:\"tips_1_desc\";s:66:\"ֻҪ�ֻ����֣��������Կ��١�����ؿ�������������̳�����շ�����Ϣ��\";s:6:\"tips_2\";s:20:\"�����Ż�������\"��\"��\";s:11:\"tips_2_desc\";s:60:\"���е���̳����ʹ�����ƣ��ֻ���̳Ҳ���������Ŀ���������硣\";s:6:\"tips_3\";s:18:\"���ļ�������������\";s:11:\"tips_3_desc\";s:68:\"�����Ƿ羰ͼ�������������ֳ������շ���һ���ǳɣ���������̳������ͷ��\";s:7:\"qr_desc\";s:37:\"���ؿͻ��˺������ά����ٷ��ʱ�վ:\";s:2:\"qr\";s:6:\"��ά��\";s:7:\"wapmode\";s:21:\"����ͨ�����µ�ַ����:\";s:10:\"qqregmode1\";s:12:\"�����ʺ���Ϣ\";s:10:\"qqregmode2\";s:12:\"�������ʺ�\";s:28:\"register_validate_email_tips\";s:62:\"ע����Ҫ��֤���䣬�������д��ȷ�����䣬�ύ���뼰ʱ�����ʼ���\";s:22:\"post_hide_reply_hidden\";s:30:\"�����Ҫ�鿴��������������ظ�\";}s:11:\"fn_hb_share\";a:177:{s:11:\"Alert_title\";s:4:\"��Ϣ\";s:12:\"MsgBox_title\";s:8:\"��ܰ����\";s:14:\"MsgBox_msg_del\";s:34:\"ִ��ɾ�����޷��ָ���ȷ��������\";s:9:\"MsgBox_ok\";s:4:\"ȷ��\";s:9:\"MsgBox_no\";s:4:\"ȡ��\";s:13:\"MsgBox_del_ok\";s:8:\"ɾ���ɹ�\";s:14:\"MsgBox_del_err\";s:8:\"ɾ��ʧ��\";s:9:\"AjaxError\";s:22:\"����ʧ�ܣ�����״̬Ϊ��\";s:9:\"EditTitle\";s:4:\"�༭\";s:8:\"AddTitle\";s:4:\"����\";s:10:\"SelectNull\";s:10:\"--��ѡ��--\";s:9:\"SortTitle\";s:4:\"����\";s:8:\"DelTitle\";s:4:\"ɾ��\";s:5:\"DelOk\";s:10:\"ɾ���ɹ���\";s:6:\"DelErr\";s:10:\"ɾ��ʧ�ܣ�\";s:8:\"UpdateOk\";s:8:\"���³ɹ�\";s:9:\"UpdateErr\";s:8:\"����ʧ��\";s:10:\"UpdateTime\";s:8:\"����ʱ��\";s:12:\"SearchSubmit\";s:4:\"����\";s:14:\"OperationTitle\";s:4:\"����\";s:10:\"PluginLink\";s:8:\"��ڵ�ַ\";s:8:\"AllTitle\";s:4:\"ȫ��\";s:3:\"Yes\";s:2:\"��\";s:2:\"No\";s:2:\"��\";s:6:\"ChkAll\";s:4:\"ȫѡ\";s:12:\"DisplayOrder\";s:8:\"��ʾ˳��\";s:9:\"TimeTitle\";s:8:\"����ʱ��\";s:6:\"ImgErr\";s:52:\"ͼƬ��ʽ����ȷ�����ϴ�jpg,jpeg,gif,png,bmp��ʽ��ͼƬ\";s:5:\"Close\";s:4:\"�ر�\";s:12:\"DisplayTitle\";s:8:\"�Ƿ���ʾ\";s:14:\"DisplayIsTitle\";s:4:\"��ʾ\";s:14:\"DisplayNoTitle\";s:6:\"����ʾ\";s:10:\"StateTitle\";s:4:\"״̬\";s:4:\"Back\";s:4:\"����\";s:10:\"AppBymeErr\";s:31:\"�������µ�¼app���ٴ�֮ǰҳ��\";s:12:\"KeywordTitle\";s:6:\"�ؼ���\";s:5:\"Title\";s:4:\"����\";s:13:\"UserNameTitle\";s:6:\"�û���\";s:7:\"DescAsc\";a:2:{s:4:\"desc\";s:4:\"����\";s:3:\"asc\";s:4:\"����\";}s:5:\"IsApp\";s:11:\"�Ƿ�App��\";s:8:\"IsAppPoP\";s:16:\"�Ƿ������ⵯ��\";s:14:\"IsAppPoPPrompt\";s:25:\"����������ֱ����ʾ����App\";s:13:\"IsAppRandText\";s:22:\"������������������\";s:19:\"IsAppRandTextPrompt\";s:65:\"����ʽ�������С���-��������---���ӣ�1-10������������???����\";s:8:\"IsAppBtn\";s:19:\"��������App��ť����\";s:15:\"IsAppPromptText\";s:13:\"����App��ʾ��\";s:20:\"IsAppPromptSmallText\";s:15:\"����App����ʾ��\";s:16:\"IsAppTextDefault\";s:15:\"ǰ��App��ȡ���\";s:21:\"IsAppSmallTextDefault\";s:19:\"ע����߿���100ԪŶ\";s:15:\"IsAppBtnDefault\";s:8:\"��ȡ���\";s:11:\"IsAppPrompt\";s:21:\"�����ÿ���App����Ч\";s:5:\"Color\";s:8:\"������ɫ\";s:10:\"ShareTitle\";s:8:\"��������\";s:9:\"ShareDesc\";s:8:\"��������\";s:9:\"ShareLogo\";s:8:\"����ͼƬ\";s:15:\"ProhibitAddress\";s:12:\"�ɲ���ĳ���\";s:18:\"ProhibitAddressErr\";s:39:\"���������ֻ���ڡ�{Address}�����в���Ŷ\";s:21:\"ProhibitAddressPrompt\";s:104:\"������Щ��γ�Ȼ�Ipֻ�ܻ�ȡ��������������ʹ�ùؼ�����ʽ����������У�����ݼ��ɣ�������У�����,����,��ɽ\";s:9:\"NoDataAdd\";s:30:\"��û�л�������ں�̨���ӻ\";s:17:\"CountDownTimeText\";s:6:\"����ʱ\";s:3:\"Day\";s:2:\"��\";s:5:\"Hours\";s:2:\"ʱ\";s:7:\"Minutes\";s:2:\"��\";s:7:\"Seconds\";s:2:\"��\";s:10:\"WinningLog\";s:8:\"�����¼\";s:8:\"Business\";s:8:\"�̼ҽ���\";s:9:\"Businesss\";s:10:\"���̼ҽ���\";s:15:\"BusinesssPrompt\";s:229:\"���ô˴����������̼ҽ�����Ч��һ��һ�̼ң�����ʽ���̼�ͼƬ����|�̼�����(��Ϊ��)<br>���磺source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com<br>source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com\";s:4:\"Rule\";s:4:\"����\";s:15:\"WinningLogTitle\";s:12:\"�����¼����\";s:13:\"BusinessTitle\";s:12:\"�̼ҽ�������\";s:9:\"RuleTitle\";s:8:\"��������\";s:4:\"More\";s:12:\"������ظ���\";s:10:\"NoDataMore\";s:10:\"û�и�����\";s:16:\"FixedMaskHBTitle\";s:14:\"��ϲ����ú��\";s:19:\"FixedMaskHBMyWallet\";s:13:\"�鿴�ҵ�Ǯ��>\";s:19:\"FixedMaskHBBtnShare\";s:12:\"����������\";s:4:\"Yuan\";s:2:\"Ԫ\";s:6:\"FnOpen\";s:8:\"�򿪺��\";s:11:\"BannerTitle\";s:4:\"���\";s:12:\"BannerPrompt\";s:13:\"����640 * 320\";s:10:\"BannerLink\";s:8:\"�������\";s:14:\"StartTimeTitle\";s:8:\"��ʼʱ��\";s:12:\"EndTimeTitle\";s:8:\"����ʱ��\";s:12:\"SurplusTitle\";s:14:\"ʣ������ʾ��\";s:13:\"SurplusPrompt\";s:135:\"{Surplus}����ʣ��������{em}��Ҫ�Ӵֵģ�����ɫ����{/em}��{br}�������У����磺��ʣ{em}{Surplus}{/em}�������������{em}5��200Ԫ���{/em}\";s:6:\"EndErr\";s:16:\"��Ѿ�������Ŷ\";s:13:\"PoPShareTitle\";s:16:\"����������ť����\";s:16:\"StartDatelinePoP\";s:10:\"�����ʱ��\";s:13:\"NoActivityErr\";s:12:\"û�иûŶ\";s:11:\"SharePrompt\";s:12:\"��ʾ��������\";s:16:\"SharePromptTitle\";s:26:\"�����󣬾Ϳ�����ȡ�����Ŷ\";s:7:\"ShareOk\";s:34:\"��ϲ�㣬�����ɹ������ȷ����ȡ���\";s:8:\"ShareErr\";s:8:\"����ʧ��\";s:15:\"AlreadyReceived\";s:18:\"���Ѿ���ȡ�������\";s:6:\"HBList\";s:8:\"����б�\";s:12:\"HBListPrompt\";s:173:\"һ��һ�������<a href=\"plugin.php?id=fn_hb_share&m=calculation\" target=\"_blank\" style=\"color:#09c;font-weight:bold;\">����������ɺ���б�</a><br>���ӣ�0.01<br>1<br>3<br>\";s:13:\"ShareCountErr\";s:30:\"������һ��������Ѿ���ȡ����Ŷ\";s:10:\"HbShareErr\";s:14:\"�����ȡ������\";s:13:\"WalletContent\";s:8:\"��ȡ���\";s:20:\"NoDataWinningLogList\";s:16:\"��û�к����¼Ŷ\";s:11:\"NumberTitle\";s:18:\"ÿ����ȡ���ٸ����\";s:16:\"ParticipateCount\";s:8:\"��������\";s:15:\"ShareCounrTitle\";s:8:\"��������\";s:15:\"WinningNumCount\";s:12:\"��ȡ�������\";s:14:\"ShareTypeTitle\";s:8:\"��������\";s:14:\"ShareTimeTitle\";s:8:\"����ʱ��\";s:9:\"HuoDongId\";s:6:\"�Id\";s:10:\"HBShareLog\";s:8:\"������¼\";s:11:\"HBShareList\";s:8:\"�����¼\";s:10:\"MoneyTitle\";s:4:\"���\";s:7:\"HbState\";a:2:{i:0;s:6:\"δ��ȡ\";i:1;s:6:\"����ȡ\";}s:16:\"CalculationTitle\";s:12:\"�������ɺ��\";s:18:\"CalculationRandNum\";s:14:\"���ɶ��ٸ����\";s:18:\"CalculationMinimum\";s:16:\"���ɺ����ͽ��\";s:17:\"CalculationSubmit\";s:8:\"��ʼ����\";s:9:\"MyStateNo\";s:12:\"δ��ȡ�ĺ��\";s:10:\"HbStateBtn\";a:2:{i:0;s:10:\"��ȡ��Ǯ��\";i:1;s:6:\"����ȡ\";}s:6:\"HbErr1\";s:22:\"���Ѿ���ȡ�˸ú����Ŷ\";s:5:\"HbErr\";s:50:\"��ȡ���ʧ���ˣ�̫������ȡ����������һ��������ȡ\";s:4:\"HbOk\";s:26:\"��ϲ�����ɹ���ȡ�����Ǯ��\";s:17:\"SuccessShareTitle\";s:16:\"�쵽�����������\";s:15:\"SuccessShareDes\";s:16:\"�쵽�����������\";s:18:\"SuccessSharePrompt\";s:97:\"{Money}���������{Surplus}����ʣ��������{Count}��������ܸ�����{MoneyCount}��������������\";s:19:\"SuccessShareDefault\";s:58:\"���������쵽��{Money}Ԫ�������ʣ{Surplus}���������������\";s:14:\"SuccessShareOk\";s:16:\"��ϲ�㣬�����ɹ�\";s:8:\"NavTitle\";s:8:\"��������\";s:9:\"NavPrompt\";s:66:\"1�����̼ҽ��ܣ�2���������¼��3�������򣬸�ʽ��1,2,3��2,1,3��3,2,1\";s:10:\"NavDefault\";s:5:\"1,2,3\";s:12:\"RegdateTitle\";s:16:\"�û�ע��ʱ������\";s:18:\"RegdateTitlePrompt\";s:46:\"�û�ע��ʱ����ڡ��û�ע��ʱ�����ơ��ſ�����\";s:13:\"RegdatePrompt\";s:22:\"�û�ע��ʱ��������ʾ��\";s:15:\"RegdatePromptTo\";s:86:\"{Time}�����û�ע��ʱ�����Ƶ�ֵ��{RegTime}�����û�ע��ʱ�䣬{span}��ҪƮ�������{/span}\";s:14:\"RegdateDefault\";s:109:\"�����ϻ�Ա��Ŷ���ú��ֻ��{span}{Time}{/span}����ʱ��ע��Ļ�Ա��ȡŶ����ע���ʱ���ǣ�{span}{RegTime}{/span}\";s:5:\"Times\";s:12:\"����ʱ������\";s:11:\"TimesPrompt\";s:240:\"���ô���󣬵������õĿ�ʼʱ�䣬����ʱ����Ч���Һ���б�������ÿ����ӵ�����������ʽ����ʼʱ��(��-��-�� ʱ:��)|����ʱ��(��-��-�� ʱ:��)|���ַ�������������ӣ�<br>2017-12-30 09:00|2018-01-01 09:00|100<br>2017-01-02 09:00|2018-01-03 09:00|200\";s:9:\"TimesText\";s:36:\"��{Num}�ֺ������{em}{Time}{/em}����\";s:12:\"RankingTitle\";s:6:\"���а�\";s:11:\"HBListOrder\";s:12:\"�����¼����\";s:14:\"HBListOrderArr\";a:2:{s:5:\"money\";s:4:\"���\";s:8:\"dateline\";s:4:\"ʱ��\";}s:17:\"HBListOrderResult\";s:16:\"�����¼�������\";s:11:\"HBListLimit\";s:20:\"�����¼ÿ�ε�������\";s:9:\"RoundLoop\";s:22:\"��һ���Ƿ�ɼ�������\";s:15:\"RoundLoopPrompt\";s:16:\"���ö���ʱ����Ч\";s:9:\"ShareMode\";s:8:\"������ʽ\";s:15:\"ShareModePrompt\";s:27:\"������ʽ��ǧ�����R��App��Ч\";s:12:\"ShareModeArr\";a:2:{i:0;s:4:\"ȫ��\";i:1;s:6:\"����Ȧ\";}s:8:\"HandleHB\";s:26:\"һ�����ŵ�ǰҳ��δ��ȡ���\";s:5:\"OpErr\";s:36:\"����ʧ�ܣ��㻹û��ѡ����Ҫ����������\";s:10:\"HandleHBOk\";s:19:\"�ɹ�����{Num}�����\";s:9:\"ReceiveHB\";s:10:\"��ȡ��Ǯ��\";s:4:\"WXFX\";s:14:\"��Ҫ��������\";s:6:\"Err200\";s:22:\"���ź���û���������Ŷ\";s:3:\"Own\";s:4:\"�Լ�\";s:14:\"UserGroupTitle\";s:10:\"�û�������\";s:15:\"UserGroupPrompt\";s:24:\"�մ��������ƣ���Ctrl��ѡ\";s:12:\"UserGroupErr\";s:28:\"����ǰ�û��鲻������ȡ���Ŷ\";s:14:\"ExtcreditsList\";s:8:\"��������\";s:13:\"ExtcreditsNum\";s:24:\"�������ڶ��ٲ�����ȡ���\";s:16:\"ExtcreditsNumErr\";s:73:\"����ǰ<span style=color:red>{Extcredits}</span>̫������������ȡ���κ��Ŷ\";s:6:\"Poster\";s:8:\"���ɺ���\";s:9:\"NavPoster\";s:12:\"����<br>����\";s:10:\"PosterLoad\";s:18:\"���������У����Ժ�\";s:12:\"PosterQrcode\";s:18:\"����ʶ���ά�����\";s:11:\"PosterShare\";s:40:\"������ͼ����ͼƬ����������Ȧ���͸�����\";s:13:\"PosterContent\";s:8:\"��������\";s:20:\"PosterContentDefault\";s:40:\"����{AppName}������{br}{em}{Money}{em}Ԫ\";s:19:\"PosterContentPrompt\";s:122:\"ǧ��App�ſ�ʹ�ú�������,{AppName}����APP���֣�{Money}������ǰ������Ľ�{br}�������У�{em}������Ҫ�Ӵּ���ɫ����{/em}\";s:7:\"OpenApp\";s:7:\"��App\";s:14:\"FictitiousData\";s:8:\"��������\";s:20:\"FictitiousDataPrompt\";s:173:\"һ��һ������Ҫ�������ֺ�������������磺��5����������������ݣ����ܵ�6��Ҳ�����������ݣ���ʽ���ڼ������������������|���|uid|�û���<br>ʵ����5|100|1|admin<br>8|200|5|test\";s:6:\"GpsErr\";s:14:\"��λʧ����ʾ��\";s:12:\"GpsErrPrompt\";s:11:\"ǧ��App��Ч\";s:13:\"GpsErrDefault\";s:31:\"��λʧ����Ŷ���뿪��App��λȨ��\";s:11:\"NoAppSwitch\";s:13:\"����ʾ����App\";s:17:\"NoAppSwitchPrompt\";s:22:\"������վ�����󣬿ɺ���\";s:7:\"GpsLoad\";s:14:\"��λ�У����Ե�\";}s:8:\"qfmobile\";a:30:{s:24:\"qfmobile_register_mobile\";s:6:\"�ֻ���\";s:28:\"qfmobile_register_verifycode\";s:10:\"������֤��\";s:32:\"qfmobile_register_verifycode_msg\";s:24:\"��������ȡ���Ķ�����֤��\";s:33:\"qfmobile_register_verifycode_desc\";s:38:\"��֤�뽫����Ѷ��ŵ���ʽ���͵������ֻ�\";s:32:\"qfmobile_register_verifycode_btn\";s:18:\"�����ȡ������֤��\";s:30:\"qfmobile_register_username_tip\";s:14:\"�û�������Ϊ��\";s:30:\"qfmobile_register_password_tip\";s:12:\"���벻��Ϊ��\";s:32:\"qfmobile_register_repassword_tip\";s:16:\"ȷ�����벻��Ϊ��\";s:34:\"qfmobile_register_mobile_error_tip\";s:18:\"����д��ȷ���ֻ���\";s:38:\"qfmobile_register_verifycode_error_tip\";s:22:\"����д��ȷ�Ķ�����֤��\";s:34:\"qfmobile_register_checktime_second\";s:4:\"���\";s:33:\"qfmobile_register_checktime_after\";s:12:\"������·���\";s:33:\"qfmobile_register_checktime_retry\";s:22:\"������»�ȡ������֤��\";s:30:\"qfmobile_register_mobile_exist\";s:16:\"���ֻ��Ѿ���ע��\";s:23:\"qfmobile_register_close\";s:16:\"�ֻ�ע���Ѿ��ر�\";s:31:\"qfmobile_register_imgcode_error\";s:22:\"����д��ȷ��ͼƬ��֤��\";s:30:\"qfmobile_register_snedsms_fast\";s:16:\"��Ǹ������̫����\";s:31:\"qfmobile_register_sendsms_error\";s:22:\"����������Ӧ������ʧ��\";s:33:\"qfmobile_register_sendsms_succeed\";s:8:\"���ͳɹ�\";s:32:\"qfmobile_register_sendsms_failed\";s:8:\"����ʧ��\";s:35:\"qfmobile_register_verifycode_failed\";s:14:\"������֤�����\";s:36:\"qfmobile_register_verifycode_succeed\";s:14:\"������֤����ȷ\";s:17:\"qfmobile_bind_btn\";s:8:\"�ֻ���\";s:19:\"qfmobile_rebind_btn\";s:8:\"�ֻ�����\";s:29:\"qfmobile_postlimit_bhind_tip1\";s:42:\"��վ��ǰ��鿪���˰��ֻ����ܷ����Ĺ��ܡ�\";s:29:\"qfmobile_postlimit_bhind_tip2\";s:42:\"����δ���ֻ��ţ����Ƚ��а��ֻ��Ų�����\";s:30:\"qfmobile_postlimit_bind_submit\";s:8:\"ǰȥ��\";s:28:\"qfmobile_postlimit_next_bind\";s:8:\"�´ΰ�\";s:25:\"qianfanmobile_findpwd_pwd\";s:10:\"�ֻ����һ�\";s:24:\"qfmobile_bind_mobile_not\";s:42:\"����δ���ֻ���,���ȵ�PC����APP���ֻ���\";}}'),('pluginlanguage_install',1,1607929477,'a:3:{s:6:\"mobile\";a:1:{s:10:\"mobilesign\";s:10:\"΢����ǩ��\";}s:11:\"fn_hb_share\";a:177:{s:11:\"Alert_title\";s:4:\"��Ϣ\";s:12:\"MsgBox_title\";s:8:\"��ܰ����\";s:14:\"MsgBox_msg_del\";s:34:\"ִ��ɾ�����޷��ָ���ȷ��������\";s:9:\"MsgBox_ok\";s:4:\"ȷ��\";s:9:\"MsgBox_no\";s:4:\"ȡ��\";s:13:\"MsgBox_del_ok\";s:8:\"ɾ���ɹ�\";s:14:\"MsgBox_del_err\";s:8:\"ɾ��ʧ��\";s:9:\"AjaxError\";s:22:\"����ʧ�ܣ�����״̬Ϊ��\";s:9:\"EditTitle\";s:4:\"�༭\";s:8:\"AddTitle\";s:4:\"����\";s:10:\"SelectNull\";s:10:\"--��ѡ��--\";s:9:\"SortTitle\";s:4:\"����\";s:8:\"DelTitle\";s:4:\"ɾ��\";s:5:\"DelOk\";s:10:\"ɾ���ɹ���\";s:6:\"DelErr\";s:10:\"ɾ��ʧ�ܣ�\";s:8:\"UpdateOk\";s:8:\"���³ɹ�\";s:9:\"UpdateErr\";s:8:\"����ʧ��\";s:10:\"UpdateTime\";s:8:\"����ʱ��\";s:12:\"SearchSubmit\";s:4:\"����\";s:14:\"OperationTitle\";s:4:\"����\";s:10:\"PluginLink\";s:8:\"��ڵ�ַ\";s:8:\"AllTitle\";s:4:\"ȫ��\";s:3:\"Yes\";s:2:\"��\";s:2:\"No\";s:2:\"��\";s:6:\"ChkAll\";s:4:\"ȫѡ\";s:12:\"DisplayOrder\";s:8:\"��ʾ˳��\";s:9:\"TimeTitle\";s:8:\"����ʱ��\";s:6:\"ImgErr\";s:52:\"ͼƬ��ʽ����ȷ�����ϴ�jpg,jpeg,gif,png,bmp��ʽ��ͼƬ\";s:5:\"Close\";s:4:\"�ر�\";s:12:\"DisplayTitle\";s:8:\"�Ƿ���ʾ\";s:14:\"DisplayIsTitle\";s:4:\"��ʾ\";s:14:\"DisplayNoTitle\";s:6:\"����ʾ\";s:10:\"StateTitle\";s:4:\"״̬\";s:4:\"Back\";s:4:\"����\";s:10:\"AppBymeErr\";s:31:\"�������µ�¼app���ٴ�֮ǰҳ��\";s:12:\"KeywordTitle\";s:6:\"�ؼ���\";s:5:\"Title\";s:4:\"����\";s:13:\"UserNameTitle\";s:6:\"�û���\";s:7:\"DescAsc\";a:2:{s:4:\"desc\";s:4:\"����\";s:3:\"asc\";s:4:\"����\";}s:5:\"IsApp\";s:11:\"�Ƿ�App��\";s:8:\"IsAppPoP\";s:16:\"�Ƿ������ⵯ��\";s:14:\"IsAppPoPPrompt\";s:25:\"����������ֱ����ʾ����App\";s:13:\"IsAppRandText\";s:22:\"������������������\";s:19:\"IsAppRandTextPrompt\";s:65:\"����ʽ�������С���-��������---���ӣ�1-10������������???����\";s:8:\"IsAppBtn\";s:19:\"��������App��ť����\";s:15:\"IsAppPromptText\";s:13:\"����App��ʾ��\";s:20:\"IsAppPromptSmallText\";s:15:\"����App����ʾ��\";s:16:\"IsAppTextDefault\";s:15:\"ǰ��App��ȡ���\";s:21:\"IsAppSmallTextDefault\";s:19:\"ע����߿���100ԪŶ\";s:15:\"IsAppBtnDefault\";s:8:\"��ȡ���\";s:11:\"IsAppPrompt\";s:21:\"�����ÿ���App����Ч\";s:5:\"Color\";s:8:\"������ɫ\";s:10:\"ShareTitle\";s:8:\"��������\";s:9:\"ShareDesc\";s:8:\"��������\";s:9:\"ShareLogo\";s:8:\"����ͼƬ\";s:15:\"ProhibitAddress\";s:12:\"�ɲ���ĳ���\";s:18:\"ProhibitAddressErr\";s:39:\"���������ֻ���ڡ�{Address}�����в���Ŷ\";s:21:\"ProhibitAddressPrompt\";s:104:\"������Щ��γ�Ȼ�Ipֻ�ܻ�ȡ��������������ʹ�ùؼ�����ʽ����������У�����ݼ��ɣ�������У�����,����,��ɽ\";s:9:\"NoDataAdd\";s:30:\"��û�л�������ں�̨���ӻ\";s:17:\"CountDownTimeText\";s:6:\"����ʱ\";s:3:\"Day\";s:2:\"��\";s:5:\"Hours\";s:2:\"ʱ\";s:7:\"Minutes\";s:2:\"��\";s:7:\"Seconds\";s:2:\"��\";s:10:\"WinningLog\";s:8:\"�����¼\";s:8:\"Business\";s:8:\"�̼ҽ���\";s:9:\"Businesss\";s:10:\"���̼ҽ���\";s:15:\"BusinesssPrompt\";s:229:\"���ô˴����������̼ҽ�����Ч��һ��һ�̼ң�����ʽ���̼�ͼƬ����|�̼�����(��Ϊ��)<br>���磺source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com<br>source/plugin/fn_hb_share/static/images/hb.png|http://dev.fnmoto.com\";s:4:\"Rule\";s:4:\"����\";s:15:\"WinningLogTitle\";s:12:\"�����¼����\";s:13:\"BusinessTitle\";s:12:\"�̼ҽ�������\";s:9:\"RuleTitle\";s:8:\"��������\";s:4:\"More\";s:12:\"������ظ���\";s:10:\"NoDataMore\";s:10:\"û�и�����\";s:16:\"FixedMaskHBTitle\";s:14:\"��ϲ����ú��\";s:19:\"FixedMaskHBMyWallet\";s:13:\"�鿴�ҵ�Ǯ��>\";s:19:\"FixedMaskHBBtnShare\";s:12:\"����������\";s:4:\"Yuan\";s:2:\"Ԫ\";s:6:\"FnOpen\";s:8:\"�򿪺��\";s:11:\"BannerTitle\";s:4:\"���\";s:12:\"BannerPrompt\";s:13:\"����640 * 320\";s:10:\"BannerLink\";s:8:\"�������\";s:14:\"StartTimeTitle\";s:8:\"��ʼʱ��\";s:12:\"EndTimeTitle\";s:8:\"����ʱ��\";s:12:\"SurplusTitle\";s:14:\"ʣ������ʾ��\";s:13:\"SurplusPrompt\";s:135:\"{Surplus}����ʣ��������{em}��Ҫ�Ӵֵģ�����ɫ����{/em}��{br}�������У����磺��ʣ{em}{Surplus}{/em}�������������{em}5��200Ԫ���{/em}\";s:6:\"EndErr\";s:16:\"��Ѿ�������Ŷ\";s:13:\"PoPShareTitle\";s:16:\"����������ť����\";s:16:\"StartDatelinePoP\";s:10:\"�����ʱ��\";s:13:\"NoActivityErr\";s:12:\"û�иûŶ\";s:11:\"SharePrompt\";s:12:\"��ʾ��������\";s:16:\"SharePromptTitle\";s:26:\"�����󣬾Ϳ�����ȡ�����Ŷ\";s:7:\"ShareOk\";s:34:\"��ϲ�㣬�����ɹ������ȷ����ȡ���\";s:8:\"ShareErr\";s:8:\"����ʧ��\";s:15:\"AlreadyReceived\";s:18:\"���Ѿ���ȡ�������\";s:6:\"HBList\";s:8:\"����б�\";s:12:\"HBListPrompt\";s:173:\"һ��һ�������<a href=\"plugin.php?id=fn_hb_share&m=calculation\" target=\"_blank\" style=\"color:#09c;font-weight:bold;\">����������ɺ���б�</a><br>���ӣ�0.01<br>1<br>3<br>\";s:13:\"ShareCountErr\";s:30:\"������һ��������Ѿ���ȡ����Ŷ\";s:10:\"HbShareErr\";s:14:\"�����ȡ������\";s:13:\"WalletContent\";s:8:\"��ȡ���\";s:20:\"NoDataWinningLogList\";s:16:\"��û�к����¼Ŷ\";s:11:\"NumberTitle\";s:18:\"ÿ����ȡ���ٸ����\";s:16:\"ParticipateCount\";s:8:\"��������\";s:15:\"ShareCounrTitle\";s:8:\"��������\";s:15:\"WinningNumCount\";s:12:\"��ȡ�������\";s:14:\"ShareTypeTitle\";s:8:\"��������\";s:14:\"ShareTimeTitle\";s:8:\"����ʱ��\";s:9:\"HuoDongId\";s:6:\"�Id\";s:10:\"HBShareLog\";s:8:\"������¼\";s:11:\"HBShareList\";s:8:\"�����¼\";s:10:\"MoneyTitle\";s:4:\"���\";s:7:\"HbState\";a:2:{i:0;s:6:\"δ��ȡ\";i:1;s:6:\"����ȡ\";}s:16:\"CalculationTitle\";s:12:\"�������ɺ��\";s:18:\"CalculationRandNum\";s:14:\"���ɶ��ٸ����\";s:18:\"CalculationMinimum\";s:16:\"���ɺ����ͽ��\";s:17:\"CalculationSubmit\";s:8:\"��ʼ����\";s:9:\"MyStateNo\";s:12:\"δ��ȡ�ĺ��\";s:10:\"HbStateBtn\";a:2:{i:0;s:10:\"��ȡ��Ǯ��\";i:1;s:6:\"����ȡ\";}s:6:\"HbErr1\";s:22:\"���Ѿ���ȡ�˸ú����Ŷ\";s:5:\"HbErr\";s:50:\"��ȡ���ʧ���ˣ�̫������ȡ����������һ��������ȡ\";s:4:\"HbOk\";s:26:\"��ϲ�����ɹ���ȡ�����Ǯ��\";s:17:\"SuccessShareTitle\";s:16:\"�쵽�����������\";s:15:\"SuccessShareDes\";s:16:\"�쵽�����������\";s:18:\"SuccessSharePrompt\";s:97:\"{Money}���������{Surplus}����ʣ��������{Count}��������ܸ�����{MoneyCount}��������������\";s:19:\"SuccessShareDefault\";s:58:\"���������쵽��{Money}Ԫ�������ʣ{Surplus}���������������\";s:14:\"SuccessShareOk\";s:16:\"��ϲ�㣬�����ɹ�\";s:8:\"NavTitle\";s:8:\"��������\";s:9:\"NavPrompt\";s:66:\"1�����̼ҽ��ܣ�2���������¼��3�������򣬸�ʽ��1,2,3��2,1,3��3,2,1\";s:10:\"NavDefault\";s:5:\"1,2,3\";s:12:\"RegdateTitle\";s:16:\"�û�ע��ʱ������\";s:18:\"RegdateTitlePrompt\";s:46:\"�û�ע��ʱ����ڡ��û�ע��ʱ�����ơ��ſ�����\";s:13:\"RegdatePrompt\";s:22:\"�û�ע��ʱ��������ʾ��\";s:15:\"RegdatePromptTo\";s:86:\"{Time}�����û�ע��ʱ�����Ƶ�ֵ��{RegTime}�����û�ע��ʱ�䣬{span}��ҪƮ�������{/span}\";s:14:\"RegdateDefault\";s:109:\"�����ϻ�Ա��Ŷ���ú��ֻ��{span}{Time}{/span}����ʱ��ע��Ļ�Ա��ȡŶ����ע���ʱ���ǣ�{span}{RegTime}{/span}\";s:5:\"Times\";s:12:\"����ʱ������\";s:11:\"TimesPrompt\";s:240:\"���ô���󣬵������õĿ�ʼʱ�䣬����ʱ����Ч���Һ���б�������ÿ����ӵ�����������ʽ����ʼʱ��(��-��-�� ʱ:��)|����ʱ��(��-��-�� ʱ:��)|���ַ�������������ӣ�<br>2017-12-30 09:00|2018-01-01 09:00|100<br>2017-01-02 09:00|2018-01-03 09:00|200\";s:9:\"TimesText\";s:36:\"��{Num}�ֺ������{em}{Time}{/em}����\";s:12:\"RankingTitle\";s:6:\"���а�\";s:11:\"HBListOrder\";s:12:\"�����¼����\";s:14:\"HBListOrderArr\";a:2:{s:5:\"money\";s:4:\"���\";s:8:\"dateline\";s:4:\"ʱ��\";}s:17:\"HBListOrderResult\";s:16:\"�����¼�������\";s:11:\"HBListLimit\";s:20:\"�����¼ÿ�ε�������\";s:9:\"RoundLoop\";s:22:\"��һ���Ƿ�ɼ�������\";s:15:\"RoundLoopPrompt\";s:16:\"���ö���ʱ����Ч\";s:9:\"ShareMode\";s:8:\"������ʽ\";s:15:\"ShareModePrompt\";s:27:\"������ʽ��ǧ�����R��App��Ч\";s:12:\"ShareModeArr\";a:2:{i:0;s:4:\"ȫ��\";i:1;s:6:\"����Ȧ\";}s:8:\"HandleHB\";s:26:\"һ�����ŵ�ǰҳ��δ��ȡ���\";s:5:\"OpErr\";s:36:\"����ʧ�ܣ��㻹û��ѡ����Ҫ����������\";s:10:\"HandleHBOk\";s:19:\"�ɹ�����{Num}�����\";s:9:\"ReceiveHB\";s:10:\"��ȡ��Ǯ��\";s:4:\"WXFX\";s:14:\"��Ҫ��������\";s:6:\"Err200\";s:22:\"���ź���û���������Ŷ\";s:3:\"Own\";s:4:\"�Լ�\";s:14:\"UserGroupTitle\";s:10:\"�û�������\";s:15:\"UserGroupPrompt\";s:24:\"�մ��������ƣ���Ctrl��ѡ\";s:12:\"UserGroupErr\";s:28:\"����ǰ�û��鲻������ȡ���Ŷ\";s:14:\"ExtcreditsList\";s:8:\"��������\";s:13:\"ExtcreditsNum\";s:24:\"�������ڶ��ٲ�����ȡ���\";s:16:\"ExtcreditsNumErr\";s:73:\"����ǰ<span style=color:red>{Extcredits}</span>̫������������ȡ���κ��Ŷ\";s:6:\"Poster\";s:8:\"���ɺ���\";s:9:\"NavPoster\";s:12:\"����<br>����\";s:10:\"PosterLoad\";s:18:\"���������У����Ժ�\";s:12:\"PosterQrcode\";s:18:\"����ʶ���ά�����\";s:11:\"PosterShare\";s:40:\"������ͼ����ͼƬ����������Ȧ���͸�����\";s:13:\"PosterContent\";s:8:\"��������\";s:20:\"PosterContentDefault\";s:40:\"����{AppName}������{br}{em}{Money}{em}Ԫ\";s:19:\"PosterContentPrompt\";s:122:\"ǧ��App�ſ�ʹ�ú�������,{AppName}����APP���֣�{Money}������ǰ������Ľ�{br}�������У�{em}������Ҫ�Ӵּ���ɫ����{/em}\";s:7:\"OpenApp\";s:7:\"��App\";s:14:\"FictitiousData\";s:8:\"��������\";s:20:\"FictitiousDataPrompt\";s:173:\"һ��һ������Ҫ�������ֺ�������������磺��5����������������ݣ����ܵ�6��Ҳ�����������ݣ���ʽ���ڼ������������������|���|uid|�û���<br>ʵ����5|100|1|admin<br>8|200|5|test\";s:6:\"GpsErr\";s:14:\"��λʧ����ʾ��\";s:12:\"GpsErrPrompt\";s:11:\"ǧ��App��Ч\";s:13:\"GpsErrDefault\";s:31:\"��λʧ����Ŷ���뿪��App��λȨ��\";s:11:\"NoAppSwitch\";s:13:\"����ʾ����App\";s:17:\"NoAppSwitchPrompt\";s:22:\"������վ�����󣬿ɺ���\";s:7:\"GpsLoad\";s:14:\"��λ�У����Ե�\";}s:8:\"qfmobile\";a:1:{s:0:\"\";s:0:\"\";}}'),('pluginlanguage_system',1,1607929477,'a:1:{s:4:\"file\";a:1:{s:0:\"\";s:0:\"\";}}'),('wsq_checkinfo',1,1607323331,'a:2:{s:8:\"variable\";a:14:{s:13:\"discuzversion\";s:4:\"X3.2\";s:7:\"charset\";s:3:\"gbk\";s:7:\"version\";s:1:\"4\";s:13:\"pluginversion\";s:5:\"1.4.8\";s:7:\"regname\";s:8:\"register\";s:9:\"qqconnect\";s:1:\"0\";s:12:\"wsqqqconnect\";s:1:\"0\";s:15:\"wsqhideregister\";s:1:\"0\";s:8:\"sitename\";s:13:\"Discuz! Board\";s:8:\"mysiteid\";s:0:\"\";s:10:\"ucenterurl\";s:26:\"http://discuz.cc/uc_server\";s:10:\"defaultfid\";N;s:10:\"totalposts\";i:2;s:12:\"totalmembers\";i:2;}s:10:\"expiration\";i:1607323331;}'),('onlinerecord',0,1607063253,'3	1607063253'),('addoncheck_plugin',1,1608519741,'a:1:{s:18:\"fn_hb_share.plugin\";s:12:\"2:2019-6-19:\";}'),('addoncheck_template',0,1607064152,'0'),('max_post_id',0,1607500030,'3'),('usergroupIconId',1,1607073752,'a:2:{s:8:\"variable\";a:13:{i:1;s:5:\"admin\";i:2;s:5:\"admin\";i:3;s:5:\"admin\";i:10;i:1;i:16;s:7:\"special\";i:17;s:7:\"special\";i:18;s:7:\"special\";i:19;s:7:\"special\";i:11;i:2;i:12;i:3;i:13;i:4;i:14;i:5;i:15;i:6;}s:10:\"expiration\";i:1607073752;}'),('groupindex',1,1607929477,'a:5:{s:13:\"randgroupdata\";a:0:{}s:12:\"topgrouplist\";a:0:{}s:10:\"updateline\";i:1607929477;s:10:\"todayposts\";N;s:8:\"groupnum\";s:1:\"0\";}'),('forum_guide',0,1607929477,''),('historyposts',0,1608515491,'0	7'),('seccodedata',1,1608515550,'a:1:{s:8:\"register\";a:1:{s:4:\"show\";i:0;}}'),('style_2',1,1606211388,'a:65:{s:7:\"styleid\";s:1:\"2\";s:4:\"name\";s:8:\"bigstyle\";s:9:\"available\";s:0:\"\";s:10:\"templateid\";s:1:\"2\";s:8:\"extstyle\";s:0:\"\";s:7:\"tplname\";s:8:\"BigStyle\";s:9:\"directory\";s:19:\"./template/bigstyle\";s:9:\"copyright\";s:12:\"mawentao.com\";s:6:\"tpldir\";s:19:\"./template/bigstyle\";s:16:\"menuhoverbgcolor\";s:7:\"#005AB4\";s:9:\"lightlink\";s:4:\"#FFF\";s:12:\"floatbgcolor\";s:4:\"#FFF\";s:15:\"dropmenubgcolor\";s:7:\"#FEFEFE\";s:16:\"floatmaskbgcolor\";s:4:\"#000\";s:14:\"dropmenuborder\";s:4:\"#DDD\";s:9:\"specialbg\";s:7:\"#E5EDF2\";s:13:\"specialborder\";s:7:\"#C2D5E3\";s:8:\"commonbg\";s:7:\"#F2F2F2\";s:12:\"commonborder\";s:7:\"#CDCDCD\";s:7:\"inputbg\";s:4:\"#FFF\";s:7:\"stypeid\";s:1:\"1\";s:20:\"inputborderdarkcolor\";s:7:\"#848484\";s:13:\"headerbgcolor\";s:0:\"\";s:12:\"headerborder\";s:1:\"0\";s:11:\"sidebgcolor\";s:0:\"\";s:11:\"msgfontsize\";s:4:\"14px\";s:7:\"bgcolor\";s:4:\"#FFF\";s:10:\"noticetext\";s:7:\"#F26C4F\";s:13:\"highlightlink\";s:4:\"#369\";s:4:\"link\";s:4:\"#333\";s:9:\"lighttext\";s:4:\"#999\";s:7:\"midtext\";s:4:\"#666\";s:9:\"tabletext\";s:4:\"#444\";s:10:\"smfontsize\";s:6:\"0.83em\";s:15:\"threadtitlefont\";s:36:\"Tahoma,Helvetica,\'SimSun\',sans-serif\";s:19:\"threadtitlefontsize\";s:4:\"14px\";s:6:\"smfont\";s:27:\"Tahoma,Helvetica,sans-serif\";s:12:\"titlebgcolor\";s:7:\"#E5EDF2\";s:8:\"fontsize\";s:8:\"12px/1.5\";s:4:\"font\";s:36:\"Tahoma,Helvetica,\'SimSun\',sans-serif\";s:11:\"styleimgdir\";s:19:\"static/image/common\";s:6:\"imgdir\";s:19:\"static/image/common\";s:8:\"boardimg\";s:28:\"static/image/common/logo.png\";s:10:\"headertext\";s:4:\"#444\";s:10:\"footertext\";s:4:\"#666\";s:11:\"menubgcolor\";s:7:\"#2B7ACD\";s:8:\"menutext\";s:4:\"#FFF\";s:13:\"menuhovertext\";s:4:\"#FFF\";s:6:\"wrapbg\";s:4:\"#FFF\";s:15:\"wrapbordercolor\";s:4:\"#CCC\";s:12:\"contentwidth\";s:5:\"630px\";s:15:\"contentseparate\";s:7:\"#C2D5E3\";s:11:\"inputborder\";s:7:\"#E0E0E0\";s:15:\"menuhoverbgcode\";s:75:\"background: #005AB4 url(\"static/image/common/nv_a.png\") no-repeat 50% -33px\";s:11:\"floatbgcode\";s:16:\"background: #FFF\";s:14:\"dropmenubgcode\";s:19:\"background: #FEFEFE\";s:15:\"floatmaskbgcode\";s:16:\"background: #000\";s:12:\"headerbgcode\";s:0:\"\";s:10:\"sidebgcode\";s:62:\"background: url(\"static/image/common/vlineb.png\") repeat-y 0 0\";s:6:\"bgcode\";s:71:\"background: #FFF url(\"static/image/common/background.png\") repeat-x 0 0\";s:11:\"titlebgcode\";s:71:\"background: #E5EDF2 url(\"static/image/common/titlebg.png\") repeat-x 0 0\";s:10:\"menubgcode\";s:67:\"background: #2B7ACD url(\"static/image/common/nv.png\") no-repeat 0 0\";s:9:\"boardlogo\";s:73:\"<img src=\"static/image/common/logo.png\" alt=\"Discuz! Board\" border=\"0\" />\";s:4:\"bold\";s:4:\"bold\";s:7:\"verhash\";s:3:\"WM8\";}'),('style_3',1,1606211388,'a:65:{s:7:\"styleid\";s:1:\"3\";s:4:\"name\";s:7:\"FreeWap\";s:9:\"available\";s:0:\"\";s:10:\"templateid\";s:1:\"3\";s:8:\"extstyle\";s:0:\"\";s:7:\"tplname\";s:10:\"BZ-FreeWap\";s:9:\"directory\";s:27:\"./template/banzhuan_freewap\";s:9:\"copyright\";s:2:\"BZ\";s:6:\"tpldir\";s:27:\"./template/banzhuan_freewap\";s:6:\"smfont\";s:5:\"Arial\";s:19:\"threadtitlefontsize\";s:4:\"14px\";s:15:\"threadtitlefont\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:10:\"smfontsize\";s:6:\"0.83em\";s:9:\"tabletext\";s:4:\"#444\";s:7:\"midtext\";s:4:\"#666\";s:9:\"lighttext\";s:4:\"#999\";s:4:\"link\";s:4:\"#333\";s:13:\"highlightlink\";s:4:\"#369\";s:10:\"noticetext\";s:7:\"#F26C4F\";s:7:\"bgcolor\";s:4:\"#FFF\";s:11:\"msgfontsize\";s:4:\"14px\";s:11:\"sidebgcolor\";s:0:\"\";s:12:\"headerborder\";s:1:\"0\";s:13:\"headerbgcolor\";s:0:\"\";s:20:\"inputborderdarkcolor\";s:7:\"#848484\";s:7:\"stypeid\";s:1:\"1\";s:7:\"inputbg\";s:4:\"#FFF\";s:12:\"commonborder\";s:7:\"#CDCDCD\";s:8:\"commonbg\";s:7:\"#F2F2F2\";s:13:\"specialborder\";s:7:\"#C2D5E3\";s:9:\"specialbg\";s:7:\"#E5EDF2\";s:14:\"dropmenuborder\";s:4:\"#DDD\";s:16:\"floatmaskbgcolor\";s:4:\"#000\";s:15:\"dropmenubgcolor\";s:7:\"#FEFEFE\";s:12:\"floatbgcolor\";s:4:\"#FFF\";s:9:\"lightlink\";s:4:\"#FFF\";s:16:\"menuhoverbgcolor\";s:7:\"#005AB4\";s:12:\"titlebgcolor\";s:7:\"#E5EDF2\";s:8:\"fontsize\";s:8:\"12px/1.5\";s:4:\"font\";s:33:\"Tahoma,\'Microsoft Yahei\',\'Simsun\'\";s:11:\"styleimgdir\";s:47:\"./template/banzhuan_freewap/touch/common/images\";s:6:\"imgdir\";s:19:\"static/image/common\";s:8:\"boardimg\";s:56:\"./template/banzhuan_freewap/touch/common/images/logo.png\";s:10:\"headertext\";s:4:\"#444\";s:10:\"footertext\";s:4:\"#666\";s:11:\"menubgcolor\";s:7:\"#2B7ACD\";s:8:\"menutext\";s:4:\"#FFF\";s:13:\"menuhovertext\";s:4:\"#FFF\";s:6:\"wrapbg\";s:4:\"#FFF\";s:15:\"wrapbordercolor\";s:4:\"#CCC\";s:12:\"contentwidth\";s:5:\"630px\";s:15:\"contentseparate\";s:7:\"#C2D5E3\";s:11:\"inputborder\";s:7:\"#E0E0E0\";s:6:\"bgcode\";s:99:\"background: #FFF url(\"./template/banzhuan_freewap/touch/common/images/background.png\") repeat-x 0 0\";s:10:\"sidebgcode\";s:90:\"background: url(\"./template/banzhuan_freewap/touch/common/images/vlineb.png\") repeat-y 0 0\";s:12:\"headerbgcode\";s:0:\"\";s:15:\"floatmaskbgcode\";s:16:\"background: #000\";s:14:\"dropmenubgcode\";s:19:\"background: #FEFEFE\";s:11:\"floatbgcode\";s:16:\"background: #FFF\";s:15:\"menuhoverbgcode\";s:103:\"background: #005AB4 url(\"./template/banzhuan_freewap/touch/common/images/nv_a.png\") no-repeat 50% -33px\";s:11:\"titlebgcode\";s:99:\"background: #E5EDF2 url(\"./template/banzhuan_freewap/touch/common/images/titlebg.png\") repeat-x 0 0\";s:10:\"menubgcode\";s:95:\"background: #2B7ACD url(\"./template/banzhuan_freewap/touch/common/images/nv.png\") no-repeat 0 0\";s:9:\"boardlogo\";s:101:\"<img src=\"./template/banzhuan_freewap/touch/common/images/logo.png\" alt=\"Discuz! Board\" border=\"0\" />\";s:4:\"bold\";s:4:\"bold\";s:7:\"verhash\";s:3:\"DMz\";}');

/*Table structure for table `pre_common_tag` */

DROP TABLE IF EXISTS `pre_common_tag`;

CREATE TABLE `pre_common_tag` (
  `tagid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  KEY `tagname` (`tagname`),
  KEY `status` (`status`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_tag` */

/*Table structure for table `pre_common_tagitem` */

DROP TABLE IF EXISTS `pre_common_tagitem`;

CREATE TABLE `pre_common_tagitem` (
  `tagid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` char(10) NOT NULL DEFAULT '',
  UNIQUE KEY `item` (`tagid`,`itemid`,`idtype`),
  KEY `idtype` (`idtype`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_tagitem` */

/*Table structure for table `pre_common_task` */

DROP TABLE IF EXISTS `pre_common_task`;

CREATE TABLE `pre_common_task` (
  `taskid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `relatedtaskid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `icon` varchar(150) NOT NULL DEFAULT '',
  `applicants` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `achievers` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tasklimits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `applyperm` text NOT NULL,
  `scriptname` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `period` int(10) unsigned NOT NULL DEFAULT '0',
  `periodtype` tinyint(1) NOT NULL DEFAULT '0',
  `reward` enum('credit','magic','medal','invite','group') NOT NULL DEFAULT 'credit',
  `prize` varchar(15) NOT NULL DEFAULT '',
  `bonus` int(10) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `version` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_task` */

/*Table structure for table `pre_common_taskvar` */

DROP TABLE IF EXISTS `pre_common_taskvar`;

CREATE TABLE `pre_common_taskvar` (
  `taskvarid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `taskid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sort` enum('apply','complete') NOT NULL DEFAULT 'complete',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `variable` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `value` text NOT NULL,
  PRIMARY KEY (`taskvarid`),
  KEY `taskid` (`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_taskvar` */

/*Table structure for table `pre_common_template` */

DROP TABLE IF EXISTS `pre_common_template`;

CREATE TABLE `pre_common_template` (
  `templateid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`templateid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_template` */

insert  into `pre_common_template`(`templateid`,`name`,`directory`,`copyright`) values (1,'默认模板套系','./template/default','北京康盛新创科技有限责任公司');

/*Table structure for table `pre_common_template_block` */

DROP TABLE IF EXISTS `pre_common_template_block`;

CREATE TABLE `pre_common_template_block` (
  `targettplname` varchar(100) NOT NULL DEFAULT '',
  `tpldirectory` varchar(80) NOT NULL DEFAULT '',
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`targettplname`,`tpldirectory`,`bid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_template_block` */

insert  into `pre_common_template_block`(`targettplname`,`tpldirectory`,`bid`) values ('group/index','./template/default',1),('group/index','./template/default',2);

/*Table structure for table `pre_common_template_permission` */

DROP TABLE IF EXISTS `pre_common_template_permission`;

CREATE TABLE `pre_common_template_permission` (
  `targettplname` varchar(100) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowmanage` tinyint(1) NOT NULL DEFAULT '0',
  `allowrecommend` tinyint(1) NOT NULL DEFAULT '0',
  `needverify` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedtplname` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`targettplname`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_template_permission` */

/*Table structure for table `pre_common_uin_black` */

DROP TABLE IF EXISTS `pre_common_uin_black`;

CREATE TABLE `pre_common_uin_black` (
  `uin` char(40) NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uin`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_uin_black` */

/*Table structure for table `pre_common_usergroup` */

DROP TABLE IF EXISTS `pre_common_usergroup`;

CREATE TABLE `pre_common_usergroup` (
  `groupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `radminid` tinyint(3) NOT NULL DEFAULT '0',
  `type` enum('system','special','member') NOT NULL DEFAULT 'member',
  `system` varchar(255) NOT NULL DEFAULT 'private',
  `grouptitle` varchar(255) NOT NULL DEFAULT '',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `color` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allowvisit` tinyint(1) NOT NULL DEFAULT '0',
  `allowsendpm` tinyint(1) NOT NULL DEFAULT '1',
  `allowinvite` tinyint(1) NOT NULL DEFAULT '0',
  `allowmailinvite` tinyint(1) NOT NULL DEFAULT '0',
  `maxinvitenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inviteprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxinviteday` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `creditsrange` (`creditshigher`,`creditslower`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_usergroup` */

insert  into `pre_common_usergroup`(`groupid`,`radminid`,`type`,`system`,`grouptitle`,`creditshigher`,`creditslower`,`stars`,`color`,`icon`,`allowvisit`,`allowsendpm`,`allowinvite`,`allowmailinvite`,`maxinvitenum`,`inviteprice`,`maxinviteday`) values (1,1,'system','private','管理员',0,0,9,'','',2,1,1,1,0,0,10),(2,2,'system','private','超级版主',0,0,8,'','',1,1,1,1,0,0,10),(3,3,'system','private','版主',0,0,7,'','',1,1,1,1,0,0,10),(4,0,'system','private','禁止发言',0,0,0,'','',1,1,0,0,0,0,0),(5,0,'system','private','禁止访问',0,0,0,'','',0,1,0,0,0,0,0),(6,0,'system','private','禁止 IP',0,0,0,'','',0,1,0,0,0,0,0),(7,0,'system','private','游客',0,0,0,'','',1,1,0,0,0,0,10),(8,0,'system','private','等待验证会员',0,0,0,'','',1,1,0,0,0,0,0),(9,0,'member','private','限制会员',-9999999,0,0,'','',1,1,0,0,0,0,0),(10,0,'member','private','新手上路',0,50,1,'','',1,1,0,0,0,0,10),(11,0,'member','private','注册会员',50,200,2,'','',1,1,0,0,0,0,10),(12,0,'member','private','中级会员',200,500,3,'','',1,1,0,0,0,0,10),(13,0,'member','private','高级会员',500,1000,4,'','',1,1,0,0,0,0,10),(14,0,'member','private','金牌会员',1000,3000,6,'','',1,1,0,0,0,0,10),(15,0,'member','private','论坛元老',3000,9999999,8,'','',1,1,0,0,0,0,10),(16,3,'special','private','实习版主',0,0,7,'','',1,1,0,0,0,0,10),(17,2,'special','private','网站编辑',0,0,8,'','',1,1,0,0,0,0,10),(18,1,'special','private','信息监察员',0,0,9,'','',1,1,0,0,0,0,10),(19,3,'special','private','审核员',0,0,7,'','',1,1,0,0,0,0,10);

/*Table structure for table `pre_common_usergroup_field` */

DROP TABLE IF EXISTS `pre_common_usergroup_field`;

CREATE TABLE `pre_common_usergroup_field` (
  `groupid` smallint(6) unsigned NOT NULL,
  `readaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostpoll` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostreward` tinyint(1) NOT NULL DEFAULT '0',
  `allowposttrade` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostactivity` tinyint(1) NOT NULL DEFAULT '0',
  `allowdirectpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetimage` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostimage` tinyint(1) NOT NULL DEFAULT '0',
  `allowvote` tinyint(1) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `allowcstatus` tinyint(1) NOT NULL DEFAULT '0',
  `allowinvisible` tinyint(1) NOT NULL DEFAULT '0',
  `allowtransfer` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetreadperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetattachperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowposttag` tinyint(1) NOT NULL DEFAULT '0',
  `allowhidecode` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowanonymous` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowmagics` tinyint(1) unsigned NOT NULL,
  `disableperiodctrl` tinyint(1) NOT NULL DEFAULT '0',
  `reasonpm` tinyint(1) NOT NULL DEFAULT '0',
  `maxprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxsigsize` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxattachsize` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsizeperday` int(10) unsigned NOT NULL DEFAULT '0',
  `maxthreadsperhour` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxpostsperhour` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attachextensions` char(100) NOT NULL DEFAULT '',
  `raterange` char(150) NOT NULL DEFAULT '',
  `loginreward` char(150) NOT NULL DEFAULT '',
  `mintradeprice` smallint(6) unsigned NOT NULL DEFAULT '1',
  `maxtradeprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `minrewardprice` smallint(6) unsigned NOT NULL DEFAULT '1',
  `maxrewardprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `magicsdiscount` tinyint(1) NOT NULL,
  `maxmagicsweight` smallint(6) unsigned NOT NULL,
  `allowpostdebate` tinyint(1) NOT NULL DEFAULT '0',
  `tradestick` tinyint(1) unsigned NOT NULL,
  `exempt` tinyint(1) unsigned NOT NULL,
  `maxattachnum` smallint(6) NOT NULL DEFAULT '0',
  `allowposturl` tinyint(1) NOT NULL DEFAULT '3',
  `allowrecommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowpostrushreply` tinyint(1) NOT NULL DEFAULT '0',
  `maxfriendnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxspacesize` int(10) unsigned NOT NULL DEFAULT '0',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowcommentarticle` smallint(6) NOT NULL DEFAULT '0',
  `searchinterval` smallint(6) unsigned NOT NULL DEFAULT '0',
  `searchignore` tinyint(1) NOT NULL DEFAULT '0',
  `allowblog` tinyint(1) NOT NULL DEFAULT '0',
  `allowdoing` tinyint(1) NOT NULL DEFAULT '0',
  `allowupload` tinyint(1) NOT NULL DEFAULT '0',
  `allowshare` tinyint(1) NOT NULL DEFAULT '0',
  `allowblogmod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowdoingmod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowuploadmod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsharemod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowcss` tinyint(1) NOT NULL DEFAULT '0',
  `allowpoke` tinyint(1) NOT NULL DEFAULT '0',
  `allowfriend` tinyint(1) NOT NULL DEFAULT '0',
  `allowclick` tinyint(1) NOT NULL DEFAULT '0',
  `allowmagic` tinyint(1) NOT NULL DEFAULT '0',
  `allowstat` tinyint(1) NOT NULL DEFAULT '0',
  `allowstatdata` tinyint(1) NOT NULL DEFAULT '0',
  `videophotoignore` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewvideophoto` tinyint(1) NOT NULL DEFAULT '0',
  `allowmyop` tinyint(1) NOT NULL DEFAULT '0',
  `magicdiscount` tinyint(1) NOT NULL DEFAULT '0',
  `domainlength` smallint(6) unsigned NOT NULL DEFAULT '0',
  `seccode` tinyint(1) NOT NULL DEFAULT '1',
  `disablepostctrl` tinyint(1) NOT NULL DEFAULT '0',
  `allowbuildgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowgroupdirectpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowgroupposturl` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `edittimelimit` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpostarticle` tinyint(1) NOT NULL DEFAULT '0',
  `allowdownlocalimg` tinyint(1) NOT NULL DEFAULT '0',
  `allowdownremoteimg` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostarticlemod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowspacediyhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowspacediybbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowspacediyimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowcommentpost` tinyint(1) NOT NULL DEFAULT '2',
  `allowcommentitem` tinyint(1) NOT NULL DEFAULT '0',
  `allowcommentreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowreplycredit` tinyint(1) NOT NULL DEFAULT '0',
  `ignorecensor` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsendallpm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsendpmmaxnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maximagesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowmediacode` tinyint(1) NOT NULL DEFAULT '0',
  `allowbegincode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowat` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowsetpublishdate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowfollowcollection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowcommentcollection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowcreatecollection` smallint(6) unsigned NOT NULL DEFAULT '0',
  `forcesecques` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `forcelogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closead` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `buildgroupcredits` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowimgcontent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_usergroup_field` */

insert  into `pre_common_usergroup_field`(`groupid`,`readaccess`,`allowpost`,`allowreply`,`allowpostpoll`,`allowpostreward`,`allowposttrade`,`allowpostactivity`,`allowdirectpost`,`allowgetattach`,`allowgetimage`,`allowpostattach`,`allowpostimage`,`allowvote`,`allowsearch`,`allowcstatus`,`allowinvisible`,`allowtransfer`,`allowsetreadperm`,`allowsetattachperm`,`allowposttag`,`allowhidecode`,`allowhtml`,`allowanonymous`,`allowsigbbcode`,`allowsigimgcode`,`allowmagics`,`disableperiodctrl`,`reasonpm`,`maxprice`,`maxsigsize`,`maxattachsize`,`maxsizeperday`,`maxthreadsperhour`,`maxpostsperhour`,`attachextensions`,`raterange`,`loginreward`,`mintradeprice`,`maxtradeprice`,`minrewardprice`,`maxrewardprice`,`magicsdiscount`,`maxmagicsweight`,`allowpostdebate`,`tradestick`,`exempt`,`maxattachnum`,`allowposturl`,`allowrecommend`,`allowpostrushreply`,`maxfriendnum`,`maxspacesize`,`allowcomment`,`allowcommentarticle`,`searchinterval`,`searchignore`,`allowblog`,`allowdoing`,`allowupload`,`allowshare`,`allowblogmod`,`allowdoingmod`,`allowuploadmod`,`allowsharemod`,`allowcss`,`allowpoke`,`allowfriend`,`allowclick`,`allowmagic`,`allowstat`,`allowstatdata`,`videophotoignore`,`allowviewvideophoto`,`allowmyop`,`magicdiscount`,`domainlength`,`seccode`,`disablepostctrl`,`allowbuildgroup`,`allowgroupdirectpost`,`allowgroupposturl`,`edittimelimit`,`allowpostarticle`,`allowdownlocalimg`,`allowdownremoteimg`,`allowpostarticlemod`,`allowspacediyhtml`,`allowspacediybbcode`,`allowspacediyimgcode`,`allowcommentpost`,`allowcommentitem`,`allowcommentreply`,`allowreplycredit`,`ignorecensor`,`allowsendallpm`,`allowsendpmmaxnum`,`maximagesize`,`allowmediacode`,`allowbegincode`,`allowat`,`allowsetpublishdate`,`allowfollowcollection`,`allowcommentcollection`,`allowcreatecollection`,`forcesecques`,`forcelogin`,`closead`,`buildgroupcredits`,`allowimgcontent`) values (1,200,1,1,1,1,1,1,3,1,1,1,1,1,127,1,1,1,1,1,1,1,1,1,1,1,2,1,0,30,500,2048000,0,0,0,'','','',1,0,1,0,0,200,1,5,255,0,3,1,1,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,1,1,1,1,1,0,5,1,1,30,3,3,0,1,1,1,0,1,1,1,3,1,0,1,0,1,0,0,1,1,50,0,30,1,5,0,0,0,0,0),(2,150,1,1,1,1,1,1,3,1,1,1,1,1,95,1,1,1,1,1,0,1,0,1,1,1,2,1,0,20,300,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,180,1,5,255,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,1,20,3,0,0,0,0,0,0,0,1,1,2,1,0,1,1,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(3,100,1,1,1,1,1,1,1,1,1,1,1,1,95,1,0,1,1,1,0,1,0,0,1,1,2,1,0,10,200,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,160,1,5,224,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,1,15,3,0,0,0,0,0,0,0,1,1,2,1,0,1,1,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','',1,0,1,0,0,0,0,5,0,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','',1,0,1,0,0,0,0,5,0,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','',1,0,1,0,0,0,0,5,0,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,1,0,0,0,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'gif, jpg, jpeg, png','','',1,0,1,0,0,0,0,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,50,0,0,0,0,'','','',1,0,1,0,0,0,0,5,0,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'chm,pdf,zip,rar,tar,gz,bzip2,gif,jpg,jpeg,png','','',1,0,1,0,1,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,10,1,1,1,1,1,1,0,1,1,1,1,1,95,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,80,1024000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,40,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,5,3,0,0,0,0,0,0,0,1,1,2,1,0,0,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(11,20,1,1,1,1,1,1,0,1,1,1,1,1,95,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,100,1024000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,60,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,5,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(12,30,1,1,1,1,1,1,0,1,1,1,1,1,95,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,150,1024000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,80,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,5,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(13,50,1,1,1,1,1,1,0,1,1,1,1,1,95,1,0,0,0,0,0,0,0,0,1,0,2,0,0,0,200,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,100,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,1,0,10,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(14,70,1,1,1,1,1,1,0,1,1,1,1,1,95,1,0,0,1,1,0,0,0,0,1,1,2,0,0,0,300,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,120,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,10,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(15,90,1,1,1,1,1,1,0,1,1,1,1,1,95,1,1,0,1,1,0,0,0,1,1,1,2,0,0,0,500,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,140,1,5,0,0,3,1,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,10,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(16,100,1,1,1,1,1,1,1,1,1,1,1,1,95,1,0,1,1,1,0,1,0,0,1,1,2,1,0,10,200,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,160,1,5,188,0,3,0,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,0,15,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(17,150,1,1,1,1,1,1,3,1,1,1,1,1,95,1,1,1,1,1,0,1,0,0,1,1,2,1,0,20,300,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,180,1,5,255,0,3,0,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,1,15,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(18,200,1,1,1,1,1,1,3,1,1,1,1,1,95,0,1,1,1,1,0,1,1,1,1,1,2,0,0,30,500,0,0,0,1,'','','',1,0,1,0,0,200,1,5,255,0,3,3,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,15,1,1,5,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0),(19,100,1,1,1,1,1,1,1,1,1,1,1,1,95,1,0,1,1,1,0,1,0,0,1,1,2,1,0,10,200,2048000,0,0,0,'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png','','',1,0,1,0,0,160,1,5,188,0,3,0,0,0,0,1,1000,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,5,1,1,15,3,0,0,0,0,0,0,0,1,1,2,1,0,1,0,0,0,0,0,0,0,0,30,1,5,0,0,0,0,0);

/*Table structure for table `pre_common_visit` */

DROP TABLE IF EXISTS `pre_common_visit`;

CREATE TABLE `pre_common_visit` (
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`),
  KEY `ip` (`ip`,`view`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_visit` */

/*Table structure for table `pre_common_word` */

DROP TABLE IF EXISTS `pre_common_word`;

CREATE TABLE `pre_common_word` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '1',
  `find` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  `extra` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_word` */

insert  into `pre_common_word`(`id`,`admin`,`type`,`find`,`replacement`,`extra`) values (1,'admin',0,'毒品','{BANNED}','');

/*Table structure for table `pre_common_word_type` */

DROP TABLE IF EXISTS `pre_common_word_type`;

CREATE TABLE `pre_common_word_type` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_common_word_type` */

insert  into `pre_common_word_type`(`id`,`typename`) values (1,'政治'),(2,'广告');

/*Table structure for table `pre_connect_disktask` */

DROP TABLE IF EXISTS `pre_connect_disktask`;

CREATE TABLE `pre_connect_disktask` (
  `taskid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` char(32) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `verifycode` char(32) NOT NULL DEFAULT '',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text,
  PRIMARY KEY (`taskid`),
  KEY `openid` (`openid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_connect_disktask` */

/*Table structure for table `pre_connect_feedlog` */

DROP TABLE IF EXISTS `pre_connect_feedlog`;

CREATE TABLE `pre_connect_feedlog` (
  `flid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `publishtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpublished` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`flid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_connect_feedlog` */

/*Table structure for table `pre_connect_memberbindlog` */

DROP TABLE IF EXISTS `pre_connect_memberbindlog`;

CREATE TABLE `pre_connect_memberbindlog` (
  `mblid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uin` char(40) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mblid`),
  KEY `uid` (`uid`),
  KEY `uin` (`uin`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_connect_memberbindlog` */

/*Table structure for table `pre_connect_postfeedlog` */

DROP TABLE IF EXISTS `pre_connect_postfeedlog`;

CREATE TABLE `pre_connect_postfeedlog` (
  `flid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `publishtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpublished` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`flid`),
  UNIQUE KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_connect_postfeedlog` */

/*Table structure for table `pre_connect_tthreadlog` */

DROP TABLE IF EXISTS `pre_connect_tthreadlog`;

CREATE TABLE `pre_connect_tthreadlog` (
  `twid` char(16) NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `conopenid` char(32) NOT NULL,
  `pagetime` int(10) unsigned DEFAULT '0',
  `lasttwid` char(16) DEFAULT NULL,
  `nexttime` int(10) unsigned DEFAULT '0',
  `updatetime` int(10) unsigned DEFAULT '0',
  `dateline` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`twid`),
  KEY `nexttime` (`tid`,`nexttime`),
  KEY `updatetime` (`tid`,`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_connect_tthreadlog` */

/*Table structure for table `pre_fn_hb_share` */

DROP TABLE IF EXISTS `pre_fn_hb_share`;

CREATE TABLE `pre_fn_hb_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `displayorder` tinyint(4) unsigned NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  `start_dateline` int(11) unsigned NOT NULL,
  `end_dateline` int(11) unsigned NOT NULL,
  `display` tinyint(1) unsigned NOT NULL,
  `click` int(11) unsigned NOT NULL,
  `param` mediumtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_fn_hb_share` */

insert  into `pre_fn_hb_share`(`id`,`title`,`displayorder`,`dateline`,`start_dateline`,`end_dateline`,`display`,`click`,`param`,`thumbnail`) values (1,'转发领福利！湘西生活网携手吉月吉利给网友们拜年啦！',0,1606293420,1606292580,1606724580,1,0,'a:41:{s:5:\"times\";s:0:\"\";s:10:\"bannerlink\";s:59:\"https://share.0743sh.com/wap/thread/view-thread/tid/1666650\";s:4:\"navs\";s:5:\"1,2,3\";s:13:\"businesstitle\";s:8:\"商家介绍\";s:9:\"ruletitle\";s:4:\"规则\";s:15:\"winninglogtitle\";s:8:\"红包记录\";s:4:\"rule\";s:438:\"<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\";s:8:\"business\";s:438:\"<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\r\n<pre><span style=\\\"color:#9876aa;background-color:#232525;\\\">TableHbShare</span></pre>\";s:9:\"businesss\";s:0:\"\";s:7:\"surplus\";s:0:\"\";s:11:\"shareprompt\";s:26:\"分享后，就可以领取红包了哦\";s:9:\"sharemode\";i:0;s:7:\"address\";s:4:\"湘西\";s:6:\"gpserr\";s:31:\"定位失败了哦，请开启App定位权限\";s:6:\"hblist\";s:110:\"4.34\r\n2.12\r\n3.13\r\n4.34\r\n0.7\r\n6.02\r\n9.33\r\n7.79\r\n3.9\r\n10.69\r\n1.01\r\n6.31\r\n2.42\r\n4.8\r\n7.1\r\n17.32\r\n2.92\r\n2.84\r\n2.92\";s:14:\"fictitiousdata\";s:0:\"\";s:6:\"number\";i:1;s:9:\"roundloop\";i:0;s:3:\"app\";i:1;s:5:\"noapp\";i:0;s:6:\"apppop\";i:0;s:7:\"hblimit\";i:5;s:13:\"hborderresult\";s:4:\"desc\";s:7:\"hborder\";s:5:\"money\";s:7:\"apprand\";s:0:\"\";s:6:\"appbtn\";s:8:\"领取红包\";s:16:\"apppromptmaxtext\";s:15:\"前往App领取红包\";s:18:\"apppromptsmalltext\";s:19:\"注：最高可领100元哦\";s:11:\"regdateline\";s:0:\"\";s:17:\"regdatelineprompt\";s:109:\"您是老会员了哦，该红包只能{span}{Time}{/span}以上时间注册的会员领取哦，您注册的时间是：{span}{RegTime}{/span}\";s:8:\"sharebtn\";s:12:\"邀好友领红包\";s:10:\"sharetitle\";s:50:\"转发领福利！湘西生活网携手吉月吉利给网友们拜年啦！\";s:9:\"sharedesc\";s:50:\"转发领福利！湘西生活网携手吉月吉利给网友们拜年啦！\";s:17:\"successsharetitle\";s:58:\"我在这里领到了{Money}元红包，还剩{Surplus}个红包等着您来领\";s:16:\"successsharedesc\";s:58:\"我在这里领到了{Money}元红包，还剩{Surplus}个红包等着您来领\";s:7:\"groupid\";s:0:\"\";s:9:\"extcredit\";i:1;s:12:\"extcreditnum\";i:0;s:13:\"postercontent\";s:40:\"我在{AppName}抢到了{br}{em}{Money}{em}元\";s:6:\"banner\";s:63:\"source/plugin/fn_hb_share/attachment/163734ptazoavd9drp97t3.jpg\";s:9:\"sharelogo\";s:63:\"source/plugin/fn_hb_share/attachment/163734ryevn0d1oshdf1eh.jpg\";}','');

/*Table structure for table `pre_fn_hb_share_list` */

DROP TABLE IF EXISTS `pre_fn_hb_share_list`;

CREATE TABLE `pre_fn_hb_share_list` (
  `aid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `money` decimal(11,2) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`,`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_fn_hb_share_list` */

/*Table structure for table `pre_fn_hb_share_log` */

DROP TABLE IF EXISTS `pre_fn_hb_share_log`;

CREATE TABLE `pre_fn_hb_share_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_fn_hb_share_log` */

/*Table structure for table `pre_forum_access` */

DROP TABLE IF EXISTS `pre_forum_access`;

CREATE TABLE `pre_forum_access` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowview` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetimage` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostimage` tinyint(1) NOT NULL DEFAULT '0',
  `adminuser` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`),
  KEY `listorder` (`fid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_access` */

/*Table structure for table `pre_forum_activity` */

DROP TABLE IF EXISTS `pre_forum_activity`;

CREATE TABLE `pre_forum_activity` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `starttimefrom` int(10) unsigned NOT NULL DEFAULT '0',
  `starttimeto` int(10) unsigned NOT NULL DEFAULT '0',
  `place` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `applynumber` smallint(5) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `ufield` text NOT NULL,
  `credit` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`starttimefrom`),
  KEY `starttimefrom` (`starttimefrom`),
  KEY `expiration` (`expiration`),
  KEY `applynumber` (`applynumber`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_activity` */

/*Table structure for table `pre_forum_activityapply` */

DROP TABLE IF EXISTS `pre_forum_activityapply`;

CREATE TABLE `pre_forum_activityapply` (
  `applyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `payment` mediumint(8) NOT NULL DEFAULT '0',
  `ufielddata` text NOT NULL,
  PRIMARY KEY (`applyid`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`),
  KEY `dateline` (`tid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_activityapply` */

/*Table structure for table `pre_forum_announcement` */

DROP TABLE IF EXISTS `pre_forum_announcement`;

CREATE TABLE `pre_forum_announcement` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timespan` (`starttime`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_announcement` */

/*Table structure for table `pre_forum_attachment` */

DROP TABLE IF EXISTS `pre_forum_attachment`;

CREATE TABLE `pre_forum_attachment` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment` */

insert  into `pre_forum_attachment`(`aid`,`tid`,`pid`,`uid`,`tableid`,`downloads`) values (1,1,1,1,1,0),(2,3,3,1,3,0);

/*Table structure for table `pre_forum_attachment_0` */

DROP TABLE IF EXISTS `pre_forum_attachment_0`;

CREATE TABLE `pre_forum_attachment_0` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_0` */

/*Table structure for table `pre_forum_attachment_1` */

DROP TABLE IF EXISTS `pre_forum_attachment_1`;

CREATE TABLE `pre_forum_attachment_1` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_1` */

insert  into `pre_forum_attachment_1`(`aid`,`tid`,`pid`,`uid`,`dateline`,`filename`,`filesize`,`attachment`,`remote`,`description`,`readperm`,`price`,`isimage`,`width`,`thumb`,`picid`) values (1,1,1,1,1605604007,'ts_04.jpg',28033,'202011/17/170647zo9z76nx94zae4oo.jpg',0,'1',0,0,1,800,0,0);

/*Table structure for table `pre_forum_attachment_2` */

DROP TABLE IF EXISTS `pre_forum_attachment_2`;

CREATE TABLE `pre_forum_attachment_2` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_2` */

/*Table structure for table `pre_forum_attachment_3` */

DROP TABLE IF EXISTS `pre_forum_attachment_3`;

CREATE TABLE `pre_forum_attachment_3` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_3` */

insert  into `pre_forum_attachment_3`(`aid`,`tid`,`pid`,`uid`,`dateline`,`filename`,`filesize`,`attachment`,`remote`,`description`,`readperm`,`price`,`isimage`,`width`,`thumb`,`picid`) values (2,3,3,1,1608089245,'1.jpg',119371,'202012/16/112725ijjzi5or771o1odj.jpg',0,'',0,0,1,640,0,0);

/*Table structure for table `pre_forum_attachment_4` */

DROP TABLE IF EXISTS `pre_forum_attachment_4`;

CREATE TABLE `pre_forum_attachment_4` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_4` */

/*Table structure for table `pre_forum_attachment_5` */

DROP TABLE IF EXISTS `pre_forum_attachment_5`;

CREATE TABLE `pre_forum_attachment_5` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_5` */

/*Table structure for table `pre_forum_attachment_6` */

DROP TABLE IF EXISTS `pre_forum_attachment_6`;

CREATE TABLE `pre_forum_attachment_6` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_6` */

/*Table structure for table `pre_forum_attachment_7` */

DROP TABLE IF EXISTS `pre_forum_attachment_7`;

CREATE TABLE `pre_forum_attachment_7` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_7` */

/*Table structure for table `pre_forum_attachment_8` */

DROP TABLE IF EXISTS `pre_forum_attachment_8`;

CREATE TABLE `pre_forum_attachment_8` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_8` */

/*Table structure for table `pre_forum_attachment_9` */

DROP TABLE IF EXISTS `pre_forum_attachment_9`;

CREATE TABLE `pre_forum_attachment_9` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_9` */

/*Table structure for table `pre_forum_attachment_exif` */

DROP TABLE IF EXISTS `pre_forum_attachment_exif`;

CREATE TABLE `pre_forum_attachment_exif` (
  `aid` mediumint(8) unsigned NOT NULL,
  `exif` text NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_exif` */

/*Table structure for table `pre_forum_attachment_unused` */

DROP TABLE IF EXISTS `pre_forum_attachment_unused`;

CREATE TABLE `pre_forum_attachment_unused` (
  `aid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachment_unused` */

/*Table structure for table `pre_forum_attachtype` */

DROP TABLE IF EXISTS `pre_forum_attachtype`;

CREATE TABLE `pre_forum_attachtype` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` char(12) NOT NULL DEFAULT '',
  `maxsize` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_attachtype` */

/*Table structure for table `pre_forum_bbcode` */

DROP TABLE IF EXISTS `pre_forum_bbcode`;

CREATE TABLE `pre_forum_bbcode` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `replacement` text NOT NULL,
  `example` varchar(255) NOT NULL DEFAULT '',
  `explanation` text NOT NULL,
  `params` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `prompt` text NOT NULL,
  `nest` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `perm` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_bbcode` */

insert  into `pre_forum_bbcode`(`id`,`available`,`tag`,`icon`,`replacement`,`example`,`explanation`,`params`,`prompt`,`nest`,`displayorder`,`perm`) values (1,0,'fly','bb_fly.gif','<marquee width=\"90%\" scrollamount=\"3\">{1}</marquee>','[fly]This is sample text[/fly]','使内容横向滚动，这个效果类似 HTML 的 marquee 标签，注意：这个效果只在 Internet Explorer 浏览器下有效。',1,'请输入滚动显示的文字:',1,19,'1	2	3	12	13	14	15	16	17	18	19'),(2,2,'qq','bb_qq.gif','<a href=\"http://wpa.qq.com/msgrd?v=3&uin={1}&amp;site=[Discuz!]&amp;from=discuz&amp;menu=yes\" target=\"_blank\"><img src=\"static/image/common/qq_big.gif\" border=\"0\"></a>','[qq]688888[/qq]','显示 QQ 在线状态，点这个图标可以和他（她）聊天',1,'请输入 QQ 号码:<a href=\"\" class=\"xi2\" onclick=\"this.href=\'http://wp.qq.com/set.html?from=discuz&uin=\'+$(\'e_cst1_qq_param_1\').value\" target=\"_blank\" style=\"float:right;\">设置QQ在线状态&nbsp;&nbsp;</a>',1,21,'1	2	3	10	11	12	13	14	15	16	17	18	19'),(3,0,'sup','bb_sup.gif','<sup>{1}</sup>','X[sup]2[/sup]','上标',1,'请输入上标文字：',1,22,'1	2	3	12	13	14	15	16	17	18	19'),(4,0,'sub','bb_sub.gif','<sub>{1}</sub>','X[sub]2[/sub]','下标',1,'请输入下标文字：',1,23,'1	2	3	12	13	14	15	16	17	18	19');

/*Table structure for table `pre_forum_collection` */

DROP TABLE IF EXISTS `pre_forum_collection`;

CREATE TABLE `pre_forum_collection` (
  `ctid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `follownum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `threadnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `commentnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `ratenum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastsubject` varchar(80) NOT NULL DEFAULT '',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastposter` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ctid`),
  KEY `dateline` (`dateline`),
  KEY `hotcollection` (`threadnum`,`lastupdate`),
  KEY `follownum` (`follownum`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collection` */

/*Table structure for table `pre_forum_collectioncomment` */

DROP TABLE IF EXISTS `pre_forum_collectioncomment`;

CREATE TABLE `pre_forum_collectioncomment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ctid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `useip` varchar(16) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `ctid` (`ctid`,`dateline`),
  KEY `userrate` (`ctid`,`uid`,`rate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectioncomment` */

/*Table structure for table `pre_forum_collectionfollow` */

DROP TABLE IF EXISTS `pre_forum_collectionfollow`;

CREATE TABLE `pre_forum_collectionfollow` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `ctid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`ctid`),
  KEY `ctid` (`ctid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectionfollow` */

/*Table structure for table `pre_forum_collectioninvite` */

DROP TABLE IF EXISTS `pre_forum_collectioninvite`;

CREATE TABLE `pre_forum_collectioninvite` (
  `ctid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctid`,`uid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectioninvite` */

/*Table structure for table `pre_forum_collectionrelated` */

DROP TABLE IF EXISTS `pre_forum_collectionrelated`;

CREATE TABLE `pre_forum_collectionrelated` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `collection` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectionrelated` */

/*Table structure for table `pre_forum_collectionteamworker` */

DROP TABLE IF EXISTS `pre_forum_collectionteamworker`;

CREATE TABLE `pre_forum_collectionteamworker` (
  `ctid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectionteamworker` */

/*Table structure for table `pre_forum_collectionthread` */

DROP TABLE IF EXISTS `pre_forum_collectionthread`;

CREATE TABLE `pre_forum_collectionthread` (
  `ctid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ctid`,`tid`),
  KEY `ctid` (`ctid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_collectionthread` */

/*Table structure for table `pre_forum_creditslog` */

DROP TABLE IF EXISTS `pre_forum_creditslog`;

CREATE TABLE `pre_forum_creditslog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fromto` char(15) NOT NULL DEFAULT '',
  `sendcredits` tinyint(1) NOT NULL DEFAULT '0',
  `receivecredits` tinyint(1) NOT NULL DEFAULT '0',
  `send` int(10) unsigned NOT NULL DEFAULT '0',
  `receive` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `operation` char(3) NOT NULL DEFAULT '',
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_creditslog` */

/*Table structure for table `pre_forum_debate` */

DROP TABLE IF EXISTS `pre_forum_debate`;

CREATE TABLE `pre_forum_debate` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `affirmdebaters` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `negadebaters` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `affirmvotes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `negavotes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `umpire` varchar(15) NOT NULL DEFAULT '',
  `winner` tinyint(1) NOT NULL DEFAULT '0',
  `bestdebater` varchar(50) NOT NULL DEFAULT '',
  `affirmpoint` text NOT NULL,
  `negapoint` text NOT NULL,
  `umpirepoint` text NOT NULL,
  `affirmvoterids` text NOT NULL,
  `negavoterids` text NOT NULL,
  `affirmreplies` mediumint(8) unsigned NOT NULL,
  `negareplies` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_debate` */

/*Table structure for table `pre_forum_debatepost` */

DROP TABLE IF EXISTS `pre_forum_debatepost`;

CREATE TABLE `pre_forum_debatepost` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `stand` tinyint(1) NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `voters` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `voterids` text NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`,`stand`),
  KEY `tid` (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_debatepost` */

/*Table structure for table `pre_forum_faq` */

DROP TABLE IF EXISTS `pre_forum_faq`;

CREATE TABLE `pre_forum_faq` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `fpid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `identifier` varchar(20) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `displayplay` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_faq` */

/*Table structure for table `pre_forum_filter_post` */

DROP TABLE IF EXISTS `pre_forum_filter_post`;

CREATE TABLE `pre_forum_filter_post` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `postlength` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`pid`),
  KEY `tid` (`tid`,`postlength`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_filter_post` */

/*Table structure for table `pre_forum_forum` */

DROP TABLE IF EXISTS `pre_forum_forum`;

CREATE TABLE `pre_forum_forum` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` enum('group','forum','sub') NOT NULL DEFAULT 'forum',
  `name` char(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todayposts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `yesterdayposts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank` smallint(6) unsigned NOT NULL DEFAULT '0',
  `oldrank` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lastpost` char(110) NOT NULL DEFAULT '',
  `domain` char(15) NOT NULL DEFAULT '',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowmediacode` tinyint(1) NOT NULL DEFAULT '0',
  `allowanonymous` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostspecial` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowspecialonly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowappend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `alloweditrules` tinyint(1) NOT NULL DEFAULT '0',
  `allowfeed` tinyint(1) NOT NULL DEFAULT '1',
  `allowside` tinyint(1) NOT NULL DEFAULT '0',
  `recyclebin` tinyint(1) NOT NULL DEFAULT '0',
  `modnewposts` tinyint(1) NOT NULL DEFAULT '0',
  `jammer` tinyint(1) NOT NULL DEFAULT '0',
  `disablewatermark` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedmod` tinyint(1) NOT NULL DEFAULT '0',
  `autoclose` smallint(6) NOT NULL DEFAULT '0',
  `forumcolumns` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `catforumcolumns` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `threadcaches` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditpost` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `simple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modworks` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowglobalstick` tinyint(1) NOT NULL DEFAULT '1',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `commoncredits` int(10) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `recommend` smallint(6) unsigned NOT NULL DEFAULT '0',
  `favtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disablethumb` tinyint(1) NOT NULL DEFAULT '0',
  `disablecollect` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `forum` (`status`,`type`,`displayorder`),
  KEY `fup_type` (`fup`,`type`,`displayorder`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_forum` */

insert  into `pre_forum_forum`(`fid`,`fup`,`type`,`name`,`status`,`displayorder`,`styleid`,`threads`,`posts`,`todayposts`,`yesterdayposts`,`rank`,`oldrank`,`lastpost`,`domain`,`allowsmilies`,`allowhtml`,`allowbbcode`,`allowimgcode`,`allowmediacode`,`allowanonymous`,`allowpostspecial`,`allowspecialonly`,`allowappend`,`alloweditrules`,`allowfeed`,`allowside`,`recyclebin`,`modnewposts`,`jammer`,`disablewatermark`,`inheritedmod`,`autoclose`,`forumcolumns`,`catforumcolumns`,`threadcaches`,`alloweditpost`,`simple`,`modworks`,`allowglobalstick`,`level`,`commoncredits`,`archive`,`recommend`,`favtimes`,`sharetimes`,`disablethumb`,`disablecollect`) values (1,0,'group','Discuz!',1,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(2,1,'forum','默认版块',1,0,0,3,3,0,0,1,1,'3	[][奔驰]1998便宜出售了	1607500030	admin','',1,1,1,1,1,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(3,0,'group','影音',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(4,0,'group','情感',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(5,0,'group','生活',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(6,0,'group','休闲',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(7,0,'group','游戏',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(8,0,'group','体育',3,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(9,3,'forum','电影',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(10,3,'forum','音乐',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(11,3,'forum','视频',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(12,3,'forum','电视',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(13,4,'forum','交友',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(14,4,'forum','单身',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(15,4,'forum','诉说',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(16,4,'forum','婚恋',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(17,5,'forum','美食',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(18,5,'forum','购物',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(19,5,'forum','美容',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(20,5,'forum','健康',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(21,5,'forum','汽车',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(22,6,'forum','时尚',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(23,6,'forum','星座',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(24,6,'forum','摄影',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(25,6,'forum','宠物',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(26,6,'forum','动漫',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(27,6,'forum','旅游',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(28,6,'forum','设计',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(29,8,'forum','足球',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(30,8,'forum','篮球',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(31,8,'forum','羽毛球',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(32,8,'forum','乒乓球',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(33,7,'forum','网游',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0),(35,7,'forum','单机',3,0,0,0,0,0,0,0,0,'','',1,0,1,1,0,0,127,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0);

/*Table structure for table `pre_forum_forum_threadtable` */

DROP TABLE IF EXISTS `pre_forum_forum_threadtable`;

CREATE TABLE `pre_forum_forum_threadtable` (
  `fid` smallint(6) unsigned NOT NULL,
  `threadtableid` smallint(6) unsigned NOT NULL,
  `threads` int(11) unsigned NOT NULL DEFAULT '0',
  `posts` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`threadtableid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_forum_threadtable` */

/*Table structure for table `pre_forum_forumfield` */

DROP TABLE IF EXISTS `pre_forum_forumfield`;

CREATE TABLE `pre_forum_forumfield` (
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `password` varchar(12) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `attachextensions` varchar(255) NOT NULL DEFAULT '',
  `creditspolicy` mediumtext NOT NULL,
  `formulaperm` text NOT NULL,
  `moderators` text NOT NULL,
  `rules` text NOT NULL,
  `threadtypes` text NOT NULL,
  `threadsorts` text NOT NULL,
  `viewperm` text NOT NULL,
  `postperm` text NOT NULL,
  `replyperm` text NOT NULL,
  `getattachperm` text NOT NULL,
  `postattachperm` text NOT NULL,
  `postimageperm` text NOT NULL,
  `spviewperm` text NOT NULL,
  `seotitle` text NOT NULL,
  `keywords` text NOT NULL,
  `seodescription` text NOT NULL,
  `supe_pushsetting` text NOT NULL,
  `modrecommend` text NOT NULL,
  `threadplugin` text NOT NULL,
  `replybg` text NOT NULL,
  `extra` text NOT NULL,
  `jointype` tinyint(1) NOT NULL DEFAULT '0',
  `gviewperm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `membernum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `activity` int(10) unsigned NOT NULL DEFAULT '0',
  `founderuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `foundername` varchar(255) NOT NULL DEFAULT '',
  `banner` varchar(255) NOT NULL DEFAULT '',
  `groupnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `commentitem` text NOT NULL,
  `relatedgroup` text NOT NULL,
  `picstyle` tinyint(1) NOT NULL DEFAULT '0',
  `widthauto` tinyint(1) NOT NULL DEFAULT '0',
  `noantitheft` tinyint(1) NOT NULL DEFAULT '0',
  `noforumhidewater` tinyint(1) NOT NULL DEFAULT '0',
  `noforumrecommend` tinyint(1) NOT NULL DEFAULT '0',
  `livetid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `membernum` (`membernum`),
  KEY `dateline` (`dateline`),
  KEY `lastupdate` (`lastupdate`),
  KEY `activity` (`activity`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_forumfield` */

insert  into `pre_forum_forumfield`(`fid`,`description`,`password`,`icon`,`redirect`,`attachextensions`,`creditspolicy`,`formulaperm`,`moderators`,`rules`,`threadtypes`,`threadsorts`,`viewperm`,`postperm`,`replyperm`,`getattachperm`,`postattachperm`,`postimageperm`,`spviewperm`,`seotitle`,`keywords`,`seodescription`,`supe_pushsetting`,`modrecommend`,`threadplugin`,`replybg`,`extra`,`jointype`,`gviewperm`,`membernum`,`dateline`,`lastupdate`,`activity`,`founderuid`,`foundername`,`banner`,`groupnum`,`commentitem`,`relatedgroup`,`picstyle`,`widthauto`,`noantitheft`,`noforumhidewater`,`noforumrecommend`,`livetid`,`price`) values (1,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(2,'','','','','','a:0:{}','a:5:{i:0;s:0:\"\";i:1;s:0:\"\";s:7:\"message\";s:0:\"\";s:5:\"medal\";N;s:5:\"users\";s:0:\"\";}','','','','','','','','','','','','','','','','a:8:{s:4:\"open\";s:1:\"0\";s:3:\"num\";i:10;s:8:\"imagenum\";i:0;s:10:\"imagewidth\";i:300;s:11:\"imageheight\";i:250;s:9:\"maxlength\";i:0;s:9:\"cachelife\";i:0;s:8:\"dateline\";i:0;}','N;','','a:2:{s:9:\"namecolor\";s:0:\"\";s:9:\"iconwidth\";s:0:\"\";}',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(3,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(4,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(5,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(6,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(7,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(8,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(9,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(10,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(11,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(12,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(13,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(14,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(15,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(16,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(17,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(18,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(19,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(20,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(21,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(22,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(23,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(24,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(25,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(26,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(27,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(28,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(29,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(30,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(31,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(32,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(33,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(34,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0),(35,'','','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','',0,'','',0,0,0,0,0,0,0);

/*Table structure for table `pre_forum_forumrecommend` */

DROP TABLE IF EXISTS `pre_forum_forumrecommend`;

CREATE TABLE `pre_forum_forumrecommend` (
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL,
  `typeid` smallint(6) NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `subject` char(80) NOT NULL,
  `author` char(15) NOT NULL,
  `authorid` mediumint(8) NOT NULL,
  `moderatorid` mediumint(8) NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '0',
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `displayorder` (`fid`,`displayorder`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_forumrecommend` */

/*Table structure for table `pre_forum_groupcreditslog` */

DROP TABLE IF EXISTS `pre_forum_groupcreditslog`;

CREATE TABLE `pre_forum_groupcreditslog` (
  `fid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `logdate` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`uid`,`logdate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_groupcreditslog` */

/*Table structure for table `pre_forum_groupfield` */

DROP TABLE IF EXISTS `pre_forum_groupfield`;

CREATE TABLE `pre_forum_groupfield` (
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `privacy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  UNIQUE KEY `types` (`fid`,`type`),
  KEY `fid` (`fid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_groupfield` */

/*Table structure for table `pre_forum_groupinvite` */

DROP TABLE IF EXISTS `pre_forum_groupinvite`;

CREATE TABLE `pre_forum_groupinvite` (
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `inviteuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ids` (`fid`,`inviteuid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_groupinvite` */

/*Table structure for table `pre_forum_grouplevel` */

DROP TABLE IF EXISTS `pre_forum_grouplevel`;

CREATE TABLE `pre_forum_grouplevel` (
  `levelid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('special','default') NOT NULL DEFAULT 'default',
  `leveltitle` varchar(255) NOT NULL DEFAULT '',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `creditspolicy` text NOT NULL,
  `postpolicy` text NOT NULL,
  `specialswitch` text NOT NULL,
  PRIMARY KEY (`levelid`),
  KEY `creditsrange` (`creditshigher`,`creditslower`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_grouplevel` */

insert  into `pre_forum_grouplevel`(`levelid`,`type`,`leveltitle`,`creditshigher`,`creditslower`,`icon`,`creditspolicy`,`postpolicy`,`specialswitch`) values (1,'default','普通级',-999999999,500,'','a:1:{s:4:\"post\";s:1:\"1\";s:5:\"reply\";s:1:\"1\";}','a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";i:0;s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";i:0;s:6:\"jammer\";i:0;s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:7:\"jpg,gif\";}','a:5:{s:15:\"allowchangename\";s:1:\"1\";s:15:\"allowchangetype\";s:1:\"1\";s:15:\"allowclosegroup\";s:1:\"1\";s:15:\"allowthreadtype\";s:1:\"1\";s:13:\"membermaximum\";s:0:\"\";}'),(2,'default','中级',500,3000,'','a:2:{s:4:\"post\";s:1:\"1\";s:5:\"reply\";s:1:\"1\";}','a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";i:0;s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";i:0;s:6:\"jammer\";i:0;s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:11:\"jpg,gif,rar\";}',''),(3,'default','高级',3000,999999999,'','a:2:{s:4:\"post\";s:1:\"1\";s:5:\"reply\";s:1:\"1\";}','a:11:{s:13:\"alloweditpost\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:6:\"jammer\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowmediacode\";s:1:\"1\";s:16:\"allowpostspecial\";i:31;s:16:\"attachextensions\";s:31:\"jpg,gif,png,bmp,rar,doc,txt,zip\";}','');

/*Table structure for table `pre_forum_groupuser` */

DROP TABLE IF EXISTS `pre_forum_groupuser`;

CREATE TABLE `pre_forum_groupuser` (
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `joindateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `privacy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`uid`),
  KEY `uid_lastupdate` (`uid`,`lastupdate`),
  KEY `userlist` (`fid`,`level`,`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_groupuser` */

/*Table structure for table `pre_forum_hotreply_member` */

DROP TABLE IF EXISTS `pre_forum_hotreply_member`;

CREATE TABLE `pre_forum_hotreply_member` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attitude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_hotreply_member` */

/*Table structure for table `pre_forum_hotreply_number` */

DROP TABLE IF EXISTS `pre_forum_hotreply_number`;

CREATE TABLE `pre_forum_hotreply_number` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `support` smallint(6) unsigned NOT NULL DEFAULT '0',
  `against` smallint(6) unsigned NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`,`total`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_hotreply_number` */

/*Table structure for table `pre_forum_imagetype` */

DROP TABLE IF EXISTS `pre_forum_imagetype`;

CREATE TABLE `pre_forum_imagetype` (
  `typeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `name` char(20) NOT NULL,
  `type` enum('smiley','icon','avatar') NOT NULL DEFAULT 'smiley',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `directory` char(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_imagetype` */

insert  into `pre_forum_imagetype`(`typeid`,`available`,`name`,`type`,`displayorder`,`directory`) values (1,1,'默认','smiley',1,'default'),(2,1,'酷猴','smiley',2,'coolmonkey'),(3,1,'呆呆男','smiley',3,'grapeman');

/*Table structure for table `pre_forum_medal` */

DROP TABLE IF EXISTS `pre_forum_medal`;

CREATE TABLE `pre_forum_medal` (
  `medalid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `expiration` smallint(6) unsigned NOT NULL DEFAULT '0',
  `permission` mediumtext NOT NULL,
  `credit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`medalid`),
  KEY `displayorder` (`displayorder`),
  KEY `available` (`available`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_medal` */

insert  into `pre_forum_medal`(`medalid`,`name`,`available`,`image`,`type`,`displayorder`,`description`,`expiration`,`permission`,`credit`,`price`) values (1,'最佳新人',0,'medal1.gif',0,0,'注册账号后积极发帖的会员',0,'',0,0),(2,'活跃会员',0,'medal2.gif',0,0,'经常参与各类话题的讨论，发帖内容较有主见',0,'',0,0),(3,'热心会员',0,'medal3.gif',0,0,'经常帮助其他会员答疑',0,'',0,0),(4,'推广达人',0,'medal4.gif',0,0,'积极宣传本站，为本站带来更多注册会员',0,'',0,0),(5,'宣传达人',0,'medal5.gif',0,0,'积极宣传本站，为本站带来更多的用户访问量',0,'',0,0),(6,'灌水之王',0,'medal6.gif',0,0,'经常在论坛发帖，且发帖量较大',0,'',0,0),(7,'突出贡献',0,'medal7.gif',0,0,'长期对论坛的繁荣而不断努力，或多次提出建设性意见',0,'',0,0),(8,'优秀版主',0,'medal8.gif',0,0,'活跃且尽责职守的版主',0,'',0,0),(9,'荣誉管理',0,'medal9.gif',0,0,'曾经为论坛做出突出贡献目前已离职的版主',0,'',0,0),(10,'论坛元老',0,'medal10.gif',0,0,'为论坛做出突出贡献的会员',0,'',0,0);

/*Table structure for table `pre_forum_medallog` */

DROP TABLE IF EXISTS `pre_forum_medallog`;

CREATE TABLE `pre_forum_medallog` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `medalid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`,`expiration`),
  KEY `uid` (`uid`,`medalid`,`type`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_medallog` */

/*Table structure for table `pre_forum_memberrecommend` */

DROP TABLE IF EXISTS `pre_forum_memberrecommend`;

CREATE TABLE `pre_forum_memberrecommend` (
  `tid` mediumint(8) unsigned NOT NULL,
  `recommenduid` mediumint(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  KEY `tid` (`tid`),
  KEY `uid` (`recommenduid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_memberrecommend` */

/*Table structure for table `pre_forum_moderator` */

DROP TABLE IF EXISTS `pre_forum_moderator`;

CREATE TABLE `pre_forum_moderator` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `inherited` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_moderator` */

/*Table structure for table `pre_forum_modwork` */

DROP TABLE IF EXISTS `pre_forum_modwork`;

CREATE TABLE `pre_forum_modwork` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modaction` char(3) NOT NULL DEFAULT '',
  `dateline` date NOT NULL DEFAULT '2006-01-01',
  `count` smallint(6) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_modwork` */

/*Table structure for table `pre_forum_newthread` */

DROP TABLE IF EXISTS `pre_forum_newthread`;

CREATE TABLE `pre_forum_newthread` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `fid` (`fid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_newthread` */

/*Table structure for table `pre_forum_onlinelist` */

DROP TABLE IF EXISTS `pre_forum_onlinelist`;

CREATE TABLE `pre_forum_onlinelist` (
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_onlinelist` */

insert  into `pre_forum_onlinelist`(`groupid`,`displayorder`,`title`,`url`) values (1,1,'管理员','online_admin.gif'),(2,2,'超级版主','online_supermod.gif'),(3,3,'版主','online_moderator.gif'),(0,4,'会员','online_member.gif');

/*Table structure for table `pre_forum_order` */

DROP TABLE IF EXISTS `pre_forum_order`;

CREATE TABLE `pre_forum_order` (
  `orderid` char(32) NOT NULL DEFAULT '',
  `status` char(3) NOT NULL DEFAULT '',
  `buyer` char(50) NOT NULL DEFAULT '',
  `admin` char(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `price` float(7,2) unsigned NOT NULL DEFAULT '0.00',
  `submitdate` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmdate` int(10) unsigned NOT NULL DEFAULT '0',
  `email` char(40) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  UNIQUE KEY `orderid` (`orderid`),
  KEY `submitdate` (`submitdate`),
  KEY `uid` (`uid`,`submitdate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_order` */

/*Table structure for table `pre_forum_poll` */

DROP TABLE IF EXISTS `pre_forum_poll`;

CREATE TABLE `pre_forum_poll` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `overt` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `maxchoices` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `pollpreview` varchar(255) NOT NULL DEFAULT '',
  `voters` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_poll` */

/*Table structure for table `pre_forum_polloption` */

DROP TABLE IF EXISTS `pre_forum_polloption`;

CREATE TABLE `pre_forum_polloption` (
  `polloptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `votes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `polloption` varchar(80) NOT NULL DEFAULT '',
  `voterids` mediumtext NOT NULL,
  PRIMARY KEY (`polloptionid`),
  KEY `tid` (`tid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_polloption` */

/*Table structure for table `pre_forum_polloption_image` */

DROP TABLE IF EXISTS `pre_forum_polloption_image`;

CREATE TABLE `pre_forum_polloption_image` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `poid` (`poid`),
  KEY `tid` (`tid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_polloption_image` */

/*Table structure for table `pre_forum_pollvoter` */

DROP TABLE IF EXISTS `pre_forum_pollvoter`;

CREATE TABLE `pre_forum_pollvoter` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tid` (`tid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_pollvoter` */

/*Table structure for table `pre_forum_post` */

DROP TABLE IF EXISTS `pre_forum_post`;

CREATE TABLE `pre_forum_post` (
  `pid` int(10) unsigned NOT NULL,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `first` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` mediumtext NOT NULL,
  `useip` varchar(15) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `usesig` tinyint(1) NOT NULL DEFAULT '0',
  `htmlon` tinyint(1) NOT NULL DEFAULT '0',
  `bbcodeoff` tinyint(1) NOT NULL DEFAULT '0',
  `smileyoff` tinyint(1) NOT NULL DEFAULT '0',
  `parseurloff` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `rate` smallint(6) NOT NULL DEFAULT '0',
  `ratetimes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '0',
  `comment` tinyint(1) NOT NULL DEFAULT '0',
  `replycredit` int(10) NOT NULL DEFAULT '0',
  `position` int(8) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tid`,`position`),
  UNIQUE KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `authorid` (`authorid`,`invisible`),
  KEY `dateline` (`dateline`),
  KEY `invisible` (`invisible`),
  KEY `displayorder` (`tid`,`invisible`,`dateline`),
  KEY `first` (`tid`,`first`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_post` */

insert  into `pre_forum_post`(`pid`,`fid`,`tid`,`first`,`author`,`authorid`,`subject`,`dateline`,`message`,`useip`,`port`,`invisible`,`anonymous`,`usesig`,`htmlon`,`bbcodeoff`,`smileyoff`,`parseurloff`,`attachment`,`rate`,`ratetimes`,`status`,`tags`,`comment`,`replycredit`,`position`) values (1,2,1,1,'admin',1,'今天的天气怎么样',1605604032,'还可以吧，明天过来旅行@~','127.0.0.1',51404,0,0,0,0,-1,-1,0,2,0,0,648,'',0,0,1),(2,2,2,1,'admin',1,'好天气！',1605681779,'快来啊，这里有毒。\r\n','127.0.0.1',59890,0,0,1,0,-1,-1,0,0,0,0,0,'',0,0,1),(3,2,3,1,'admin',1,'[][奔驰]1998便宜出售了',1607500030,'地地方官[attach]2[/attach]<div><b>123</b></div><div>[hide]<iframe  width=740 height=420 src=\"https://haokan.baidu.com/v?vid=3915810616622110584&amp;pd=pcshare\"></iframe>[/hide]</div>','',51398,0,0,1,1,0,-1,0,2,0,0,0,'0',0,0,1);

/*Table structure for table `pre_forum_post_location` */

DROP TABLE IF EXISTS `pre_forum_post_location`;

CREATE TABLE `pre_forum_post_location` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned DEFAULT '0',
  `uid` mediumint(8) unsigned DEFAULT '0',
  `mapx` varchar(255) NOT NULL,
  `mapy` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_post_location` */

/*Table structure for table `pre_forum_post_moderate` */

DROP TABLE IF EXISTS `pre_forum_post_moderate`;

CREATE TABLE `pre_forum_post_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_post_moderate` */

/*Table structure for table `pre_forum_post_tableid` */

DROP TABLE IF EXISTS `pre_forum_post_tableid`;

CREATE TABLE `pre_forum_post_tableid` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_post_tableid` */

insert  into `pre_forum_post_tableid`(`pid`) values (1),(2),(3);

/*Table structure for table `pre_forum_postcache` */

DROP TABLE IF EXISTS `pre_forum_postcache`;

CREATE TABLE `pre_forum_postcache` (
  `pid` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `rate` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_postcache` */

/*Table structure for table `pre_forum_postcomment` */

DROP TABLE IF EXISTS `pre_forum_postcomment`;

CREATE TABLE `pre_forum_postcomment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `score` tinyint(1) NOT NULL DEFAULT '0',
  `useip` varchar(15) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rpid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `authorid` (`authorid`),
  KEY `score` (`score`),
  KEY `rpid` (`rpid`),
  KEY `pid` (`pid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_postcomment` */

/*Table structure for table `pre_forum_postlog` */

DROP TABLE IF EXISTS `pre_forum_postlog`;

CREATE TABLE `pre_forum_postlog` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` char(10) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`,`tid`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_postlog` */

/*Table structure for table `pre_forum_poststick` */

DROP TABLE IF EXISTS `pre_forum_poststick`;

CREATE TABLE `pre_forum_poststick` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`,`pid`),
  KEY `dateline` (`tid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_poststick` */

/*Table structure for table `pre_forum_promotion` */

DROP TABLE IF EXISTS `pre_forum_promotion`;

CREATE TABLE `pre_forum_promotion` (
  `ip` char(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_promotion` */

/*Table structure for table `pre_forum_ratelog` */

DROP TABLE IF EXISTS `pre_forum_ratelog`;

CREATE TABLE `pre_forum_ratelog` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `extcredits` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `score` smallint(6) NOT NULL DEFAULT '0',
  `reason` char(40) NOT NULL DEFAULT '',
  KEY `pid` (`pid`,`dateline`),
  KEY `dateline` (`dateline`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_ratelog` */

/*Table structure for table `pre_forum_relatedthread` */

DROP TABLE IF EXISTS `pre_forum_relatedthread`;

CREATE TABLE `pre_forum_relatedthread` (
  `tid` mediumint(8) NOT NULL DEFAULT '0',
  `type` enum('general','trade') NOT NULL DEFAULT 'general',
  `expiration` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `relatedthreads` text NOT NULL,
  PRIMARY KEY (`tid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_relatedthread` */

/*Table structure for table `pre_forum_replycredit` */

DROP TABLE IF EXISTS `pre_forum_replycredit`;

CREATE TABLE `pre_forum_replycredit` (
  `tid` mediumint(6) unsigned NOT NULL,
  `extcredits` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `extcreditstype` tinyint(1) NOT NULL DEFAULT '0',
  `times` smallint(6) unsigned NOT NULL DEFAULT '0',
  `membertimes` smallint(6) unsigned NOT NULL DEFAULT '0',
  `random` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_replycredit` */

/*Table structure for table `pre_forum_rsscache` */

DROP TABLE IF EXISTS `pre_forum_rsscache`;

CREATE TABLE `pre_forum_rsscache` (
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `forum` char(50) NOT NULL DEFAULT '',
  `author` char(15) NOT NULL DEFAULT '',
  `subject` char(80) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `guidetype` char(10) NOT NULL DEFAULT '',
  UNIQUE KEY `tid` (`tid`),
  KEY `fid` (`fid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_rsscache` */

/*Table structure for table `pre_forum_sofa` */

DROP TABLE IF EXISTS `pre_forum_sofa`;

CREATE TABLE `pre_forum_sofa` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `ftid` (`fid`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_sofa` */

insert  into `pre_forum_sofa`(`tid`,`fid`) values (1,2),(2,2);

/*Table structure for table `pre_forum_spacecache` */

DROP TABLE IF EXISTS `pre_forum_spacecache`;

CREATE TABLE `pre_forum_spacecache` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `variable` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_spacecache` */

/*Table structure for table `pre_forum_statlog` */

DROP TABLE IF EXISTS `pre_forum_statlog`;

CREATE TABLE `pre_forum_statlog` (
  `logdate` date NOT NULL,
  `fid` mediumint(8) unsigned NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logdate`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_statlog` */

insert  into `pre_forum_statlog`(`logdate`,`fid`,`type`,`value`) values ('2020-11-17',2,1,1),('2020-11-18',2,1,1),('2020-11-19',2,1,0),('2020-11-20',2,1,0),('2020-11-22',2,1,0),('2020-11-23',2,1,0),('2020-11-24',2,1,0),('2020-11-25',2,1,0),('2020-11-26',2,1,0),('2020-11-27',2,1,0),('2020-12-03',2,1,0),('2020-12-04',2,1,0),('2020-12-06',2,1,0),('2020-12-08',2,1,0),('2020-12-09',2,1,1),('2020-12-11',2,1,0),('2020-12-13',2,1,0),('2020-12-14',2,1,0),('2020-12-15',2,1,0),('2020-12-17',2,1,0),('2020-12-18',2,1,0),('2020-12-20',2,1,0);

/*Table structure for table `pre_forum_thread` */

DROP TABLE IF EXISTS `pre_forum_thread`;

CREATE TABLE `pre_forum_thread` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `posttableid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sortid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) NOT NULL DEFAULT '0',
  `author` char(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastposter` char(15) NOT NULL DEFAULT '',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(1) NOT NULL DEFAULT '0',
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `digest` tinyint(1) NOT NULL DEFAULT '0',
  `rate` tinyint(1) NOT NULL DEFAULT '0',
  `special` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `moderated` tinyint(1) NOT NULL DEFAULT '0',
  `closed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stickreply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommends` smallint(6) NOT NULL DEFAULT '0',
  `recommend_add` smallint(6) NOT NULL DEFAULT '0',
  `recommend_sub` smallint(6) NOT NULL DEFAULT '0',
  `heats` int(10) unsigned NOT NULL DEFAULT '0',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  `isgroup` tinyint(1) NOT NULL DEFAULT '0',
  `favtimes` mediumint(8) NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) NOT NULL DEFAULT '0',
  `stamp` tinyint(3) NOT NULL DEFAULT '-1',
  `icon` tinyint(3) NOT NULL DEFAULT '-1',
  `pushedaid` mediumint(8) NOT NULL DEFAULT '0',
  `cover` smallint(6) NOT NULL DEFAULT '0',
  `replycredit` smallint(6) NOT NULL DEFAULT '0',
  `relatebytag` char(255) NOT NULL DEFAULT '0',
  `maxposition` int(8) unsigned NOT NULL DEFAULT '0',
  `bgcolor` char(8) NOT NULL DEFAULT '',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `digest` (`digest`),
  KEY `sortid` (`sortid`),
  KEY `displayorder` (`fid`,`displayorder`,`lastpost`),
  KEY `typeid` (`fid`,`typeid`,`displayorder`,`lastpost`),
  KEY `recommends` (`recommends`),
  KEY `heats` (`heats`),
  KEY `authorid` (`authorid`),
  KEY `isgroup` (`isgroup`,`lastpost`),
  KEY `special` (`special`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_thread` */

insert  into `pre_forum_thread`(`tid`,`fid`,`posttableid`,`typeid`,`sortid`,`readperm`,`price`,`author`,`authorid`,`subject`,`dateline`,`lastpost`,`lastposter`,`views`,`replies`,`displayorder`,`highlight`,`digest`,`rate`,`special`,`attachment`,`moderated`,`closed`,`stickreply`,`recommends`,`recommend_add`,`recommend_sub`,`heats`,`status`,`isgroup`,`favtimes`,`sharetimes`,`stamp`,`icon`,`pushedaid`,`cover`,`replycredit`,`relatebytag`,`maxposition`,`bgcolor`,`comments`,`hidden`) values (1,2,0,0,0,0,0,'admin',1,'今天的天气怎么样',1605604032,1605604032,'admin',4,0,0,0,0,0,0,2,0,0,0,0,0,0,0,3104,0,0,0,-1,20,0,0,0,'0',1,'',0,0),(2,2,0,0,0,0,0,'admin',1,'好天气！',1605681779,1605681779,'admin',2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,-1,-1,0,0,0,'0',1,'',0,0),(3,2,0,0,0,0,0,'admin',1,'[][奔驰]1998便宜出售了',1607500030,1607500030,'admin',8,0,0,0,0,0,0,2,0,0,0,0,0,0,0,32,0,0,0,-1,-1,0,0,0,'0',1,'',0,0);

/*Table structure for table `pre_forum_thread_moderate` */

DROP TABLE IF EXISTS `pre_forum_thread_moderate`;

CREATE TABLE `pre_forum_thread_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_thread_moderate` */

/*Table structure for table `pre_forum_threadaddviews` */

DROP TABLE IF EXISTS `pre_forum_threadaddviews`;

CREATE TABLE `pre_forum_threadaddviews` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addviews` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadaddviews` */

/*Table structure for table `pre_forum_threadcalendar` */

DROP TABLE IF EXISTS `pre_forum_threadcalendar`;

CREATE TABLE `pre_forum_threadcalendar` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `hotnum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `fid` (`fid`,`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadcalendar` */

insert  into `pre_forum_threadcalendar`(`cid`,`fid`,`dateline`,`hotnum`) values (1,2,20201117,1),(2,2,20201118,1),(3,2,20201209,1);

/*Table structure for table `pre_forum_threadclass` */

DROP TABLE IF EXISTS `pre_forum_threadclass`;

CREATE TABLE `pre_forum_threadclass` (
  `typeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayorder` mediumint(9) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `moderators` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `fid` (`fid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadclass` */

/*Table structure for table `pre_forum_threadclosed` */

DROP TABLE IF EXISTS `pre_forum_threadclosed`;

CREATE TABLE `pre_forum_threadclosed` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `redirect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadclosed` */

/*Table structure for table `pre_forum_threaddisablepos` */

DROP TABLE IF EXISTS `pre_forum_threaddisablepos`;

CREATE TABLE `pre_forum_threaddisablepos` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threaddisablepos` */

/*Table structure for table `pre_forum_threadhidelog` */

DROP TABLE IF EXISTS `pre_forum_threadhidelog`;

CREATE TABLE `pre_forum_threadhidelog` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `uid` (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadhidelog` */

/*Table structure for table `pre_forum_threadhot` */

DROP TABLE IF EXISTS `pre_forum_threadhot`;

CREATE TABLE `pre_forum_threadhot` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`,`tid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadhot` */

insert  into `pre_forum_threadhot`(`cid`,`fid`,`tid`) values (1,2,1),(2,2,2),(3,2,3);

/*Table structure for table `pre_forum_threadimage` */

DROP TABLE IF EXISTS `pre_forum_threadimage`;

CREATE TABLE `pre_forum_threadimage` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadimage` */

insert  into `pre_forum_threadimage`(`tid`,`attachment`,`remote`) values (1,'202011/17/170647zo9z76nx94zae4oo.jpg',0),(3,'202012/16/112725ijjzi5or771o1odj.jpg',0);

/*Table structure for table `pre_forum_threadlog` */

DROP TABLE IF EXISTS `pre_forum_threadlog`;

CREATE TABLE `pre_forum_threadlog` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `otherid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `action` char(10) NOT NULL,
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`fid`,`uid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadlog` */

/*Table structure for table `pre_forum_threadmod` */

DROP TABLE IF EXISTS `pre_forum_threadmod`;

CREATE TABLE `pre_forum_threadmod` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `action` char(5) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL,
  `stamp` tinyint(3) NOT NULL,
  `reason` char(40) NOT NULL DEFAULT '',
  KEY `tid` (`tid`,`dateline`),
  KEY `expiration` (`expiration`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadmod` */

insert  into `pre_forum_threadmod`(`tid`,`uid`,`username`,`dateline`,`expiration`,`action`,`status`,`magicid`,`stamp`,`reason`) values (3,1,'admin',1607500030,1607586430,'EHL',0,0,0,''),(3,1,'admin',1607500030,0,'CLS',1,0,0,''),(3,0,'0',1607586720,0,'UEH',1,0,0,'');

/*Table structure for table `pre_forum_threadpartake` */

DROP TABLE IF EXISTS `pre_forum_threadpartake`;

CREATE TABLE `pre_forum_threadpartake` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tid` (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadpartake` */

/*Table structure for table `pre_forum_threadpreview` */

DROP TABLE IF EXISTS `pre_forum_threadpreview`;

CREATE TABLE `pre_forum_threadpreview` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `relay` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadpreview` */

insert  into `pre_forum_threadpreview`(`tid`,`relay`,`content`) values (3,0,'<div class=\"flw_image flw_image_1\"><ul><li><img id=\"aimg_Ks2x22\" src=\"data/attachment/forum/202012/16/112725ijjzi5or771o1odj.jpg\" border=\"0\" alt=\"1.jpg\" onclick=\"changefeed(3, 3, 1, this)\" style=\"cursor: pointer;\" /></li></ul></div>地地方官123');

/*Table structure for table `pre_forum_threadprofile` */

DROP TABLE IF EXISTS `pre_forum_threadprofile`;

CREATE TABLE `pre_forum_threadprofile` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `global` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `global` (`global`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadprofile` */

insert  into `pre_forum_threadprofile`(`id`,`name`,`template`,`global`) values (1,'默认方案','a:2:{s:4:\"left\";s:399:\"{numbercard}\r\n{groupicon}<p>{*}</p>{/groupicon}\r\n{authortitle}<p><em>{*}</em></p>{/authortitle}\r\n{customstatus}<p class=\"xg1\">{*}</p>{/customstatus}\r\n{star}<p>{*}</p>{/star}\r\n{upgradeprogress}<p>{*}</p>{/upgradeprogress}\r\n<dl class=\"pil cl\">\r\n	<dt>{baseinfo=credits,1}</dt><dd>{baseinfo=credits,0}</dd>\r\n</dl>\r\n{medal}<p class=\"md_ctrl\">{*}</p>{/medal}\r\n<dl class=\"pil cl\">{baseinfo=field_qq,0}</dl>\";s:3:\"top\";s:82:\"<dl class=\"cl\">\r\n<dt>{baseinfo=credits,1}</dt><dd>{baseinfo=credits,0}</dd>\r\n</dl>\";}',1);

/*Table structure for table `pre_forum_threadprofile_group` */

DROP TABLE IF EXISTS `pre_forum_threadprofile_group`;

CREATE TABLE `pre_forum_threadprofile_group` (
  `gid` mediumint(8) NOT NULL,
  `tpid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadprofile_group` */

/*Table structure for table `pre_forum_threadrush` */

DROP TABLE IF EXISTS `pre_forum_threadrush`;

CREATE TABLE `pre_forum_threadrush` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stopfloor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `starttimefrom` int(10) unsigned NOT NULL DEFAULT '0',
  `starttimeto` int(10) unsigned NOT NULL DEFAULT '0',
  `rewardfloor` text NOT NULL,
  `creditlimit` int(10) NOT NULL DEFAULT '-996',
  `replylimit` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadrush` */

/*Table structure for table `pre_forum_threadtype` */

DROP TABLE IF EXISTS `pre_forum_threadtype`;

CREATE TABLE `pre_forum_threadtype` (
  `typeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `special` smallint(6) NOT NULL DEFAULT '0',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `expiration` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  `stemplate` text NOT NULL,
  `ptemplate` text NOT NULL,
  `btemplate` text NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_threadtype` */

/*Table structure for table `pre_forum_trade` */

DROP TABLE IF EXISTS `pre_forum_trade`;

CREATE TABLE `pre_forum_trade` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `typeid` smallint(6) unsigned NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` char(15) NOT NULL,
  `account` char(50) NOT NULL,
  `tenpayaccount` char(20) NOT NULL DEFAULT '',
  `subject` char(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` smallint(6) unsigned NOT NULL DEFAULT '1',
  `quality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locus` char(20) NOT NULL,
  `transport` tinyint(1) NOT NULL DEFAULT '0',
  `ordinaryfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `expressfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `emsfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbuyer` char(15) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `totalitems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tradesum` decimal(8,2) NOT NULL DEFAULT '0.00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `costprice` decimal(8,2) NOT NULL,
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `costcredit` int(10) unsigned NOT NULL DEFAULT '0',
  `credittradesum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`pid`),
  KEY `pid` (`pid`),
  KEY `sellerid` (`sellerid`),
  KEY `totalitems` (`totalitems`),
  KEY `tradesum` (`tradesum`),
  KEY `displayorder` (`tid`,`displayorder`),
  KEY `sellertrades` (`sellerid`,`tradesum`,`totalitems`),
  KEY `typeid` (`typeid`),
  KEY `credittradesum` (`credittradesum`),
  KEY `expiration` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_trade` */

/*Table structure for table `pre_forum_tradecomment` */

DROP TABLE IF EXISTS `pre_forum_tradecomment`;

CREATE TABLE `pre_forum_tradecomment` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `orderid` char(32) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `raterid` mediumint(8) unsigned NOT NULL,
  `rater` char(15) NOT NULL,
  `rateeid` mediumint(8) unsigned NOT NULL,
  `ratee` char(15) NOT NULL,
  `message` char(200) NOT NULL,
  `explanation` char(200) NOT NULL,
  `score` tinyint(1) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `raterid` (`raterid`,`type`,`dateline`),
  KEY `rateeid` (`rateeid`,`type`,`dateline`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_tradecomment` */

/*Table structure for table `pre_forum_tradelog` */

DROP TABLE IF EXISTS `pre_forum_tradelog`;

CREATE TABLE `pre_forum_tradelog` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `orderid` varchar(32) NOT NULL,
  `tradeno` varchar(32) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `quality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tax` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `locus` varchar(100) NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` varchar(15) NOT NULL,
  `selleraccount` varchar(50) NOT NULL,
  `tenpayaccount` varchar(20) NOT NULL DEFAULT '0',
  `buyerid` mediumint(8) unsigned NOT NULL,
  `buyer` varchar(15) NOT NULL,
  `buyercontact` varchar(50) NOT NULL,
  `buyercredits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buyermsg` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `buyername` varchar(50) NOT NULL,
  `buyerzip` varchar(10) NOT NULL,
  `buyerphone` varchar(20) NOT NULL,
  `buyermobile` varchar(20) NOT NULL,
  `transport` tinyint(1) NOT NULL DEFAULT '0',
  `transportfee` smallint(6) unsigned NOT NULL DEFAULT '0',
  `baseprice` decimal(8,2) NOT NULL,
  `discount` tinyint(1) NOT NULL DEFAULT '0',
  `ratestatus` tinyint(1) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `basecredit` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `orderid` (`orderid`),
  KEY `sellerid` (`sellerid`),
  KEY `buyerid` (`buyerid`),
  KEY `status` (`status`),
  KEY `buyerlog` (`buyerid`,`status`,`lastupdate`),
  KEY `sellerlog` (`sellerid`,`status`,`lastupdate`),
  KEY `tid` (`tid`,`pid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_tradelog` */

/*Table structure for table `pre_forum_typeoption` */

DROP TABLE IF EXISTS `pre_forum_typeoption`;

CREATE TABLE `pre_forum_typeoption` (
  `optionid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `expiration` tinyint(1) NOT NULL,
  `protect` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `unit` varchar(255) NOT NULL,
  `rules` mediumtext NOT NULL,
  `permprompt` mediumtext NOT NULL,
  PRIMARY KEY (`optionid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_typeoption` */

insert  into `pre_forum_typeoption`(`optionid`,`classid`,`displayorder`,`expiration`,`protect`,`title`,`description`,`identifier`,`type`,`unit`,`rules`,`permprompt`) values (1,0,0,0,'','分类A','','','','','',''),(2,0,0,0,'','分类B','','','','','',''),(3,0,0,0,'','分类C','','','','','',''),(4,0,0,0,'','分类D','','','','','',''),(5,0,0,0,'','分类E','','','','','',''),(6,0,0,0,'','分类F','','','','','','');

/*Table structure for table `pre_forum_typeoptionvar` */

DROP TABLE IF EXISTS `pre_forum_typeoptionvar`;

CREATE TABLE `pre_forum_typeoptionvar` (
  `sortid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `optionid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  KEY `sortid` (`sortid`),
  KEY `tid` (`tid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_typeoptionvar` */

/*Table structure for table `pre_forum_typevar` */

DROP TABLE IF EXISTS `pre_forum_typevar`;

CREATE TABLE `pre_forum_typevar` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `optionid` smallint(6) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `subjectshow` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `optionid` (`sortid`,`optionid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_typevar` */

/*Table structure for table `pre_forum_warning` */

DROP TABLE IF EXISTS `pre_forum_warning`;

CREATE TABLE `pre_forum_warning` (
  `wid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `operatorid` mediumint(8) unsigned NOT NULL,
  `operator` char(15) NOT NULL,
  `authorid` mediumint(8) unsigned NOT NULL,
  `author` char(15) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `reason` char(40) NOT NULL,
  PRIMARY KEY (`wid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `authorid` (`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_forum_warning` */

/*Table structure for table `pre_home_album` */

DROP TABLE IF EXISTS `pre_home_album`;

CREATE TABLE `pre_home_album` (
  `albumid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `albumname` varchar(50) NOT NULL DEFAULT '',
  `catid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `picnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `friend` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(10) NOT NULL DEFAULT '',
  `target_ids` text NOT NULL,
  `favtimes` mediumint(8) unsigned NOT NULL,
  `sharetimes` mediumint(8) unsigned NOT NULL,
  `depict` text NOT NULL,
  PRIMARY KEY (`albumid`),
  KEY `uid` (`uid`,`updatetime`),
  KEY `updatetime` (`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_album` */

/*Table structure for table `pre_home_album_category` */

DROP TABLE IF EXISTS `pre_home_album_category`;

CREATE TABLE `pre_home_album_category` (
  `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `upid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(255) NOT NULL DEFAULT '',
  `num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_album_category` */

/*Table structure for table `pre_home_appcreditlog` */

DROP TABLE IF EXISTS `pre_home_appcreditlog`;

CREATE TABLE `pre_home_appcreditlog` (
  `logid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appname` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `credit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `appid` (`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_appcreditlog` */

/*Table structure for table `pre_home_blacklist` */

DROP TABLE IF EXISTS `pre_home_blacklist`;

CREATE TABLE `pre_home_blacklist` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `buid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`buid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_blacklist` */

/*Table structure for table `pre_home_blog` */

DROP TABLE IF EXISTS `pre_home_blog`;

CREATE TABLE `pre_home_blog` (
  `blogid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `subject` char(80) NOT NULL DEFAULT '',
  `classid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `viewnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `replynum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `noreply` tinyint(1) NOT NULL DEFAULT '0',
  `friend` tinyint(1) NOT NULL DEFAULT '0',
  `password` char(10) NOT NULL DEFAULT '',
  `favtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `click1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click6` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click7` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click8` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `hot` (`hot`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_blog` */

/*Table structure for table `pre_home_blog_category` */

DROP TABLE IF EXISTS `pre_home_blog_category`;

CREATE TABLE `pre_home_blog_category` (
  `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `upid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(255) NOT NULL DEFAULT '',
  `num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_blog_category` */

/*Table structure for table `pre_home_blog_moderate` */

DROP TABLE IF EXISTS `pre_home_blog_moderate`;

CREATE TABLE `pre_home_blog_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_blog_moderate` */

/*Table structure for table `pre_home_blogfield` */

DROP TABLE IF EXISTS `pre_home_blogfield`;

CREATE TABLE `pre_home_blogfield` (
  `blogid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `postip` varchar(255) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `related` text NOT NULL,
  `relatedtime` int(10) unsigned NOT NULL DEFAULT '0',
  `target_ids` text NOT NULL,
  `hotuser` text NOT NULL,
  `magiccolor` tinyint(6) NOT NULL DEFAULT '0',
  `magicpaper` tinyint(6) NOT NULL DEFAULT '0',
  `pushedaid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_blogfield` */

/*Table structure for table `pre_home_class` */

DROP TABLE IF EXISTS `pre_home_class`;

CREATE TABLE `pre_home_class` (
  `classid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(40) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_class` */

/*Table structure for table `pre_home_click` */

DROP TABLE IF EXISTS `pre_home_click`;

CREATE TABLE `pre_home_click` (
  `clickid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '',
  `icon` char(100) NOT NULL DEFAULT '',
  `idtype` char(15) NOT NULL DEFAULT '',
  `available` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`clickid`),
  KEY `idtype` (`idtype`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_click` */

insert  into `pre_home_click`(`clickid`,`name`,`icon`,`idtype`,`available`,`displayorder`) values (1,'路过','luguo.gif','blogid',1,0),(2,'雷人','leiren.gif','blogid',1,0),(3,'握手','woshou.gif','blogid',1,0),(4,'鲜花','xianhua.gif','blogid',1,0),(5,'鸡蛋','jidan.gif','blogid',1,0),(6,'漂亮','piaoliang.gif','picid',1,0),(7,'酷毙','kubi.gif','picid',1,0),(8,'雷人','leiren.gif','picid',1,0),(9,'鲜花','xianhua.gif','picid',1,0),(10,'鸡蛋','jidan.gif','picid',1,0),(11,'路过','luguo.gif','aid',1,0),(12,'雷人','leiren.gif','aid',1,0),(13,'握手','woshou.gif','aid',1,0),(14,'鲜花','xianhua.gif','aid',1,0),(15,'鸡蛋','jidan.gif','aid',1,0);

/*Table structure for table `pre_home_clickuser` */

DROP TABLE IF EXISTS `pre_home_clickuser`;

CREATE TABLE `pre_home_clickuser` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(15) NOT NULL DEFAULT '',
  `clickid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`,`idtype`,`dateline`),
  KEY `uid` (`uid`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_clickuser` */

/*Table structure for table `pre_home_comment` */

DROP TABLE IF EXISTS `pre_home_comment`;

CREATE TABLE `pre_home_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(20) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `magicflicker` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `authorid` (`authorid`,`idtype`),
  KEY `id` (`id`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_comment` */

/*Table structure for table `pre_home_comment_moderate` */

DROP TABLE IF EXISTS `pre_home_comment_moderate`;

CREATE TABLE `pre_home_comment_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idtype` (`idtype`,`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_comment_moderate` */

/*Table structure for table `pre_home_docomment` */

DROP TABLE IF EXISTS `pre_home_docomment`;

CREATE TABLE `pre_home_docomment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upid` int(10) unsigned NOT NULL DEFAULT '0',
  `doid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `grade` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doid` (`doid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_docomment` */

/*Table structure for table `pre_home_doing` */

DROP TABLE IF EXISTS `pre_home_doing`;

CREATE TABLE `pre_home_doing` (
  `doid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `from` varchar(20) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `replynum` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_doing` */

/*Table structure for table `pre_home_doing_moderate` */

DROP TABLE IF EXISTS `pre_home_doing_moderate`;

CREATE TABLE `pre_home_doing_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_doing_moderate` */

/*Table structure for table `pre_home_favorite` */

DROP TABLE IF EXISTS `pre_home_favorite`;

CREATE TABLE `pre_home_favorite` (
  `favid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(255) NOT NULL DEFAULT '',
  `spaceuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`favid`),
  KEY `idtype` (`id`,`idtype`),
  KEY `uid` (`uid`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_favorite` */

/*Table structure for table `pre_home_feed` */

DROP TABLE IF EXISTS `pre_home_feed`;

CREATE TABLE `pre_home_feed` (
  `feedid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) NOT NULL DEFAULT '0',
  `hash_template` varchar(32) NOT NULL DEFAULT '',
  `hash_data` varchar(32) NOT NULL DEFAULT '',
  `title_template` text NOT NULL,
  `title_data` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image_1` varchar(255) NOT NULL DEFAULT '',
  `image_1_link` varchar(255) NOT NULL DEFAULT '',
  `image_2` varchar(255) NOT NULL DEFAULT '',
  `image_2_link` varchar(255) NOT NULL DEFAULT '',
  `image_3` varchar(255) NOT NULL DEFAULT '',
  `image_3_link` varchar(255) NOT NULL DEFAULT '',
  `image_4` varchar(255) NOT NULL DEFAULT '',
  `image_4_link` varchar(255) NOT NULL DEFAULT '',
  `target_ids` text NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(15) NOT NULL DEFAULT '',
  `hot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `dateline` (`dateline`),
  KEY `hot` (`hot`),
  KEY `id` (`id`,`idtype`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_feed` */

/*Table structure for table `pre_home_feed_app` */

DROP TABLE IF EXISTS `pre_home_feed_app`;

CREATE TABLE `pre_home_feed_app` (
  `feedid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) NOT NULL DEFAULT '0',
  `hash_template` varchar(32) NOT NULL DEFAULT '',
  `hash_data` varchar(32) NOT NULL DEFAULT '',
  `title_template` text NOT NULL,
  `title_data` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image_1` varchar(255) NOT NULL DEFAULT '',
  `image_1_link` varchar(255) NOT NULL DEFAULT '',
  `image_2` varchar(255) NOT NULL DEFAULT '',
  `image_2_link` varchar(255) NOT NULL DEFAULT '',
  `image_3` varchar(255) NOT NULL DEFAULT '',
  `image_3_link` varchar(255) NOT NULL DEFAULT '',
  `image_4` varchar(255) NOT NULL DEFAULT '',
  `image_4_link` varchar(255) NOT NULL DEFAULT '',
  `target_ids` text NOT NULL,
  PRIMARY KEY (`feedid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_feed_app` */

/*Table structure for table `pre_home_follow` */

DROP TABLE IF EXISTS `pre_home_follow`;

CREATE TABLE `pre_home_follow` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `followuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fusername` char(15) NOT NULL DEFAULT '',
  `bkname` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mutual` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`followuid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_follow` */

/*Table structure for table `pre_home_follow_feed` */

DROP TABLE IF EXISTS `pre_home_follow_feed`;

CREATE TABLE `pre_home_follow_feed` (
  `feedid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_follow_feed` */

/*Table structure for table `pre_home_follow_feed_archiver` */

DROP TABLE IF EXISTS `pre_home_follow_feed_archiver`;

CREATE TABLE `pre_home_follow_feed_archiver` (
  `feedid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_follow_feed_archiver` */

insert  into `pre_home_follow_feed_archiver`(`feedid`,`uid`,`username`,`tid`,`note`,`dateline`) values (1,1,'admin',3,'',1607500030);

/*Table structure for table `pre_home_friend` */

DROP TABLE IF EXISTS `pre_home_friend`;

CREATE TABLE `pre_home_friend` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fusername` varchar(15) NOT NULL DEFAULT '',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`,`fuid`),
  KEY `fuid` (`fuid`),
  KEY `uid` (`uid`,`num`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_friend` */

/*Table structure for table `pre_home_friend_request` */

DROP TABLE IF EXISTS `pre_home_friend_request`;

CREATE TABLE `pre_home_friend_request` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fusername` char(15) NOT NULL DEFAULT '',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `note` char(60) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fuid`),
  KEY `fuid` (`fuid`),
  KEY `dateline` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_friend_request` */

/*Table structure for table `pre_home_friendlog` */

DROP TABLE IF EXISTS `pre_home_friendlog`;

CREATE TABLE `pre_home_friendlog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fuid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_friendlog` */

/*Table structure for table `pre_home_notification` */

DROP TABLE IF EXISTS `pre_home_notification`;

CREATE TABLE `pre_home_notification` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `from_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `from_idtype` varchar(20) NOT NULL DEFAULT '',
  `from_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`new`),
  KEY `category` (`uid`,`category`,`dateline`),
  KEY `by_type` (`uid`,`type`,`dateline`),
  KEY `from_id` (`from_id`,`from_idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_notification` */

insert  into `pre_home_notification`(`id`,`uid`,`type`,`new`,`authorid`,`author`,`note`,`dateline`,`from_id`,`from_idtype`,`from_num`,`category`) values (1,1,'system',1,2,'admin2','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;',1607139761,0,'',1,3),(2,1,'system',1,1,'admin','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;',1607496123,0,'',1,3),(3,1,'system',1,1,'admin','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;',1607496911,0,'',1,3),(4,1,'system',1,1,'admin','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;',1607496957,0,'',1,3),(5,1,'system',1,1,'admin','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;',1607497542,0,'',1,3);

/*Table structure for table `pre_home_pic` */

DROP TABLE IF EXISTS `pre_home_pic`;

CREATE TABLE `pre_home_pic` (
  `picid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `albumid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `postip` varchar(255) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `remote` tinyint(1) NOT NULL DEFAULT '0',
  `hot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click6` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click7` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click8` smallint(6) unsigned NOT NULL DEFAULT '0',
  `magicframe` tinyint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `uid` (`uid`),
  KEY `albumid` (`albumid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_pic` */

/*Table structure for table `pre_home_pic_moderate` */

DROP TABLE IF EXISTS `pre_home_pic_moderate`;

CREATE TABLE `pre_home_pic_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_pic_moderate` */

/*Table structure for table `pre_home_picfield` */

DROP TABLE IF EXISTS `pre_home_picfield`;

CREATE TABLE `pre_home_picfield` (
  `picid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hotuser` text NOT NULL,
  PRIMARY KEY (`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_picfield` */

/*Table structure for table `pre_home_poke` */

DROP TABLE IF EXISTS `pre_home_poke`;

CREATE TABLE `pre_home_poke` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fromusername` varchar(15) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `iconid` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fromuid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_poke` */

/*Table structure for table `pre_home_pokearchive` */

DROP TABLE IF EXISTS `pre_home_pokearchive`;

CREATE TABLE `pre_home_pokearchive` (
  `pid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pokeuid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `iconid` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `pokeuid` (`pokeuid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_pokearchive` */

/*Table structure for table `pre_home_share` */

DROP TABLE IF EXISTS `pre_home_share`;

CREATE TABLE `pre_home_share` (
  `sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` mediumint(8) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `title_template` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_link` varchar(255) NOT NULL DEFAULT '',
  `hot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hotuser` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `uid` (`uid`,`dateline`),
  KEY `hot` (`hot`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_share` */

/*Table structure for table `pre_home_share_moderate` */

DROP TABLE IF EXISTS `pre_home_share_moderate`;

CREATE TABLE `pre_home_share_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_share_moderate` */

/*Table structure for table `pre_home_show` */

DROP TABLE IF EXISTS `pre_home_show`;

CREATE TABLE `pre_home_show` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `unitprice` int(10) unsigned NOT NULL DEFAULT '1',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `unitprice` (`unitprice`),
  KEY `credit` (`credit`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_show` */

/*Table structure for table `pre_home_specialuser` */

DROP TABLE IF EXISTS `pre_home_specialuser`;

CREATE TABLE `pre_home_specialuser` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `opuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opusername` varchar(15) NOT NULL DEFAULT '',
  `displayorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`status`),
  KEY `displayorder` (`status`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_specialuser` */

/*Table structure for table `pre_home_userapp` */

DROP TABLE IF EXISTS `pre_home_userapp`;

CREATE TABLE `pre_home_userapp` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appname` varchar(60) NOT NULL DEFAULT '',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `allowsidenav` tinyint(1) NOT NULL DEFAULT '0',
  `allowfeed` tinyint(1) NOT NULL DEFAULT '0',
  `allowprofilelink` tinyint(1) NOT NULL DEFAULT '0',
  `narrow` tinyint(1) NOT NULL DEFAULT '0',
  `menuorder` smallint(6) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`appid`),
  KEY `menuorder` (`uid`,`menuorder`),
  KEY `displayorder` (`uid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_userapp` */

/*Table structure for table `pre_home_userappfield` */

DROP TABLE IF EXISTS `pre_home_userappfield`;

CREATE TABLE `pre_home_userappfield` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `profilelink` text NOT NULL,
  `myml` text NOT NULL,
  KEY `uid` (`uid`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_userappfield` */

/*Table structure for table `pre_home_visitor` */

DROP TABLE IF EXISTS `pre_home_visitor`;

CREATE TABLE `pre_home_visitor` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vusername` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`vuid`),
  KEY `vuid` (`vuid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_home_visitor` */

/*Table structure for table `pre_mobile_setting` */

DROP TABLE IF EXISTS `pre_mobile_setting`;

CREATE TABLE `pre_mobile_setting` (
  `skey` varchar(255) NOT NULL DEFAULT '',
  `svalue` text NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_mobile_setting` */

insert  into `pre_mobile_setting`(`skey`,`svalue`) values ('extend_used','1'),('extend_lastupdate','1343182299');

/*Table structure for table `pre_mobile_wsq_threadlist` */

DROP TABLE IF EXISTS `pre_mobile_wsq_threadlist`;

CREATE TABLE `pre_mobile_wsq_threadlist` (
  `skey` int(10) unsigned NOT NULL,
  `svalue` text NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_mobile_wsq_threadlist` */

/*Table structure for table `pre_phonebind` */

DROP TABLE IF EXISTS `pre_phonebind`;

CREATE TABLE `pre_phonebind` (
  `uid` int(10) unsigned NOT NULL,
  `phone` char(32) DEFAULT '',
  `dateline` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_phonebind` */

/*Table structure for table `pre_portal_article_content` */

DROP TABLE IF EXISTS `pre_portal_article_content`;

CREATE TABLE `pre_portal_article_content` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `pageorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`aid`,`pageorder`),
  KEY `pageorder` (`pageorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_content` */

/*Table structure for table `pre_portal_article_count` */

DROP TABLE IF EXISTS `pre_portal_article_count`;

CREATE TABLE `pre_portal_article_count` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `viewnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `commentnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `favtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_count` */

/*Table structure for table `pre_portal_article_moderate` */

DROP TABLE IF EXISTS `pre_portal_article_moderate`;

CREATE TABLE `pre_portal_article_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_moderate` */

/*Table structure for table `pre_portal_article_related` */

DROP TABLE IF EXISTS `pre_portal_article_related`;

CREATE TABLE `pre_portal_article_related` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `raid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`raid`),
  KEY `aid` (`aid`,`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_related` */

/*Table structure for table `pre_portal_article_title` */

DROP TABLE IF EXISTS `pre_portal_article_title`;

CREATE TABLE `pre_portal_article_title` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `from` varchar(255) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `remote` tinyint(1) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(255) NOT NULL DEFAULT '',
  `contents` smallint(6) NOT NULL DEFAULT '0',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `owncomment` tinyint(1) NOT NULL DEFAULT '0',
  `click1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click6` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click7` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click8` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tag` tinyint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showinnernav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `preaid` mediumint(8) unsigned NOT NULL,
  `nextaid` mediumint(8) unsigned NOT NULL,
  `htmlmade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `htmlname` varchar(255) NOT NULL DEFAULT '',
  `htmldir` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_title` */

/*Table structure for table `pre_portal_article_trash` */

DROP TABLE IF EXISTS `pre_portal_article_trash`;

CREATE TABLE `pre_portal_article_trash` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_article_trash` */

/*Table structure for table `pre_portal_attachment` */

DROP TABLE IF EXISTS `pre_portal_attachment`;

CREATE TABLE `pre_portal_attachment` (
  `attachid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachid`),
  KEY `aid` (`aid`,`attachid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_attachment` */

/*Table structure for table `pre_portal_category` */

DROP TABLE IF EXISTS `pre_portal_category`;

CREATE TABLE `pre_portal_category` (
  `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `upid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(255) NOT NULL DEFAULT '',
  `articles` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '1',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `notinheritedarticle` tinyint(1) NOT NULL DEFAULT '0',
  `notinheritedblock` tinyint(1) NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `shownav` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `seotitle` text NOT NULL,
  `keyword` text NOT NULL,
  `primaltplname` varchar(255) NOT NULL DEFAULT '',
  `articleprimaltplname` varchar(255) NOT NULL DEFAULT '',
  `disallowpublish` tinyint(1) NOT NULL DEFAULT '0',
  `foldername` varchar(255) NOT NULL DEFAULT '',
  `notshowarticlesummay` varchar(255) NOT NULL DEFAULT '',
  `perpage` smallint(6) NOT NULL DEFAULT '0',
  `maxpages` smallint(6) NOT NULL DEFAULT '0',
  `noantitheft` tinyint(1) NOT NULL DEFAULT '0',
  `lastpublish` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_category` */

/*Table structure for table `pre_portal_category_permission` */

DROP TABLE IF EXISTS `pre_portal_category_permission`;

CREATE TABLE `pre_portal_category_permission` (
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowpublish` tinyint(1) NOT NULL DEFAULT '0',
  `allowmanage` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedcatid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_category_permission` */

/*Table structure for table `pre_portal_comment` */

DROP TABLE IF EXISTS `pre_portal_comment`;

CREATE TABLE `pre_portal_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(20) NOT NULL DEFAULT '',
  `postip` varchar(255) NOT NULL DEFAULT '',
  `port` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `idtype` (`id`,`idtype`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_comment` */

/*Table structure for table `pre_portal_comment_moderate` */

DROP TABLE IF EXISTS `pre_portal_comment_moderate`;

CREATE TABLE `pre_portal_comment_moderate` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idtype` (`idtype`,`status`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_comment_moderate` */

/*Table structure for table `pre_portal_rsscache` */

DROP TABLE IF EXISTS `pre_portal_rsscache`;

CREATE TABLE `pre_portal_rsscache` (
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `catname` char(50) NOT NULL DEFAULT '',
  `author` char(15) NOT NULL DEFAULT '',
  `subject` char(80) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  UNIQUE KEY `aid` (`aid`),
  KEY `catid` (`catid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_rsscache` */

/*Table structure for table `pre_portal_topic` */

DROP TABLE IF EXISTS `pre_portal_topic`;

CREATE TABLE `pre_portal_topic` (
  `topicid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `keyword` text NOT NULL,
  `cover` varchar(255) NOT NULL DEFAULT '',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `primaltplname` varchar(255) NOT NULL DEFAULT '',
  `useheader` tinyint(1) NOT NULL DEFAULT '0',
  `usefooter` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `viewnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `commentnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `htmlmade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `htmldir` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`topicid`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_topic` */

/*Table structure for table `pre_portal_topic_pic` */

DROP TABLE IF EXISTS `pre_portal_topic_pic`;

CREATE TABLE `pre_portal_topic_pic` (
  `picid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `remote` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_portal_topic_pic` */

/*Table structure for table `pre_qfmobile_verifycode` */

DROP TABLE IF EXISTS `pre_qfmobile_verifycode`;

CREATE TABLE `pre_qfmobile_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` char(12) DEFAULT '',
  `verifycode` char(7) DEFAULT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_qfmobile_verifycode` */

insert  into `pre_qfmobile_verifycode`(`id`,`phone`,`verifycode`,`ip`,`status`,`dateline`) values (1,'13974398571','887788','127.0.0.1',1,1607997342),(2,'13974398571','894652','127.0.0.1',1,1608004298);

/*Table structure for table `pre_qianfan_plugin` */

DROP TABLE IF EXISTS `pre_qianfan_plugin`;

CREATE TABLE `pre_qianfan_plugin` (
  `name` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

/*Data for the table `pre_qianfan_plugin` */

insert  into `pre_qianfan_plugin`(`name`,`value`,`time`) values ('config','{\"cloud_host\":\"https://xiangxi.qianfanapi.com\",\"cloud_secretkey\":\"59bdee8ef0993f36227e272c53dcd738\",\"cloud_reads\":\"12\",\"cloud_allow_notice\":\"1\",\"cloud_fids_push\":[],\"cloud_reply_notice\":\"0\",\"cloud_thread_replypush\":[],\"search_id\":null,\"thread_match\":null,\"qianfan_groupid\":null,\"search_sort\":0,\"open_image_auth\":0,\"search_user_type\":0,\"mobile_source\":\"2\",\"htmledit_uid\":[\"290007\"],\"app_pic\":\"http://pic.app.07430743.com\"}',1604049042);

/*Table structure for table `pre_security_evilpost` */

DROP TABLE IF EXISTS `pre_security_evilpost`;

CREATE TABLE `pre_security_evilpost` (
  `pid` int(10) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `evilcount` int(10) NOT NULL DEFAULT '0',
  `eviltype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isreported` tinyint(1) NOT NULL DEFAULT '0',
  `censorword` char(50) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `type` (`tid`,`type`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_security_evilpost` */

/*Table structure for table `pre_security_eviluser` */

DROP TABLE IF EXISTS `pre_security_eviluser`;

CREATE TABLE `pre_security_eviluser` (
  `uid` int(10) unsigned NOT NULL,
  `evilcount` int(10) NOT NULL DEFAULT '0',
  `eviltype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isreported` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_security_eviluser` */

/*Table structure for table `pre_security_failedlog` */

DROP TABLE IF EXISTS `pre_security_failedlog`;

CREATE TABLE `pre_security_failedlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reporttype` char(20) NOT NULL,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `failcount` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `delreason` char(255) NOT NULL,
  `scheduletime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastfailtime` int(10) unsigned NOT NULL DEFAULT '0',
  `extra1` int(10) unsigned NOT NULL,
  `extra2` char(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_security_failedlog` */

/*Table structure for table `pre_ucenter_admins` */

DROP TABLE IF EXISTS `pre_ucenter_admins`;

CREATE TABLE `pre_ucenter_admins` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL DEFAULT '',
  `allowadminsetting` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminapp` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminuser` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminbadword` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmintag` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminpm` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmincredits` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindomain` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminnote` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmincache` tinyint(1) NOT NULL DEFAULT '0',
  `allowadminlog` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_admins` */

insert  into `pre_ucenter_admins`(`uid`,`username`,`allowadminsetting`,`allowadminapp`,`allowadminuser`,`allowadminbadword`,`allowadmintag`,`allowadminpm`,`allowadmincredits`,`allowadmindomain`,`allowadmindb`,`allowadminnote`,`allowadmincache`,`allowadminlog`) values (1,'admin',1,1,1,1,1,1,1,1,1,1,1,1);

/*Table structure for table `pre_ucenter_applications` */

DROP TABLE IF EXISTS `pre_ucenter_applications`;

CREATE TABLE `pre_ucenter_applications` (
  `appid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `authkey` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `viewprourl` varchar(255) NOT NULL,
  `apifilename` varchar(30) NOT NULL DEFAULT 'uc.php',
  `charset` varchar(8) NOT NULL DEFAULT '',
  `dbcharset` varchar(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0',
  `recvnote` tinyint(1) DEFAULT '0',
  `extra` text NOT NULL,
  `tagtemplates` text NOT NULL,
  `allowips` text NOT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_applications` */

insert  into `pre_ucenter_applications`(`appid`,`type`,`name`,`url`,`authkey`,`ip`,`viewprourl`,`apifilename`,`charset`,`dbcharset`,`synlogin`,`recvnote`,`extra`,`tagtemplates`,`allowips`) values (1,'DISCUZX','Discuz! Board','http://discuz.cc','HdzerfV9Zex0w2sdKaqc62B6M1W1D4oaAab5y5fda7wdi1J6p3566eOdffcaadEd','','','uc.php','','',1,1,'','','');

/*Table structure for table `pre_ucenter_badwords` */

DROP TABLE IF EXISTS `pre_ucenter_badwords`;

CREATE TABLE `pre_ucenter_badwords` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `find` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  `findpattern` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `find` (`find`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_badwords` */

/*Table structure for table `pre_ucenter_domains` */

DROP TABLE IF EXISTS `pre_ucenter_domains`;

CREATE TABLE `pre_ucenter_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` char(40) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_domains` */

/*Table structure for table `pre_ucenter_failedlogins` */

DROP TABLE IF EXISTS `pre_ucenter_failedlogins`;

CREATE TABLE `pre_ucenter_failedlogins` (
  `ip` char(15) NOT NULL DEFAULT '',
  `count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_failedlogins` */

insert  into `pre_ucenter_failedlogins`(`ip`,`count`,`lastupdate`) values ('127.0.0.1',0,1608519739),('a0b923820dcc509',0,1608519739);

/*Table structure for table `pre_ucenter_feeds` */

DROP TABLE IF EXISTS `pre_ucenter_feeds`;

CREATE TABLE `pre_ucenter_feeds` (
  `feedid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(30) NOT NULL DEFAULT '',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `hash_template` varchar(32) NOT NULL DEFAULT '',
  `hash_data` varchar(32) NOT NULL DEFAULT '',
  `title_template` text NOT NULL,
  `title_data` text NOT NULL,
  `body_template` text NOT NULL,
  `body_data` text NOT NULL,
  `body_general` text NOT NULL,
  `image_1` varchar(255) NOT NULL DEFAULT '',
  `image_1_link` varchar(255) NOT NULL DEFAULT '',
  `image_2` varchar(255) NOT NULL DEFAULT '',
  `image_2_link` varchar(255) NOT NULL DEFAULT '',
  `image_3` varchar(255) NOT NULL DEFAULT '',
  `image_3_link` varchar(255) NOT NULL DEFAULT '',
  `image_4` varchar(255) NOT NULL DEFAULT '',
  `image_4_link` varchar(255) NOT NULL DEFAULT '',
  `target_ids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`feedid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_feeds` */

/*Table structure for table `pre_ucenter_friends` */

DROP TABLE IF EXISTS `pre_ucenter_friends`;

CREATE TABLE `pre_ucenter_friends` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friendid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `direction` tinyint(1) NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delstatus` tinyint(1) NOT NULL DEFAULT '0',
  `comment` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`version`),
  KEY `uid` (`uid`),
  KEY `friendid` (`friendid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_friends` */

/*Table structure for table `pre_ucenter_mailqueue` */

DROP TABLE IF EXISTS `pre_ucenter_mailqueue`;

CREATE TABLE `pre_ucenter_mailqueue` (
  `mailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tomail` varchar(32) NOT NULL,
  `frommail` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `charset` varchar(15) NOT NULL,
  `htmlon` tinyint(1) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `failures` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `appid` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mailid`),
  KEY `appid` (`appid`),
  KEY `level` (`level`,`failures`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_mailqueue` */

/*Table structure for table `pre_ucenter_memberfields` */

DROP TABLE IF EXISTS `pre_ucenter_memberfields`;

CREATE TABLE `pre_ucenter_memberfields` (
  `uid` mediumint(8) unsigned NOT NULL,
  `blacklist` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_memberfields` */

insert  into `pre_ucenter_memberfields`(`uid`,`blacklist`) values (1,''),(2,'');

/*Table structure for table `pre_ucenter_members` */

DROP TABLE IF EXISTS `pre_ucenter_members`;

CREATE TABLE `pre_ucenter_members` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `myid` char(30) NOT NULL DEFAULT '',
  `myidkey` char(16) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastloginip` int(10) NOT NULL DEFAULT '0',
  `lastlogintime` int(10) unsigned NOT NULL DEFAULT '0',
  `salt` char(6) NOT NULL,
  `secques` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_members` */

insert  into `pre_ucenter_members`(`uid`,`username`,`password`,`email`,`myid`,`myidkey`,`regip`,`regdate`,`lastloginip`,`lastlogintime`,`salt`,`secques`) values (1,'admin','912ef38f2de0b2308f032e942b446248','admin@admin.com','','','hidden',1605603291,0,0,'bc4313',''),(2,'admin2','8ae73d7994c96dee86ec399f62116a5e','admind@qq.com','','','127.0.0.1',1605941115,0,0,'b0d3ba','');

/*Table structure for table `pre_ucenter_mergemembers` */

DROP TABLE IF EXISTS `pre_ucenter_mergemembers`;

CREATE TABLE `pre_ucenter_mergemembers` (
  `appid` smallint(6) unsigned NOT NULL,
  `username` char(15) NOT NULL,
  PRIMARY KEY (`appid`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_mergemembers` */

/*Table structure for table `pre_ucenter_newpm` */

DROP TABLE IF EXISTS `pre_ucenter_newpm`;

CREATE TABLE `pre_ucenter_newpm` (
  `uid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_newpm` */

/*Table structure for table `pre_ucenter_notelist` */

DROP TABLE IF EXISTS `pre_ucenter_notelist`;

CREATE TABLE `pre_ucenter_notelist` (
  `noteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` char(32) NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `succeednum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `getdata` mediumtext NOT NULL,
  `postdata` mediumtext NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) NOT NULL DEFAULT '0',
  `app1` tinyint(4) NOT NULL,
  PRIMARY KEY (`noteid`),
  KEY `closed` (`closed`,`pri`,`noteid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_notelist` */

/*Table structure for table `pre_ucenter_pm_indexes` */

DROP TABLE IF EXISTS `pre_ucenter_pm_indexes`;

CREATE TABLE `pre_ucenter_pm_indexes` (
  `pmid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_indexes` */

/*Table structure for table `pre_ucenter_pm_lists` */

DROP TABLE IF EXISTS `pre_ucenter_pm_lists`;

CREATE TABLE `pre_ucenter_pm_lists` (
  `plid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pmtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL,
  `members` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_max` varchar(17) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmessage` text NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `pmtype` (`pmtype`),
  KEY `min_max` (`min_max`),
  KEY `authorid` (`authorid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_lists` */

/*Table structure for table `pre_ucenter_pm_members` */

DROP TABLE IF EXISTS `pre_ucenter_pm_members`;

CREATE TABLE `pre_ucenter_pm_members` (
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pmnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`plid`,`uid`),
  KEY `isnew` (`isnew`),
  KEY `lastdateline` (`uid`,`lastdateline`),
  KEY `lastupdate` (`uid`,`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_members` */

/*Table structure for table `pre_ucenter_pm_messages_0` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_0`;

CREATE TABLE `pre_ucenter_pm_messages_0` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_0` */

/*Table structure for table `pre_ucenter_pm_messages_1` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_1`;

CREATE TABLE `pre_ucenter_pm_messages_1` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_1` */

/*Table structure for table `pre_ucenter_pm_messages_2` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_2`;

CREATE TABLE `pre_ucenter_pm_messages_2` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_2` */

/*Table structure for table `pre_ucenter_pm_messages_3` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_3`;

CREATE TABLE `pre_ucenter_pm_messages_3` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_3` */

/*Table structure for table `pre_ucenter_pm_messages_4` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_4`;

CREATE TABLE `pre_ucenter_pm_messages_4` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_4` */

/*Table structure for table `pre_ucenter_pm_messages_5` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_5`;

CREATE TABLE `pre_ucenter_pm_messages_5` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_5` */

/*Table structure for table `pre_ucenter_pm_messages_6` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_6`;

CREATE TABLE `pre_ucenter_pm_messages_6` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_6` */

/*Table structure for table `pre_ucenter_pm_messages_7` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_7`;

CREATE TABLE `pre_ucenter_pm_messages_7` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_7` */

/*Table structure for table `pre_ucenter_pm_messages_8` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_8`;

CREATE TABLE `pre_ucenter_pm_messages_8` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_8` */

/*Table structure for table `pre_ucenter_pm_messages_9` */

DROP TABLE IF EXISTS `pre_ucenter_pm_messages_9`;

CREATE TABLE `pre_ucenter_pm_messages_9` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_pm_messages_9` */

/*Table structure for table `pre_ucenter_protectedmembers` */

DROP TABLE IF EXISTS `pre_ucenter_protectedmembers`;

CREATE TABLE `pre_ucenter_protectedmembers` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `appid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `admin` char(15) NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_protectedmembers` */

/*Table structure for table `pre_ucenter_settings` */

DROP TABLE IF EXISTS `pre_ucenter_settings`;

CREATE TABLE `pre_ucenter_settings` (
  `k` varchar(32) NOT NULL DEFAULT '',
  `v` text NOT NULL,
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_settings` */

insert  into `pre_ucenter_settings`(`k`,`v`) values ('accessemail',''),('censoremail',''),('censorusername',''),('dateformat','y-n-j'),('doublee','0'),('nextnotetime','0'),('timeoffset','28800'),('privatepmthreadlimit','25'),('chatpmthreadlimit','30'),('chatpmmemberlimit','35'),('pmfloodctrl','15'),('pmcenter','1'),('sendpmseccode','1'),('pmsendregdays','0'),('maildefault','username@21cn.com'),('mailsend','1'),('mailserver','smtp.21cn.com'),('mailport','25'),('mailauth','1'),('mailfrom','UCenter <username@21cn.com>'),('mailauth_username','username@21cn.com'),('mailauth_password','password'),('maildelimiter','0'),('mailusername','1'),('mailsilent','1'),('login_failedtime','5'),('version','1.6.0');

/*Table structure for table `pre_ucenter_sqlcache` */

DROP TABLE IF EXISTS `pre_ucenter_sqlcache`;

CREATE TABLE `pre_ucenter_sqlcache` (
  `sqlid` char(6) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL,
  `expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sqlid`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_sqlcache` */

/*Table structure for table `pre_ucenter_tags` */

DROP TABLE IF EXISTS `pre_ucenter_tags`;

CREATE TABLE `pre_ucenter_tags` (
  `tagname` char(20) NOT NULL,
  `appid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext,
  `expiration` int(10) unsigned NOT NULL,
  KEY `tagname` (`tagname`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_tags` */

/*Table structure for table `pre_ucenter_vars` */

DROP TABLE IF EXISTS `pre_ucenter_vars`;

CREATE TABLE `pre_ucenter_vars` (
  `name` char(32) NOT NULL DEFAULT '',
  `value` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

/*Data for the table `pre_ucenter_vars` */

/*Table structure for table `pre_violation` */

DROP TABLE IF EXISTS `pre_violation`;

CREATE TABLE `pre_violation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `business` varchar(255) NOT NULL COMMENT '商家',
  `displayorder` tinyint(4) unsigned NOT NULL COMMENT '显示顺序',
  `dateline` int(11) unsigned NOT NULL COMMENT '添加时间',
  `start_dateline` int(11) unsigned NOT NULL COMMENT '开始时间',
  `end_dateline` int(11) unsigned NOT NULL COMMENT '结束时间',
  `display` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `click` int(11) unsigned NOT NULL COMMENT '浏览量',
  `param` mediumtext NOT NULL COMMENT '虚拟化的各种字段',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Data for the table `pre_violation` */

insert  into `pre_violation`(`id`,`business`,`displayorder`,`dateline`,`start_dateline`,`end_dateline`,`display`,`click`,`param`) values (1,'我的汽车',0,1606469145,1606467180,1606726380,0,0,'a:7:{s:3:\"uid\";i:1;s:10:\"sharetitle\";s:5:\"在于 \";s:9:\"sharedesc\";s:6:\"大家好\";s:12:\"businessinfo\";s:12:\"大在于&nbsp;\";s:13:\"postercontent\";s:40:\"我在{AppName}抢到了{br}{em}{Money}{em}元\";s:4:\"logo\";s:61:\"source/plugin/violation/attachment/172545cw0oo2p3oj0no93w.jpg\";s:6:\"poster\";s:0:\"\";}'),(2,'nuipe',0,1606469798,1605692040,1606469640,0,0,'a:7:{s:3:\"uid\";i:3;s:10:\"sharetitle\";s:3:\"fff\";s:9:\"sharedesc\";s:4:\"ffff\";s:12:\"businessinfo\";s:399:\"<p>\r\n	ffff\r\n</p>\r\n<p>\r\n	<img src=\\\"/source/plugin/violation/static/kindeditor/attached/image/20201127/20201127173521_92000.jpg\\\" alt=\\\"\\\" />\r\n</p>\r\n<p>\r\n	<a class=\\\"ke-insertfile\\\" href=\\\"/source/plugin/violation/static/kindeditor/attached/file/20201127/20201127173503_65523.doc\\\" target=\\\"_blank\\\">/source/plugin/violation/static/kindeditor/attached/file/20201127/20201127173503_65523.doc</a>\r\n</p>\";s:13:\"postercontent\";s:40:\"我在{AppName}抢到了{br}{em}{Money}{em}元\";s:4:\"logo\";s:61:\"source/plugin/violation/attachment/173638qwglmum47kigz2qv.jpg\";s:6:\"poster\";s:0:\"\";}');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;