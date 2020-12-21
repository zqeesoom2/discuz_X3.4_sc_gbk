<?php
/**
 *      [Liangjian] (C)2001-2099 Liangjian Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: region.inc.php liangjian $
 */
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}
$plugins='violation';
$pluginid='violation';
if($_GET['act'] == 'empty'){
	$sql='TRUNCATE TABLE '.DB::table($plugins.'_region');//删除所有行
	DB::query($sql);
	cpmsg(lang('plugin/'.$plugins,'admin_1'),'action=plugins&operation=config&identifier='.$plugins.'&pmod=region&upid='.$_GET['upid']);
}
else if($_GET['act'] == 'importall'){
	if(C::t('#'.$pluginid.'#aljesc_region')->count()){
		cpmsg('请先清空地区表');
	}
	foreach(C::t('common_district')->range() as $rid => $r){
		if($r['level']>3){
			break;
		}
		C::t('#'.$pluginid.'#aljesc_region')->insert(array(
			'id'=>$r['id'],
			'subject'=>$r['name'],
			'upid'=>$r['upid'],
			'subid'=>$r['id'],
			'level'=>$r['level']-1,
		));
	}
	cpmsg('更新成功','action=plugins&operation=config&do='.$_GET['do'].'&identifier='.$plugins.'&pmod=region&upid='.$_GET['upid']);
}
else if($_GET['act'] == 'import'){
	if(!submitcheck('submit')){
		include template('common/header');
		include_once libfile('function/profile');
		$rlist=C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys();
		foreach($rlist as $rid => $r){
			$str.='<option value="'.$r['id'].'" >'.$r['name'].'</option>';
		}
		$districthtml = '<select name="birthprovince" id="region" style="width:120px;" onchange="ajaxget(\'plugin.php?id='.$plugins.'&act=admingetregion&upid=\'+$(\'region\').value,\'subregion\')">
							<option value="">&#45;&#30465;&#20221;&#45;</option>
							'.$str.'
						</select>';	
		$districthtml.='<span name="subregion" id="subregion"></span><span name="region1" id="region1"></span>';
		showformheader('plugins&operation=config&identifier='.$plugins.'&pmod=region&act=import');	
		showtableheader('', 'nobottom');
		echo '<div style="height:170px;width:530px;"><h3 class="flb mn"><span><a href="javascript:;" class="flbc" onclick="hideWindow(\'edit\',1,0);" title="Close">Close</a></span>'.
			lang('plugin/'.$plugins,'region_import').'</h3><div style="margin-left:10px;">'.$districthtml.'<p style="padding:10px; color:#3333CC; line-height:20px;">'.lang('plugin/'.$plugins,'region_annotation').'</p></div></div>';
		showsubmit('submit', 'import');
		showtablefooter();
		showformfooter();	
		include template('common/footer');
	}else{
		$regionarr = array();
		$regionarr['birthprovince'] = dhtmlspecialchars(trim($_GET['birthprovince']));
		if(!$regionarr['birthprovince']){
			cpmsg(lang('plugin/'.$plugins,'Please_select_a_province'));
		}
		$regionarr['subregion'] = dhtmlspecialchars(trim($_GET['subregion']));
		$regionarr['region1'] = dhtmlspecialchars(trim($_GET['region1']));
		$regionarr['birthcommunity'] = dhtmlspecialchars(trim($_GET['birthcommunity']));
		$upid = 0;
		if ($regionarr['birthprovince']) {
		   $upid = $regionarr['birthprovince'];
		   if ($regionarr['subregion']) {
				$upid = $regionarr['subregion'];	
				if($regionarr['region1']){
					$upid = $regionarr['region1'];		
				}
		   }
		}
		if(!$upid){
			cpmsg(lang('plugin/'.$plugins,'Please_select_a_province'));
		}
		foreach(C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys($upid) as $data) {
		    $insertarray=array('subject'=>$data['name'],'upid'=>'');
			$insertid=C::t('#'.$pluginid.'#aljesc_region')->insert($insertarray,true);
			DB::update($plugins.'_region', array('subid'=>$insertid), "id='$insertid'");
			if(C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys($data['id'])){
				foreach(C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys($data['id']) as $data_1) {
					
					$insertarray=array('subject'=>$data_1['name'],'upid'=>$insertid);
					$insertid_1=C::t('#'.$pluginid.'#aljesc_region')->insert($insertarray,true);
					DB::update($plugins.'_region', array('subid'=>$insertid_1), "id='$insertid_1'");
					$region=C::t('#'.$pluginid.'#aljesc_region')->fetch($insertid);
					$region['subid']=trim(($region['subid'].','.$insertid_1),',');
					$level=$region['level']+1;
					$region['havechild']=1;
					C::t('#'.$pluginid.'#aljesc_region')->update($region['id'],$region);
					DB::update($plugins.'_region', array('level'=>$level), "id='$insertid_1'");
					if(C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys($data_1['id'])){
						foreach(C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_sys($data_1['id']) as $data_2) {
							$insertarray=array('subject'=>$data_2['name'],'upid'=>$insertid_1);
							$insertid_2=C::t('#'.$pluginid.'#aljesc_region')->insert($insertarray,true);
							DB::update($plugins.'_region', array('subid'=>$insertid_2), "id='$insertid_2'");
							$region_1=C::t('#'.$pluginid.'#aljesc_region')->fetch($insertid_1);
							$region_1['subid']=trim(($region_1['subid'].','.$insertid_2),',');
							
							$level_1=$region_1['level']+1;
							$region_1['havechild']=1;
							C::t('#'.$pluginid.'#aljesc_region')->update($region_1['id'],$region_1);
							DB::update($plugins.'_region', array('level'=>$level_1), "id='$insertid_2'");
						}
					}
				}
			}
		}
		
		cpmsg(lang('plugin/'.$plugins,'admin_1'),'action=plugins&operation=config&do='.$_GET['do'].'&identifier='.$plugins.'&pmod=region&upid='.$_GET['upid']);
	}
}else{
	if(!submitcheck('submit')){
		if($_GET['upid']){
			$upid_data=C::t('#'.$pluginid.'#aljesc_region')->fetch($_GET['upid']);
		}
		$currpage=$_GET['page']?$_GET['page']:1;
		$perpage=20;
		$num=C::t('#'.$pluginid.'#aljesc_region')->count_by_upid($_GET['upid']);
		$start=($currpage-1)*$perpage;
		$region=C::t('#'.$pluginid.'#aljesc_region')->fetch_all_by_upid_admin($start,$perpage,$_GET['upid']);
		
		$paging = helper_page :: multi($num, $perpage, $currpage, ADMINSCRIPT.'?action=plugins&operation=config&identifier='.$plugins.'&pmod=region&upid='.$_GET['upid'], 0, 11, false, false);	
		include template($plugins.':region');
	}else{
		
		if($_GET['delete']){
			foreach($_GET['delete'] as $key=>$value){
				C::t('#'.$pluginid.'#aljesc_region')->delete($value);
			}
		}else if($_GET['name']){
			foreach($_GET['name'] as $key=>$value){
				C::t('#'.$pluginid.'#aljesc_region')->update($key,array('subject'=>$value));
			}
			if($_GET['displayorder']){
				foreach($_GET['displayorder'] as $key=>$value){
					C::t('#'.$pluginid.'#aljesc_region')->update($key,array('displayorder'=>$value));
				}
			}
		}
		foreach($_GET['newregion'] as $key=>$value){
			if($value){
				$insertarray=array('subject'=>$value,'upid'=>$_GET['upid'],'displayorder'=>$_GET['newdisplayorder'][$key]);
				$insertid=C::t('#'.$pluginid.'#aljesc_region')->insert($insertarray,true);
				DB::update('aljesc_region', array('subid'=>$insertid), "id='$insertid'");
				if($_GET['upid']){
					$region=C::t('#'.$pluginid.'#aljesc_region')->fetch($_GET['upid']);
					$region['subid']=trim(($region['subid'].','.$insertid),',');
					$level=$region['level']+1;
					$region['havechild']=1;
					C::t('#'.$pluginid.'#aljesc_region')->update($region['id'],$region);
					DB::update('aljesc_region', array('level'=>$level), "id='$insertid'");
				}
			}
		}
		
		cpmsg('更新成功','action=plugins&operation=config&do='.$_GET['do'].'&identifier='.$plugins.'&pmod=region&upid='.$_GET['upid']);
	}
}
?>