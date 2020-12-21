<?php
/**
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/25
 * Time: 10:27
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

$sql = <<<EOF

    CREATE TABLE IF NOT EXISTS `pre_qfmobile_verifycode` (
      `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
      `phone` char(12) DEFAULT '',
      `verifycode` char(7) DEFAULT NULL,
      `ip` varchar(40) NOT NULL DEFAULT '',
      `status` tinyint(4) NOT NULL DEFAULT '0',
      `dateline` int(10) unsigned NOT NULL DEFAULT '0',
      PRIMARY KEY (`id`),
      KEY `idx_phone` (`phone`) USING BTREE
    ) ENGINE=MyISAM;

EOF;

runquery($sql);

$finish = TRUE;