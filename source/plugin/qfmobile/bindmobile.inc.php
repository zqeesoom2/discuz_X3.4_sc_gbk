<?php
/**
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/23
 * Time: 9:48
 */

if(!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

if( !$_GET['r'] )
{
    die('Access Denied');
}

if ($_GET['r'] == 'bindmobile/captcha'){

    header('Content-Type: image/png');
    //header('Content-Type: image/jpeg'); //JPG、JPEG
    $base_img ='data:image/png;base64,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';
    //  $base_img是获取到前端传递的src里面的值，也就是我们的数据流文件 。data:image/jpg;base64则是指的文件头。
    $base_img = str_replace('data:image/png;base64,', '', $base_img);

    //  设置文件路径和文件前缀名称
    $RootDir = str_replace('\\','/',DISCUZ_ROOT) . str_replace('\\','/',DIRECTORY_SEPARATOR);

    $path = $RootDir."source/plugin/qfmobile/static/bindmobile/img/";

    $prefix='nx_';

    //$output_file = $prefix.time().rand(100,999).'.png';
    $output_file = $prefix.'.png';

    $path = $path.$output_file;

    if (!is_file($path)){
        //  创建将数据流文件写入我们创建的文件内容中

        $ifp = fopen( $path, "wb" );

        fwrite( $ifp, base64_decode( $base_img) );

        fclose($ifp);
    }



// 第二种写进方式

 //file_put_contents($path, base64_decode($base_img));

// 输出文件,后台从文件服务器中获取base64字符串，然后将base64字符串改为数据流返回给前端（类似于我们写验证码一样）
    echo file_get_contents($path);exit();

}else{
    defined( 'TIMESTAMP' ) || define( 'TIMESTAMP' , time() );

//加载千帆插件缓存
    $qianfan_cache_file = DISCUZ_ROOT . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'sysdata' . DIRECTORY_SEPARATOR .
        'cache_qianfan_config.php';
    if( is_file($qianfan_cache_file) )
    {
        include_once DISCUZ_ROOT . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'sysdata' . DIRECTORY_SEPARATOR .
            'cache_qianfan_config.php';
    }
    $plug = DB::result_first("SHOW TABLES LIKE '%qianfan_plugin'");
    if( empty($qianfan_config) && !empty($plug) ) {
        $qianfan_config = DB::result_first("SELECT value FROM %t WHERE name=%s", array('qianfan_plugin', 'config'));
        if( !empty($qianfan_config) ) {
            $qianfan_config = json_decode($qianfan_config, true);
        }
    }

    $qianfan_config = isset( $qianfan_config ) ? $qianfan_config : array();
}


?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <title>bind_bindmobile</title>
    <link rel="stylesheet" type="text/css" href="source/plugin/qfmobile/static/bindmobile/css/pw.css">
    <link rel="stylesheet" type="text/css" href="source/plugin/qfmobile/static/bindmobile/css/bind.css">
</head>
<body style=" background:#d6eaf4;">
<div class="blank40"></div>
<div class="blank40"></div>
<div class="wappers overvisible tpw_nav clearfix pr">
    <div class="blank10"></div>
    <div class="tac"><span class="fs30 bigfs gc3">bind_bindmobile</span></div>
    <div class="gc3 fs14 pa back"><a href="/" class="cf ml5">返回首页</a></div>
</div>
<div class="blank40"></div>
<div class="wappers">
    <div class="pws_content r10">
        <ul class="phone-bang">
            <li>
                <p class="dec">应国家法规对于账号实名的要求，进行下一步操作前，请您先完成手机绑定。</p>
            </li>
            <li>
                <p class="dec">绑定手机后，您可以使用发帖、评论等功能。</p>
                <form method="post" action="">
                    <div class="write_info border_n">
                        <div class="mb20 clearfix">
                            <span class="lable_text fl mr10">
                                                               图片验证:
                            </span>
                            <input id="input_code" type="text" class="long_txt fl mr10">

                                <div class="part_bg verify-code">
                                    <a href="javascript:void(0);" class="get_imagecode">

                                        <img src="http://bbs.discuz.cc/plugin.php?id=qfmobile:bindmobile&r=bindmobile/captcha"class="imgcode">
                                        <!--<img src="http://bbs.07430743.com/plugin.php?id=qianfan:bindmobile&r=bindmobile/captcha"class="imgcode">-->

                                    </a>
                                </div>

                        </div>
                        <div class="mb20 clearfix">
                            <span class="lable_text fl mr10">

                                手机号:
                            </span>
                            <input id="mobile" type="text" class="long_txt fl mr10">
                            <a href="javascript:" id="send_sms" class="fl btn_c">
                                <span><strong><发送验证码</strong></span>
                            </a>
                        </div>
                        <div class="mb20 clearfix">
                        <span class="lable_text fl mr10">

                            验 证 码:
                        </span>
                            <input id="yzm" type="text" class="long_txt fl mr10">
                            <input name="YII_CSRF_TOKEN" type="hidden" id="_csrf" value="06cde987fe6a4e8305a8ef285f62a49a1e6816f5">
                        </div>
                        <div class="yzm btn-box">
                            <a href="javascript:" class="back">返回</a>
                            <a href="javascript:" id="validate_mobile" class="bang">
                            <span>
                                绑定
                            </span>
                            </a>
                        </div>
                    </div>
                </form>
                <p class="dec fs12 help_tip">验证出现问题？您可以向网站客服求助或者在意见区发帖反馈。</p>
                <p class="dec fs12 help_tip">如需找回密码，可到各大市场下载网站APP找回。</p>

            </li>
        </ul>
    </div>
</div>
<div class="blank40"></div>
<div id="footer" class="wappers">
    <p></p>
</div>

<script src="https://cdn.bootcss.com/jquery/1.9.0/jquery.min.js"></script>
<script src="/source/plugin/qfmobile/static/bindmobile/js/bind_gbk.js"></script>
<script type="text/javascript">

    var code_url = "http://bbs.discuz.cc/plugin.php?id=qfmobile:bindmobile&r=bindmobile/captcha";

    var open_image_auth = "1"

    /*refresh image authcode*/
    $('.get_imagecode').click(function () {
        var time = Date.parse(new Date());
        var url = "http://bbs.discuz.cc/plugin.php?id=qfmobile:bindmobile&r=bindmobile/captcha"+"&random="+time;
        $('.imgcode').attr('src',url);
    })

</script>
</body>
</html>




//
<?php
exit();
// change the following paths if necessary
$yii=dirname(__FILE__).'/framework/yiilite.php';
$config=dirname(__FILE__).'/protected/config/main.php';

// remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG', false);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL',3);

// 释放DISCUZ autoload ，就是不用discuz框架
$autoloadtmp = array();
if(function_exists('spl_autoload_unregister'))
{
    $autoloadfuncs = $autoloadtmp = spl_autoload_functions();
    if( $autoloadfuncs )
    {
        foreach( $autoloadfuncs as $key => $val )
        {
          //echo"<pre>";  var_dump($val);array(2) {
            //  [0] =>
            //  string(4) "core"
            //  [1] =>
            //  string(8) "autoload"}
            spl_autoload_unregister($val);
        }
    }
}


require_once($yii);

if( !empty($autoloadtmp) )
{
    foreach( $autoloadtmp as $key => $val )
    {
        Yii::registerAutoloader( $val, 1 );
    }
}

Yii::createWebApplication($config)->run();
?>