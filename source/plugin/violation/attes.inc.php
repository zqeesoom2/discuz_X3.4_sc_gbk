<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}

$typearr=array('1'=>'个人','2'=>'商家');
$config = array();
//$pluginvars= 插件自己依靠系统定义的变量
foreach($pluginvars as $key => $val) {
	$config[$key] = $val['value'];	
}
$pluginid='violation';
if($_GET['act']=='yes'){
	if(!submitcheck('submit')) {
		$currpage=$_GET['page']?$_GET['page']:1;
		$perpage=$config['page'];
		$num=C::t('#'.$pluginid.'#aljesc_attestation')->count_by_status(1);
		$start=($currpage-1)*$perpage;
		$atlist=C::t('#'.$pluginid.'#aljesc_attestation')->fetch_all_by_status(1,$start,$perpage);
		$paging = helper_page :: multi($num, $perpage, $currpage, 'admin.php?action=plugins&operation=config&identifier='.$pluginid.'&pmod=attes&act=yes', 0, 11, false, false);
		include template($pluginid.':admin_attes');
	}else{
		if(is_array($_POST['delete'])) {
			foreach($_POST['delete'] as $id) {
				C::t('#'.$pluginid.'#aljesc_attestation')->delete($id);
			}
		}
		cpmsg('更新成功', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=attes&act=yes', 'succeed');
		
	}
}else{

	if(!submitcheck('sh_submit')&&!submitcheck('del_submit')) {
		$currpage=$_GET['page']?$_GET['page']:1;
		$perpage=$config['page'];
		$num=C::t('#'.$pluginid.'#aljesc_attestation')->count_by_status(0);
		$start=($currpage-1)*$perpage;
		$atlist=C::t('#'.$pluginid.'#aljesc_attestation')->fetch_all_by_status(0,$start,$perpage);
		$paging = helper_page :: multi($num, $perpage, $currpage, 'admin.php?action=plugins&operation=config&identifier='.$pluginid.'&pmod=attes', 0, 11, false, false);	

		include template($pluginid.':admin_attes');
		
	}else{
		if(submitcheck('del_submit')){
			if(is_array($_POST['delete'])) {
				foreach($_POST['delete'] as $id) {
					C::t('#'.$pluginid.'#aljesc_attestation')->delete($id);
				}
			}
		}
		if(submitcheck('sh_submit')){
			if(is_array($_POST['delete'])) {
				foreach($_POST['delete'] as $id) {
					DB::update('aljesc_attestation',array('sign'=>1),'id='.$id);
				}
			}
		}
		
		cpmsg('更新成功', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=attes', 'succeed');
	}
}

?>