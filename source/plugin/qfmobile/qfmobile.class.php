<?php
/**
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/13
 * Time: 17:20
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

//ȫ��Ƕ���
class plugin_qfmobile
{
    public $is_open = false;

    public function __construct()
    {
        global $_G;
        include_once template('qfmobile:reg');//����ģ��
        require_once(DISCUZ_ROOT . './source/plugin/qfmobile/qfmobile.php');

        if (!$_G['cache']['plugin']['qfmobile']) {
            return;
        }
        $this->is_open = true;
    }

    public function validateVerificationCode()
    {
        global $_G;

        $mobile = $_POST['mobile'];
        $verificationCode = $_POST['verifycode'];

        if (empty($mobile) || !(preg_match('/^1[3456789]{1}\d{9}$/', $mobile))) {
            showmessage(lang('plugin/qfmobile', 'qfmobile_register_mobile_error_tip'));
        }
        if (empty($verificationCode) || !(preg_match('/^\d{6}$/', $verificationCode))) {
            showmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_error_tip'));
        }

        $res = DB::fetch_first("SELECT * FROM %t WHERE phone=%s AND status>0 ORDER BY id DESC LIMIT 1", array('qfmobile_verifycode', $mobile));
        if (isset($res) && $verificationCode == $res['verifycode'] && ($_G['timestamp'] - $res['dateline'] < 120)) {
            return true;
            // showmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_failed'));
        } else {
            showmessage(lang('plugin/qfmobile', 'qfmobile_register_verifycode_failed'));
        }
    }
}

//member���ļ�ҳ��Ƕ��� ��ʽ�� plugin_�����ʶ��_����ļ��� һ��Ҫ�̳�ȫ�ֵĸ���  http://discuz.cc/member.php?mod=register
class plugin_qfmobile_member extends plugin_qfmobile
{
    // register member���е�ע��ģ�����ǰ��
    //���ǰ��ҳ��Ƕ��� �� ģ����_����_output() register_input��ģ���� ,����Ƕ����ܲ鿴��ģ����
    public function register_input_output($value)
    {
        global $_G;

        if ($_G['cache']['plugin']['qfmobile']['mobilereg']) {//�Ƿ���ע���ֻ�������֤
            if (isset($value['message']) && preg_match('/^1[3456789]{1}\d{9}$/', $_GET['mobile'])) {
                if (!empty($value['values']['uid']) && intval($value['values']['uid']) > 0) {
                    if (isset($_GET[$_G['setting']['reginput']['username']]) && isset($value['values']['username']) && $_GET[$_G['setting']['reginput']['username']] == $value['values']['username']) {
                        $mobile = DB::result_first("SELECT phone FROM %t WHERE phone=%s LIMIT 1", array('qfmobile_verifycode', $_GET['mobile']));
                        if(!$mobile) return;
                        $data = array(
                            'uid' => $value['values']['uid'],
                            'phone' => $_GET['mobile'],
                            'dateline' => TIMESTAMP,
                        );
                        DB::insert('phonebind', $data);
                        DB::update("qfmobile_verifycode", array("status" => 0), array('phone' => $_GET['mobile']));

                    }
                }
            }

            return tpl_register_input_output(); // ��ȫ��Ƕ����� __construct ���õ���ģ��
        }
        return;
    }

    // login  ��ͨǶ���
    public function register_logging_method()
    {
        global $_G;

        if ($_POST) {
            if ($_G['cache']['plugin']['qfmobile']['mobilereg']) {
                $this->validateVerificationCode();
            }
        }

        return tpl_register_logging_method();

    }

    // lostpwd
//    public function logging_input_output()
//    {
//    }

}

class plugin_qfmobile_home extends plugin_qfmobile
{
    // user-home
    public function spacecp_profile_bottom_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        if ($_G['cache']['plugin']['qfmobile']['mobilebind']) {
            return tpl_spacecp_profile_bottom_output();
        }
        return;
    }
}

class plugin_qfmobile_forum extends plugin_qfmobile
{
    // post/reply
    public function post_btn_extra_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ($_GET['action'] == 'newthread' || $_GET['action'] == 'reply') {
                if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                    return tpl_post_btn_extra_output();

                }
            }
        }
        return;
    }

    // fast-post
    public function forumdisplay_fastpost_btn_extra_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                return tpl_forumdisplay_fastpost_btn_extra_output();
            }
        }
        return;
    }

    // viewthread-hook
    public function viewthread_bottom_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                return tpl_forumdisplay_fastpost_btn_extra_output();
            }
        }
        return;
    }

    public function viewthread_fastpost_content_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                return tpl_viewthread_fastpost_content_output();
            }
        }
        return;
    }

    public function post_infloat_btn_extra_output()
    {
        global $_G;
        if (!$_G['uid']) return;
        $mobileObj = new qfmobile();
        $checkmobile = $mobileObj->checkmobile($_G['uid']);
        if ($checkmobile) return;

        if ($_G['cache']['plugin']['qfmobile']['mobilelimit']) {
            if ($_GET['action'] == 'newthread' || $_GET['action'] == 'reply') {
                if ((in_array($_G['fid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimitfids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimitfids']) || $_G['cache']['plugin']['qfmobile']['mobilelimitfids'] == 'a:1:{i:0;s:0:"";}') && (!in_array($_G['groupid'], (array)unserialize($_G['cache']['plugin']['qfmobile']['mobilelimituids'])) || empty($_G['cache']['plugin']['qfmobile']['mobilelimituids']) || $_G['cache']['plugin']['qfmobile']['mobilelimituids'] == 'a:1:{i:0;s:0:"";}')) {
                    return tpl_post_infloat_btn_extra_output();

                }
            }
        }
        return;

    }
}