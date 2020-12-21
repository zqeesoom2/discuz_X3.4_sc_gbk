<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
if (getuserprofile('extcredits' . $config['reflashextcredit']) < $config['reflashpay']) {
    
	if($_G['mobile']){
		echo "<script>parent.tips('".$_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1')."','');</script>";
		exit;
	}else{
		showerror($_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1'));
	}
}
C::t('#aljesc#aljesc_reflashlog')->insert(array(
    'lid' => $_GET['lid'],
    'uid' => $_G['uid'],
    'username' => $_G['username'],
    'dateline' => TIMESTAMP,
    'pay' => $config['reflashpay'],
    'extcredit' => $config['relashextcredit'],
	'title' => $lp['title'],
    'name' => $lp['username'],
));
C::t('#aljesc#aljesc')->update_updatetime_by_id($_GET['lid']);
updatemembercount($_G['uid'], array($config['reflashextcredit'] => '-' . $config['reflashpay']));
C::t('#aljesc#aljesc_user')->update_updatecount_by_uid($_G['uid']);
if($_G['mobile']){
	echo "<script>parent.tips('".lang('plugin/aljesc','reflash_1')."',function(){parent.location.href='plugin.php?id=aljesc&act=member"."';});</script>";
	exit;
}else{
	showmsg(lang('plugin/aljesc','reflash_1'), 'plugin.php?id=aljesc&act=member');
}
?>