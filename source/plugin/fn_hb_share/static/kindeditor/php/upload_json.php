<?php
/**
 * KindEditor PHP
 *
 * 本PHP程序是演示程序，建议不要直接在实际项目中使用。
 * 如果您确定直接使用本程序，使用之前请仔细确认相关安全设置。
 *
 */

require_once 'JSON.php';

$php_path = dirname(__FILE__) . '/';
$php_url = dirname($_SERVER['PHP_SELF']) . '/';

//文件保存目录路径
$save_path = $php_path . '../attached/';
//文件保存目录URL
$save_url = $php_url . '../attached/';
//定义允许上传的文件扩展名
$ext_arr = array(
	'image' => array('gif', 'jpg', 'jpeg', 'png', 'bmp'),
	'flash' => array('swf', 'flv'),
	'media' => array('swf', 'flv', 'mp3', 'wav', 'wma', 'wmv', 'mid', 'avi', 'mpg', 'asf', 'rm', 'rmvb'),
	'file' => array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'htm', 'html', 'txt', 'zip', 'rar', 'gz', 'bz2'),
);
//最大文件大小
$max_size = 1000000;

$save_path = realpath($save_path) . '/';

//PHP上传失败
if (!empty($_FILES['imgFile']['error'])) {
	switch($_FILES['imgFile']['error']){
		case '1':
			$error = '&#36229;&#36807;&#112;&#104;&#112;&#46;&#105;&#110;&#105;&#20801;&#35768;&#30340;&#22823;&#23567;&#12290;';
			break;
		case '2':
			$error = '&#36229;&#36807;&#34920;&#21333;&#20801;&#35768;&#30340;&#22823;&#23567;&#12290;';
			break;
		case '3':
			$error = '&#22270;&#29255;&#21482;&#26377;&#37096;&#20998;&#34987;&#19978;&#20256;&#12290;';
			break;
		case '4':
			$error = '&#35831;&#36873;&#25321;&#22270;&#29255;&#12290;';
			break;
		case '6':
			$error = '&#25214;&#19981;&#21040;&#20020;&#26102;&#30446;&#24405;&#12290;';
			break;
		case '7':
			$error = '&#20889;&#25991;&#20214;&#21040;&#30828;&#30424;&#20986;&#38169;&#12290;';
			break;
		case '8':
			$error = 'File upload stopped by extension。';
			break;
		case '999':
		default:
			$error = '&#26410;&#30693;&#38169;&#35823;&#12290;';
	}
	alert($error);
}

//有上传文件时
if (empty($_FILES) === false) {
	//原文件名
	$file_name = $_FILES['imgFile']['name'];
	//服务器上临时文件名
	$tmp_name = $_FILES['imgFile']['tmp_name'];
	//文件大小
	$file_size = $_FILES['imgFile']['size'];
	//检查文件名
	if (!$file_name) {
		alert("&#35831;&#36873;&#25321;&#25991;&#20214;&#12290;");
	}
	//检查目录
	if (@is_dir($save_path) === false) {
		alert("&#19978;&#20256;&#30446;&#24405;&#19981;&#23384;&#22312;&#12290;");
	}
	//检查目录写权限
	if (@is_writable($save_path) === false) {
		alert("&#19978;&#20256;&#30446;&#24405;&#27809;&#26377;&#20889;&#26435;&#38480;&#12290;");
	}
	//检查是否已上传
	if (@is_uploaded_file($tmp_name) === false) {
		alert("&#19978;&#20256;&#22833;&#36133;&#12290;");
	}
	//检查文件大小
	if ($file_size > $max_size) {
		alert("&#19978;&#20256;&#25991;&#20214;&#22823;&#23567;&#36229;&#36807;&#38480;&#21046;&#12290;");
	}
	//检查目录名
	$dir_name = empty($_GET['dir']) ? 'image' : trim($_GET['dir']);
	if (empty($ext_arr[$dir_name])) {
		alert("&#30446;&#24405;&#21517;&#19981;&#27491;&#30830;&#12290;");
	}
	//获得文件扩展名
	$temp_arr = explode(".", $file_name);
	$file_ext = array_pop($temp_arr);
	$file_ext = trim($file_ext);
	$file_ext = strtolower($file_ext);
	//检查扩展名
	if (in_array($file_ext, $ext_arr[$dir_name]) === false) {
		alert("&#19978;&#20256;&#25991;&#20214;&#25193;&#23637;&#21517;&#26159;&#19981;&#20801;&#35768;&#30340;&#25193;&#23637;&#21517;&#12290;&#21482;&#20801;&#35768;" . implode(",", $ext_arr[$dir_name]) . "&#26684;&#24335;&#12290;");
	}
	//创建文件夹
	if ($dir_name !== '') {
		$save_path .= $dir_name . "/";
		$save_url .= $dir_name . "/";
		if (!file_exists($save_path)) {
			mkdir($save_path);
		}
	}
	$ymd = date("Ymd");
	$save_path .= $ymd . "/";
	$save_url .= $ymd . "/";
	if (!file_exists($save_path)) {
		mkdir($save_path);
	}
	//新文件名
	$new_file_name = date("YmdHis") . '_' . rand(10000, 99999) . '.' . $file_ext;
	//移动文件
	$file_path = $save_path . $new_file_name;
	if (move_uploaded_file($tmp_name, $file_path) === false) {
		alert("&#19978;&#20256;&#25991;&#20214;&#22833;&#36133;&#12290;");
	}
	@chmod($file_path, 0644);
	$file_url = $save_url . $new_file_name;

	header('Content-type: text/html; charset=UTF-8');
	$json = new Services_JSON();
	echo $json->encode(array('error' => 0, 'url' => $file_url));
	exit;
}

function alert($msg) {
	header('Content-type: text/html; charset=UTF-8');
	$json = new Services_JSON();
	echo $json->encode(array('error' => 1, 'message' => $msg));
	exit;
}
