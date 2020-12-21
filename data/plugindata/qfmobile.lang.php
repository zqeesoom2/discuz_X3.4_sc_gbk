<?php
$scriptlang['qfmobile'] = array(
    'qianfan_nav_config'=>'参数配置',
    'qianfan_nav_title'=>'插件设置',
    'qianfan_nav_mobilebind'=>'手机绑定列表',
    'qianfan_nav_thirdbind'=>'第三方绑定列表',
    'qianfan_unbind_thirdbind_success'=>'解除第三方绑定成功',
    'qianfan_cloud_host'=>'云服务器接口域名',
    'qianfan_cloud_reads'=>'阅读配置',
    'qianfan_allow_notice'=>'是否开启云通知',
    'qianfan_reply_notice'=>'是否开启回帖提醒',
    'qianfan_reply_notice_comment'=>'选择开启后，被回复/点赞的用户可以在APP内收到消息通知，开启此功能，会对服务器产生一定的负担；注意：如果版块设置了回复需要审核，则回复通知无法正常运作',
    'qianfan_cloud_host_comment'=>'云服务器接口域名，结尾请加 “/”',
    'qianfan_config' =>'配置',
    'qianfan_mobile_source'=>'用户手机号存储方式',
    'qianfan_mobile_source_bbs'=>'论坛表',
    'qianfan_mobile_source_qianfan'=>'用户手机号存储方式',
    'qianfan_mobile_source_comment'=>'由于原生discuz论坛用户可随意修改手机号，无特殊要求，建议使用千帆表。（重要说明:两种表数据不互通，请勿随意修改）',
    'qianfan_special_group_comment'=>'设置一个用户组，属于该用户组的用户发布的帖子在APP上将以新闻标签显示，帖子详情页不会显示用户头像，只会显示发布者名称',
    'qianfan_special_group'=>'APP新闻帖发帖人所属用户组',
    'qianfan_htmledit'=>'允许pc富文本编辑的用户',
    'qianfan_html_desciption'=>'填写指定用户uid可以pc端编辑千帆富文本帖子，字符串形式:2,3,4,7 ，论坛管理员默认开启。其他用户，则提示请前往APP编辑。',
    'qianfan_thread_replypush'=>'帖子回复推送阀值',
    "qfmobile_register_imgcode_error"=>'请填写正确的图片验证码',
);

$templatelang['qfmobile'] = array(
    'qfmobile_register_mobile'=>'手机号',
    'qfmobile_register_verifycode'=>'短信验证码',
    'qfmobile_register_verifycode_msg'=>'输入您获取到的短信验证码',
    'qfmobile_register_verifycode_desc'=>'验证码将以免费短信的形式发送到您的手机',
    "qfmobile_register_verifycode_btn"=>'点击获取短信验证码',
    "qfmobile_register_username_tip"=>'用户名不能为空',
    "qfmobile_register_password_tip"=>'密码不能为空',
    "qfmobile_register_repassword_tip"=>'确认密码不能为空',
    "qfmobile_register_mobile_error_tip"=>'请填写正确的手机号',
    "qfmobile_register_verifycode_error_tip"=>'请填写正确的短信验证码',
    "qfmobile_register_checktime_second"=>'秒后',
    "qfmobile_register_checktime_after"=>'点击重新发送',
    "qfmobile_register_checktime_retry"=>'点击重新获取短信验证码',
    "qfmobile_register_mobile_exist"=>'该手机已经被注册',
    "qfmobile_register_close"=>'手机注册已经关闭',
    "qfmobile_register_imgcode_error"=>'请填写正确的图片验证码',
    "qfmobile_register_snedsms_fast"=>'抱歉您手速太快了',
    "qfmobile_register_sendsms_error"=>'服务器无响应，发送失败',
    "qfmobile_register_sendsms_succeed"=>'发送成功',
    "qfmobile_register_sendsms_failed"=>'发送失败',
    "qfmobile_register_verifycode_failed"=>'短信验证码错误',
    "qfmobile_register_verifycode_succeed"=>'短信验证码正确',
    "qfmobile_bind_btn"=>'手机绑定',
    "qfmobile_rebind_btn"=>'手机换绑',
    "qfmobile_postlimit_bhind_tip1"=>'本站当前版块开启了绑定手机才能发布的功能。',
    "qfmobile_postlimit_bhind_tip2"=>'您尚未绑定手机号，请先进行绑定手机号操作。',
    "qfmobile_postlimit_bind_submit"=>'前去绑定',
    "qfmobile_postlimit_next_bind"=>'下次绑定',
    "qianfanmobile_findpwd_pwd"=>'手机号找回',
    "qfmobile_bind_mobile_not"=>'您尚未绑定手机号,请先到PC或者APP绑定手机号',
    'qfmobile_register_sendsms_succeed'=>'发送成功',
);

$installlang['qfmobile'] = array();

$systemlang['qfmobile'] = array('file'=>array());
