<?php
/**
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/16
 * Time: 14:00
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
require_once(DISCUZ_ROOT . './source/plugin/qfmobile/qfmobile.php');
require_once(DISCUZ_ROOT . './source/plugin/qfmobile/CJSON.php');

loadcache('plugin');
global $_G;

if ($_GET['formhash'] != $_G['formhash']) {
    ownshowmessage(lang('messgae', 'submit_invalid'));
}

if ($_GET['action'] == 'checkmobile') {
    $mobile = trim($_GET['mobile']);
    if (!(preg_match('/^1[3456789]{1}\d{9}$/', $mobile)) || empty($mobile)) {
        ownshowmessage('qfmobile:qfmobile_register_verifycode_error_tip');
    }
    $res = DB::result_first('SELECT phone FROM %t WHERE phone=%s', array('phonebind', $mobile));
    if ($res) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_mobile_exist'));
    }
    showmessage('');

} elseif ($_GET['action'] == 'getverifycode') {  //发送短信验证码
    /************���Ͷ���ǰ����֤***************/
    //是否开启手机注册图片验证:1是
    if ($_G['cache']['plugin']['qfmobile']['mobileimgcode'] == 1 && empty($_G['setting']['seccodedata']['rule']['register']['allow'])) {
        require_once libfile('class/seccode'); //导入生成验证码类 \source\class\class_seccode.php
        $_GET['seccodeverify'] = isset($_GET['seccodeverify']) ? urldecode($_GET['seccodeverify']) : '';
        if (DISCUZ_VERSION == 'X1.5' || DISCUZ_VERSION == 'X2' || DISCUZ_VERSION == 'X2.5' || DISCUZ_VERSION == 'X3' || $_GET['inmobile'] == 'yes') {
            if (!check_seccode($_GET['seccodeverify'], $_GET['idhash'])) {
                ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_imgcode_error'));//请填写正确的图片验证码
            }
        } else {
            if (!check_seccode($_GET['seccodeverify'], 'c' . $_GET['idhash'], 1, '')) {
                ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_imgcode_error'));
            }
        }
    }

    $mobile = trim($_GET['mobile']);
    if ($_G['cache']['plugin']['qfmobile']['mobilereg'] == 0) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_close'));//手机注册已经关闭
    }

    if (empty($mobile) || !(preg_match('/^1[3456789]{1}\d{9}$/', $mobile))) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_mobile_error_tip'));//请填写正确的手机号
    }
    $res = DB::result_first('SELECT phone FROM %t WHERE phone=%s', array('phonebind', $mobile));
    if ($res) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_mobile_exist')); //该手机已经被注册
    }
    $sendDateline = DB::result_first("SELECT dateline FROM %t WHERE phone=%s ORDER BY id DESC LIMIT 1", array('qfmobile_verifycode', $mobile));

    if (!empty($sendDateline) && $_G['timestamp'] - intval($sendDateline) < 90) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_snedsms_fast'));//抱歉您手速太快了
    }
    /********************************************/

    try {
        $verifycode = random(6, 1);
        $mobileObj = new qfmobile();
        $result = $mobileObj->sendsms($mobile, $verifycode, 1);
        if ($result['ret'] == 0) {
            $data = array(
                'phone' => $mobile,
                'verifycode' => $verifycode,
                'ip' => $_G['clientip'],
                'status' => 1,
                'dateline' => $_G['timestamp'],
            );
            DB::insert('qfmobile_verifycode', $data);
            ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_sendsms_succeed'));
        } else {
            if (!empty($result['text'])) {
                ownshowmessage($result['text']);
            } else {
                ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_sendsms_failed'));
            }
        }
    } catch (Exception $e) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_sendsms_error'));//服务器无响应，发送失败

    }

} elseif ($_GET['action'] == 'checkverifycode') {  // 验证 验证码
  
    $mobile = trim($_GET['mobile']);
    $verifycode = trim($_GET['verifycode']);

    if (empty($mobile) || !(preg_match('/^1[3456789]{1}\d{9}$/', $mobile))) { 
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_mobile_error_tip'));//请填写正确的手机号
    }
    if (empty($verifycode) || !(preg_match('/^\d{6}$/', $verifycode))) {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_error_tip'));//请填写正确的短信验证码
    }
    $res = DB::fetch_first("SELECT * FROM %t WHERE phone=%s AND status>0 ORDER BY id DESC LIMIT 1", array('qfmobile_verifycode', $mobile));
    if (isset($res) && $verifycode == $res['verifycode'] && ($_G['timestamp'] - $res['dateline'] < 120)) {
        showmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_succeed'));//短信验证码正确
    } else {
        ownshowmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_error_tip'));//请填写正确的短信验证码
    }
} elseif ($_GET['action'] == 'bindmobile') {
    include_once template('qfmobile:bind');
    exit;
}

function ownshowmessage($message)
{
    $inmobile = $_GET['inmobile'];

    if ($inmobile != 'yes') {
        showmessage($message);
    } else {
        echo $message;
        exit();
    }
}