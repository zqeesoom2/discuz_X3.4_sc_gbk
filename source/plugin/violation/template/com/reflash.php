<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
//reflashextcredit=刷新积分类型:威望或积分 ； reflashpay = 刷新需要消耗的积分数量
if (getuserprofile('extcredits' . $config['reflashextcredit']) < $config['reflashpay']) {
    
	if($_G['mobile']){
		echo "<script>parent.tips('".$_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1')."','');</script>";
		exit;
	}else{
		showerror($_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1'));
	}
}
//消费积分表
C::t('#violation#aljesc_reflashlog')->insert(array(
    'lid' => $_GET['lid'],
    'uid' => $_G['uid'],
    'username' => $_G['username'],
    'dateline' => TIMESTAMP,
    'pay' => $config['reflashpay'],//刷新需要消耗的积分数量
    'extcredit' => $config['relashextcredit'],//这个查不到
	'title' => $lp['title'],
    'name' => $lp['username'],
));
C::t('#violation#aljesc')->update_updatetime_by_id($_GET['lid']);
updatemembercount($_G['uid'], array($config['reflashextcredit'] => '-' . $config['reflashpay']));
C::t('#violation#aljesc_user')->update_updatecount_by_uid($_G['uid']);
if($_G['mobile']){
	echo "<script>parent.tips('刷新成功',function(){parent.location.href='plugin.php?id=violation&act=member"."';});</script>";
	exit;
}else{
	showmsg('刷新成功', 3,'plugin.php?id=violation&act=member');
}
?>