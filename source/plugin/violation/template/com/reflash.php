<?php

/*
 * ���ߣ�����
 * ��ϵQQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
//reflashextcredit=ˢ�»�������:��������� �� reflashpay = ˢ����Ҫ���ĵĻ�������
if (getuserprofile('extcredits' . $config['reflashextcredit']) < $config['reflashpay']) {
    
	if($_G['mobile']){
		echo "<script>parent.tips('".$_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1')."','');</script>";
		exit;
	}else{
		showerror($_G['setting']['extcredits'][$config['reflashextcredit']]['title'] . lang('plugin/aljesc','top_1'));
	}
}
//���ѻ��ֱ�
C::t('#violation#aljesc_reflashlog')->insert(array(
    'lid' => $_GET['lid'],
    'uid' => $_G['uid'],
    'username' => $_G['username'],
    'dateline' => TIMESTAMP,
    'pay' => $config['reflashpay'],//ˢ����Ҫ���ĵĻ�������
    'extcredit' => $config['relashextcredit'],//����鲻��
	'title' => $lp['title'],
    'name' => $lp['username'],
));
C::t('#violation#aljesc')->update_updatetime_by_id($_GET['lid']);
updatemembercount($_G['uid'], array($config['reflashextcredit'] => '-' . $config['reflashpay']));
C::t('#violation#aljesc_user')->update_updatecount_by_uid($_G['uid']);
if($_G['mobile']){
	echo "<script>parent.tips('ˢ�³ɹ�',function(){parent.location.href='plugin.php?id=violation&act=member"."';});</script>";
	exit;
}else{
	showmsg('ˢ�³ɹ�', 3,'plugin.php?id=violation&act=member');
}
?>