<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
if (submitcheck('formhash')) {
	if(empty($_GET['lid'])){
		showmessage('您无权此操作！');
	}
	if($_GET['days']<0){
		if($_G['mobile']){
			echo "<script>parent.tips('天数不能为负数！','');</script>";
			exit;
		}else{
			showerror('天数不能为负数！');
		}
	}
	$lp=C::t('#violation#aljesc')->fetch($_GET['lid']);
	$insertid=C::t('#violation#aljesc_toplog')->insert(array(
		'lid' => $_GET['lid'],
		'uid' => $_G['uid'],
		'username' => $_G['username'],
		'dateline' => TIMESTAMP,
		'endtime' => TIMESTAMP+$_GET['days']*86400,
		'pay' => $_GET['days']*$config['toppay'],
		'extcredit' => $config['topextcredit'],
		'title' => $lp['title'],
		'name' => $lp['username'],
	),true);
	if (getuserprofile('extcredits' . $config['topextcredit']) < ($_GET['days']*$config['toppay'])) {
		if($_G['mobile']){
			echo "<script>parent.tips('".$_G['setting']['extcredits'][$config['topextcredit']]['title'] . lang('plugin/aljesc','top_1')."','');</script>";
			exit;
		}else{
			showerror($_G['setting']['extcredits'][$config['topextcredit']]['title'] . lang('plugin/aljesc','top_1'));
		}
	}
	updatemembercount($_G['uid'], array($config['topextcredit'] => '-' .$_GET['days']*$config['toppay']));
	if($lp['topetime']&&TIMESTAMP<$lp['topetime']){
		DB::update('aljesc_toplog',array('endtime'=>$lp['topetime']+$_GET['days']*86400),'id='.$insertid);
		DB::update('aljesc',array('topetime'=>$lp['topetime']+$_GET['days']*86400),'id='.$_GET[lid]);
	}else{
		DB::update('aljesc',array('topstime'=>TIMESTAMP,'topetime'=>TIMESTAMP+$_GET['days']*86400),'id='.$_GET[lid]);
	}
	C::t('#violation#aljesc_user')->update_top_by_uid($_G['uid']);
	if($_G['mobile']){
		echo "<script>parent.tips('置顶成功',function(){parent.location.href='plugin.php?id=violation&act=member"."';});</script>";
		exit;
	}else{
		showmsg('置顶成功', 1,'plugin.php?id=violation&act=member');
	}
}else{
	if (getuserprofile('extcredits' . $config['topextcredit']) < $config['toppay']) {
		showmessage($_G['setting']['extcredits'][$config['topextcredit']]['title'] . '不足');//威望 积分
	}
	$lp=C::t('#violation#aljesc')->fetch($_GET['lid']);
	
	if($_G['mobile']){
		$url='plugin.php?id=violation&act=top&lid='.$_GET['lid'];
		include template('violation:state');
	}else{
		include template('violation:addtop');
	}
}
?>