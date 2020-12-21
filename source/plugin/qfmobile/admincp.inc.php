<?php
/**
 * Created by PhpStorm.
 * User: leeyifiei
 * Date: 16/1/7
 * Time: 下午3:23
 */

if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
    exit('Access Denied');
}

$do = $_GET['do'];
$_GET['type'] = $_GET['type'] ? $_GET['type'] : 'config';
$_GET['page'] = $_GET['page'] ? $_GET['page'] : 1;

// 检测YII框架下的ASSETS和RUNTIME是否存在并且是否具有写权限
/*
$allow = true;
$assetsPath = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'assets' . DIRECTORY_SEPARATOR;
$runtimePath = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'protected' . DIRECTORY_SEPARATOR . 'runtime' . DIRECTORY_SEPARATOR;

if( !is_dir($assetsPath) || !is_writable($assetsPath) )
{
    $allow = false;
}

if( !is_dir($runtimePath) || !is_writable($runtimePath) )
{
    $allow = false;
}

if( !$allow )
{
    cpmsg(lang('plugin/qianfan', 'qianfan_directory_right_fail', array('PATH1' => $assetsPath,
        'PATH2' => $runtimePath)),
        '',
    'fail');
}

*/
//加载配置缓存
//echo DISCUZ_ROOT . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'sysdata' . DIRECTORY_SEPARATOR .'cache_qianfan_config.php';
//\data\sysdata\cache_qianfan_config.php
include_once DISCUZ_ROOT . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'sysdata' . DIRECTORY_SEPARATOR .
    'cache_qianfan_config.php';

if( empty($qianfan_config) ) {
    $qianfan_config = DB::result_first("SELECT value FROM %t WHERE name=%s", array('qianfan_plugin', 'config'));
    if( !empty($qianfan_config) ) {
        $qianfan_config = json_decode( $qianfan_config, true );
    }
}

// 头部导航
$navs = array('config', 'mobilebind', 'thirdbind');
$navdata = array();
foreach( $navs as $key => $nav )
{
    $navdata[] = array(
        lang('plugin/qfmobile', 'qianfan_nav_' . $nav), 'plugins&operation=config&do='.$do.'&type=' . $nav, $nav ==
        $_GET['type']
    );
}
showsubmenu( lang('plugin/qfmobile', 'qianfan_nav_title'), $navdata);

// 基本参数配置
if( $_GET['type'] == 'config' || empty($_GET['type']) )
{
    if( submitcheck('submit') ) {
        $cloud_host = $_GET['cloud_host'];
        $cloud_secretkey = $_GET['cloud_secretkey'];
        $cloud_reads = $_GET['cloud_reads'] ? $_GET['cloud_reads']: 1;
        $cloud_allow_notice = $_GET['cloud_allow_notice'];
        $cloud_thread_replypush = $_GET['cloud_thread_replypush'];
        $cloud_fids_push = $_GET['cloud_fids_push'];
        $cloud_reply_notice = $_GET['cloud_reply_notice'];
        $search_id = $_GET['search_id'];
        $thread_match = $_GET['thread_match'];
        $special_group = $_GET['qianfan_groupid'];
        $search_sort = $_GET['search_sort'] ? $_GET['search_sort'] : 0;
        $open_image_auth = $_GET['open_image_auth'] ? $_GET['open_image_auth'] : 0;
        $search_user_type = $_GET['search_user_type'] ? $_GET['search_user_type'] : 0;
        $mobile_source = $_GET['mobile_source'] ? $_GET['mobile_source'] : 2;
        $htmledit_uid = $_GET['htmledit_uid']? $_GET['htmledit_uid'] : array() ;

        $cloud_thread_replypush = explode("\r\n", $cloud_thread_replypush);
        $cloud_fids_push = explode( "\r\n", $cloud_fids_push );

        $replypush_array = array();
        if (!empty($cloud_thread_replypush))
        {
            foreach( $cloud_thread_replypush as $key => $val )
            {
                if( is_numeric($val) && $val )
                {
                    $replypush_array[] = $val;
                }
            }
        }

        $htmledit_uid_array = array();
        $htmledit_uid = explode( ",", $htmledit_uid );
        if (!empty($htmledit_uid))
        {
            foreach($htmledit_uid as $val )
            {
                if( is_numeric($val) && $val )
                {
                    $htmledit_uid_array[] = $val;
                }
            }
        }

        $fidspush_array = array();
        if( !empty( $cloud_fids_push ) )
        {
            foreach( $cloud_fids_push as $key => $val )
            {
                if( is_numeric($val) && $val )
                {
                    $fidspush_array[] = $val;
                }
            }
        }

        $config = array(
            'cloud_host' => $cloud_host,
            'cloud_secretkey' => $cloud_secretkey,
            'cloud_reads' => $cloud_reads,
            'cloud_allow_notice' => $cloud_allow_notice,
            'cloud_fids_push' => $fidspush_array,
            'cloud_reply_notice' => $cloud_reply_notice,
            'cloud_thread_replypush' => $replypush_array,
            'search_id' => $search_id,
            'thread_match' => $thread_match,
            'qianfan_groupid' => $special_group,
            'search_sort' => $search_sort,
            'open_image_auth' => $open_image_auth,
            'search_user_type' => $search_user_type,
            'mobile_source' => $mobile_source,
            'htmledit_uid' => $htmledit_uid_array
        );

        //写配置缓存
        require_once libfile('function/cache');
        writetocache( 'qianfan_config', getcachevars(array('qianfan_config' => $config)) );

        $con = DB::result_first("SELECT value FROM %t WHERE name=%s", array('qianfan_plugin', 'config'));
        // 富文本附件处理
        $pic = json_decode($con);
        $config['app_pic'] = isset($pic->app_pic) && !empty($pic->app_pic) ? $pic->app_pic : '';

        $value = json_encode($config);
        if( empty($con) ) {
            DB::insert("qianfan_plugin", array("name" => 'config', "value" => $value, "time" => time()));
        }else {
            DB::update( "qianfan_plugin", array("value" => $value, "time" => time()), array("name" => "config") );
        }

        dheader( 'Location:?action=plugins&operation=config&identifier=qianfan' );
    }
    else
    {
        //print_r( $qianfan_config );

        $qianfan_config['mobile_source']  = isset($qianfan_config['mobile_source']) ? (int)$qianfan_config['mobile_source'] : 2;

        $qianfan_config['cloud_reads'] = $qianfan_config['cloud_reads'] ? $qianfan_config['cloud_reads'] : 1;
        showformheader( 'plugins&operation=config&identifier=qianfan&pmod=admincp' );

        showtableheader( lang('plugin/qfmobile', 'qianfan_config') );

        //配置云服务器HOST
        showsetting( lang('plugin/qfmobile', 'qianfan_cloud_host'), 'cloud_host', $qianfan_config['cloud_host'], 'text', '',
            0, lang('plugin/qfmobile', 'qianfan_cloud_host_comment') );

        //配置通信秘钥
        showsetting( lang('plugin/qfmobile', 'qianfan_cloud_secretkey'), 'cloud_secretkey',
            $qianfan_config['cloud_secretkey'], 'text', '', 0, lang('plugin/qfmobile', 'qianfan_cloud_secretkey_comment') );
			
        //点一次刷新的阅读量
        showsetting( lang('plugin/qfmobile', 'qianfan_cloud_reads'), 'cloud_reads',
            $qianfan_config['cloud_reads'], 'text', '', 0, lang('plugin/qfmobile', 'qianfan_cloud_reads_comment') );
			
        //是否开启云通知
        showsetting( lang('plugin/qfmobile', 'qianfan_allow_notice'), 'cloud_allow_notice',
            $qianfan_config['cloud_allow_notice'], 'radio', 0, 0, lang('plugin/qfmobile', 'qianfan_allow_notice_comment') );

        //配置客户端推送的版块
//        showsetting( lang('plugin/qianfan', 'qianfan_fid_push'), 'cloud_fids_push', implode("\r\n",
//            $qianfan_config['cloud_fids_push']),
//            'textarea', '', 0, lang
//            ('plugin/qianfan', 'qianfan_fid_push_comment') );

        //是否开启回帖提醒
        showsetting( lang('plugin/qfmobile', 'qianfan_reply_notice'), 'cloud_reply_notice',
            $qianfan_config['cloud_reply_notice'], 'radio', '', 0, lang('plugin/qfmobile', 'qianfan_reply_notice_comment') );

        //允许pc富文本编辑的用户
        showsetting( lang('plugin/qfmobile', 'qianfan_htmledit'), 'htmledit_uid',
            implode(",", $qianfan_config['htmledit_uid']),
            'textarea', '', 0, lang('plugin/qianfan', 'qianfan_html_desciption') );

        showsetting( lang('plugin/qfmobile', 'qianfan_thread_replypush'), 'cloud_thread_replypush',
            implode("\r\n", $qianfan_config['cloud_thread_replypush']),
            'textarea', '', 0, lang('plugin/qfmobile', 'qianfan_thread_replypush_comment') );

        /*
        //百度站内搜索ID
        showsetting( lang('plugin/qianfan', 'qianfan_search_id'), 'search_id',
            $qianfan_config['search_id'], 'text', '', 0, lang('plugin/qianfan', 'qianfan_search_id_comment') );

        //搜索帖子URL匹配
        showsetting( lang('plugin/qianfan', 'qianfan_thread_match'), 'thread_match',
            $qianfan_config['thread_match'], 'text', '', 0, lang('plugin/qianfan', 'qianfan_thread_match_comment') );

        //APP帖子搜索结果排序，0：默认（按匹配度），1：按时间，2：按回复数
        showsetting( lang('plugin/qianfan', 'qianfan_search_sort'), array('search_sort', array(
            array(0, lang('plugin/qianfan', 'qianfan_search_sort_def')),
            array(1, lang('plugin/qianfan', 'qianfan_search_sort_postdate')),
            array(2, lang('plugin/qianfan', 'qianfan_search_sort_reply')),
        )), intval($qianfan_config['search_sort']), 'mradio', '', 0, lang('plugin/qianfan', 'qianfan_search_sort_comment') );

        // APP搜索用户方式0：默认（右匹配）， 1：全部匹配，
        showsetting( lang('plugin/qianfan', 'qianfan_search_user_type'), 'search_user_type',
            $qianfan_config['search_user_type'], 'radio', '', 0, lang('plugin/qianfan', 'qianfan_search_user_type_comment') );
        */

        // 手机号存储方式
        showsetting( lang('plugin/qfmobile', 'qianfan_mobile_source'), array('mobile_source', array(
            array(1, lang('plugin/qfmobile', 'qianfan_mobile_source_bbs')),
            array(2, lang('plugin/qfmobile', 'qianfan_mobile_source_qianfan')),
        )), intval($qianfan_config['mobile_source']), 'mradio', '', 0, lang('plugin/qfmobile', 'qianfan_mobile_source_comment') );

        //app帖子特殊显示的用户组--用户组单选
        if( !empty($qianfan_config['cloud_host']) && (is_int(strpos($qianfan_config['cloud_host'], 'jztvxmt')) || is_int(strpos($qianfan_config['cloud_host'], 'bbs965333')) || is_int(strpos($qianfan_config['cloud_host'], 'ks.qianfanapi')) || is_int(strpos($qianfan_config['cloud_host'], 'quxian.qianfanapi')) ) ) {
            $groupselect = array();
            $query = C::t('common_usergroup')->fetch_all_not(array(6, 7), true);
            foreach ($query as $group) {
                $group['type'] = $group['type'] == 'special' && $group['radminid'] ? 'specialadmin' : $group['type'];
                $groupselect[$group['type']] .= "<option value=\"$group[groupid]\" " . ($group['groupid'] == $qianfan_config['qianfan_groupid'] ? 'selected' : '') . ">$group[grouptitle]</option>\n";
            }
            $groupselect = '<optgroup label="' . $lang['usergroups_member'] . '">' . $groupselect['member'] . '</optgroup>' .
                ($groupselect['special'] ? '<optgroup label="' . $lang['usergroups_special'] . '">' . $groupselect['special'] . '</optgroup>' : '') .
                ($groupselect['specialadmin'] ? '<optgroup label="' . $lang['usergroups_specialadmin'] . '">' . $groupselect['specialadmin'] . '</optgroup>' : '') .
                '<optgroup label="' . $lang['usergroups_system'] . '">' . $groupselect['system'] . '</optgroup>';
            showsetting(lang('plugin/qfmobile', 'qianfan_special_group'), '', '', '<select name="qianfan_groupid">' . $groupselect . '</select>', '', '', lang('plugin/qfmobile', 'qianfan_special_group_comment'));
        }

        showsubmit( 'submit', lang('plugin/qianfan', 'qianfan_save') );

        showtablefooter();

        showformfooter();
    }
}
// 客户端手机绑定
elseif( $_GET['type'] == 'mobilebind' )
{
    if( $_GET['mobiledo'] == 'delete' )
    {
        DB::query("DELETE FROM %t WHERE uid=%d", array("phonebind", $_GET['uid']));

        //通知云，清空用户手机号
        if(isset($qianfan_config) && $qianfan_config['cloud_host'] && $qianfan_config['cloud_secretkey'] && $_GET['uid']) {
            $post_params = array();
            require_once('hook.class.php');
            $post_params['uid'] = intval($_GET['uid']);
            $post_params['nonce'] = paramSign::nonce(32);
            $post_params['codeSign'] = paramSign::sign($post_params, $qianfan_config['cloud_secretkey']);

            $requestUrl = rtrim( $qianfan_config['cloud_host'], '/' ) . '/' . 'remotenote/message/delete-phone';
            dfsockopen($requestUrl, 0, $post_params, '', 0, '', 1, 1, 'URLENCODE', 1, 0 );
        }

        cpmsg(lang('plugin/qianfan', 'qianfan_unbind_mobile_success'),
            'action=plugins&operation=config&do='.$do.'&type=mobilebind', 'succeed');
    }
    elseif( !$_GET['mobiledo'] )
    {
        showformheader('plugins&operation=config&do='.$do.'&type=mobilebind');
        echo '<div style="height:30px;line-height:30px;"><input name="srchforummobile" type="text" id="srchforumipt" class="txt"
placeholder="'. lang('plugin/qianfan','qianfan_input_searchmobile_placeholder') .'" value="'. $_POST['srchforummobile'] .'" /> <input
type="submit"
class="btn" value="'.cplang('search').'" /></div>';
        showformfooter();

        $srchforummobile = $_POST['srchforummobile'] ? $_POST['srchforummobile'] : $_GET['srchforummobile'];

        //支持uid,username,phone搜索
        if($srchforummobile) {
            if(preg_match('/^1[3456789]{1}\d{9}$/', $srchforummobile)) {
                $srchforumphone = $srchforummobile;
                $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE phone=%s", array("phonebind", $srchforumphone));
            }elseif(preg_match('/^\d{1,10}$/', $srchforummobile)) {
                $srchforumuid = $srchforummobile;
                $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE uid=%s", array("phonebind", $srchforumuid));
            }else{
                $srchforumusername = $srchforummobile;
                $srchforumuserid = DB::result_first("SELECT uid FROM %t WHERE username=%s", array("common_member", $srchforumusername));
                if($srchforumuserid){
                    $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE uid=%s", array("phonebind", $srchforumuserid));
                }
            }
        }else {
            $totalcount = DB::result_first("SELECT count(*) FROM %t", array("phonebind"));
        }

        $multipage = '';
        $ppp = 30;

        $offset = ($_GET['page'] - 1) * $ppp;

        if($totalcount)
        {
            $multipage = multi($totalcount, $ppp, $page, ADMINSCRIPT . '?action=plugins&operation=config&do='.$do.'&type=mobilebind&srchforummobile=' . $srchforummobile);
            $sql = "SELECT t.*, s.username FROM %t t LEFT JOIN %t s ON t.uid = s.uid";
            $sqlWhere = array();
            $sqlCondition = array("phonebind", "common_member");
            if( $srchforummobile )
            {
                if($srchforumphone) {
                    $sqlWhere[] = "phone = %s";
                    $sqlCondition[] = $srchforumphone;
                }elseif($srchforumuid) {
                    $sqlWhere[] = "t.uid = %s";
                    $sqlCondition[] = intval($srchforumuid);
                }elseif($srchforumuserid) {
                    $sqlWhere[] = "t.uid = %s";
                    $sqlCondition[] = $srchforumuserid;
                }
            }

            if( $sqlWhere )
            {
                $sql .= " WHERE " . implode( " AND ", $sqlWhere );
            }
            $sql .= " LIMIT %d, %d";
            $sqlCondition[] = $offset;
            $sqlCondition[] = $ppp;
            $rows = DB::fetch_all( $sql, $sqlCondition );

            if( !empty($rows) )
            {
                showtableheader();
                showsubtitle(array('', 'UID', 'USERNAME', 'MOBILE', 'BINDTIME',''));
                foreach( $rows as $key => $row )
                {
                    showtablerow('', array(), array(
                        '',
                        $row['uid'],
                        $row['username'] ? $row['username'] : '<font color="red">' . lang('plugin/qianfan',
                                'qianfan_user_delete') .
                            '</font>',
                        $row['phone'],
                        date('Y-m-d H:i', $row['dateline']),
                        '<a href="'. ADMINSCRIPT . '?action=plugins&operation=config&do='.$do.'&type=mobilebind&mobiledo=delete&uid=' . $row['uid'] .'">'. lang('plugin/qianfan','qianfan_unbind_mobile') .'</a>'
                    ));
                }
                showtablefooter();
                echo $multipage;
                //showsubmit('', '', $multipage);
            }
        }

    }
}elseif( $_GET['type'] == 'thirdbind' )
{
    if( $_GET['binddo'] == 'delete' )
    {
        $uid = (int)$_GET['uid'];
        $type = trim($_GET['weibotype']);
        DB::query("DELETE FROM %t WHERE uid=%s AND weibotype=%s", array("thirdbind", $uid, $type));
        if($type == 'qq') {
            DB::query("DELETE FROM %t WHERE uid=%s", array("common_member_connect", $uid));
        }

        if(isset($qianfan_config) && $qianfan_config['cloud_host'] && $qianfan_config['cloud_secretkey'] && $_GET['uid']) {
            $post_params = array();
            $post_params['uid'] = $uid;
            $post_params['type'] = $type;
            $requestUrl = rtrim( $qianfan_config['cloud_host'], '/' ) . '/' . 'api1_2/site/update-user-third-platform';
            getResponse($qianfan_config['cloud_secretkey'], $requestUrl, array(), $post_params);
        }

        cpmsg(lang('plugin/qianfan', 'qianfan_unbind_thirdbind_success'),
            'action=plugins&operation=config&do='.$do.'&type=thirdbind', 'succeed');
    }
    elseif( !$_GET['binddo'] )
    {
        showformheader('plugins&operation=config&do='.$do.'&type=thirdbind');
        echo '<div style="height:30px;line-height:30px;"><input name="srchforummobile" type="text" id="srchforumipt" class="txt"
placeholder="'. lang('plugin/qianfan','qianfan_input_searchmobile_placeholder') .'" value="'. $_POST['srchforummobile'] .'" /> <input
type="submit"
class="btn" value="'.cplang('search').'" /></div>';
        showformfooter();

        $srchforummobile = $_POST['srchforummobile'] ? $_POST['srchforummobile'] : $_GET['srchforummobile'];

        //支持uid,username,phone搜索
        if($srchforummobile) {
            if(preg_match('/^1[34578]{1}\d{9}$/', $srchforummobile)) {
                $srchforumphone = $srchforummobile;
                $srchforumuserid = DB::result_first("SELECT uid FROM %t WHERE phone=%s", array("phonebind", $srchforumphone));
                if($srchforumuserid){
                    $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE uid=%s", array("thirdbind", $srchforumuserid));
                }
            } elseif (preg_match('/^\d{1,10}$/', $srchforummobile)) {
                $srchforumuid = $srchforummobile;
                $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE uid=%s", array("thirdbind", $srchforumuid));
            }else{
                // 改为unionid搜索
                $srchforumusername = $srchforummobile;
                $srchforumuserid = DB::result_first("SELECT uid FROM %t WHERE unionid=%s", array("thirdbind", $srchforumusername));
                $totalcount = DB::result_first("SELECT count(*) FROM %t WHERE unionid=%s", array("thirdbind", $srchforumusername));
            }
        }else {
            $totalcount = DB::result_first("SELECT count(*) FROM %t", array("thirdbind"));
        }

        $multipage = '';
        $ppp = 30;

        $offset = ($_GET['page'] - 1) * $ppp;

        if($totalcount)
        {
            $multipage = multi($totalcount, $ppp, $page, ADMINSCRIPT . '?action=plugins&operation=config&do='.$do.'&type=thirdbind&srchforummobile=' . $srchforummobile);
            $sql = "SELECT t.*, s.username FROM %t t LEFT JOIN %t s ON t.uid = s.uid";
            $sqlWhere = array();
            $sqlCondition = array("thirdbind", "common_member");
            if( $srchforummobile )
            {
                if($srchforumuid) {
                    $sqlWhere[] = "t.uid = %s";
                    $sqlCondition[] = intval($srchforumuid);
                }elseif($srchforumuserid) {
                    $sqlWhere[] = "t.uid = %s";
                    $sqlCondition[] = $srchforumuserid;
                }
            }

            if( $sqlWhere )
            {
                $sql .= " WHERE " . implode( " AND ", $sqlWhere );
            }
            $sql .= " LIMIT %d, %d";
            $sqlCondition[] = $offset;
            $sqlCondition[] = $ppp;
            $rows = DB::fetch_all( $sql, $sqlCondition );

            if( !empty($rows) )
            {
                showtableheader();
                showsubtitle(array('', 'UID', 'USERNAME', 'TYPE', 'UNIONID', 'BINDTIME',''));
                foreach( $rows as $key => $row )
                {
                    $unionid = $row['unionid'] ? str_replace(substr($row['unionid'], 3, -4), '********', $row['unionid']) : '';
                    showtablerow('', array(), array(
                        '',
                        $row['uid'],
                        $row['username'] ? $row['username'] : '<font color="red">' . lang('plugin/qianfan',
                                'qianfan_user_delete') .
                            '</font>',
                        $row['weibotype'],
                        $unionid,
                        date('Y-m-d H:i', $row['dateline']),
                        '<a href="'. ADMINSCRIPT . '?action=plugins&operation=config&do='.$do.'&type=thirdbind&binddo=delete&uid=' . $row['uid'] .'&weibotype='.$row['weibotype'].'">'. lang('plugin/qianfan','qianfan_unbind_mobile') .'</a>'
                    ));
                }
                showtablefooter();
                echo $multipage;
                //showsubmit('', '', $multipage);
            }
        }

    }


}

function getResponse($secret_key, $url, $get_params, $post_data = array())
{
    $timeout = 5;
    $nonce = rand(10000, 99999);
    $timestamp = time();
    $array = array($nonce, $timestamp, $secret_key);
    sort($array, SORT_STRING);
    $token = md5(implode($array));
    $params['nonce'] = $nonce;
    $params['timestamp'] = $timestamp;
    $params['token'] = $token;
    $params = array_merge($params, $get_params);
    $url .= '?';
    foreach ($params as $k => $v) {
        $url .= $k . '=' . $v . '&';
    }
    $url = rtrim($url, '&');
    $curlHandle = curl_init();
    curl_setopt($curlHandle, CURLOPT_URL, $url);
    curl_setopt($curlHandle, CURLOPT_HEADER, 0);
    curl_setopt($curlHandle, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curlHandle, CURLOPT_USERAGENT, 'iphone, qianfan');

    curl_setopt($curlHandle, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($curlHandle, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curlHandle, CURLOPT_POST, count($post_data));
    curl_setopt($curlHandle, CURLOPT_POSTFIELDS, $post_data);
    curl_setopt($curlHandle, CURLOPT_CONNECTTIMEOUT, $timeout);
    curl_setopt($curlHandle, CURLOPT_TIMEOUT, $timeout);

    $data = curl_exec($curlHandle);
    $status = curl_getinfo($curlHandle, CURLINFO_HTTP_CODE);
    if ($status != 200) {
        return false;
    }
    curl_close($curlHandle);
    return $data;
}


