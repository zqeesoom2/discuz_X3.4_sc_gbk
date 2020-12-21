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
$conndtion = array(
    'uid' => $_GET['uid'],
    'search' => $_GET['search'],
);
$num = C::t('#violation#aljesc')->count_by_status($conndtion);
$start = ($currpage - 1) * $perpage;

$lplist = C::t('#violation#aljesc')->fetch_all_by_addtime($start, $perpage, $conndtion);
$paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=violation&act=adminlp&search='.$_GET['search'], 0, 11, false, false);
$users = C::t('#violation#aljesc_user')->range();
$navtitle = $config['title'];
$metakeywords = $config['keywords'];
$metadescription = $config['description'];
if($aljesc_seo['adminlp']['seotitle']){
	$seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
	list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['adminlp']);
}
include template('violation:adminlp');
?>