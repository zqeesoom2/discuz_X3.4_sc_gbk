<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}
$comarray=array(
	1=>array('id'=>1,'file'=>'source/plugin/violation/template/com/moneyso.htm','name'=>lang('plugin/aljesc','com_array_1'),'desc'=>'��װ�������������۸�����Զ�������','url'=>'http://addon.discuz.com/?@aljesc.plugin.49625'),
	2=>array('id'=>2,'file'=>'source/plugin/violation/template/com/so.htm','name'=>lang('plugin/aljesc','com_array_3'),'desc'=>'��װ���������������ֳ���Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49626'),
	3=>array('id'=>3,'file'=>'source/plugin/violation/template/com/viewadv.htm','name'=>lang('plugin/aljesc','com_array_5'),'desc'=>'��װ�����������б�ҳ���½�Ͷ��һ�Ź��ͼƬ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49627'),
	4=>array('id'=>4,'file'=>'source/plugin/violation/template/com/viewadv1.htm','name'=>lang('plugin/aljesc','com_array_7'),'desc'=>'��װ��������������ҳ���½�Ͷ��һ��ͼƬ���','url'=>'http://addon.discuz.com/?@aljesc.plugin.49628'),
	5=>array('id'=>5,'file'=>'source/plugin/violation/template/com/renqi.htm','name'=>lang('plugin/aljesc','com_array_9'),'desc'=>'��װ��������б�ҳ��ʾ���ա��������ͳ��','url'=>'http://addon.discuz.com/?@aljesc.plugin.49629'),
	6=>array('id'=>6,'file'=>'source/plugin/violation/template/com/gg.htm','name'=>lang('plugin/aljesc','com_array_11'),'desc'=>'��װ�����������б�ҳ��ʾ��̨��д��һ�乫��','url'=>'http://addon.discuz.com/?@aljesc.plugin.49630'),
	7=>array('id'=>7,'file'=>'source/plugin/violation/template/com/fenxiang.htm','name'=>lang('plugin/aljesc','com_array_13'),'desc'=>'��װ�����������ҳ���Է�����Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49631'),
	8=>array('id'=>8,'file'=>'source/plugin/violation/template/com/sixin.htm','name'=>lang('plugin/aljesc','com_array_15'),'desc'=>'��װ��������������ҳ��ʾվ��˽�Ű�ť�����Ը�������վ�ڻ�������','url'=>'http://addon.discuz.com/?@aljesc.plugin.49632'),
	9=>array('id'=>9,'file'=>'source/plugin/violation/template/com/guanzhu.htm','name'=>lang('plugin/aljesc','com_array_17'),'desc'=>'��װ��������������ҳ��ʾվ�ڹ�ע��ť����������������վ�ڹ㲥��Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49633'),
	10=>array('id'=>10,'file'=>'source/plugin/violation/template/com/qita.htm','name'=>lang('plugin/aljesc','com_array_19'),'desc'=>'��װ��������������ҳ�г����ߵ���������','url'=>'http://addon.discuz.com/?@aljesc.plugin.49634'),
	11=>array('id'=>11,'file'=>'source/plugin/violation/template/com/commen.htm','name'=>lang('plugin/aljesc','com_array_21'),'desc'=>'��װ�����������۷�����Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49635'),
	12=>array('id'=>12,'file'=>'source/plugin/violation/template/com/reflash.php','name'=>lang('plugin/aljesc','com_array_23'),'desc'=>'��װ�������Ը���ˢ����Ϣ�Ի�ø���ǰ��','url'=>'http://addon.discuz.com/?@aljesc.plugin.49636'),
	13=>array('id'=>13,'file'=>'source/plugin/violation/template/com/top.php','name'=>lang('plugin/aljesc','com_array_25'),'desc'=>'��װ�������Ը����ö���ø���ǰ��չʾ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49637'),
	16=>array('id'=>16,'file'=>'source/plugin/violation/template/com/user.php','name'=>lang('plugin/aljesc','com_array_31'),'desc'=>'��װ�����Ա������ǰ̨����鿴������ѵ���û���Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49638'),
	17=>array('id'=>17,'file'=>'source/plugin/violation/template/com/admin.php','name'=>lang('plugin/aljesc','com_array_33'),'desc'=>'��װ�����Ա�����ں�̨��ǰ̨����鿴�����û���������Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49639'),
	18=>array('id'=>18,'file'=>'source/plugin/violation/template/com/tongbu.php','name'=>lang('plugin/aljesc','com_array_35'),'desc'=>'��װ����԰Ѷ��ֳ���Ϣͬ���������ӵ���ָ̨���İ����','url'=>'http://addon.discuz.com/?@aljesc.plugin.49640'),
	19=>array('id'=>19,'file'=>'source/plugin/violation/template/com/qrcode.php','name'=>lang('plugin/aljesc','com_array_37'),'desc'=>'��װ�����Ϊ��ҳ���鿴ҳ����һ���������ӵĶ�ά�룬�����ֻ�ֱ��','url'=>'http://addon.discuz.com/?@aljesc.plugin.49641'),
	21=>array('id'=>21,'file'=>'source/plugin/violation/template/com/color.htm','name'=>lang('plugin/aljesc','com_array_41'),'desc'=>'��װ������Զ���ѡ��һ����ɫ��ʾ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49642'),
	22=>array('id'=>22,'file'=>'source/plugin/violation/template/mobile/index.htm','name'=>lang('plugin/aljesc','com_array_43'),'desc'=>'��װ��������ֻ����ʲ��','url'=>'http://addon.discuz.com/?@aljesc.plugin.49646'),
	23=>array('id'=>23,'file'=>'source/plugin/violation/template/com/qita.php','name'=>lang('plugin/aljesc','com_array_45'),'desc'=>'����ҳ��չʾ����ȫ����Ϣ','url'=>'http://addon.discuz.com/?@aljesc.plugin.49643'),
	24=>array('id'=>24,'file'=>'source/plugin/violation/template/com/release.php','name'=>lang('plugin/aljesc','com_array_47'),'desc'=>'��װ�󷢲���Ϣ����ָ���������������Զ��������','url'=>'http://addon.discuz.com/?@aljesc.plugin.49644'),
	25=>array('id'=>25,'file'=>'source/plugin/violation/template/com/solve.php','name'=>lang('plugin/aljesc','com_array_49'),'desc'=>'��װ���������Ϊ��Ϣѡ��㶨״̬���������)','url'=>'http://addon.discuz.com/?@aljesc.plugin.49645'),

);
?>