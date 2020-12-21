<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}

$sql = <<<EOF

CREATE TABLE IF NOT EXISTS `pre_fn_hb_share` (
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
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_fn_hb_share_list` (
  `aid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `money` decimal(11,2) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`,`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_fn_hb_share_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

EOF;

runquery($sql);

$finish = TRUE;
?>