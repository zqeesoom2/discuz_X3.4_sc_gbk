<?php

/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

//define("DOMAIN","http://info.07430743.com/renao/ershouche/");//附件服务器地址
//define("DOMAIN","http://www.07430743.com/css/ad/2020/");//附件服务器地址
define("DOMAIN","/");//附件服务器地址
if($_GET['act']!="view"&&$_GET['act']!="member"&&$_GET['act']!="top"&&isset($_GET['act'])){
   // Header("Location: http://58.07430743.com");exit;
}
class allen_ftp{
    public $off;
    public $conn_id;
    function __construct($host,$port,$user,$pwd){

        $this->conn_id = @ftp_connect($host,$port) or die("FTP连接失败");
        @ftp_login($this->conn_id,$user,$pwd) or die("FTP登录失败");
        @ftp_pasv($this->conn_id,1);
    }
    function up_file($path,$newpath){
// 开始上传
        $ret = ftp_nb_put($this->conn_id, $newpath, $path, FTP_BINARY);

        while ($ret == FTP_MOREDATA) {

            $ret = ftp_nb_continue ($this->conn_id);
        }

        if ($ret != FTP_FINISHED) {//当发生错误会的时候$ret = 0 ;FTP_FINISHED=1;

            echo "alert('上传文件中发生错误...')";
            return (0);
        }else{
            unlink($path);
            $this->close();
            return (1);
        }

    }
    function close(){
        @ftp_close($this->conn_id);
    }
}
function rotatePicture($src,$dest){
    $exif=exif_read_data($src);
    if(isset($exif['Orientation']) && $exif['Orientation'] == 6){
        $source = imagecreatefromjpeg($src);
        $rotate = imagerotate($source, -90, 0);
        imagejpeg($rotate,$dest);
    }
    if(isset($exif['Orientation']) && $exif['Orientation'] == 3){
        $source = imagecreatefromjpeg($src);
        $rotate = imagerotate($source, -180, 0);
        imagejpeg($rotate,$dest);
    }
}
//$pluginid='aljesc';
$pluginid='violation';
$_GET=dhtmlspecialchars($_GET);
require_once libfile('function/discuzcode');
require_once 'source/plugin/violation/function/function_core.php';
include_once libfile('function/editor');
require_once DISCUZ_ROOT.'source/plugin/violation/class/qrcode.class.php';
if (file_exists("source/plugin/violation/template/com/qrcode.php")) {
    if (!file_exists("source/plugin/violation/images/qrcode/aljesc_qrcode.jpg")) {
        include 'source/plugin/violation/template/com/qrcode.php';
    }
}
if($_GET['act']&&$_GET['act']!='view'&&$_GET['act']!='ask'&&$_GET['act']!='upload'&&$_GET['act']!='mupload'&&$_GET['act']!='mobile_deleteattach'){
    if(!$_G['uid']){
        showmessage(lang('plugin/violation','aljesc_1'), '', array(), array('login' => true));
    }
}
//用户表
if ($_G['uid']) {
    if (!C::t('#violation#aljesc_user')->fetch($_G['uid'])) {

        C::t('#violation#aljesc_user')->insert(array('uid' => $_G['uid'], 'username' => $_G['username'], 'dateline' => TIMESTAMP, 'last' => TIMESTAMP));
    } else {
        C::t('#violation#aljesc_user')->update_last_by_uid($_G['uid']);
    }
}
//用户访问记录
if (!C::t('#violation#aljesc_log')->fetch(gmdate('Ymd', TIMESTAMP))) {
    C::t('#violation#aljesc_log')->insert(array('day' => gmdate('Ymd', TIMESTAMP), 'views' => 1));
} else {
    C::t('#violation#aljesc_log')->update_views_by_day(gmdate('Ymd', TIMESTAMP));
}
$aljesc_seo = dunserialize($_G['setting']['aljesc_seo']);
$settings=C::t('#violation#aljesc_setting')->range();
if($settings['iswatermark']['value']){
    require_once DISCUZ_ROOT.'source/plugin/violation/class/class_image.php';
    $image = new aljbd_image;
}
if (!file_exists("source/plugin/violation/images/qrcode/aljesc_qrcode_logo.jpg")  && $settings['qrcode_logo']['value']) {
    copy('http://qr.liantu.com/api.php?logo='.$_G['siteurl'].$settings['qrcode_logo']['value'].'&text='.$_G['siteurl'].'plugin.php?id=aljesc','source/plugin/aljesc/images/qrcode/aljesc_qrcode_logo.jpg');
}
$Announcement_rolling = explode ("\n", str_replace ("\r", "", $settings['Announcement_rolling']['value']));
foreach($Announcement_rolling as $key=>$value){
    $Announcement_rolling_list[]=explode('|',$value);
}
$config = $_G['cache']['plugin']['violation'];
$typelist = explode ("\n", str_replace ("\r", "", $config ['pinpai']));
foreach($typelist as $key=>$value){
    $arr=explode('=',$value);
    $types[$arr[0]]=$arr[1];
}
$paylist = explode ("\n", str_replace ("\r", "", $config ['jg']));
foreach($paylist as $key=>$value){
    $arr=explode('=',$value);
    $pay_types[$arr[0]]=$arr[1];
}
$particular_year_list = explode ("\n", str_replace ("\r", "", $config ['particular_year']));
foreach($particular_year_list as $key=>$value){
    $arr=explode('=',$value);
    $particular_year_types[$arr[0]]=$arr[1];
}
$gearboxlist = explode ("\n", str_replace ("\r", "", $config ['gearbox']));
foreach($gearboxlist as $key=>$value){
    $arr=explode('=',$value);
    $gearbox_types[$arr[0]]=$arr[1];
}
$vehicle_colorlist = explode ("\n", str_replace ("\r", "", $config ['vehicle_color']));
foreach($vehicle_colorlist as $key=>$value){
    $arr=explode('=',$value);
    $vehicle_color_types[$arr[0]]=$arr[1];
}
$vehicle_level_list = explode ("\n", str_replace ("\r", "", $config ['vehicle_level']));
foreach($vehicle_level_list as $key=>$value){
    $arr=explode('=',$value);
    $vehicle_level_types[$arr[0]]=$arr[1];
}
$use_list = explode ("\n", str_replace ("\r", "", $config ['use']));
foreach($use_list as $key=>$value){
    $arr=explode('=',$value);
    $use_types[$arr[0]]=$arr[1];
}
$regions = C::t('#violation#aljesc_region')->range();
$shengming=str_replace ("{sitename}", $_G['setting']['bbname'], $config ['shengming']);
$_G['setting']['switchwidthauto'] = 0;
$_G['setting']['allowwidthauto'] = 1;
$pos_zw = C::t('#violation#aljesc_position')->range();
if($_GET['act'] == 'user'){
    include template('aljesc:user');
}else if($_GET['act']=='mobile_delete'){
    $user=C::t('#aljesc#aljesc')->fetch($_GET['lid']);
    $url='plugin.php?id=aljesc&act=delete&lid='.$_GET['lid'];
    include template('aljesc:state');
}else if($_GET['act']=='admingetregion'){
    if($_GET['upid']){
        $rlist=C::t('#aljesc#aljesc_region')->fetch_all_by_upid_sys($_GET['upid']);
    }
    include template('aljesc:admingetregion');
}else if($_GET['act']=='admingetregion1'){
    if($_GET['upid']){
        $rlist=C::t('#aljesc#aljesc_region')->fetch_all_by_upid_sys($_GET['upid']);
    }
    include template('aljesc:admingetregion1');
}else if($_GET['act'] == 'solve'){
    if (file_exists("source/plugin/aljesc/template/com/solve.php")) {
        include 'source/plugin/aljesc/template/com/solve.php';
    }
}else if($_GET['act'] == 'collection'){
    if(!$_G['uid']){
        showmessage('请先登录！', '', array(), array('login' => true));
    }
    if (empty($_GET['lid'])) {
        showmessage('您查看的二手车信息不存在');
    }
    C::t('#violation#aljesc_collection')->insert(array(
        'lid'=>$_GET['lid'],
        'uid'=>$_G['uid'],
        'dateline'=>TIMESTAMP,
    ));
    showmessage('收藏成功','plugin.php?id=violation&act=view&lid='.$_GET['lid']);
}else if($_GET['act'] == 'collection_list'){
    if(!$_G['uid']){
        showmessage(lang('plugin/aljesc','aljesc_1'), '', array(), array('login' => true));
    }
    $currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = $config['page'];
    $num = DB::result_first('select count(*) from %t where uid=%d',array('aljesc_collection',$_G['uid']));
    $start = ($currpage - 1) * $perpage;

    $logs = DB::fetch_all('select * from %t where uid=%d limit %d,%d',array('aljesc_collection',$_G['uid'],$start,$perpage));
    $paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=violation&act=collection_list', 0, 11, false, false);
    $navtitle = $config['title'];
    $metakeywords = $config['keywords'];
    $metadescription = $config['description'];
    if($aljesc_seo['collection']['seotitle']){
        $seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['collection']);
    }
    include template('violation:collection_list');
} else if ($_GET['act'] == 'collection_del') {
    $user=C::t('#aljesc#aljesc_collection')->fetch($_GET['cid']);
    if($user['uid']!=$_G['uid']&&$_G['adminid']!=1){
        showmessage(lang('plugin/aljesc','aljesc_8'));
    }
    C::t('#aljesc#aljesc_collection')->delete($_GET['cid']);
    showmessage(lang('plugin/aljesc','aljesc_7'), 'plugin.php?id=aljesc&act=collection_list');
}else if($_GET['act'] == 'attes'){
    if (file_exists("source/plugin/violation/template/com/attes.php")) {
        include 'source/plugin/violation/template/com/attes.php';
    }
}else if ($_GET['act'] == 'post') {
    if (submitcheck('formhash')) {
        if (empty($_GET['title'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('标题不能为空','');</script>";
                exit;
            }else{
                showerror('标题不能为空');
            }
        }
        if (empty($_GET['pos'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('品牌必须选择','');</script>";
                exit;
            }else{
                showerror('品牌必须选择');
            }
        }
        if (empty($_GET['region'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('所在地必须选择！','');</script>";
                exit;
            }else{
                showerror('所在地必须选择！');
            }
        }
        if (empty($_GET['contact'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('联系电话必须填写','');</script>";
                exit;
            }else{
                showerror('联系电话必须填写');
            }
        }
        //Image bulk upload s
        if($_G['cache']['plugin']['aljibu'][$pluginid]){
            include 'source/plugin/aljibu/include/ibu_post.php';
        }else{
            for ($i = 1; $i <= 8; $i++) {
                $pic = 'pic' . $i;
                if ($_FILES[$pic]['tmp_name']) {
                    $picname = $_FILES[$pic]['name'];
                    $picsize = $_FILES[$pic]['size'];

                   //if ($picsize/1024>$config['img_size']) {
                    if ($picsize/1024>8192) { //8M之内
                        if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                            echo "<script>parent.tips('上传图片不能超过".$config['img_size'].'K'."','');</script>";
                            exit;
                        }else{
                            showerror('上传图片不能超过'.$config['img_size'].'K');
                        }
                    }
                    if ($picname != "") {
                        $type = strtolower(strrchr($picname, '.'));
                        if ($type != ".gif" && $type != ".jpg" && $type != ".png" && $type != ".jpeg") {
                            if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                                echo "<script>parent.tips('请上传.jpg .gif .png格式的图片','');</script>";
                                exit;
                            }else{
                                showerror('请上传.jpg .gif .png格式的图片');
                            }
                        }
                        $rand = rand(100, 999);
                        $pics = date("YmdHis") . $rand . $type;
                        $img_dir = 'source/plugin/violation/images/logo/';
                        if (!is_dir($img_dir)) {
                            mkdir($img_dir);
                        }
                        $$pic = $img_dir . $pics;
                        if (@copy($_FILES[$pic]['tmp_name'], $$pic) || @move_uploaded_file($_FILES[$pic]['tmp_name'], $$pic)) {
                            //rotatePicture($$pic,$$pic);//ISO旋转图片-???度
                            $imageinfo = getimagesize($$pic);
                            if($settings['iswatermark']['value']){
                                $image->Watermark(DISCUZ_ROOT.'./'.$$pic,'', 'forum');
                            }
                            //这里ftp有问题，可能是权限问题，就用上传本地的服务器上
                            break;

                            $w64 = $imageinfo[0] < 255 ? $imageinfo[0] : 255;
                            $h64 = $imageinfo[1] < 192 ? $imageinfo[1] : 192;

                            $w640 = $imageinfo[0] < 800 ? $imageinfo[0] : 800;
                            $h480 = $imageinfo[1] < 800 ? $imageinfo[1] : 800;
                            $w140 = $imageinfo[0] < 280 ? $imageinfo[0] : 280;
                            $h100 = $imageinfo[1] < 200 ? $imageinfo[1] : 200;

                            img2thumb($$pic, $$pic . '.280x200.jpg', $w140, $h100);

                           // $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            $ftp=new allen_ftp("120.26.218.60","21","test","x6lr9LpHIo4P");
                            if($ftp->up_file($$pic . '.280x200.jpg',"ershouche/".$$pic . '.280x200.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                                return;
                            }

                            img2thumb($$pic, $$pic . '.255x192.jpg', $w64, $h64);
                            //$ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            $ftp=new allen_ftp("120.26.218.60","21","test","x6lr9LpHIo4P");
                            if($ftp->up_file($$pic . '.255x192.jpg',"ershouche/".$$pic . '.255x192.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                //echo 'alert("ftp error");';
                            }
                            img2thumb($$pic, $$pic . '.640x480.jpg', $w640, $h480);
                           // $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            $ftp=new allen_ftp("120.26.218.60","21","test","x6lr9LpHIo4P");
                            if($ftp->up_file($$pic . '.640x480.jpg',"ershouche/".$$pic . '.640x480.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                            }
                            @unlink($_FILES[$pic]['tmp_name']);
                           // $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            $ftp=new allen_ftp("120.26.218.60","21","test","x6lr9LpHIo4P");
                            if($ftp->up_file($$pic,"ershouche/".$$pic)){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                            }
                            @unlink($$pic);
                        }
                    }
                }
            }
        }

        //管理员是否要审核信息，默认是, 还要判断是不是在mian_groups免审核用户组里面
        if($config['isreview'] && file_exists("source/plugin/violation/template/com/admin.php")  && !in_array($_G['groupid'],unserialize($config['mian_groups']))){
            $state=1;
        }

        $insertarray = array(
            'title' => $_GET['title'],
            'pos' => $_GET['pos'],
            'pos1' => $_GET['pos1'],
            'qq' => $_GET['qq'],
            'zujin' => $_GET['zujin'],
            'content' => $_GET['content'],
            'lxr' => $_GET['lxr'],
            'region' => $_GET['region'],
            'region1' => $_GET['region1'],
            'region2' => $_GET['region2'],
            'region3' => $_GET['region3'],
            'contact' => $_GET['contact'],
            'phone' =>  $_G['mobile'],
            'uid' => $_G['uid'],
            'username' => $_G['username'],
            'addtime' => TIMESTAMP,
            'updatetime' => TIMESTAMP,
            'state' =>  $state,
            'clientip' => $_G['clientip'],
            'wanted' => $_GET['wanted'],
            'models' => $_GET['models'],
            'particular_year' => $_GET['particular_year'],
            'mileage' => $_GET['mileage'],
            'displacement' => $_GET['displacement'],
            'gearbox' => $_GET['gearbox'],
            'fuel' => $_GET['fuel'],
            'emission_standard' => $_GET['emission_standard'],
            'vehicle_color' => $_GET['vehicle_color'],
            'vehicle_level' => $_GET['vehicle_level'],
            'use' => $_GET['use'],
            'inspection_expires' => $_GET['inspection_expires'],
            'strong_cross' => $_GET['strong_cross'],
            'commercial_insurance' => $_GET['commercial_insurance'],
            'transfer_fees' => $_GET['transfer_fees'],
            'driving_license' => $_GET['driving_license'],
            'registration_certificate' => $_GET['registration_certificate'],
            'invoice' => $_GET['invoice'],
            'repair_records' => $_GET['repair_records'],
            'purchase_tax' => $_GET['purchase_tax'],
            'a_major_accident' => $_GET['a_major_accident'],
            'transfer' => $_GET['transfer'],
            'mortgage' => $_GET['mortgage'],
        );
        for ($i = 1; $i <= 8; $i++) {
            $pic = 'pic' . $i;
            if ($$pic) {
                $insertarray[$pic] = DOMAIN.$$pic;
            }
        }
        //发布信息消耗积分类型威望，积分
        if (file_exists("source/plugin/violation/template/com/release.php") && $config['releaseextcredit']) {
            include 'source/plugin/violation/template/com/release.php';
        }
        //发布车辆信息表
        $insertid = C::t('#violation#aljesc')->insert($insertarray, true);
        //Image bulk upload s
        if($_G['cache']['plugin']['aljibu'][$pluginid]){
            include 'source/plugin/aljibu/include/ibu_post_id.php';
        }
        //发布的信息同步到版块，这个是后台配置的版块ID$config['es_fid']
        if ((file_exists("source/plugin/violation/template/com/tongbu.php")&&!$config['isreview'])  || (file_exists("source/plugin/violation/template/com/tongbu.php")&&in_array($_G['groupid'],unserialize($config['mian_groups'])))) {
            include 'source/plugin/violation/template/com/tongbu.php';
        }

        C::t('#violation#aljesc_user')->update_count_by_uid($_G['uid']);
        //isreview代理表是否开启审核数据；是不是在 mian_groups免审核用户组里面
        if($config['isreview'] && !in_array($_G['groupid'],unserialize($config['mian_groups']))){
            $groupids=DB::fetch_all('select * from %t where groupid = %d',array('common_member',1));
            foreach($groupids as $g_uid){
                //您有一条二手车新的审核信息，请到后台尽快审核。在线转换：https://seo.juziseo.com/tools/entity/
                notification_add($g_uid['uid'], 'system','&#24744;&#26377;&#19968;&#26465;&#20108;&#25163;&#36710;&#26032;&#30340;&#23457;&#26680;&#20449;&#24687;&#65292;&#35831;&#21040;&#21518;&#21488;&#23613;&#24555;&#23457;&#26680;&#12290;');
            }
            if($_GET['sj']){
                echo "<script>parent.tips('发布成功，请等待管理员审核',function(){parent.location.href='plugin.php?id=violation&act=view&lid=".$insertid."';});</script>";
            }else{
                showmsg('发布成功，请等待管理员审核', 2, $insertid);
            }
        }else{
            if($_GET['sj']){
                echo "<script>parent.tips('".str_replace('\\','','发布成功')."',function(){parent.location.href='plugin.php?id=violation&act=view&lid=".$insertid."';});</script>";
            }else{
                showmsg(str_replace('\\','','发布成功'), 2, $insertid);
            }
        }
    } else {
        if(!$_G['uid']){
            showmessage('请先登录', '', array(), array('login' => true));
        }
        //允许用户组,$config['lj_groups']这个值是在插件后台的变量设计中设计来的
        if(!in_array($_G['groupid'],unserialize($config['lj_groups']))){
           // showmessage($config['lj_tsy']);
            showmessage('您所在的用户组暂时无法发布，请努力升级！');
        }
        if (file_exists("source/plugin/violation/template/com/release.php") && $config['releaseextcredit']) {
            if (getuserprofile('extcredits' . $config['releaseextcredit']) < $config['releasepay']) {
                showmessage($_G['setting']['extcredits'][$config['releaseextcredit']]['title'] . lang('plugin/aljesc','top_1'));
            }
        }

        $rs = C::t('#violation#aljesc_region')->fetch_all_by_upid(0);
        $pos = C::t('#violation#aljesc_position')->fetch_all_by_upid(0);
        //Image bulk upload s
        if($_G['cache']['plugin']['aljibu'][$pluginid]){
            include 'source/plugin/aljibu/include/ibu_post_view.php';
        }
        //Image bulk upload e
        $navtitle = $config['title'];
        $metakeywords = $config['keywords'];
        $metadescription = $config['description'];
        if($aljesc_seo['post']['seotitle']){
            $seodata = array('bbname' => $_G['setting']['bbname']);
            list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['post']);
        }
        include template('violation:post');//这里会自动判断是手机版不是电脑版本
    }
} else if ($_GET['act'] == 'edit') {
    if (submitcheck('formhash')) {
        if (empty($_GET['title'])) {
            //如果是手机访问的
            if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                echo "<script>parent.tips('标题不能为空','');</script>";
                exit;
            }else{
                showerror('标题不能为空');
            }

        }
        if (empty($_GET['pos'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('品牌必须选择','');</script>";
                exit;
            }else{
                showerror(lang('plugin/aljesc','Fill_in_the_brand'));
            }
        }
        if (empty($_GET['region'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('所在地必须选择','');</script>";
                exit;
            }else{
                showerror(lang('plugin/aljesc','aljesc_24'));
            }
        }
        if (empty($_GET['contact'])) {
            if($_GET['sj']){
                echo "<script>parent.tips('联系电话必须填写','');</script>";
                exit;
            }else{
                showerror(lang('plugin/aljesc','aljesc_25'));
            }
        }

        //allen files 标记表单成功的file
        $allen_files=array();
        if($_G['cache']['plugin']['aljibu'][$pluginid]){//新的图片上传方式
            include 'source/plugin/aljibu/include/ibu_edit.php';

        }else{
            for ($i = 1; $i <= 8; $i++) {
                $pic = 'pic' . $i;
                $allen_files[$pic]="";
                if ($_FILES[$pic]['tmp_name']) {
                    $picname = $_FILES[$pic]['name'];
                    $picsize = $_FILES[$pic]['size'];
                    if ($picsize/1024>$config['img_size']) {
                        if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                            echo "<script>parent.tips('上传图片不能超过:".$config['img_size'].'K'."','');</script>";
                            exit;
                        }else{
                            showerror(lang('plugin/aljesc','aljesc_26').$config['img_size'].'K');
                        }

                    }
                    if ($picname != "") {
                        $type = strtolower(strrchr($picname, '.'));
                        if ($type != ".gif" && $type != ".jpg" && $type != ".png" && $type != ".jpeg") {
                            if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                                echo "<script>parent.tips('请上传.jpg .gif .png格式的图片','');</script>";
                                exit;
                            }else{
                                showerror('请上传.jpg .gif .png格式的图片');
                            }

                        }
                        $rand = rand(100, 999);
                        $pics = date("YmdHis") . $rand . $type;
                        $img_dir = 'source/plugin/violation/images/logo/';
                        if (!is_dir($img_dir)) {
                            mkdir($img_dir);
                        }
                        $$pic = $img_dir . $pics;//就是这个意思：$source/plugin/violation/images/logo/20112025.jpg = ‘source/plugin/violation/images/logo/20112025.jpg’;
                        if (@copy($_FILES[$pic]['tmp_name'], $$pic) || @move_uploaded_file($_FILES[$pic]['tmp_name'], $$pic)) {
                            rotatePicture($$pic,$$pic);//ISO旋转图片-???度
                            $imageinfo = getimagesize($$pic);
                            if($settings['iswatermark']['value']){
                                $image->Watermark(DISCUZ_ROOT.'./'.$$pic,'', 'forum');
                            }
                            $w64 = $imageinfo[0] < 170 ? $imageinfo[0] : 170;
                            $h64 = $imageinfo[1] < 128 ? $imageinfo[1] : 128;

                            $w640 = $imageinfo[0] < 800 ? $imageinfo[0] : 800;
                            $h480 = $imageinfo[1] < 800 ? $imageinfo[1] : 800;

                            $w140 = $imageinfo[0] < 280 ? $imageinfo[0] : 280;
                            $h100 = $imageinfo[1] < 200 ? $imageinfo[1] : 200;
                            $allen_files[$pic]=$$pic;
                            img2thumb($$pic, $$pic . '.280x200.jpg', $w140, $h100);

                            $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            if($ftp->up_file($$pic . '.280x200.jpg',"ershouche/".$$pic . '.280x200.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                                return;
                            }
                            img2thumb($$pic, $$pic . '.255x192.jpg', $w64, $h64);
                            $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            if($ftp->up_file($$pic . '.255x192.jpg',"ershouche/".$$pic . '.255x192.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                //echo 'alert("ftp error");';
                            }
                            img2thumb($$pic, $$pic . '.640x480.jpg', $w640, $h480);
                            $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            if($ftp->up_file($$pic . '.640x480.jpg',"ershouche/".$$pic . '.640x480.jpg')){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                            }
                            @unlink($_FILES[$pic]['tmp_name']);
                            $ftp=new allen_ftp("218.76.78.246","21","info","xxffcm8228858ABC");
                            if($ftp->up_file($$pic,"ershouche/".$$pic)){
                                //$pid=insertPicture($allen_uid,$allen_uname,'',0,DOMAIN,$fname);
                                //$str='insertPicture("'.$pid.'","'.DOMAIN.'","'.$fname.'");$("#up_status").hide();$("#up_btn").show();';
                                //echo $str;
                            }else{
                                echo 'alert("ftp error");';
                            }
                            @unlink($$pic);
                        }
                    }
                }
            }
        }


        $insertarray = array(
            'title' => $_GET['title'],
            'pos' => $_GET['pos'],
            'pos1' => $_GET['pos1'],
            'qq' => $_GET['qq'],
            'lxr' => $_GET['lxr'],
            'zujin' => $_GET['zujin'],
            'content' => $_GET['content'],
            'region3' => $_GET['region3'],
            'region' => $_GET['region'],
            'region1' => $_GET['region1'],
            'region2' => $_GET['region2'],
            'contact' => $_GET['contact'],
            'wanted' => $_GET['wanted'],
            'models' => $_GET['models'],
            'particular_year' => $_GET['particular_year'],
            'mileage' => $_GET['mileage'],
            'displacement' => $_GET['displacement'],
            'gearbox' => $_GET['gearbox'],
            'fuel' => $_GET['fuel'],
            'emission_standard' => $_GET['emission_standard'],
            'vehicle_color' => $_GET['vehicle_color'],
            'vehicle_level' => $_GET['vehicle_level'],
            'use' => $_GET['use'],
            'inspection_expires' => $_GET['inspection_expires'],
            'strong_cross' => $_GET['strong_cross'],
            'commercial_insurance' => $_GET['commercial_insurance'],
            'transfer_fees' => $_GET['transfer_fees'],
            'driving_license' => $_GET['driving_license'],
            'registration_certificate' => $_GET['registration_certificate'],
            'invoice' => $_GET['invoice'],
            'repair_records' => $_GET['repair_records'],
            'purchase_tax' => $_GET['purchase_tax'],
            'a_major_accident' => $_GET['a_major_accident'],
            'transfer' => $_GET['transfer'],
            'mortgage' => $_GET['mortgage'],
        );
        for ($i = 1; $i <= 8; $i++) {
            $pic = 'pic' . $i;
            $cp=$allen_files[$pic];
            if(empty($cp)){
                if(empty($_GET[$pic])){
                    $insertarray[$pic]='';
                }else{
                    $insertarray[$pic] = substr($_GET[$pic],0,5)=="http:"?$_GET[$pic]:DOMAIN.$_GET[$pic];
                }
            }else{
                $insertarray[$pic]=DOMAIN.$cp;
            }
        }
        C::t('#violation#aljesc')->update($_GET['lid'], $insertarray);
        if($_G['cache']['plugin']['aljibu'][$pluginid]){//新图
            include 'source/plugin/aljibu/include/ibu_edit_id.php';
        }
        C::t('#aljesc#aljesc_user')->update_updatecount_by_uid($_G['uid']);
        if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
            echo "<script>parent.tips('".str_replace('\\','','更新成功')."',function(){parent.location.href='plugin.php?id=aljesc&act=view&lid=".$_GET['lid']."';});</script>";
        }else{
            showmsg(str_replace('\\','',lang('plugin/aljesc','aljesc_5')), 2, $_GET['lid']);
        }

    } else {
        //地区管理表
        $rs = C::t('#violation#aljesc_region')->fetch_all_by_upid(0);

        $lp = C::t('#violation#aljesc')->fetch($_GET['lid']);
        if($lp['uid']!=$_G['uid']&&$_G['adminid']!=1){
            showmessage(lang('plugin/aljescf','aljesc_8'));
        }
        //栏目类型表
        $pos = C::t('#violation#aljesc_position')->fetch_all_by_upid(0);
        if ($lp['pos']) {
            $prs = C::t('#violation#aljesc_position')->fetch_all_by_upid($lp['pos']);
        }
        if ($lp['region']) {
            $rrs = C::t('#violation#aljesc_region')->fetch_all_by_upid($lp['region']);
        }
        //新图 s
        if($_G['cache']['plugin']['aljibu'][$pluginid]){//新图
            include 'source/plugin/aljibu/include/ibu_edit_view.php';
        }
        //新图 e
        $navtitle = $config['title'];
        $metakeywords = $config['keywords'];
        $metadescription = $config['description'];
        if($aljesc_seo['edit']['seotitle']){
            $seodata = array('bbname' => $_G['setting']['bbname']);
            list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['edit']);
        }
        include template('violation:post');
    }
} else if($_GET['act'] == 'upload') {
    include 'source/plugin/aljibu/include/ibu_upload.php';
} else if($_GET['act'] == 'deleteattach'){
    include 'source/plugin/aljibu/include/ibu_deleteattach.php';
} else if($_GET['act'] == 'mobile_deleteattach'){
    include 'source/plugin/aljibu/include/ibu_mobile_deleteattach.php';
} else if($_GET['act'] == 'mupload'){
    include 'source/plugin/aljibu/include/ibu_mupload.php';
} else if ($_GET['act'] == 'reflash') {
    if (file_exists("source/plugin/violation/template/com/reflash.php")) {
        include 'source/plugin/violation/template/com/reflash.php';
    }
} else if ($_GET['act'] == 'top') {
    if (file_exists("source/plugin/violation/template/com/top.php")) {
        include 'source/plugin/violation/template/com/top.php';
    }
} else if ($_GET['act'] == 'view') {
    if (empty($_GET['lid'])) {
        showmessage('您查看的二手车信息不存在');
    }
    if (file_exists("source/plugin/violation/template/com/qrcode.php")) {
        if(!file_exists('source/plugin/violation/images/qrcode/'.$lp['qrcode'])||!$lp['qrcode']){
            $file = dgmdate(TIMESTAMP, 'YmdHis').random(18).'.jpg';
            QRcode::png($_G['siteurl'].'plugin.php?id=violation&act=view&lid='.$_GET['lid'], 'source/plugin/violation/images/qrcode/'.$file, QR_MODE_STRUCTURE, 8);

            DB::update('aljesc', array('qrcode'=>$file), "id=".$_GET['lid']);
        }
    }

    if (!file_exists("source/plugin/violation/images/qrcode/aljesc_view_qrcode_logo_".$lp['id'].".jpg") && $settings['qrcode_logo']['value']) {
        copy('http://qr.liantu.com/api.php?logo='.$_G['siteurl'].$settings['qrcode_logo']['value'].'&text='.$_G['siteurl'].'plugin.php?id=aljesc','source/plugin/violation/images/qrcode/aljesc_view_qrcode_logo_'.$lp['id'].'.jpg');
    }
    C::t('#violation#aljesc')->update_views_by_id($_GET['lid']);
    $pics = array('pic1', 'pic2', 'pic3', 'pic4', 'pic5', 'pic6', 'pic7', 'pic8');
    $regions = C::t('#violation#aljesc_region')->range();
    $lp = C::t('#violation#aljesc')->fetch($_GET['lid']);

    $lp = dhtmlspecialchars($lp);
    foreach(explode(',',$lp['service_content']) as $k => $v){
        $service_c.=$types[$v].',';
    }
    $s_c=trim($service_c,',');
    if($config['isyouke']){
        $tel=hidtel($lp['contact']);
    }
    $cod=$regions[$lp['region']]['subject'].$regions[$lp['region1']]['subject'].$regions[$lp['region2']]['subject'].$lp['region3'];
    if($_G['charset']=='gbk'){
        $cod=diconv($cod,'gbk','utf-8');
    }
    $url=urlencode($cod);
    $qita = DB::fetch_all("SELECT * FROM ".DB::table('aljesc')." where state=0 and uid=".$lp[uid]." ORDER BY id desc limit 0, 5");//.$config['qitanum']

    foreach($qita as $k=>$v){
        $qita[$k]['rewrite']=str_replace ("{id}", $v['id'], $config ['re_view']);
    }
    $commentlist=C::t('#violation#aljesc_comment')->fetch_all_by_upid(0,$_GET['lid']);
    $commentlist=dhtmlspecialchars($commentlist);
    $navtitle = $lp['title'] . '-' . $config['title'];
    $metakeywords = $lp['title'];
    $metadescription = $lp['title'];
    if($aljesc_seo['view']['seotitle']){
        if($lp['region']){
            $title=$regions[$lp['region']]['subject'];
            $title1 = $title;
        }
        if($lp['region1']){
            $title=$regions[$lp['region1']]['subject'];
            $title2=$title;
        }
        if($lp['region2']){
            $title=$regions[$lp['region2']]['subject'];
            $title3=$title;
        }

        if($lp['pos']){
            $cat=$pos_zw[$lp['pos']]['subject'];
        }
        if($lp['pos1']){
            $cat1=$pos_zw[$lp['pos1']]['subject'];
        }

        $seodata = array('bbname' => $_G['setting']['bbname'],'subject'=>$lp['title'],'message'=>cutstr(stripBBCode(strip_tags(preg_replace('/\<img.*?\>/is', '', $lp['content']))),80,''),'cat'=>$cat,'cat1'=>$cat1,'pay'=>$lp['zujin'].lang('plugin/aljesc','yuan'),'shangpai'=>$lp['particular_year'],'region'=>$title1,'region2'=>$title2,'region3'=>$title3);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['view']);
    }
    if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']) {
        include template('violation:view');
    } else {
        include template('diy:aljesc_view', null, 'source/plugin/violation/template');
    }

} else if ($_GET['act'] == 'delete') {
    $user=C::t('#aljesc#aljesc')->fetch($_GET['lid']);
    if($user['uid']!=$_G['uid']&&$_G['adminid']!=1){
        showmessage(lang('plugin/aljesc','aljesc_8'));
    }
    for ($i = 1; $i <= 8; $i++) {
        $pic = 'pic' . $i;
        if ($user[$pic]) {
            unlink($user[$pic]);
            unlink($user[$pic].'.170x128.jpg');
            unlink($user[$pic].'.640x480.jpg');
        }
    }
    if($user['tid']){
        DB::update('forum_post', array('invisible'=>'-1'), "tid=".$user['tid']);
        DB::update('forum_thread', array('displayorder'=>'-1'), "tid=".$user['tid']);
    }
    C::t('#aljesc#aljesc')->delete($_GET['lid']);
    showmessage(lang('plugin/aljesc','aljesc_7'), 'plugin.php?id=aljesc&act=member');
}else if($_GET['act'] == 'ask'){

    if(submitcheck('formhash')){
        if (empty($_G['uid'])) {
            //showerror(lang('plugin/aljesc','aljesc_1'));
            if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                echo "<script>parent.tips('请先登录','');</script>";
                exit;
            }else{
                showerror('请先登录');
            }
        }
        if (empty($_GET['message'])) {
            //showerror(lang('plugin/aljesc','aljesc_9'));
            if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
                echo "<script>parent.tips('内容不能为空','');</script>";
                exit;
            }else{
                showerror('内容不能为空');
            }
        }
        $insertarray=array(
            'content'=>$_GET['message'],
            'uid'=>$_G['uid'],
            'username'=>$_G['username'],
            'lid'=>$_GET['lid'],
            'dateline'=>TIMESTAMP,
        );
        C::t('#violation#aljesc_comment')->insert($insertarray);
        if($config['is_ping']){
            $lp=C::t('#violation#aljesc')->fetch($_GET['lid']);
            notification_add($lp['uid'], 'system','您发布的信息<a target="_blank" href="plugin.php?id=violation&act=view&lid='.$_GET['lid'].'">'.$lp['title'].'</a> 有一条新的评论 <a href="plugin.php?id=violation&act=view&lid='.$_GET['lid'].'" target="_blank">点击查看</a>');
        }
        //showmsg(lang('plugin/aljesc','aljesc_10'));
        if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']){
            echo "<script>parent.tips('".str_replace('\\','','留言成功！')."',function(){parent.location.href='plugin.php?id=violation&act=view&lid=".$_GET['lid']."';});</script>";
        }else{
            showmsg(str_replace('\\','','留言成功！'), 2, $_GET['lid']);
        }
    }
}else if($_GET['act'] == 'reply'){
    if(submitcheck('formhash')){
        if (empty($_G['uid'])) {
            showerror('请先登录');
        }
        if (empty($_GET['message'])) {
            showerror('内容不能为空');
        }
        $insertarray=array(
            'content'=>$_GET['message'],
            'uid'=>$_G['uid'],
            'username'=>$_G['username'],
            'lid'=>$_GET['lid'],
            'dateline'=>TIMESTAMP,
            'upid'=>$_GET['upid'],
        );
        C::t('#violation#aljesc_comment')->insert($insertarray);
        if($config['is_ping']){
            $lp=C::t('#violation#aljesc_comment')->fetch($_GET['upid']);
            notification_add($lp['uid'], 'system','您在'.$config['daohang'].lang('plugin/aljesc','aljesc_31').' <a href="plugin.php?id=violation&act=view&lid='.$_GET['lid'].'" target="_blank">'.lang('plugin/aljesc','aljesc_29').'</a>');
        }
        showmsg(lang('plugin/aljesc','aljesc_10'));
    }
}else if($_GET['act'] == 'commentdel'){
    if($_GET['formhash']==formhash()){
        if (empty($_G['uid'])) {
            showerror(lang('plugin/aljesc','aljesc_1'));
        }
        $upid=DB::fetch_all(" select * from %t where upid=%d",array('aljesc_comment',$_GET['cid']));
        if($upid){
            foreach($upid as $id){
                C::t('#aljesc#aljesc_comment')->delete($id['id']);
            }
        }
        C::t('#aljesc#aljesc_comment')->delete($_GET['cid']);
        showmessage(lang('plugin/aljesc','aljesc_7'),'plugin.php?id=aljesc&act=view&lid='.$_GET['lid']);
    }
}else if ($_GET['act'] == 'getpos') {
    if ($_GET['rid']) {
        $rs = C::t('#violation#aljesc_position')->fetch_all_by_upid($_GET['rid']);
    }
    include template('violation:getpos');
}else if ($_GET['act'] == 'getregion') {
    if ($_GET['rid']) {
        $rs = C::t('#violation#aljesc_region')->fetch_all_by_upid($_GET['rid']);
    }

    include template('violation:getregion');
}else if($_GET['act']=='getregion1'){
    if($_GET['upid']){
        $rlist=C::t('#violation#aljesc_region')->fetch_all_by_upid($_GET['upid']);
    }
    include template('violation:getregion1');
} else if ($_GET['act'] == 'member') {
    echo $pluginid;
    $currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = $config['page'];

    $start = ($currpage - 1) * $perpage;
    if($_G['adminid']!=1){
        $conndtion = array(
            'uid' => $_G['uid'],
            'title' => $_GET['search'],
        );
    }
    $num = C::t('#violation#aljesc')->count_by_status($conndtion);

    $lplist = C::t('#violation#aljesc')->fetch_all_by_addtime($start, $perpage, $conndtion);
    //debug($lplist);
    $paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=violation&act=member', 0, 11, false, false);
    $navtitle = $config['title'];
    $metakeywords = $config['keywords'];
    $metadescription = $config['description'];
    if($aljesc_seo['member']['seotitle']){
        $seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['member']);
    }
    include template('violation:member');
} else if ($_GET['act'] == 'adminlp') {
    if (file_exists("source/plugin/violation/template/com/admin.php")) {
        include 'source/plugin/violation/template/com/admin.php';
    }
} else if ($_GET['act'] == 'adminuser') {
    if (file_exists("source/plugin/violation/template/com/user.php")) {
        include 'source/plugin/violation/template/com/user.php';
    }
} else if ($_GET['act'] == 'adminreflash') {
    $currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = 10;
    $num = C::t('#violation#aljesc_reflashlog')->count();
    //$num = DB::result_first(" select count(*) from ".DB::table('aljesc_reflashlog')." where title!=null ");
    $start = ($currpage - 1) * $perpage;

    $logs = C::t('#violation#aljesc_reflashlog')->range($start, $perpage, 'desc');
    //$logs = DB::fetch_all(" select * from ".DB::table('aljesc_reflashlog')." where title!=null order by id desc limit $start,$perpage");
    $paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=aljesc&act=adminreflash', 0, 11, false, false);
    $navtitle = $config['title'];
    $metakeywords = $config['keywords'];
    $metadescription = $config['description'];
    if($aljesc_seo['adminreflash']['seotitle']){
        $seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['adminreflash']);
    }
    include template('violation:adminreflash');
} else if ($_GET['act'] == 'admintop') {
    $currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = $config['page'];
    $num = C::t('#violation#aljesc_toplog')->count();
    $start = ($currpage - 1) * $perpage;

    $logs = C::t('#violation#aljesc_toplog')->range($start, $perpage, 'desc');
    $paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=violation&act=admintop', 0, 11, false, false);
    $navtitle = $config['title'];
    $metakeywords = $config['keywords'];
    $metadescription = $config['description'];
    if($aljesc_seo['admintop']['seotitle']){
        $seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['admintop']);
    }
    include template('violation:admintop');
}else if($_GET['act'] == 'all'){
    if (file_exists("source/plugin/aljesc/template/com/qita.php")) {
        include 'source/plugin/aljesc/template/com/qita.php';
    }
} else {

    $todayviews = C::t('#violation#aljesc_log')->fetch_all_by_day();
    $regions = C::t('#violation#aljesc_region')->range();
    $rs = C::t('#violation#aljesc_region')->fetch_all_by_upid(0);
    $rrs = C::t('#violation#aljesc_region')->fetch_all_by_upid($_GET['rid']);
    $subrrs = C::t('#violation#aljesc_region')->fetch_all_by_upid($_GET['subrid']);
    $currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = $config['page']?$config['page']:10;
    $pos = C::t('#violation#aljesc_position')->fetch_all_by_upid(0);
    $prs = C::t('#violation#aljesc_position')->fetch_all_by_upid($_GET['pid']);
    $start = ($currpage - 1) * $perpage;
    if($_GET['mobile']=='1'||$_GET['mobile']=='2'){
        if($_G['charset']=='gbk'){ $_GET['search']=diconv($_GET['search'],'utf-8','gbk');}
    }
    $conndtion = array(
        'search' => $_GET['search'],
        'rid' => $_GET['region']?$_GET['region']:$_GET['rid'],
        'subrid' => $_GET['region1']?$_GET['region1']:$_GET['subrid'],
        'subsubrid' => $_GET['region2']?$_GET['region2']:$_GET['subsubrid'],
        'pos' => $_GET['pid'],
        'pos1' => $_GET['subpid'],
        'pay1' => $_GET['pay1'],
        'pay2' => $_GET['pay2'],
        'wanted' => $_GET['wanted'],
        'p_year1' => $_GET['p_year1'],
        'p_year2' => $_GET['p_year2'],
        'solve' => $_GET['solve'],
    );
    //信息是否搞定了,最新消息是否过虑搞定信息
    if($config['is_solve'] && file_exists("source/plugin/violation/template/com/solve.php")){
        $conndtion['is_solve']=1;
    }
    $num = C::t('#violation#aljesc')->count_by_status($conndtion);

    $lplist = C::t('#violation#aljesc')->fetch_all_by_addtime($start, $perpage, $conndtion);

    //debug(DB::fetch_all('select * from %t where particular_year > 2012 and particular_year < 2020',array('aljesc')));
    foreach($lplist as $k=>$v){
        if(TIMESTAMP>$v['topetime']&&$v['topetime']){
            DB::update('aljesc',array('topstime'=>'','topetime'=>''),'id='.$v[id]);
        }
        $lplist[$k]['rewrite']=str_replace ("{id}", $v['id'], $config ['re_view']);
    }
    $lplist = dhtmlspecialchars($lplist);
    $paging = helper_page :: multi($num, $perpage, $currpage, 'plugin.php?id=violation&search='.$_GET['search'].'&rid='.$_GET['rid'].'&subrid='.$_GET['subrid'].'&pay1='.$_GET['pay1'].'&pay2='.$_GET['pay2'].'&view='.$_GET['view'].'&solve='.$_GET['solve'], 0, 11, false, false);
    //推荐
    $tuijian = DB::fetch_all("SELECT * FROM ".DB::table('aljesc')." where state=0 and tuijian=1 ORDER BY id desc limit 0,9");
    foreach($tuijian as $k=>$v){
        //re_view=信息查看页伪静态规则;默认：esc_{id}.html; {id}=编号ID
        $tuijian[$k]['rewrite']=str_replace ("{id}", $v['id'], $config ['re_view']);
    }
    $toplist = C::t('#violation#aljesc_toplog')->fetch_all_by_dateline();
    foreach($toplist as $k=>$v){
        $toplist[$k]['rewrite']=str_replace ("{id}", $v['id'], $config ['re_view']);
    }

    $navtitle = $config['title'];
    $metakeywords = $config['keywords'];
    $metadescription = $config['description'];
    if($aljesc_seo['list']['seotitle']){
        if($_GET['rid']){
            $title=$regions[$_GET['rid']]['subject'];
            $title1 = $title;
        }
        if($_GET['subrid']){
            $title=$regions[$_GET['subrid']]['subject'];
            $title2=$title;

        }
        if($_GET['subsubrid']){
            $title=$regions[$_GET['subsubrid']]['subject'];
            $title3=$title;
        }

        if($_GET['pid']){
            $cat=$pos_zw[$_GET['pid']]['subject'];
        }
        if($_GET['subpid']){
            $cat1=$pos_zw[$_GET['subpid']]['subject'];
        }
        if($_GET['pay1'] || $_GET['pay2']){
            $zujin_1=$_GET['pay1']?$_GET['pay1'].($_GET['pay2']?lang('plugin/aljesc','yuan_1'):lang('plugin/aljesc','yuan_2')):'';
            $zujin_2=$_GET['pay2']?$_GET['pay2'].(!$_GET[pay1]?lang('plugin/aljesc','yuan_3'):lang('plugin/aljesc','yuan')):'';
            $zujin=$zujin_1.$zujin_2;
        }
        if($_GET['p_year1'] || $_GET['p_year2']){
            $p_year1=$_GET['p_year1']?$_GET['p_year1'].($_GET['p_year2']?'-':''):'';
            $p_year2=$_GET['p_year2']?$_GET['p_year2']:'';
            $p_year=$p_year1.$p_year2;
        }
        $seodata = array('bbname' => $_G['setting']['bbname'],'cat'=>$cat,'cat1'=>$cat1,'pay'=>$zujin,'shangpai'=>$p_year,'region'=>$title1,'region2'=>$title2,'region3'=>$title3);
        list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['list']);
    }

    if($_G['mobile'] && $_G['setting']['mobile']['allowmobile'] && $_G['setting']['mobile']['mobileforward']) {
        //D:\phpstudy_pro\WWW\Discuz_X3.4_SC_GBK\upload\./data/template/1_violation_touch_index.tpl.php
        include template('violation:index'); //手机版 ./source/plugin/violation/template/touch/index.htm

    } else {//电脑版指定在插件目录中， aljesc_index.htm
       include template('diy:aljesc_index', null, 'source/plugin/violation/template');
    }
}

function showmsg($msg, $close, $id) {
    if ($close == 1) {
        $str = "parent.hideWindow('$close');";
    } else if ($close == 2) {
        $str = "parent.location.href='plugin.php?id=violation&act=view&lid=" . $id . "'";
    } else {
        $str = "parent.location=parent.location;";
    }
    include template('violation:showmsg');
    exit;
}

function showerror($msg) {
    include template('violation:showerror');
    exit;
}

function img2thumb($src_img, $dst_img, $width = 75, $height = 75, $cut = 0, $proportion = 0) {
    if (!is_file($src_img)) {
        return false;
    }
    $ot = fileext($dst_img);
    $otfunc = 'image' . ($ot == 'jpg' ? 'jpeg' : $ot);
    $srcinfo = getimagesize($src_img);
    $src_w = $srcinfo[0];
    $src_h = $srcinfo[1];
    $type = strtolower(substr(image_type_to_extension($srcinfo[2]), 1));
    $createfun = 'imagecreatefrom' . ($type == 'jpg' ? 'jpeg' : $type);

    $dst_h = $height;
    $dst_w = $width;
    $x = $y = 0;

    if (($width > $src_w && $height > $src_h) || ($height > $src_h && $width == 0) || ($width > $src_w && $height == 0)) {
        $proportion = 1;
    }
    if ($width > $src_w) {
        $dst_w = $width = $src_w;
    }
    if ($height > $src_h) {
        $dst_h = $height = $src_h;
    }

    if (!$width && !$height && !$proportion) {
        return false;
    }
    if (!$proportion) {
        if ($cut == 0) {
            if ($dst_w && $dst_h) {
                if ($dst_w / $src_w > $dst_h / $src_h) {
                    $dst_w = $src_w * ($dst_h / $src_h);
                    $x = 0 - ($dst_w - $width) / 2;
                } else {
                    $dst_h = $src_h * ($dst_w / $src_w);
                    $y = 0 - ($dst_h - $height) / 2;
                }
            } else if ($dst_w xor $dst_h) {
                if ($dst_w && !$dst_h) {
                    $propor = $dst_w / $src_w;
                    $height = $dst_h = $src_h * $propor;
                } else if (!$dst_w && $dst_h) {
                    $propor = $dst_h / $src_h;
                    $width = $dst_w = $src_w * $propor;
                }
            }
        } else {
            if (!$dst_h) {
                $height = $dst_h = $dst_w;
            }
            if (!$dst_w) {
                $width = $dst_w = $dst_h;
            }
            $propor = min(max($dst_w / $src_w, $dst_h / $src_h), 1);
            $dst_w = (int) round($src_w * $propor);
            $dst_h = (int) round($src_h * $propor);
            $x = ($width - $dst_w) / 2;
            $y = ($height - $dst_h) / 2;
        }
    } else {
        $proportion = min($proportion, 1);
        $height = $dst_h = $src_h * $proportion;
        $width = $dst_w = $src_w * $proportion;
    }

    $src = $createfun($src_img);
    $dst = imagecreatetruecolor($width ? $width : $dst_w, $height ? $height : $dst_h);
    $white = imagecolorallocate($dst, 255, 255, 255);
    imagefill($dst, 0, 0, $white);

    if (function_exists('imagecopyresampled')) {
        imagecopyresampled($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    } else {
        imagecopyresized($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    }
    $otfunc($dst, $dst_img);
    imagedestroy($dst);
    imagedestroy($src);
    return true;
}
function hidtel($phone)
{
    $IsWhat = preg_match('/([0-9][0-9]{2,3}[\-]?[1-9][0-9]{6,7}[\-]?[0-9]?)/i',$phone); //固定电话

    if($IsWhat == 1)
    {
        return preg_replace('/([0-9][0-9]{2,3}[\-]?[1-9])[0-9]{3,4}([0-9]{3}[\-]?[0-9]?)/i','$1****$2',$phone);
    }
    else
    {
        return  preg_replace('/([0-9][0-9]{1}[0-9])[0-9]{4}([0-9]{4})/i','$1****$2',$phone);
    }
}
function stripBBCode($text_to_search) {
    $pattern = '|[[\/\!]*?[^\[\]]*?]|si';
    $replace = '';
    return preg_replace($pattern, $replace, $text_to_search);
}
function discuzcode_mobile($message, $smileyoff, $bbcodeoff, $htmlon = 0, $allowsmilies = 1, $allowbbcode = 1, $allowimgcode = 1, $allowhtml = 0, $jammer = 0, $parsetype = '0', $authorid = '0', $allowmediacode = '0', $pid = 0, $lazyload = 0, $pdateline = 0, $first = 0) {
    global $_G;

    static $authorreplyexist;

    if($pid && strpos($message, '[/password]') !== FALSE) {
        if($authorid != $_G['uid'] && !$_G['forum']['ismoderator']) {
            $message = preg_replace("/\s?\[password\](.+?)\[\/password\]\s?/ie", "parsepassword('\\1', \$pid)", $message);
            if($_G['forum_discuzcode']['passwordlock'][$pid]) {
                return '';
            }
        } else {
            $message = preg_replace("/\s?\[password\](.+?)\[\/password\]\s?/ie", "", $message);
            $_G['forum_discuzcode']['passwordauthor'][$pid] = 1;
        }
    }

    if($parsetype != 1 && !$bbcodeoff && $allowbbcode && (strpos($message, '[/code]') || strpos($message, '[/CODE]')) !== FALSE) {
        $message = preg_replace("/\s?\[code\](.+?)\[\/code\]\s?/ies", "codedisp('\\1')", $message);
    }

    $msglower = strtolower($message);

    $htmlon = $htmlon && $allowhtml ? 1 : 0;

    if(!$htmlon) {
        $message = dhtmlspecialchars($message);
    } else {
        $message = preg_replace("/<script[^\>]*?>(.*?)<\/script>/i", '', $message);
    }

    if($_G['setting']['plugins']['func'][HOOKTYPE]['discuzcode']) {
        $_G['discuzcodemessage'] = & $message;
        $param = func_get_args();
        hookscript('discuzcode', 'global', 'funcs', array('param' => $param, 'caller' => 'discuzcode'), 'discuzcode');
    }

    if(!$smileyoff && $allowsmilies) {
        $message = parsesmiles($message);
    }

    if($_G['setting']['allowattachurl'] && strpos($msglower, 'attach://') !== FALSE) {
        $message = preg_replace("/attach:\/\/(\d+)\.?(\w*)/ie", "parseattachurl('\\1', '\\2', 1)", $message);
    }

    if($allowbbcode) {
        if(strpos($msglower, 'ed2k://') !== FALSE) {
            $message = preg_replace("/ed2k:\/\/(.+?)\//e", "parseed2k('\\1')", $message);
        }
    }

    if(!$bbcodeoff && $allowbbcode) {
        if(strpos($msglower, '[/url]') !== FALSE) {
            $message = preg_replace("/\[url(=((https?|ftp|gopher|news|telnet|rtsp|mms|callto|bctp|thunder|qqdl|synacast){1}:\/\/|www\.|mailto:)?([^\r\n\[\"']+?))?\](.+?)\[\/url\]/ies", "parseurl('\\1', '\\5', '\\2')", $message);
        }
        if(strpos($msglower, '[/email]') !== FALSE) {
            $message = preg_replace("/\[email(=([a-z0-9\-_.+]+)@([a-z0-9\-_]+[.][a-z0-9\-_.]+))?\](.+?)\[\/email\]/ies", "parseemail('\\1', '\\4')", $message);
        }

        $nest = 0;
        while(strpos($msglower, '[table') !== FALSE && strpos($msglower, '[/table]') !== FALSE){
            $message = preg_replace("/\[table(?:=(\d{1,4}%?)(?:,([\(\)%,#\w ]+))?)?\]\s*(.+?)\s*\[\/table\]/ies", "parsetable('\\1', '\\2', '\\3')", $message);
            if(++$nest > 4) break;
        }

        $message = str_replace(array(
            '[/color]', '[/backcolor]', '[/size]', '[/font]', '[/align]', '[b]', '[/b]', '[s]', '[/s]', '[hr]', '[/p]',
            '[i=s]', '[i]', '[/i]', '[u]', '[/u]', '[list]', '[list=1]', '[list=a]',
            '[list=A]', "\r\n[*]", '[*]', '[/list]', '[indent]', '[/indent]', '[/float]'
        ), array(
            '</font>', '</font>', '</font>', '</font>', '</div>', '<strong>', '</strong>', '<strike>', '</strike>', '<hr class="l" />', '</p>', '<i class="pstatus">', '<i>',
            '</i>', '<u>', '</u>', '<ul>', '<ul type="1" class="litype_1">', '<ul type="a" class="litype_2">',
            '<ul type="A" class="litype_3">', '<li>', '<li>', '</ul>', '<blockquote>', '</blockquote>', '</span>'
        ), preg_replace(array(
            "/\[color=([#\w]+?)\]/i",
            "/\[color=((rgb|rgba)\([\d\s,]+?\))\]/i",
            "/\[backcolor=([#\w]+?)\]/i",
            "/\[backcolor=((rgb|rgba)\([\d\s,]+?\))\]/i",
            "/\[size=(\d{1,2}?)\]/i",
            "/\[size=(\d{1,2}(\.\d{1,2}+)?(px|pt)+?)\]/i",
            "/\[font=([^\[\<]+?)\]/i",
            "/\[align=(left|center|right)\]/i",
            "/\[p=(\d{1,2}|null), (\d{1,2}|null), (left|center|right)\]/i",
            "/\[float=left\]/i",
            "/\[float=right\]/i"

        ), array(
            "<font color=\"\\1\">",
            "<font style=\"color:\\1\">",
            "<font style=\"background-color:\\1\">",
            "<font style=\"background-color:\\1\">",
            "<font size=\"\\1\">",
            "<font style=\"font-size:\\1\">",
            "<font face=\"\\1\">",
            "<div align=\"\\1\">",
            "<p style=\"line-height:\\1px;text-indent:\\2em;text-align:\\3\">",
            "<span style=\"float:left;margin-right:5px\">",
            "<span style=\"float:right;margin-left:5px\">"
        ), $message));

        if($pid && !defined('IN_MOBILE')) {
            $message = preg_replace("/\s?\[postbg\]\s*([^\[\<\r\n;'\"\?\(\)]+?)\s*\[\/postbg\]\s?/ies", "parsepostbg('\\1', '$pid')", $message);
        } else {
            $message = preg_replace("/\s?\[postbg\]\s*([^\[\<\r\n;'\"\?\(\)]+?)\s*\[\/postbg\]\s?/is", "", $message);
        }

        if($parsetype != 1) {
            if(strpos($msglower, '[/quote]') !== FALSE) {
                $message = preg_replace("/\s?\[quote\][\n\r]*(.+?)[\n\r]*\[\/quote\]\s?/is", tpl_quote(), $message);
            }
            if(strpos($msglower, '[/free]') !== FALSE) {
                $message = preg_replace("/\s*\[free\][\n\r]*(.+?)[\n\r]*\[\/free\]\s*/is", tpl_free(), $message);
            }
        }
        if(!defined('IN_MOBILE')) {
            if(strpos($msglower, '[/media]') !== FALSE) {
                $message = preg_replace("/\[media=([\w,]+)\]\s*([^\[\<\r\n]+?)\s*\[\/media\]/ies", $allowmediacode ? "parsemedia('\\1', '\\2')" : "bbcodeurl('\\2', '<a href=\"{url}\" target=\"_blank\">{url}</a>')", $message);
            }
            if(strpos($msglower, '[/audio]') !== FALSE) {
                $message = preg_replace("/\[audio(=1)*\]\s*([^\[\<\r\n]+?)\s*\[\/audio\]/ies", $allowmediacode ? "parseaudio('\\2', 400)" : "bbcodeurl('\\2', '<a href=\"{url}\" target=\"_blank\">{url}</a>')", $message);
            }
            if(strpos($msglower, '[/flash]') !== FALSE) {
                $message = preg_replace("/\[flash(=(\d+),(\d+))?\]\s*([^\[\<\r\n]+?)\s*\[\/flash\]/ies", $allowmediacode ? "parseflash('\\2', '\\3', '\\4');" : "bbcodeurl('\\4', '<a href=\"{url}\" target=\"_blank\">{url}</a>')", $message);
            }
        } else {
            if(strpos($msglower, '[/media]') !== FALSE) {
                $message = preg_replace("/\[media=([\w,]+)\]\s*([^\[\<\r\n]+?)\s*\[\/media\]/is", "[media]\\2[/media]", $message);
            }
            if(strpos($msglower, '[/audio]') !== FALSE) {
                $message = preg_replace("/\[audio(=1)*\]\s*([^\[\<\r\n]+?)\s*\[\/audio\]/is", "[media]\\2[/media]", $message);
            }
            if(strpos($msglower, '[/flash]') !== FALSE) {
                $message = preg_replace("/\[flash(=(\d+),(\d+))?\]\s*([^\[\<\r\n]+?)\s*\[\/flash\]/is", "[media]\\4[/media]", $message);
            }
        }

        if($parsetype != 1 && $allowbbcode < 0 && isset($_G['cache']['bbcodes'][-$allowbbcode])) {
            $message = preg_replace($_G['cache']['bbcodes'][-$allowbbcode]['searcharray'], $_G['cache']['bbcodes'][-$allowbbcode]['replacearray'], $message);
        }
        if($parsetype != 1 && strpos($msglower, '[/hide]') !== FALSE && $pid) {
            if($_G['setting']['hideexpiration'] && $pdateline && (TIMESTAMP - $pdateline) / 86400 > $_G['setting']['hideexpiration']) {
                $message = preg_replace("/\[hide[=]?(d\d+)?[,]?(\d+)?\]\s*(.*?)\s*\[\/hide\]/is", "\\3", $message);
                $msglower = strtolower($message);
            }
            if(strpos($msglower, '[hide=d') !== FALSE) {
                $message = preg_replace("/\[hide=(d\d+)?[,]?(\d+)?\]\s*(.*?)\s*\[\/hide\]/ies", "expirehide('\\1','\\2','\\3', $pdateline)", $message);
                $msglower = strtolower($message);
            }
            if(strpos($msglower, '[hide]') !== FALSE) {
                if($authorreplyexist === null) {
                    if(!$_G['forum']['ismoderator']) {
                        if($_G['uid']) {
                            $authorreplyexist = C::t('forum_post')->fetch_pid_by_tid_authorid($_G['tid'], $_G['uid']);
                        }
                    } else {
                        $authorreplyexist = TRUE;
                    }
                }
                if($authorreplyexist) {
                    $message = preg_replace("/\[hide\]\s*(.*?)\s*\[\/hide\]/is", tpl_hide_reply(), $message);
                } else {
                    $message = preg_replace("/\[hide\](.*?)\[\/hide\]/is", tpl_hide_reply_hidden(), $message);
                    $message = '<script type="text/javascript">replyreload += \',\' + '.$pid.';</script>'.$message;
                }
            }
            if(strpos($msglower, '[hide=') !== FALSE) {
                $message = preg_replace("/\[hide=(\d+)\]\s*(.*?)\s*\[\/hide\]/ies", "creditshide(\\1,'\\2', $pid, $authorid)", $message);
            }
        }
    }

    if(!$bbcodeoff) {
        if($parsetype != 1 && strpos($msglower, '[swf]') !== FALSE) {
            $message = preg_replace("/\[swf\]\s*([^\[\<\r\n]+?)\s*\[\/swf\]/ies", "bbcodeurl('\\1', ' <img src=\"'.STATICURL.'image/filetype/flash.gif\" align=\"absmiddle\" alt=\"\" /> <a href=\"{url}\" target=\"_blank\">Flash: {url}</a> ')", $message);
        }

        if(defined('IN_MOBILE') && !defined('TPL_DEFAULT') && !defined('IN_MOBILE_API')) {
            $allowimgcode = 1;
        }

        $attrsrc = !IS_ROBOT && $lazyload ? 'file' : 'src';
        if(strpos($msglower, '[/img]') !== FALSE) {
            $message = preg_replace(array(
                "/\[img\]\s*([^\[\<\r\n]+?)\s*\[\/img\]/ies",
                "/\[img=(\d{1,4})[x|\,](\d{1,4})\]\s*([^\[\<\r\n]+?)\s*\[\/img\]/ies"
            ), $allowimgcode ? array(
                "parseimg(0, 0, '\\1', ".intval($lazyload).", ".intval($pid).", 'onmouseover=\"img_onmouseoverfunc(this)\" ".($lazyload ? "lazyloadthumb=\"1\"" : "onload=\"thumbImg(this)\"")."')",
                "parseimg('\\1', '\\2', '\\3', ".intval($lazyload).", ".intval($pid).")"
            ) : ($allowbbcode ? array(
                (!defined('IN_MOBILE') ? "bbcodeurl('\\1', '<a href=\"{url}\" target=\"_blank\">{url}</a>')" : "bbcodeurl('\\1', '')"),
                (!defined('IN_MOBILE') ? "bbcodeurl('\\3', '<a href=\"{url}\" target=\"_blank\">{url}</a>')" : "bbcodeurl('\\3', '')"),
            ) : array("bbcodeurl('\\1', '{url}')", "bbcodeurl('\\3', '{url}')")), $message);
        }
    }
    //debug($message);
    for($i = 0; $i <= $_G['forum_discuzcode']['pcodecount']; $i++) {
        $message = str_replace("[\tDISCUZ_CODE_$i\t]", $_G['forum_discuzcode']['codehtml'][$i], $message);
    }

    unset($msglower);

    if($jammer) {
        $message = preg_replace("/\r\n|\n|\r/e", "jammer()", $message);
    }

    if($first) {
        if(helper_access::check_module('group')) {
            $message = preg_replace("/\[groupid=(\d+)\](.*)\[\/groupid\]/i", lang('forum/template', 'fromgroup').': <a href="forum.php?mod=forumdisplay&fid=\\1" target="_blank">\\2</a>', $message);
        } else {
            $message = preg_replace("/(\[groupid=\d+\].*\[\/groupid\])/i", '', $message);
        }

    }
    return $htmlon ? $message : nl2br(str_replace(array("\t", '   ', '  '), array('&nbsp; &nbsp; &nbsp; &nbsp; ', '&nbsp; &nbsp;', '&nbsp;&nbsp;'), $message));
}
?>