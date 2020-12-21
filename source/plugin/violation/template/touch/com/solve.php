<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
if (empty($_GET['lid'])) {
	showmessage(lang('plugin/aljesc','aljesc_10'));
}

if($_GET['formhash'] == formhash()){
	$user=C::t('#aljesc#aljesc')->fetch($_GET['lid']);
	if($_G['mobile']){
		if (submitcheck('submit')) {
			if($_GET['solve']=='re'){
				C::t('#aljesc#aljesc')->update($_GET['lid'], array('solve'=>'0'));
				showmessage("34");
			}else{
				C::t('#aljesc#aljesc')->update($_GET['lid'], array('solve'=>'1'));
				showmessage(lang('plugin/aljesc','To_get_success!'),'plugin.php?id=aljesc&act=member');
			}
		}else{
			if($_GET['re']=='1'){
				$url='plugin.php?id=aljesc&act=solve&lid='.$_GET['lid'].'&solve=re';
			}else{
				$url='plugin.php?id=aljesc&act=solve&lid='.$_GET['lid'];
			}
			include template('aljesc:state');
		}
	}else{
		if($_GET['solve']=='re'){
			C::t('#aljesc#aljesc')->update($_GET['lid'], array('solve'=>'0'));
			showmessage(lang('plugin/aljesc','The_re_release_of_success'),'plugin.php?id=aljesc&act=member');
		}else{
			C::t('#aljesc#aljesc')->update($_GET['lid'], array('solve'=>'1'));
			showmessage(lang('plugin/aljesc','To_get_success!'),'plugin.php?id=aljesc&act=member');
		}
	}
}
?>