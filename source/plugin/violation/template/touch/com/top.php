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
		showmessage(lang('plugin/aljesc','aljesc_8'));
	}
	if($_GET['days']<0){
		 
		if($_G['mobile']){
			echo "<script>parent.tips('".lang('plugin/aljesc','top_3')."','');</script>";
			exit;
		}else{
			showerror(lang('plugin/aljesc','top_3'));
		}
	}
	$lp=C::t('#aljesc#aljesc')->fetch($_GET['lid']);
	$insertid=C::t('#aljesc#aljesc_toplog')->insert(array(
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
	C::t('#aljesc#aljesc_user')->update_top_by_uid($_G['uid']);
	if($_G['mobile']){
		echo "<script>parent.tips('".lang('plugin/aljesc','top_2')."',function(){parent.location.href='plugin.php?id=aljesc&act=member"."';});</script>";
		exit;
	}else{
		showmsg(lang('plugin/aljesc','top_2'), 'plugin.php?id=aljesc&act=member');
	}
}else{
	if (getuserprofile('extcredits' . $config['topextcredit']) < $config['toppay']) {
		showmessage($_G['setting']['extcredits'][$config['topextcredit']]['title'] . lang('plugin/aljesc','top_1'));
	}
	$lp=C::t('#aljesc#aljesc')->fetch($_GET['lid']);
	
	if($_G['mobile']){
		$url='plugin.php?id=aljesc&act=top&lid='.$_GET['lid'];
		include template('aljesc:state');
	}else{
		include template('aljesc:addtop');
	}
}
?>