<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: forum.php 33828 2013-08-20 02:29:32Z nemohou $
 */


// 定义应用 ID
define('APPTYPEID', 2);
define('CURSCRIPT', 'test');

require './source/class/class_core.php';

C::app()->init();

@header('Content-Type: text/html; charset=GBK');

$pass = $pass2 = true;

if(!function_exists('curl_version')) {
	echo '因为您的扩展 "curl" 不存在，请安装相关 PHP 扩展';
	exit;
}

$curlinfo = curl_version();
if(!in_array('https', $curlinfo['protocols'])){
	echo '因为您的扩展 "curl" 不支持请求HTTPS链接，请安装相关 PHP 扩展请确保 CURL+SSL 存在且有效，同时测试服务器命令行下执行 "curl https://addon.dismall.com" 可正常返回内容<br>如果您是PHP5.2及以下版本，请升级PHP版本';
	echo '<br>'.PHP_OS.' / PHP v'.PHP_VERSION.'<br><pre>';
	print_r($curlinfo);
	exit;
}

$contents = '';
$file = DISCUZ_ROOT . './source/function/function_filesock.php';
if (file_exists($file)) {
	if ($fp = @fopen($file, 'r')) {
		$contents = fread($fp, filesize($file));
		fclose($fp);
	}
}

require_once libfile('function/cloudaddons');

if(CLOUDADDONS_WEBSITE_URL != 'https://addon.dismall.com'){
  echo '请先按教程接入新版应用中心：<a href="https://www.dismall.com/thread-957-1-1.html" target="_blank">https://www.dismall.com/thread-957-1-1.html</a>';
	@include_once DISCUZ_ROOT.'./source/discuz_version.php';
	echo '<br>Discuz! '.DISCUZ_VERSION.' R'.DISCUZ_RELEASE.' '.strtoupper(CHARSET);
	exit;
}

if(stripos($contents, 'CURLOPT_SSL_VERIFYPEER') === false){
	echo '因为您的Discuz版本太低，请下载补丁：<a href="https://www.dismall.com/thread-297-1-1.html" target="_blank">https://www.dismall.com/thread-297-1-1.html</a>';
	@include_once DISCUZ_ROOT.'./source/discuz_version.php';
	echo '<br>Discuz! '.DISCUZ_VERSION.' R'.DISCUZ_RELEASE.' '.strtoupper(CHARSET);
	exit;
}

$testContent = dfsockopen('https://addon.dismall.com/static/img/plugin_logo.png');
if(strlen($testContent) == 603) {
	echo "https://addon.dismall.com <font color=green>正常</font><br>";
} else {
	$pass = false;
	echo "https://addon.dismall.com <font color=red>失败</font><br>";
}

$testContent = dfsockopen('https://addon.dismall.com/test.xml');
require_once libfile('class/xml');
$array = xml2array($testContent);
if($array['Title'] == 'Discuz! Addon MD5' && count($array['Data']) == 5) {
  echo "HTTPS XML Download <font color=green>正常</font><br>";
} else {
	$pass = false;
	echo "HTTPS XML Download <font color=red>失败</font><br>";
}

if(!$pass) {
	echo '<br>您的论坛无法正常访问应用中心，请测试服务器命令行下执行 "curl https://addon.dismall.com" 是否可正常返回内容';
} elseif($pass2) {
	echo '<br>您的论坛可以正常访问应用中心';
}

if(function_exists('curl_version')) {
	echo '<pre>';
	print_r($curlinfo);
}

?>