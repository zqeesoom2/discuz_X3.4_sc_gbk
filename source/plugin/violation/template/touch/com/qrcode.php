<?php

/*
 * ���ߣ�����
 * ��ϵQQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
$file = 'aljesc_qrcode.jpg';	 QRcode::png($_G['siteurl'].'plugin.php?id=aljesc', 'source/plugin/aljesc/images/qrcode/'.$file, QR_MODE_STRUCTURE, 8);
?>