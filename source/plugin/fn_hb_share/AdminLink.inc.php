<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
showtableheader();
showsetting($Fn_HB_Share->Config['LangVar']['PluginLink'], 'PluginLink',$_G['siteurl'].'plugin.php?id=fn_hb_share', 'text');
showtablefooter();
?>