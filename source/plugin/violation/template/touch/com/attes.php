<?php
$r_pay=explode('|',$config['r_pay']);
if (submitcheck('formhash')) {
	
	if ($_FILES['pic']['tmp_name']) {
		$picname = $_FILES['pic']['name'];
		$picsize = $_FILES['pic']['size'];
		if ($picsize/1024>$config['img_size']) {
			showerror('&#19978;&#20256;&#22270;&#29255;&#19981;&#33021;&#36229;&#36807;'.$config['img_size'].'K');
		}
		if ($picname != "") {
			$type = strstr($picname, '.');
			if ($type != ".gif" && $type != ".jpg" && $type != ".png") {
				showerror('&#35831;&#19978;&#20256;&#46;&#106;&#112;&#103;&#32;&#46;&#103;&#105;&#102;&#32;&#46;&#112;&#110;&#103;&#26684;&#24335;&#30340;&#22270;&#29255;');
			}
			$rand = rand(100, 999);
			$pics = date("YmdHis") . $rand . $type;
			$img_dir = 'source/plugin/aljesc/images/logo/';
			if (!is_dir($img_dir)) {
				mkdir($img_dir);
			}
			$$pic = $img_dir . $pics;
			if (@copy($_FILES['pic']['tmp_name'], $$pic) || @move_uploaded_file($_FILES['pic']['tmp_name'], $$pic)) {
				$imageinfo = getimagesize($$pic);
				@unlink($_FILES['pic']['tmp_name']);
			}
		}
	}
}
if($_GET['form']=='shenfen'){
	if (submitcheck('formhash')) {
		$rz2=C::t('#aljesc#aljesc_attestation')->fetch_uid_type_sign($_G['uid'],'2');
		if($rz2){
			C::t('#aljesc#aljesc_attestation')->delete($rz2['id']);
		}
		$insertarray = array(
			'type' => '1',
			'username' => $_G['username'],
			'uid' => $_G['uid'],
			'timestamp' => TIMESTAMP,
			'num' => $_GET['str_idcard'],
		);
		if ($$pic) {
			$insertarray['pic'] = $$pic;
		}
		if($config['r_ext']&&$r_pay['0']){
			if (getuserprofile('extcredits' . $config['r_ext']) < $r_pay['0']) {
				showerror($_G['setting']['extcredits'][$config['r_ext']]['title'] . '&#19981;&#36275;');
			}
			updatemembercount($_G['uid'], array($config['r_ext'] => '-' . $r_pay['0']));
		}
		if(C::t('#aljesc#aljesc_attestation')->fetch_uid_type($_G['uid'],'1')){
			$insertarray['sign'] = 0;
			DB::update('aljesc_attestation', $insertarray, array("uid"=>$_G['uid'],'type'=>'1'));
		}else{
			if(!$$pic){
				showerror('&#35831;&#19978;&#20256;&#29031;&#29255;&#65281;');
			}
			C::t('#aljesc#aljesc_attestation')->insert($insertarray);
		}
		showmsg('&#25552;&#20132;&#25104;&#21151;&#65292;&#35831;&#31561;&#24453;&#23457;&#26680;&#65281;');
	}
}else if($_GET['form']=='gongsi'){
	if (submitcheck('formhash')) {
		$rz1=C::t('#aljesc#aljesc_attestation')->fetch_uid_type_sign($_G['uid'],'1');
		if($rz1){
			C::t('#aljesc#aljesc_attestation')->delete($rz1['id']);
		}
		$insertarray = array(
			'type' => '2',
			'username' => $_G['username'],
			'uid' => $_G['uid'],
			'timestamp' => TIMESTAMP,
			'num' => $_GET['num'],
			'gongsiname' => $_GET['gongsiname'],
		);
		if ($$pic) {
			$insertarray['pic'] = $$pic;
		}
		if($config['r_ext']&&$r_pay['2']){
			if (getuserprofile('extcredits' . $config['r_ext']) < $r_pay['2']) {
				showerror($_G['setting']['extcredits'][$config['r_ext']]['title'] . '&#19981;&#36275;');
			}
			updatemembercount($_G['uid'], array($config['r_ext'] => '-' . $r_pay['2']));
		}
		if(C::t('#aljesc#aljesc_attestation')->fetch_uid_type($_G['uid'],'2')){
			$insertarray['sign'] = 0;
			DB::update('aljesc_attestation', $insertarray, array("uid"=>$_G['uid'],'type'=>'2'));
		}else{
			if(!$$pic){
				showerror('&#35831;&#19978;&#20256;&#29031;&#29255;&#65281;');
			}
			C::t('#aljesc#aljesc_attestation')->insert($insertarray);
		}
		showmsg('&#25552;&#20132;&#25104;&#21151;&#65292;&#35831;&#31561;&#24453;&#23457;&#26680;&#65281;');
	}
}else{
	$rz1=C::t('#aljesc#aljesc_attestation')->fetch_uid_type_sign($_G['uid'],'1');
	$rz2=C::t('#aljesc#aljesc_attestation')->fetch_uid_type_sign($_G['uid'],'2');
	$navtitle = $config['title'];
	$metakeywords = $config['keywords'];
	$metadescription = $config['description'];
	if($aljesc_seo['admintop']['seotitle']){
		$seodata = array('bbname' => $_G['setting']['bbname'],'username'=>$_G['username']);
		list($navtitle, $metadescription, $metakeywords) = get_seosetting('', $seodata, $aljesc_seo['admintop']);
	}
	include template('aljesc:attestation');
}
?>