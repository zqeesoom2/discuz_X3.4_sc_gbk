<?php
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
if($_GET['f'] == 'GetAjaxHbShare' && $_GET['formhash'] == formhash() && $_G['uid'] && $_GET['aid']){
	echo urldecode(json_encode($Fn_HB_Share->GetAjaxHbShare($_GET)));
}else if($_GET['f'] == 'GetAjaxShare' && $_GET['formhash'] == formhash() && $_G['uid'] && $_GET['aid']){
	echo urldecode(json_encode($Fn_HB_Share->GetAjaxShare($_GET['aid'],$_GET['type'])));
}else if($_GET['f'] == 'GetAjaxHbShareList' && $_GET['aid'] && $_GET['formhash'] == formhash()){//фюбшап╠М
	echo json_encode($Fn_HB_Share->StrToGBK($Fn_HB_Share->GetAjaxHbShareList($_GET['aid'],$_GET['page']),true));
}else if($_GET['f'] == 'GetAjaxHbState' && $_GET['formhash'] == formhash() && $_G['uid'] && $_GET['lid'] && $_GET['aid']){
	echo urldecode(json_encode($Fn_HB_Share->GetAjaxHbState($_GET['lid'],$_GET['aid'])));
}
?>