<?php
	if(!defined('IN_DISCUZ')) {
	exit('Access Deined');
}
class mobileplugin_violation {
	function index_top_mobile() {
		global $_G;
		$config = $_G ['cache'] ['plugin'] ['violation'];
		if(!$config['sjurl']){
			return;
		}
		if (!file_exists(DISCUZ_ROOT . './source/plugin/violation/template/mobile/index.htm')) {
			return;
		}
		if($_GET['mobile']=='1'){
			$xian='<span class="pipe">|</span>';
		}else{
			$xian='&nbsp;&nbsp;&nbsp;';
		}
		return $xian.'<a href="plugin.php?id=violation">'.$config['daohang'].'</a>';
		
	}
}
class mobileplugin_aljesc_forum extends mobileplugin_violation {
}
?>