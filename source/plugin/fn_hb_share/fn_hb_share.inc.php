<?php
/**
 *	[【飞鸟】红包分享(fn_hb_share.{modulename})] (C)2016-2099 Powered by 飞鸟工作室.
 *	Version: 1.0
 *	Date: 2017-12-28 10:27
 */
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');

if($WxApp){//微信分享
	$Fn_HB_Share->Config['SignPackage'] = $Fn_HB_Share->WeixinGetSignPackage();
}

if(!$_G['uid']){
	if($MagApp){//马甲登录
		$UserInfo = $Fn_HB_Share->GetMagUserInfo();
		if($UserInfo['user_id']){
			require_once libfile('function/member');
			$Member = getuserbyuid($UserInfo['user_id'],1);
			$CookieTime = 1296000;
			setloginstatus($Member, $CookieTime);
		}
	}else if($QFApp){
		$ToKen = json_decode($Fn_HB_Share->GetActionAuthCode($_COOKIE['wap_token'],$Fn_HB_Share->Config['PluginVar']['qf_secret']),true);
		if($ToKen['uid']){
			require_once libfile('function/member');
			$Member = getuserbyuid($ToKen['uid'],1);
			$CookieTime = 1296000;
			setloginstatus($Member, $CookieTime);
		}
	}
}

$Item = $_GET['aid'] ? $Fn_HB_Share->GetItemCache($_GET['aid']) : '';

if($_GET['m'] == 'calculation'){
	$navtitle = $metakeywords = $metadescription = $Fn_HB_Share->Config['LangVar']['CalculationTitle'];
	if($_POST['formhash'] == formhash() && $_POST['f'] == 'calculation' && $_POST['money'][0] && $_POST['num'][0]){
		$RandBonus = $Fn_HB_Share->GetRandBonus($_POST['money'][0],$_POST['num'][0],$_POST['min_money'][0]);
		$Html = '';
		foreach($RandBonus as $Key => $Val){
			$Html .= $Val."\r\n";
		}
	}
}else if($Item){
	$_GET['m'] = empty($_GET['m']) ? 'index' : $_GET['m'];//初始化模板
	$Item['param'] = unserialize($Item['param']);
	/* 电脑二维码访问 */
	if(!checkmobile() && $Fn_HB_Share->Config['PluginVar']['PcQrSwitch']){
		$navtitle = $metakeywords = $metadescription = $Item['title'];
		$PcUrl = $_G[siteurl].'plugin.php?id=fn_hb_share&aid='.$Item['id'];
		$QrSize = 5;
		$Dir = 'data/cache/qrcode/';//存储路径
		$File = $Dir.'fn_hb_share.jpg';
		if(!file_exists($File) || !filesize($File)) {
			dmkdir($Dir);
			require_once DISCUZ_ROOT.'source/plugin/fn_hb_share/qrcode.class.php';
			QRcode::png($PcUrl, $File, QR_ECLEVEL_L, $QrSize);
		}
		$QrCode = base64_encode(file_get_contents($File));
		unlink($File);
		include template('fn_hb_share:index_qrcode');
		exit();
	}
	/* 电脑二维码访问 End */
	if($_GET['m'] == 'index'){
		// var_dump($WxApp); == true
		$navtitle = $metakeywords = $metadescription = $Item['title'];
		$HbList = array_filter(explode("\r\n",$Item['param']['hblist']));
		if($Item['param']['times']){//是否多轮发红包
			$Times = array_filter(explode("\r\n",$Item['param']['times']));
			foreach($Times as $Key=>$Val){
				$Array = array_filter(explode("|",$Val));
				$STime = strtotime($Array[0]);
				$ETime = strtotime($Array[1]);
				$HbListCount = $Array[2];
				if(time() < $ETime){
					$Item['start_dateline'] = $STime;
					$Item['end_dateline'] = $ETime;
					if($Key != count($Times)-1){
						$ArrayTo = array_filter(explode("|",$Times[$Key+1]));
						$Item['param']['surplus'] .= '<br>'.str_replace(array('{Num}','{Time}'),array($Key+2,date('m-d H:i',strtotime($ArrayTo[0]))),$Fn_HB_Share->Config['LangVar']['TimesText']);
					}
					break;
				}else if($Key == count($Times)-1){
					$Item['start_dateline'] = $STime;
					$Item['end_dateline'] = $ETime;
				}
			}
		}else{
			$HbListCount = count($HbList);
		}

		$Item['param']['banner'] = $Item['param']['banner'] ? $Item['param']['banner'] : $Fn_HB_Share->Config['StaticPath'].'/images/banner.jpg';
		$Item['param']['business'] = stripslashes($Item['param']['business']);
		$Item['param']['rule'] = stripslashes($Item['param']['rule']);
		
		
		$HbShareList = $Fn_HB_Share->GetAjaxHbShareList($Item['id']);//红包记录
		
//		if(memory('check') == 'memcache' || memory('check') == 'redis'){
//			memory('inc','HbShareItemClick'.$Item['id'],1);
//		}else{
//			$Fn_HB_Share->Click($Fn_HB_Share->TableHbShare,$Item['id']);//点击率累加
//		}

		$HbCount = $Fn_HB_Share->GetHbCount($Item['id'],$Item['start_dateline'],$Item['end_dateline']);
		$Item['param']['surplus'] =  str_replace(array('{Surplus}','{em}','{/em}','{br}'),array($HbListCount - $HbCount,'<em>','</em>','<br>'),$Item['param']['surplus']);
		
		$MyHbCount = 0;
		if($_G['uid']){
			$MyHbCount = $Item['param']['roundloop'] ? $Fn_HB_Share->GetMyHbCount($Item['id'],$_G['uid'],$Item['start_dateline'],$Item['end_dateline']) : $Fn_HB_Share->GetMyHbCount($Item['id'],$_G['uid']);
			$MyHbList = $Fn_HB_Share->GetHbList($_G['uid'],$Item['id']);
			foreach($MyHbList as $Key=>$Val){
				if(floatval($Val['money']) == 0){
					$UpData['money'] = addslashes(strip_tags($HbList[$Val['id']-1]));
					if(floatval($UpData['money']) != 0){
						if(DB::update($Fn_HB_Share->TableHbShareList,$UpData,'id='.intval($Val['id']))){
							$MyHbList[$Key]['money'] = $UpData['money'];
							$MyHbListStateTo[$Key] = $MyHbListTo[$Key] = $MyHbList[$Key];
						};
					}
				}else{
					$MyHbListStateTo[$Key] = $MyHbList[$Key];
					if(in_array($Val['state'],array('0'))){
						$MyHbListTo[$Key] = $MyHbList[$Key];
					}
				}
			}
		}
		//导航名称
		$Item['param']['navs'] = $Item['param']['navs'] ? $Item['param']['navs'] : '1,2,3';
		$Item['param']['businesstitle'] = $Item['param']['businesstitle'] ? $Item['param']['businesstitle'] : $Fn_HB_Share->Config['LangVar']['Business'];
		$Item['param']['ruletitle'] = $Item['param']['ruletitle'] ? $Item['param']['ruletitle'] : $Fn_HB_Share->Config['LangVar']['Rule'];
		$Item['param']['winninglogtitle'] = $Item['param']['winninglogtitle'] ? $Item['param']['winninglogtitle'] : $Fn_HB_Share->Config['LangVar']['WinningLog'];
		$Navs = array_filter(explode(",",$Item['param']['navs']));

		//定位失败
		$Item['param']['gpserr'] = $Item['param']['gpserr'] ? $Item['param']['gpserr'] : $Fn_HB_Share->Config['LangVar']['GpsErrDefault'];

		//多商家
		$Businesss = array_filter(explode("\n",$Item['param']['businesss']));
		//分享
		$Fn_HB_Share->Config['WxShare']['WxTitle'] = $Item['param']['sharetitle'] ? $Item['param']['sharetitle'] : $Item['title'];
		$Fn_HB_Share->Config['WxShare']['WxDes'] = $Item['param']['sharedesc'] ? $Item['param']['sharedesc'] : $Item['title'];
		$Fn_HB_Share->Config['WxShare']['WxUrl'] = $Fn_HB_Share->GetRandShare() ? $Fn_HB_Share->GetRandShare().'plugin.php?id=fn_hb_share&aid='.$Item['id'] : $Fn_HB_Share->Config['Url'].'&aid='.$Item['id'];
		$Fn_HB_Share->Config['WxShare']['WxImg'] = $Item['param']['sharelogo'] ? $Item['param']['sharelogo'] : $Item['thumbnail'];
		$Fn_HB_Share->Config['WxShare']['WxImg'] = strpos($Fn_HB_Share->Config['WxShare']['WxImg'],'http') !== false ? $Fn_HB_Share->Config['WxShare']['WxImg'] : $_G['siteurl'].$Fn_HB_Share->Config['WxShare']['WxImg'];
		$Fn_HB_Share->Config['WxShare']['WxTitle'] = str_replace(array("\r\n","\n","\r"),array('','',''),$Fn_HB_Share->Config['WxShare']['WxTitle']);
		$Fn_HB_Share->Config['WxShare']['WxDes'] = str_replace(array("\r\n","\n","\r"),array('','',''),$Fn_HB_Share->Config['WxShare']['WxDes']);
	}else if($_GET['m'] == 'poster'){//生成海报
		$navtitle = $metadescription = $metakeywords = $Fn_HB_Share->Config['LangVar']['Poster'];
		$Money = $Fn_HB_Share->GetMyHbMoney($Item['id']);
		$Item['param']['postercontent'] = $Item['param']['postercontent'] ? $Item['param']['postercontent'] : $Fn_HB_Share->Config['LangVar']['PosterContentDefault'];
		$Item['param']['postercontent'] = str_replace(array('{AppName}','{Money}','{br}','{em}','{/em}'),array($Fn_HB_Share->Config['PluginVar']['AppName'],$Money,'<br>','<em>','</em>'),$Item['param']['postercontent']);

		$Fn_HB_Share->Config['WxShare']['WxUrl'] = $Fn_HB_Share->GetRandShare() ? $Fn_HB_Share->GetRandShare().'plugin.php?id=fn_hb_share&aid='.$Item['id'] : $Fn_HB_Share->Config['Url'].'&aid='.$Item['id'];
	}else{
		exit('No Data');
	}
}else{
	exit($Fn_HB_Share->Config['LangVar']['NoDataAdd']);
}
include template('fn_hb_share:'.$_GET['m']);
?>