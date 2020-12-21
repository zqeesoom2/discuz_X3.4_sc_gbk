<?php
/**
 * update cache
 *
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/10/19
 * Time: 14:47
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
global $_G;
require_once libfile('function/cache');
loadcache('plugin');
if (isset($_G['cache']['plugin']['qfmobile']['mobileimgcode']) && $_G['cache']['plugin']['qfmobile']['mobileimgcode'] == 0) {
    $param = DB::fetch_first("SELECT pluginid FROM %t WHERE identifier=%s", array('common_plugin', 'qfmobile'));
    if (!empty($param['pluginid'])) {
        $pluginid = $param['pluginid'];
        $_G['cache']['plugin']['qfmobile']['mobileimgcode'] = '1';
        C::t('common_pluginvar')->update_by_variable($pluginid, 'mobileimgcode', array('value' => '1'));
        updatecache('plugin');
    }
}

$finish = TRUE;
