<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
$currpage = $_GET['page'] ? $_GET['page'] : 1;
$perpage = 10;

$start = ($currpage - 1) * $perpage;
if($_GET['uid']){
	
	$conndtion = array(
		'uid' => $_GET['uid'],
	);
	$num = C::t('#aljesc#aljesc')->count_by_status($conndtion);
	$lplist = C::t('#aljesc#aljesc')->fetch_all_by_addtime($start, $perpage, $conndtion);
	foreach($lplist as $k=>$v){
		$lplist[$k]['rewrite']=str_replace ("{id}", $v['id'], $config ['re_view']);
	}
	$lplist = dhtmlspecialchars($lplist);
	$user=getuserbyuid($_GET['uid']);
}

$paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=aljesc&act=all&uid='.$_GET['uid'], 0, 11, false, false);
$navtitle = $config['title'];
$metakeywords = $config['keywords'];
$metadescription = $config['description'];
if($aljesc_seo['quanbu']['seotitle']){
	$seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$user['username']);
	list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['quanbu']);
}
include template('aljesc:all');
?>