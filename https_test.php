<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: forum.php 33828 2013-08-20 02:29:32Z nemohou $
 */


// ����Ӧ�� ID
define('APPTYPEID', 2);
define('CURSCRIPT', 'test');

require './source/class/class_core.php';

C::app()->init();

@header('Content-Type: text/html; charset=GBK');

$pass = $pass2 = true;

if(!function_exists('curl_version')) {
	echo '��Ϊ������չ "curl" �����ڣ��밲װ��� PHP ��չ';
	exit;
}

$curlinfo = curl_version();
if(!in_array('https', $curlinfo['protocols'])){
	echo '��Ϊ������չ "curl" ��֧������HTTPS���ӣ��밲װ��� PHP ��չ��ȷ�� CURL+SSL ��������Ч��ͬʱ���Է�������������ִ�� "curl https://addon.dismall.com" ��������������<br>�������PHP5.2�����°汾��������PHP�汾';
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
  echo '���Ȱ��̳̽����°�Ӧ�����ģ�<a href="https://www.dismall.com/thread-957-1-1.html" target="_blank">https://www.dismall.com/thread-957-1-1.html</a>';
	@include_once DISCUZ_ROOT.'./source/discuz_version.php';
	echo '<br>Discuz! '.DISCUZ_VERSION.' R'.DISCUZ_RELEASE.' '.strtoupper(CHARSET);
	exit;
}

if(stripos($contents, 'CURLOPT_SSL_VERIFYPEER') === false){
	echo '��Ϊ����Discuz�汾̫�ͣ������ز�����<a href="https://www.dismall.com/thread-297-1-1.html" target="_blank">https://www.dismall.com/thread-297-1-1.html</a>';
	@include_once DISCUZ_ROOT.'./source/discuz_version.php';
	echo '<br>Discuz! '.DISCUZ_VERSION.' R'.DISCUZ_RELEASE.' '.strtoupper(CHARSET);
	exit;
}

$testContent = dfsockopen('https://addon.dismall.com/static/img/plugin_logo.png');
if(strlen($testContent) == 603) {
	echo "https://addon.dismall.com <font color=green>����</font><br>";
} else {
	$pass = false;
	echo "https://addon.dismall.com <font color=red>ʧ��</font><br>";
}

$testContent = dfsockopen('https://addon.dismall.com/test.xml');
require_once libfile('class/xml');
$array = xml2array($testContent);
if($array['Title'] == 'Discuz! Addon MD5' && count($array['Data']) == 5) {
  echo "HTTPS XML Download <font color=green>����</font><br>";
} else {
	$pass = false;
	echo "HTTPS XML Download <font color=red>ʧ��</font><br>";
}

if(!$pass) {
	echo '<br>������̳�޷���������Ӧ�����ģ�����Է�������������ִ�� "curl https://addon.dismall.com" �Ƿ��������������';
} elseif($pass2) {
	echo '<br>������̳������������Ӧ������';
}

if(function_exists('curl_version')) {
	echo '<pre>';
	print_r($curlinfo);
}

?>