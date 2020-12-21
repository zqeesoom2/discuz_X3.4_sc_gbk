<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
$CpMsgUrl = 'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod='.$module['name'].'&aid='.$_GET['aid'];
$AId = intval($_GET['aid']);
$Item = $AId ? $Fn_HB_Share->QueryOne($Fn_HB_Share->TableHbShare,$AId) : array();
if($Item['param']){$Item['param'] = unserialize($Item['param']);}
$OpTitle = $Fn_HB_Share->Config['LangVar']['AddTitle'];
if(!submitcheck('DetailSubmit')) {
	if($Item) {
		$OpTitle = $Fn_HB_Share->Config['LangVar']['EditTitle'];
	}
	if(CHARSET == 'gbk'){
		echo '<script src="'.$Fn_HB_Share->Config['StaticPath'].'/kindeditor/kindeditor-min.js" type="text/javascript"></script><script src="'.$Fn_HB_Share->Config['StaticPath'].'/kindeditor/lang/zh_cn_gbk.js" type="text/javascript"></script><script type="text/javascript" src="static/js/calendar.js"></script>';
	}else{
		echo '<script src="'.$Fn_HB_Share->Config['StaticPath'].'/kindeditor/kindeditor-min.js" type="text/javascript"></script><script src="'.$Fn_HB_Share->Config['StaticPath'].'/kindeditor/lang/zh_cn_utf.js" type="text/javascript"></script><script type="text/javascript" src="static/js/calendar.js"></script>';
	}

	$Query = C::t('common_usergroup')->range_orderby_credit();
	$UserGroupList[0] = cplang('plugins_empty');
	foreach($Query as $Id => $UserGroup) {
		$UserGroupList[$UserGroup['groupid']] = $UserGroup['grouptitle'];
	}

	foreach($_G['setting']['extcredits'] as $Id => $Credit) {
		$ExtcreditsList[$Id] = $Credit['title'];
	}
	
	$formUrl = ltrim(rawurldecode(cpurl()),'action=');
	showformheader($formUrl,'enctype');
	showtableheader();
	showtitle($OpTitle);
	showsetting($Fn_HB_Share->Config['LangVar']['Title'], 'title', $Item['title'], 'text');
	if($Item['param']['banner']) {
		$BannerHtml = '<label><input type="checkbox" class="checkbox" name="delbanner" value="yes" /> '.$lang['delete'].'</label><br /><a href="'.$Item['param']['banner'].'" target="_blank"><img src="'.$Item['param']['banner'].'" width="100"/></a><input type="hidden" value="'.$Item['param']['banner'].'" name="banner"><br />'.$Fn_HB_Share->Config['LangVar']['BannerPrompt'];
	}else{
		$BannerHtml = $Fn_HB_Share->Config['LangVar']['BannerPrompt'];
	}
	showsetting($Fn_HB_Share->Config['LangVar']['BannerTitle'], 'bannernew','', 'filetext', '', 0, $BannerHtml);
	showsetting($Fn_HB_Share->Config['LangVar']['BannerLink'], 'bannerlink', $Item['param']['bannerlink'], 'text');
	
	showsetting($Fn_HB_Share->Config['LangVar']['NavTitle'], 'navs', $Item['param']['navs'] ? $Item['param']['navs'] : $Fn_HB_Share->Config['LangVar']['NavDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['NavPrompt']);
	
	showsetting($Fn_HB_Share->Config['LangVar']['BusinessTitle'], 'businesstitle', $Item['param']['businesstitle'] ? $Item['param']['businesstitle'] : $Fn_HB_Share->Config['LangVar']['Business'], 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['RuleTitle'], 'ruletitle', $Item['param']['ruletitle'] ? $Item['param']['ruletitle'] : $Fn_HB_Share->Config['LangVar']['Rule'], 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['WinningLogTitle'], 'winninglogtitle', $Item['param']['winninglogtitle'] ? $Item['param']['winninglogtitle'] : $Fn_HB_Share->Config['LangVar']['WinningLog'], 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['StartTimeTitle'], 'start_dateline',$Item['start_dateline'] ? date('Y-m-d H:i',$Item['start_dateline']):'', 'calendar','','','',1);

	showsetting($Fn_HB_Share->Config['LangVar']['EndTimeTitle'], 'end_dateline',$Item['end_dateline']?date('Y-m-d H:i',$Item['end_dateline']):'', 'calendar','','','',1);

	showsetting($Fn_HB_Share->Config['LangVar']['Times'], 'times', $Item['param']['times'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['TimesPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['HBList'], 'hblist', $Item['param']['hblist'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['HBListPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['FictitiousData'], 'fictitiousdata', $Item['param']['fictitiousdata'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['FictitiousDataPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['RoundLoop'], 'roundloop', $Item['param']['roundloop'], 'radio','','',$Fn_HB_Share->Config['LangVar']['RoundLoopPrompt']);
	showsetting($Fn_HB_Share->Config['LangVar']['NumberTitle'], 'number', $Item['param']['number'] ? $Item['param']['number'] : 1, 'text');
	
	
	showsetting($Fn_HB_Share->Config['LangVar']['SurplusTitle'], 'surplus', $Item['param']['surplus'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['SurplusPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['ShareMode'],array('sharemode',$Fn_HB_Share->DyadicArray($Fn_HB_Share->Config['LangVar']['ShareModeArr'])),$Item['param']['sharemode'],'select','','',$Fn_HB_Share->Config['LangVar']['ShareModePrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['SharePrompt'], 'shareprompt', $Item['param']['shareprompt'] ? $Item['param']['shareprompt'] : $Fn_HB_Share->Config['LangVar']['SharePromptTitle'], 'textarea');

	showsetting($Fn_HB_Share->Config['LangVar']['ProhibitAddress'], 'address', $Item['param']['address'], 'text','','',$Fn_HB_Share->Config['LangVar']['ProhibitAddressPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['GpsErr'], 'gpserr', $Item['param']['gpserr'] ? $Item['param']['gpserr'] : $Fn_HB_Share->Config['LangVar']['GpsErrDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['GpsErrPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['PoPShareTitle'], 'sharebtn', $Item['param']['sharebtn'] ? $Item['param']['sharebtn'] : $Fn_HB_Share->Config['LangVar']['FixedMaskHBBtnShare'], 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['IsApp'], 'app', $Item['param']['app'], 'radio');
	showsetting($Fn_HB_Share->Config['LangVar']['NoAppSwitch'], 'noapp', $Item['param']['noapp'], 'radio','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt'].$Fn_HB_Share->Config['LangVar']['NoAppSwitchPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['IsAppPoP'], 'apppop', $Item['param']['apppop'], 'radio','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt'].$Fn_HB_Share->Config['LangVar']['IsAppPoPPrompt']);
	
	showsetting($Fn_HB_Share->Config['LangVar']['IsAppRandText'], 'apprand', $Item['param']['apprand'], 'text','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt'].$Fn_HB_Share->Config['LangVar']['IsAppRandTextPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['IsAppBtn'], 'appbtn', $Item['param']['appbtn'] ? $Item['param']['appbtn'] : $Fn_HB_Share->Config['LangVar']['IsAppBtnDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['IsAppPromptText'], 'apppromptmaxtext', $Item['param']['apppromptmaxtext'] ? $Item['param']['apppromptmaxtext'] : $Fn_HB_Share->Config['LangVar']['IsAppTextDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['IsAppPromptSmallText'], 'apppromptsmalltext', $Item['param']['apppromptsmalltext'] ? $Item['param']['apppromptsmalltext'] : $Fn_HB_Share->Config['LangVar']['IsAppSmallTextDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['IsAppPrompt']);
	
	showsetting($Fn_HB_Share->Config['LangVar']['RegdateTitle'], 'regdateline',$Item['param']['regdateline'] ? date('Y-m-d',$Item['param']['regdateline']) : '', 'calendar','','',$Fn_HB_Share->Config['LangVar']['RegdateTitlePrompt']);
	
	showsetting($Fn_HB_Share->Config['LangVar']['RegdatePrompt'], 'regdatelineprompt', $Item['param']['regdatelineprompt'] ? $Item['param']['regdatelineprompt'] : $Fn_HB_Share->Config['LangVar']['RegdateDefault'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['RegdatePromptTo']);

	showsetting($Fn_HB_Share->Config['LangVar']['UserGroupTitle'], array('groupid[]',$Fn_HB_Share->DyadicArray($UserGroupList)),$Item['param']['groupid'],'mselect','','',$Fn_HB_Share->Config['LangVar']['UserGroupPrompt']);

	showsetting($Fn_HB_Share->Config[LangVar]['ExtcreditsList'], array('extcredit',$Fn_HB_Share->DyadicArray($ExtcreditsList)),$Item['param']['extcredit'],'select');
	
	showsetting($Fn_HB_Share->Config['LangVar']['ExtcreditsNum'], 'extcreditnum', $Item['param']['extcreditnum'], 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['PosterContent'], 'postercontent', $Item['param']['postercontent'] ? $Item['param']['postercontent'] : $Fn_HB_Share->Config['LangVar']['PosterContentDefault'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['PosterContentPrompt']);

	showsetting($Fn_HB_Share->Config['LangVar']['HBListOrder'],array('hborder',$Fn_HB_Share->DyadicArray($Fn_HB_Share->Config['LangVar']['HBListOrderArr'])),$Item['param']['hborder'],'select');

	showsetting($Fn_HB_Share->Config['LangVar']['HBListOrderResult'],array('hborderresult',$Fn_HB_Share->DyadicArray($Fn_HB_Share->Config['LangVar']['DescAsc'])),$Item['param']['hborderresult'],'select');

	showsetting($Fn_HB_Share->Config['LangVar']['HBListLimit'], 'hblimit', $Item['param']['hblimit'] ? $Item['param']['hblimit'] : 5, 'text');

	showsetting($Fn_HB_Share->Config['LangVar']['Businesss'], 'businesss', $Item['param']['businesss'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['BusinesssPrompt']);

	//…Ãº“ΩÈ…‹
	echo '<tr><td colspan="2" class="td27" s="1">'.$Fn_HB_Share->Config['LangVar']['Business'].'</td></tr><tr class="noborder"><td class="vtop rowform" colspan="2"><textarea id="business" name="business" style="width:80%;height:300px;visibility:hidden;">'.stripslashes($Item['param']['business']).'</textarea></td></tr>';

	//πÊ‘Ú
	echo '<tr><td colspan="2" class="td27" s="1">'.$Fn_HB_Share->Config['LangVar']['Rule'].'</td></tr><tr class="noborder"><td class="vtop rowform" colspan="2"><textarea id="rule" name="rule" style="width:80%;height:300px;visibility:hidden;">'.stripslashes($Item['param']['rule']).'</textarea></td></tr>';
	
	showsetting($Fn_HB_Share->Config['LangVar']['ShareTitle'], 'sharetitle', $Item['param']['sharetitle'], 'text');
	showsetting($Fn_HB_Share->Config['LangVar']['ShareDesc'], 'sharedesc', $Item['param']['sharedesc'], 'textarea');

	
	showsetting($Fn_HB_Share->Config['LangVar']['SuccessShareTitle'], 'successsharetitle', $Item['param']['successsharetitle'] ? $Item['param']['successsharetitle'] : $Fn_HB_Share->Config['LangVar']['SuccessShareDefault'], 'text','','',$Fn_HB_Share->Config['LangVar']['SuccessSharePrompt']);
	showsetting($Fn_HB_Share->Config['LangVar']['SuccessShareDes'], 'successsharedesc', $Item['param']['successsharedesc'] ? $Item['param']['successsharedesc'] : $Fn_HB_Share->Config['LangVar']['SuccessShareDefault'], 'textarea','','',$Fn_HB_Share->Config['LangVar']['SuccessSharePrompt']);

	if($Item['param']['sharelogo']) {
		$ShareLogoHtml = '<label><input type="checkbox" class="checkbox" name="delsharelogo" value="yes" /> '.$lang['delete'].'</label><br /><a href="'.$Item['param']['sharelogo'].'" target="_blank"><img src="'.$Item['param']['sharelogo'].'" width="100"/></a><input type="hidden" value="'.$Item['param']['sharelogo'].'" name="sharelogo"><br />'.$Fn_HB_Share->Config['LangVar']['ShareLogoPrompt'];
	}else{
		$ShareLogoHtml = $Fn_HB_Share->Config['LangVar']['ShareLogoPrompt'];
	}
	showsetting($Fn_HB_Share->Config['LangVar']['ShareLogo'], 'sharelogonew','', 'filetext', '', 0, $ShareLogoHtml);

	showsetting($Fn_HB_Share->Config['LangVar']['DisplayOrder'], 'displayorder', $Item['displayorder'], 'text');
	showsetting($Fn_HB_Share->Config['LangVar']['DisplayTitle'], 'display', $Item['display'], 'radio');
	if($Item[dateline]){
	showsetting($Fn_HB_Share->Config['LangVar']['TimeTitle'], 'dateline',date('Y-m-d H:i',$Item['dateline']), 'calendar','','','',1);
	}
	showtablefooter();
	showsubmit('DetailSubmit');
	showformfooter();
	echo '
		<script type="text/javascript">  
		var options = {  
		filterMode : true,  
		allowImageUpload : true,  
		allowFlashUpload : false,  
		allowMediaUpload : false,  
		allowFileManager : false,  
		items : ["source", "|", "fullscreen", "undo", "redo", "print", "cut", "copy", "paste",
            "plainpaste", "wordpaste", "|", "justifyleft", "justifycenter", "justifyright",
            "justifyfull", "insertorderedlist", "insertunorderedlist", "indent", "outdent", "subscript",
            "superscript", "|", "selectall", "clearhtml","quickformat","|",
            "formatblock", "fontname", "fontsize", "|", "forecolor", "hilitecolor", "bold",
            "italic", "underline", "strikethrough", "lineheight", "removeformat", "|", "image", "table", "hr", "emoticons", "link", "unlink", "|", "about"]
		};  
		var editor = new Array();  
		KindEditor.ready(function(K) {  
		editor[0] = K.create("#business",options);
		editor[1] = K.create("#rule",options);
		});  
		</script> 	
	';
}else{
	
	$Data['title'] = addslashes(strip_tags($_GET['title']));
	$Data['display'] = intval($_GET['display']);
	$Data['displayorder'] = intval($_GET['displayorder']);
	$Data['start_dateline'] = $_GET['start_dateline'] ? strtotime($_GET['start_dateline']) : '';
	$Data['end_dateline'] = $_GET['end_dateline'] ? strtotime($_GET['end_dateline']) : '';
	
	$Param['times'] = addslashes(strip_tags($_GET['times']));
	$Param['bannerlink'] = addslashes(strip_tags($_GET['bannerlink']));
	$Param['navs'] = addslashes(strip_tags($_GET['navs']));
	$Param['businesstitle'] = addslashes(strip_tags($_GET['businesstitle']));
	$Param['ruletitle'] = addslashes(strip_tags($_GET['ruletitle']));
	$Param['winninglogtitle'] = addslashes(strip_tags($_GET['winninglogtitle']));
	$Param['rule'] = addslashes($_GET['rule']);//–Ë±£¡ÙHtml
	$Param['business'] = addslashes($_GET['business']);//–Ë±£¡ÙHtml
	$Param['businesss'] = addslashes(strip_tags($_GET['businesss']));//–Ë±£¡ÙHtml
	$Param['surplus'] = addslashes(strip_tags($_GET['surplus']));
	$Param['shareprompt'] = addslashes(strip_tags($_GET['shareprompt']));
	$Param['sharemode'] = intval($_GET['sharemode']);
	$Param['address'] = addslashes(strip_tags($_GET['address']));
	$Param['gpserr'] = addslashes(strip_tags($_GET['gpserr']));
	$Param['hblist'] = addslashes(strip_tags($_GET['hblist']));
	$Param['fictitiousdata'] = addslashes(strip_tags($_GET['fictitiousdata']));
	$Param['number'] = intval($_GET['number']);
	$Param['roundloop'] = intval($_GET['roundloop']);
	$Param['app'] = intval($_GET['app']);
	$Param['noapp'] = intval($_GET['noapp']);
	$Param['apppop'] = intval($_GET['apppop']);
	$Param['hblimit'] = intval($_GET['hblimit']);
	$Param['hborderresult'] = addslashes(strip_tags($_GET['hborderresult']));
	$Param['hborder'] = addslashes(strip_tags($_GET['hborder']));
	$Param['apprand'] = addslashes(strip_tags($_GET['apprand']));
	$Param['appbtn'] = addslashes(strip_tags($_GET['appbtn']));
	$Param['apppromptmaxtext'] = addslashes(strip_tags($_GET['apppromptmaxtext']));
	$Param['apppromptsmalltext'] = addslashes(strip_tags($_GET['apppromptsmalltext']));
	$Param['regdateline'] = $_GET['regdateline'] ? strtotime($_GET['regdateline']) : '';
	$Param['regdatelineprompt'] = addslashes(strip_tags($_GET['regdatelineprompt']));
	$Param['sharebtn'] = addslashes(strip_tags($_GET['sharebtn']));
	$Param['sharetitle'] = addslashes(strip_tags($_GET['sharetitle']));
	$Param['sharedesc'] = addslashes(strip_tags($_GET['sharedesc']));
	$Param['successsharetitle'] = addslashes(strip_tags($_GET['successsharetitle']));
	$Param['successsharedesc'] = addslashes(strip_tags($_GET['successsharedesc']));
	$Param['groupid'] = is_array($_GET['groupid']) && isset($_GET['groupid']) ? $_GET['groupid'] : '';
	$Param['extcredit'] = intval($_GET['extcredit']);
	$Param['extcreditnum'] = intval($_GET['extcreditnum']);
	$Param['postercontent'] = addslashes(strip_tags($_GET['postercontent']));
	
	/* ∫·∑˘Õº∆¨ */
	if($_GET['delbanner'] == 'yes'){
		unlink(DISCUZ_ROOT.$Item['param']['banner']);
		$Param['banner'] = '';
	}else{
		$Param['banner'] = addslashes(strip_tags($_GET['banner']));
	}
	if($_FILES['bannernew']['size']){
		$BannerFile = $Fn_HB_Share->UploadIconBanner($_FILES['bannernew'],$Item['param']['banner']);
		if($BannerFile['Errorcode']){
			cpmsg($Fn_HB_Share->Config['LangVar']['ImgErr'],'','error');
		}else{
			$Param['banner']  = $BannerFile['Path'];
		}
	}else if($_GET['bannernew']){
		$Param['banner'] = addslashes(strip_tags($_GET['bannernew']));
	}
	/* ∫·∑˘Õº∆¨ End */

	/* ∑÷œÌÕº∆¨ */
	if($_GET['delsharelogo'] == 'yes'){
		unlink(DISCUZ_ROOT.$Item['param']['sharelogo']);
		$Param['sharelogo'] = '';
	}else{
		$Param['sharelogo'] = addslashes(strip_tags($_GET['sharelogo']));
	}
	if($_FILES['sharelogonew']['size']){
		$ShareLogFile = $Fn_HB_Share->UploadIconBanner($_FILES['sharelogonew'],$Item['param']['sharelogo']);
		if($ShareLogFile['Errorcode']){
			cpmsg($Fn_HB_Share->Config['LangVar']['ImgErr'],'','error');
		}else{
			$Param['sharelogo']  = $ShareLogFile['Path'];
		}
	}else if($_GET['sharelogonew']){
		$Param['sharelogo'] = addslashes(strip_tags($_GET['sharelogonew']));
	}
	/* ∑÷œÌÕº∆¨ End */

	$Data['param'] = serialize($Param);
	
	if($Item){
		$Data['dateline'] = strtotime($_GET['dateline']);
		DB::update($Fn_HB_Share->TableHbShare,$Data,'id = '.$AId);
	}else{
		$Data['dateline'] = time();
		DB::insert($Fn_HB_Share->TableHbShare,$Data);
	}
	$ItemTo = $Fn_HB_Share->QueryOne($Fn_HB_Share->TableHbShare,$AId);
	memory('set','HbShareItem'.$AId,$ItemTo,3600);//–¥»Îª∫¥Ê
	cpmsg($Fn_HB_Share->Config['LangVar']['UpdateOk'],$CpMsgUrl,'succeed');
}
?>