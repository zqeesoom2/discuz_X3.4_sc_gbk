<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
if($config['es_fid']){
	if($config['isrewrite']){
		$re_url=str_replace ("{id}",$insertid, $config ['re_view']);
	}else{
		$re_url='plugin.php?id=violation&act=view&lid='.$insertid;
	}
	$tongbu_zujin=intval($_GET['zujin'])>0?$_GET['zujin']:'面议';
	$tongbu_pos=isset($_GET['pos1'])?$pos_zw[$_GET['pos1']]['subject']:(isset($_GET['pos'])?$pos_zw[$_GET['pos']]['subject']:'-');
	$tongbu_lxr=$_GET['lxr']?$_GET['lxr']:'-';
	$tongbu_qq=$_GET['qq']?$_GET['qq']:'-';
	$tongbu_gearbox=$_GET['gearbox']?$gearbox_types[$_GET['gearbox']]:'-';
	$tongbu_mileage=$_GET['mileage']?$_GET['mileage']:'-';
	$qian=array('{url}','{title}','{zujin}','{pos}','{tel}','{qq}','{lxr}','{region}','{shengming}','{content}','{gearbox}','{mileage}');
	$hou=array($re_url,$_GET['title'],$tongbu_zujin,$tongbu_pos,$_GET['contact'],$tongbu_qq,$tongbu_lxr,$regions[$_GET['region']]['subject'].$regions[$_GET['region1']]['subject'].$regions[$_GET['region2']]['subject'].$_GET['region3'],$shengming,discuzcode($_GET['content']),$tongbu_gearbox,$tongbu_mileage);
	$str=str_replace($qian,$hou,$config['tongbu_moban']);
	$cont=str_replace('&amp;','&',html2bbcode($str));
	$tid = generatethread('['.$config['daohang'].']'.$_GET['title'], $cont, $_G['clientip'], $_G['uid'], '', $config['es_fid'],$config['threadtypes']);
	C::t('#violation#aljesc')->update($insertid,array('tid'=>$tid));
}
?>