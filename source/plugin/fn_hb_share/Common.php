<?php
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
$Fn_HB_Share = new Fn_HB_Share;
if(strpos($_SERVER["HTTP_USER_AGENT"],'Appbyme') !== false){
	$Appbyme = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'MicroMessenger') !== false){
	$WxApp = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'QianFan') !== false){
	$QFApp = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'MAGAPPX') !== false){
	$MagApp = true;
}
if(strpos(strtolower($_SERVER["HTTP_USER_AGENT"]),'iphone') !== false){
	$IPhone = true;
}
if($Appbyme || $WxApp){
	$App = true;
}
?>