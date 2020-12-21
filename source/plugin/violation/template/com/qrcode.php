<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
$file = 'aljesc_qrcode.jpg';
QRcode::png($_G['siteurl'].'plugin.php?id=violation', 'source/plugin/violation/images/qrcode/'.$file, QR_MODE_STRUCTURE, 8);
?>