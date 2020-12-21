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
$perpage = $config['page'];
$num = C::t('#aljesc#aljesc_user')->count();
$start = ($currpage - 1) * $perpage;

$users = C::t('#aljesc#aljesc_user')->range($start, $perpage, 'desc');
$paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=aljesc&act=adminuser', 0, 11, false, false);
$navtitle = $config['title'];
$metakeywords = $config['keywords'];
$metadescription = $config['description'];
if($aljesc_seo['adminuser']['seotitle']){
	$seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
	list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['adminuser']);
}
include template('aljesc:adminuser');
?>