<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}


$sql = <<<EOF

DROP TABLE IF EXISTS pre_fn_hb_share;
DROP TABLE IF EXISTS pre_fn_hb_share_list;
DROP TABLE IF EXISTS pre_fn_hb_share_log;

EOF;
runquery($sql);
$finish = TRUE;
?>