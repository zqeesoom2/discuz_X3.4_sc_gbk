<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */

if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}

$_GET=dhtmlspecialchars($_GET);
$pluginid='violation';
if(submitcheck('formhash')){
	if($_FILES['logo']['tmp_name']) {
		$picname = $_FILES['logo']['name'];
		$picsize = $_FILES['logo']['size'];
	
		if ($picname != "") {
			$type = strtolower(strrchr($picname, '.'));
			if ($type != ".gif" && $type != ".jpg"&& $type != ".png") {
				showerror('&#35831;&#19978;&#20256;&#46;&#106;&#112;&#103;&#32;&#46;&#112;&#110;&#103;&#32;&#46;&#103;&#105;&#102;&#22270;&#29255;');
			}
			$rand = rand(100, 999);
			$pics = date("YmdHis") . $rand . $type;
			$logo = "source/plugin/".$pluginid."/images/logo/". $pics;
			if(copy($_FILES['logo']['tmp_name'], $logo)||move_uploaded_file($_FILES['logo']['tmp_name'], $logo)){
				@unlink($_FILES['logo']['tmp_name']);
			}
		}
	}

	if(empty($logo)){
		$logo = $_GET['logo'];
	}

	
	$record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('logo');

	if($_GET['deletelogo']){
		C::t('#'.$pluginid.'#aljesc_setting') -> delete('logo');
		if($record['value']){
			unlink($record['value']);
		}
	}

	if(!$record){
		C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>'logo','value'=>$logo));
	}else{
		C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($logo,'logo');
	}
	unset($logo);
	if($_FILES['mobile_logo']['tmp_name']) {
		$picname = $_FILES['mobile_logo']['name'];
		$picsize = $_FILES['mobile_logo']['size'];
	
		if ($picname != "") {
			$type = strtolower(strrchr($picname, '.'));
			if ($type != ".gif" && $type != ".jpg"&& $type != ".png") {
				showerror('&#35831;&#19978;&#20256;&#46;&#106;&#112;&#103;&#32;&#46;&#112;&#110;&#103;&#32;&#46;&#103;&#105;&#102;&#22270;&#29255;');
			}
			$rand = rand(100, 999);
			$mobile_pics = date("YmdHis") . $rand . $type;
			$mobile_logo = "source/plugin/".$pluginid."/images/logo/". $mobile_pics;
			if(@copy($_FILES['mobile_logo']['tmp_name'], $mobile_logo)||@move_uploaded_file($_FILES['mobile_logo']['tmp_name'], $mobile_logo)){
				@unlink($_FILES['mobile_logo']['tmp_name']);
			}
		}
	}

	if(empty($mobile_logo)){
		$mobile_logo = $_GET['mobile_logo'];
	}
	
	
	$mobile_record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('mobile_logo');

	if($_GET['deletemobile_logo']){
		C::t('#'.$pluginid.'#aljesc_setting') -> delete('mobile_logo');
		if($mobile_record['value']){
			unlink($mobile_record['value']);
		}
	}

	if(!$mobile_record){
		C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>'mobile_logo','value'=>$logo));
	}else{
		C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($mobile_logo,'mobile_logo');
	}
	unset($mobile_logo);
	if($_FILES['qrcode_logo']['tmp_name']) {
		$picname = $_FILES['qrcode_logo']['name'];
		$picsize = $_FILES['qrcode_logo']['size'];
	
		if ($picname != "") {
			$type = strtolower(strrchr($picname, '.'));
			if ($type != ".gif" && $type != ".jpg"&& $type != ".png") {
				showerror('&#35831;&#19978;&#20256;&#46;&#106;&#112;&#103;&#32;&#46;&#112;&#110;&#103;&#32;&#46;&#103;&#105;&#102;&#22270;&#29255;');
			}
			$rand = rand(100, 999);
			$qrcode_pics = date("YmdHis") . $rand . $type;
			$qrcode_logo = "source/plugin/".$pluginid."/images/logo/". $qrcode_pics;
			if(@copy($_FILES['qrcode_logo']['tmp_name'], $qrcode_logo)||@move_uploaded_file($_FILES['qrcode_logo']['tmp_name'], $qrcode_logo)){
				@unlink($_FILES['qrcode_logo']['tmp_name']);
			}
		}
	}

	if(empty($qrcode_logo)){
		$qrcode_logo = $_GET['qrcode_logo'];
	}

	
	$qrcode_record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('qrcode_logo');

	if($_GET['deleteqrcode_logo']){
		C::t('#'.$pluginid.'#aljesc_setting') -> delete('qrcode_logo');
		if($qrcode_record['value']){
			unlink($qrcode_record['value']);
		}
	}

	if(!$qrcode_record){
		C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>'qrcode_logo','value'=>$logo));
	}else{
		C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($qrcode_logo,'qrcode_logo');
	}

	if(!C::t('#'.$pluginid.'#aljesc_setting')->fetch('mhot')){
		C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>'mhot','value'=>$_GET['mhot']));
	}else{
		if($_GET['mhot']){
			C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($_GET['mhot'],'mhot');
		}
	}

	if(!C::t('#'.$pluginid.'#aljesc_setting')->fetch('mhotmore')){
		C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>'mhotmore','value'=>$_GET['mhotmore']));
	}else{
		if($_GET['mhotmore']){
			C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($_GET['mhotmore'],'mhotmore');
		}
	}
	
	foreach($_GET['settingsnew'] as $k=>$v){
		if(!C::t('#'.$pluginid.'#aljesc_setting')->fetch($k)){
			C::t('#'.$pluginid.'#aljesc_setting')->insert(array('key'=>$k,'value'=>$v));
		}else{
			C::t('#'.$pluginid.'#aljesc_setting')->update_value_by_key($v,$k);
		}
	}

	cpmsg('&#26356;&#26032;&#25104;&#21151;&#65281;', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=setting', 'succeed');
}else{
	$record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('logo');
	$logo = $record['value'];
	
	$mobile_record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('mobile_logo');
	$mobile_logo = $mobile_record['value'];

	$qrcode_record = C::t('#'.$pluginid.'#aljesc_setting')->fetch('qrcode_logo');
	$qrcode_logo = $qrcode_record['value'];
	$setting = C::t('#'.$pluginid.'#aljesc_setting')->range();
	$settings= $setting;
	include template($pluginid.':setting');
}
?>