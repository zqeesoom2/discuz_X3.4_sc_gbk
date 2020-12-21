<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}
$comarray=array(
	1=>array('id'=>1,'file'=>'source/plugin/violation/template/com/moneyso.htm','name'=>lang('plugin/aljesc','com_array_1'),'desc'=>'安装组件后检索条件价格可以自定义搜索','url'=>'http://addon.discuz.com/?@aljesc.plugin.49625'),
	2=>array('id'=>2,'file'=>'source/plugin/violation/template/com/so.htm','name'=>lang('plugin/aljesc','com_array_3'),'desc'=>'安装组件后可以搜索二手车信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49626'),
	3=>array('id'=>3,'file'=>'source/plugin/violation/template/com/viewadv.htm','name'=>lang('plugin/aljesc','com_array_5'),'desc'=>'安装组件后可以在列表页右下角投放一张广告图片','url'=>'http://addon.discuz.com/?@aljesc.plugin.49627'),
	4=>array('id'=>4,'file'=>'source/plugin/violation/template/com/viewadv1.htm','name'=>lang('plugin/aljesc','com_array_7'),'desc'=>'安装组件后可以在详情页右下角投放一张图片广告','url'=>'http://addon.discuz.com/?@aljesc.plugin.49628'),
	5=>array('id'=>5,'file'=>'source/plugin/violation/template/com/renqi.htm','name'=>lang('plugin/aljesc','com_array_9'),'desc'=>'安装后可以在列表页显示今日、总浏览量统计','url'=>'http://addon.discuz.com/?@aljesc.plugin.49629'),
	6=>array('id'=>6,'file'=>'source/plugin/violation/template/com/gg.htm','name'=>lang('plugin/aljesc','com_array_11'),'desc'=>'安装组件后可以在列表页显示后台填写的一句公告','url'=>'http://addon.discuz.com/?@aljesc.plugin.49630'),
	7=>array('id'=>7,'file'=>'source/plugin/violation/template/com/fenxiang.htm','name'=>lang('plugin/aljesc','com_array_13'),'desc'=>'安装组件后在详情页可以分享信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49631'),
	8=>array('id'=>8,'file'=>'source/plugin/violation/template/com/sixin.htm','name'=>lang('plugin/aljesc','com_array_15'),'desc'=>'安装组件后可以在详情页显示站内私信按钮，可以跟发布人站内互动聊天','url'=>'http://addon.discuz.com/?@aljesc.plugin.49632'),
	9=>array('id'=>9,'file'=>'source/plugin/violation/template/com/guanzhu.htm','name'=>lang('plugin/aljesc','com_array_17'),'desc'=>'安装组件后可以在详情页显示站内关注按钮，可以收听发布人站内广播信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49633'),
	10=>array('id'=>10,'file'=>'source/plugin/violation/template/com/qita.htm','name'=>lang('plugin/aljesc','com_array_19'),'desc'=>'安装组件后可以在详情页列出作者的其它发布','url'=>'http://addon.discuz.com/?@aljesc.plugin.49634'),
	11=>array('id'=>11,'file'=>'source/plugin/violation/template/com/commen.htm','name'=>lang('plugin/aljesc','com_array_21'),'desc'=>'安装组件后可以评论发布信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49635'),
	12=>array('id'=>12,'file'=>'source/plugin/violation/template/com/reflash.php','name'=>lang('plugin/aljesc','com_array_23'),'desc'=>'安装组件后可以付费刷新信息以获得更靠前的','url'=>'http://addon.discuz.com/?@aljesc.plugin.49636'),
	13=>array('id'=>13,'file'=>'source/plugin/violation/template/com/top.php','name'=>lang('plugin/aljesc','com_array_25'),'desc'=>'安装组件后可以付费置顶获得更靠前的展示','url'=>'http://addon.discuz.com/?@aljesc.plugin.49637'),
	16=>array('id'=>16,'file'=>'source/plugin/violation/template/com/user.php','name'=>lang('plugin/aljesc','com_array_31'),'desc'=>'安装后管理员可以在前台管理查看参与培训的用户信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49638'),
	17=>array('id'=>17,'file'=>'source/plugin/violation/template/com/admin.php','name'=>lang('plugin/aljesc','com_array_33'),'desc'=>'安装后管理员可以在后台或前台管理查看所有用户发布的信息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49639'),
	18=>array('id'=>18,'file'=>'source/plugin/violation/template/com/tongbu.php','name'=>lang('plugin/aljesc','com_array_35'),'desc'=>'安装后可以把二手车信息同步生成帖子到后台指定的版块下','url'=>'http://addon.discuz.com/?@aljesc.plugin.49640'),
	19=>array('id'=>19,'file'=>'source/plugin/violation/template/com/qrcode.php','name'=>lang('plugin/aljesc','com_array_37'),'desc'=>'安装后可以为首页、查看页生成一个带有链接的二维码，可用手机直接','url'=>'http://addon.discuz.com/?@aljesc.plugin.49641'),
	21=>array('id'=>21,'file'=>'source/plugin/violation/template/com/color.htm','name'=>lang('plugin/aljesc','com_array_41'),'desc'=>'安装后可以自定义选择一个颜色显示','url'=>'http://addon.discuz.com/?@aljesc.plugin.49642'),
	22=>array('id'=>22,'file'=>'source/plugin/violation/template/mobile/index.htm','name'=>lang('plugin/aljesc','com_array_43'),'desc'=>'安装后可以用手机访问插件','url'=>'http://addon.discuz.com/?@aljesc.plugin.49646'),
	23=>array('id'=>23,'file'=>'source/plugin/violation/template/com/qita.php','name'=>lang('plugin/aljesc','com_array_45'),'desc'=>'独立页面展示作者全部作息','url'=>'http://addon.discuz.com/?@aljesc.plugin.49643'),
	24=>array('id'=>24,'file'=>'source/plugin/violation/template/com/release.php','name'=>lang('plugin/aljesc','com_array_47'),'desc'=>'安装后发布信息允许指定积分类型消耗自定义积分数','url'=>'http://addon.discuz.com/?@aljesc.plugin.49644'),
	25=>array('id'=>25,'file'=>'source/plugin/violation/template/com/solve.php','name'=>lang('plugin/aljesc','com_array_49'),'desc'=>'安装此组件可以为信息选择搞定状态（即已完成)','url'=>'http://addon.discuz.com/?@aljesc.plugin.49645'),

);
?>