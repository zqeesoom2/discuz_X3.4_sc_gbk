<?php

/*
 * ���ߣ�����
 * ��ϵQQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
if (getuserprofile('extcredits' . $config['releaseextcredit']) < $config['releasepay'] && $config['releaseextcredit']) {
	showerror($_G['setting']['extcredits'][$config['releaseextcredit']]['title'] . lang('plugin/aljesc','top_1'));
}
updatemembercount($_G['uid'], array($config['releaseextcredit'] => '-' .$config['releasepay']));
?>