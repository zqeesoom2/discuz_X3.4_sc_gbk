<?php
/**
 * ÊÖ»ú°æ
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/9/29
 * Time: 13:52
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

class mobileplugin_qfmobile
{
    public $is_open = false;

    public function __construct()
    {
        global $_G;

        require_once(DISCUZ_ROOT . './source/plugin/qfmobile/qfmobile.php');

        if (!$_G['cache']['plugin']['qfmobile']) {
            return;
        }
        $this->is_open = true;
    }
}

class mobileplugin_qfmobile_forum extends mobileplugin_qfmobile
{
    public function viewthread_top_mobile()
    {
        global $_G;
        if (!$_G['uid']) return;

        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ($_GET['action'] == 'newthread' || $_GET['action'] == 'reply') {
                if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                    showmessage(lang('plugin/qfmobile', 'qfmobile_bind_mobile_not'), dreferer());

                }
            }
        }
        return;
    }

    public function post_bottom_mobile()
    {
        global $_G;
        if (!$_G['uid']) return;

        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ($_GET['action'] == 'newthread' || $_GET['action'] == 'reply') {
                if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                    showmessage(lang('plugin/qfmobile', 'qfmobile_bind_mobile_not'), dreferer());
                }
            }
        }
        return;
    }

}