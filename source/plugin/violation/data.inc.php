<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}
if(!file_exists("source/plugin/violation/template/com/admin.php")){
	echo '<font style="font-size:26px;color:red">您未安装二手车信息管理组件(<a href="http://addon.discuz.com/?@aljesc.plugin.48332">去安装</a>)</br>友情提示：商业版包含全部组件哦！</font>';
	exit;
}
/*发布信息后的数据管理页面*/
require_once libfile('function/discuzcode');
require_once 'source/plugin/violation/function/function_core.php';
include_once libfile('function/editor');
$config = array();

foreach($pluginvars as $key => $val) {
	$config[$key] = $val['value'];	
}
$pluginid='violation';
$typelist = explode ("\n", str_replace ("\r", "", $config ['pinpai']));
foreach($typelist as $key=>$value){
	$arr=explode('=',$value);
	$types[$arr[0]]=$arr[1];
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
$pos_zw = C::t('#violation#aljesc_position')->range();
$shengming=str_replace ("{sitename}", $_G['setting']['bbname'], $config ['shengming']);
$settings=C::t('#violation#aljesc_setting')->range();
//常用设置里面的自定义变量
if($settings['iswatermark']['value']){
	require_once DISCUZ_ROOT.'source/plugin/violation/class/class_image.php';
	$image = new aljbd_image;
}

if($_GET['act']=='edit'){
	if(submitcheck('formhash')){
		
		if (empty($_GET['title'])) {
            showerror('点击查看');
        }
        for ($i = 1; $i <= 8; $i++) {
            $pic = 'pic' . $i;
            if ($_FILES[$pic]['tmp_name']) {
                $picname = $_FILES[$pic]['name'];
                $picsize = $_FILES[$pic]['size'];
                $config['img_size'] = 8192; //8M之内
				if ($picsize/1024>$config['img_size']) {
					showerror('上传图片不能超过'.$config['img_size'].'K');
				}
                if ($picname != "") {
                    $type = strtolower(strrchr($picname, '.'));
                    if ($type != ".gif" && $type != ".jpg" && $type != ".png") {
                        showerror('请上传.jpg .gif .png格式的图片');
                    }
                    $rand = rand(100, 999);
                    $pics = date("YmdHis") . $rand . $type;
                    $img_dir = 'source/plugin/violation/images/logo/';
                    if (!is_dir($img_dir)) {
                        mkdir($img_dir);
                    }
                    $$pic = $img_dir . $pics;//图片1，图片2，图片3
                    if (@copy($_FILES[$pic]['tmp_name'], $$pic) || @move_uploaded_file($_FILES[$pic]['tmp_name'], $$pic)) {
                        $imageinfo = getimagesize($$pic);
						if($settings['iswatermark']['value']){
							$image->Watermark(DISCUZ_ROOT.'./'.$$pic,'', 'forum');
						}
                        $w64 = $imageinfo[0] < 64 ? $imageinfo[0] : 64;
                        $h64 = $imageinfo[1] < 64 ? $imageinfo[1] : 64;

                        $w640 = $imageinfo[0] < 640 ? $imageinfo[0] : 640;
                        $h480 = $imageinfo[1] < 480 ? $imageinfo[1] : 480;

						$w140 = $imageinfo[0] < 140 ? $imageinfo[0] : 140;
                        $h100 = $imageinfo[1] < 100 ? $imageinfo[1] : 100;

                        $w255 = $imageinfo[0] < 255 ? $imageinfo[0] : 255;
                        $h192 = $imageinfo[1] < 192 ? $imageinfo[1] : 192;

                        img2thumb($$pic, $$pic . '.255x192.jpg', $w255, $h192);
						img2thumb($$pic, $$pic . '.140x100.jpg', $w140, $h100);
                        img2thumb($$pic, $$pic . '.64x64.jpg', $w64, $h64);
                        img2thumb($$pic, $$pic . '.640x480.jpg', $w640, $h480);
                        @unlink($_FILES[$pic]['tmp_name']);
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
            'updatetime' => TIMESTAMP,
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
                if (empty($$pic)) {
                    $$pic = $_GET[$pic];
                }
                $insertarray[$pic] = $$pic;
            }
        }
        C::t('#violation#aljesc')->update($_GET['lid'], $insertarray);
        C::t('#violation#aljesc_user')->update_updatecount_by_uid($_G['uid']);
       
		cpmsg('更新成功', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=data&state='.$_GET['state'], 'succeed');
	}else{
		$rs = C::t('#violation#aljesc_region')->fetch_all_by_upid(0);
        $lp = C::t('#violation#aljesc')->fetch($_GET['lid']);
        $pos = C::t('#violation#aljesc_position')->fetch_all_by_upid(0);
		if ($lp['pos']) {
            $prs = C::t('#violation#aljesc_position')->fetch_all_by_upid($lp['pos']);
        }
        if ($lp['region']) {
            $rrs = C::t('#violation#aljesc_region')->fetch_all_by_upid($lp['region']);
        }

		include template('violation:edit');
	}
}else if($_GET['act']=='commentlist'){
		$currpage=$_GET['page']?$_GET['page']:1;
		$perpage=10;
		$start=($currpage-1)*$perpage;
		$num=C::t('#violation#aljesc_comment')->count_by_bid_all($_GET['lid']);
		$commentlist=C::t('#violation#aljesc_comment')->fetch_all_by_bid_page($_GET['lid'],$start,$perpage);
		$paging = helper_page :: multi($num, $perpage, $currpage, 'admin.php?action=plugins&operation=config&identifier=violation&pmod=data&act=commentlist&lid='.$_GET['lid'], 0, 11, false, false);
		include template('violation:admincommentlist');
}else if($_GET['act']=='deletecomment'){
		C::t('#aljesc#aljesc_comment')->delete($_GET['cid']);
		$currpage=$_GET['page']?$_GET['page']:1;
		$perpage=10;
		$num=C::t('#aljesc#aljesc_comment')->count_by_bid_all($_GET['lid']);
		$commentlist=C::t('#aljesc#aljesc_comment')->fetch_all_by_bid_page($_GET['lid'],$start,$perpage);
		$paging = helper_page :: multi($num, $perpage, $currpage, 'admin.php?action=plugins&operation=config&identifier=aljesc&pmod=data&act=commentlist&lid='.$_GET['lid'], 0, 11, false, false);
		include template('aljesc:admincommentlist');
}else{
	if($config['isreview']){ //需要审核
		include template('violation:admin_nav');
	}else{
		$_GET['state']='audited';
	}
	
	if($_GET['state']=='audited'){
		if(!submitcheck('submit')) {
			showformheader('plugins&operation=config&identifier='.$pluginid.'&pmod=data&page='.$_GET['page']."&search=".$_GET['search']."&state=".$_GET['state']);
			showtableheader('<input type="text" name="search" value="'.$_GET['search'].'"><input type="submit" >');
			//showsubtitle(array('',lang('plugin/aljesc','admin_2'),lang('plugin/aljesc','admin_3'), lang('plugin/aljesc','admin_4'),lang('plugin/aljesc','admin_5'),lang('plugin/aljesc','admin_6')));
            showsubtitle(array('','标题','发布时间', '最后更新时间','价格','推荐&nbsp;操作'));
            echo '<script>disallowfloat = "newthread";</script>';
			$currpage=$_GET['page']?$_GET['page']:1;
			$perpage=10;
			$start=($currpage-1)*$perpage;
			$con=" where state=0";
			if($_GET['search']){
				$search='%' . addcslashes($_GET['search'], '%_') . '%';
				$con.=" and title like '$search'";
			}
			$num=DB::result_first("SELECT count(*) FROM ".DB::table('aljesc')." $con");
			
			$paging = helper_page :: multi($num, $perpage, $currpage, "admin.php?action=plugins&operation=config&identifier=".$pluginid."&pmod=data&search=".$_GET['search'], 0, 10, false, false);
			$query = DB::query("SELECT * FROM ".DB::table('aljesc')." $con ORDER BY id desc limit $start,$perpage");
			while($row = DB::fetch($query)) {
				if($row[tuijian]){
					$che[$row[id]]='checked="checked"';
				}
				$start=date('Y-m-d H:i:s',$row['addtime']);
				$end=date('Y-m-d H:i:s',$row['updatetime']);
				showtablerow('', array('', 'class="td_m"', 'class="td_k"', 'class="td_l"','class="td_l"','class="td_l"'), array(
								"<input class=\"checkbox\" type=\"checkbox\" name=\"delete[]\" value=\"$row[id]\"><input type=\"hidden\" value=\"$row[id]\" name=\"myid[]\" >",	
								'<a href="plugin.php?id=aljesc&act=view&lid='.$row[id].'" target="_blank">'.$row['title'].'</a>',	
								$start,	
								$end,		
								$row['zujin']>0?$row['zujin']:lang('plugin/aljesc','aljesc_23'),			
								'<input class="checkbox" type="checkbox" name="tuijian['.$row[id].']" '.$che[$row[id]].' value="1">&nbsp;&nbsp;&nbsp;<a href="admin.php?action=plugins&operation=config&identifier='.$pluginid.'&pmod=data&act=edit&lid='.$row[id].'&uid='.$row[uid].'">编辑</a> <a href="admin.php?action=plugins&operation=config&identifier=violation&pmod=data&act=commentlist&lid='.$row[id].'" onclick="showWindow(\'edit\',this.href)">评论管理</a>',
								));
				
			}
			
			showsubmit('submit', 'submit', 'del','',$paging);
			showtablefooter();
			showformfooter();
			
			
		}else{
			//debug($_POST);
			if(is_array($_POST['delete'])) {
				foreach($_POST['delete'] as $id) {
					$user=C::t('#violation#aljesc')->fetch($id);
					for ($i = 1; $i <= 8; $i++) {
						$pic = 'pic' . $i;
						if ($user[$pic]) {
							unlink($user[$pic]);
							unlink($user[$pic].'.64x64.jpg');
							unlink($user[$pic].'.640x480.jpg');
						}
					}
					C::t('#violation#aljesc')->delete($id);
				}
			}
			
			foreach($_POST['myid'] as $id) {
				DB::update('aljesc',array('tuijian'=>$_POST['tuijian'][$id]),'id='.$id);
			}
			
			cpmsg('更新成功', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=data&page='.$_GET['page']."&state=".$_GET['state'], 'succeed');
		}
	}else{
		if(!submitcheck('submit')&&!submitcheck('del_submit')) {
			showformheader('plugins&operation=config&identifier='.$pluginid.'&pmod=data&page='.$_GET['page']."&search=".$_GET['search']);
			showtableheader('<input type="text" name="search" value="'.$_GET['search'].'"><input type="submit" >');
			showsubtitle(array('','标题','发布时间', '最后更新时间','价格','操作'));
			echo '<script>disallowfloat = "newthread";</script>';
			$currpage=$_GET['page']?$_GET['page']:1;
			$perpage=10;
			$start=($currpage-1)*$perpage;
			$con=" where state=1";
			if($_GET['search']){
				$search='%' . addcslashes($_GET['search'], '%_') . '%';
				$con=" and title like '$search'";
			}
			$num=DB::result_first("SELECT count(*) FROM ".DB::table('aljesc')." $con");
			
			$paging = helper_page :: multi($num, $perpage, $currpage, "admin.php?action=plugins&operation=config&identifier=".$pluginid."&pmod=data&search=".$_GET['search'], 0, 10, false, false);
			$query = DB::query("SELECT * FROM ".DB::table('aljesc')." $con ORDER BY id desc limit $start,$perpage");
			while($row = DB::fetch($query)) {
				if($row[tuijian]){
					$che[$row[id]]='checked="checked"';
				}
				$start=date('Y-m-d H:i:s',$row['addtime']);
				$end=date('Y-m-d H:i:s',$row['updatetime']);
				showtablerow('', array('', 'class="td_m"', 'class="td_k"', 'class="td_l"','class="td_l"','class="td_l"'), array(
								"<input class=\"checkbox\" type=\"checkbox\" name=\"delete[]\" value=\"$row[id]\"><input type=\"hidden\" value=\"$row[id]\" name=\"myid[]\" >",	
								'<a href="plugin.php?id=violation&act=view&lid='.$row[id].'" target="_blank">'.$row['title'].'</a>',
								$start,	
								$end,		
								$row['zujin']>0?$row['zujin']:lang('plugin/aljesc','aljesc_23'),			
								'<a href="admin.php?action=plugins&operation=config&identifier='.$pluginid.'&pmod=data&act=edit&lid='.$row[id].'&uid='.$row[uid].'">编辑</a>',
								));
				
			}
			
			showsubmit('submit', '批量审核', '<input type="checkbox" onclick="checkAll(\'prefix\', this.form, \'delete\')" class="checkbox" id="chkallGnMF" name="chkall"><label for="chkallGnMF">[审/删?]</label>','<input type="submit" value="批量删除" name="del_submit" class="btn"/>','',$paging);
			showtablefooter();
			showformfooter();
			
			
		}else{
			//debug($_POST);
			if(is_array($_POST['delete'])) { //选中所有的审核的信息
				foreach($_POST['delete'] as $id) {
					$user=C::t('#violation#aljesc')->fetch($id);
					
					if(submitcheck('del_submit')){ //批量删除
						for ($i = 1; $i <= 8; $i++) {
							$pic = 'pic' . $i;
							if ($user[$pic]) {
								unlink($user[$pic]);
								unlink($user[$pic].'.64x64.jpg');
								unlink($user[$pic].'.640x480.jpg');
							}
						}
						if($user['tid']){
							DB::update('forum_post', array('invisible'=>'-1'), "tid=".$user['tid']);
							DB::update('forum_thread', array('displayorder'=>'-1'), "tid=".$user['tid']);
						}
						C::t('#violation#aljesc')->delete($id);
					}else{//批量审核通过
						if (file_exists("source/plugin/violation/template/com/tongbu.php")&&$config['isreview']) {
							$_GET['wanted']=$user['wanted'];
							$_GET['title']=$user['title'];
							$_GET['contact']=$user['contact'];
							$_GET['zujin']=$user['zujin'];
							$_GET['qq']=$user['qq'];
							$_GET['lxr']=$user['lxr'];
							$_GET['region1']=$user['region1'];
							$_GET['region']=$user['region'];
							$_GET['region2']=$user['region2'];
							$_GET['region3']=$user['region3'];
							$_GET['content']=$user['content'];
							$_GET['pos']=$user['pos'];
							$_GET['pos1']=$user['pos1'];
							$_GET['gearbox']=$user['gearbox'];
							$_GET['mileage']=$user['mileage'];
							$_G['uid']=$user['uid'];
							$_G['clientip']=$user['clientip'];
							$insertid=$user['id'];
							include 'source/plugin/violation/template/com/tongbu.php';
						}
						DB::update('aljesc',array('state'=>0),'id='.$id);
					}
				}
			}
			cpmsg('更新成功', 'action=plugins&operation=config&identifier='.$pluginid.'&pmod=data&page='.$_GET['page'], 'succeed');
		}
	}
}
function showmsg($msg,$close){
	if($close){
		$str="parent.hideWindow('$close');";
	}else{
		$str="parent.location=parent.location;";
	}
	include template('violation:showmsg');
	exit;
}
function showerror($msg){
	include template('violation:showerror');
	exit;
}
function img2thumb($src_img, $dst_img, $width = 75, $height = 75, $cut = 0, $proportion = 0)
{
    if(!is_file($src_img))
    {
        return false;
    }
    $ot = fileext($dst_img);
    $otfunc = 'image' . ($ot == 'jpg' ? 'jpeg' : $ot);
    $srcinfo = getimagesize($src_img);
    $src_w = $srcinfo[0];
    $src_h = $srcinfo[1];
    $type  = strtolower(substr(image_type_to_extension($srcinfo[2]), 1));
    $createfun = 'imagecreatefrom' . ($type == 'jpg' ? 'jpeg' : $type);

    $dst_h = $height;
    $dst_w = $width;
    $x = $y = 0;

    if(($width> $src_w && $height> $src_h) || ($height> $src_h && $width == 0) || ($width> $src_w && $height == 0))
    {
        $proportion = 1;
    }
    if($width> $src_w)
    {
        $dst_w = $width = $src_w;
    }
    if($height> $src_h)
    {
        $dst_h = $height = $src_h;
    }

    if(!$width && !$height && !$proportion)
    {
        return false;
    }
    if(!$proportion)
    {
        if($cut == 0)
        {
            if($dst_w && $dst_h)
            {
                if($dst_w/$src_w> $dst_h/$src_h)
                {
                    $dst_w = $src_w * ($dst_h / $src_h);
                    $x = 0 - ($dst_w - $width) / 2;
                }
                else
                {
                    $dst_h = $src_h * ($dst_w / $src_w);
                    $y = 0 - ($dst_h - $height) / 2;
                }
            }
            else if($dst_w xor $dst_h)
            {
                if($dst_w && !$dst_h)  
                {
                    $propor = $dst_w / $src_w;
                    $height = $dst_h  = $src_h * $propor;
                }
                else if(!$dst_w && $dst_h)  
                {
                    $propor = $dst_h / $src_h;
                    $width  = $dst_w = $src_w * $propor;
                }
            }
        }
        else
        {
            if(!$dst_h)  
            {
                $height = $dst_h = $dst_w;
            }
            if(!$dst_w)  
            {
                $width = $dst_w = $dst_h;
            }
            $propor = min(max($dst_w / $src_w, $dst_h / $src_h), 1);
            $dst_w = (int)round($src_w * $propor);
            $dst_h = (int)round($src_h * $propor);
            $x = ($width - $dst_w) / 2;
            $y = ($height - $dst_h) / 2;
        }
    }
    else
    {
        $proportion = min($proportion, 1);
        $height = $dst_h = $src_h * $proportion;
        $width  = $dst_w = $src_w * $proportion;
    }

    $src = $createfun($src_img);
    $dst = imagecreatetruecolor($width ? $width : $dst_w, $height ? $height : $dst_h);
    $white = imagecolorallocate($dst, 255, 255, 255);
    imagefill($dst, 0, 0, $white);

    if(function_exists('imagecopyresampled'))
    {
        imagecopyresampled($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    }
    else
    {
        imagecopyresized($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    }
    $otfunc($dst, $dst_img);
    imagedestroy($dst);
    imagedestroy($src);
    return true;
}
?>