<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}

require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
$Operation = in_array($_GET['Operation'], array('Del')) ? $_GET['Operation'] : 'List';
$CpMsgUrl = 'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod='.$module['name'];
$OpItemCpUrl = ADMINSCRIPT.'?'.'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod=AdminHB';
$OpHBShareLogCpUrl = ADMINSCRIPT.'?'.'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod=AdminHBShareLog';
$OpHBShareListCpUrl = ADMINSCRIPT.'?'.'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod=AdminHBShareList';

if($Operation == 'List'){//列表
	if(!submitcheck('Submit')) {
		/* 查询条件 */
		$MpUrl = ADMINSCRIPT.'?'.rawurldecode(cpurl());
		foreach($_GET as $key => $val){
			$MpUrl.= '&'.$key.'='.$val;
		}
		$Where = '';
		$Order = 'H.displayorder';
		$Limit = 30;
		$Page = $_GET['page']?intval($_GET['page']):1;
		/* 查询条件 End */
		/* 模板输出 */
		$TdStyle = array('width="60"', 'width="150"', 'width="300"','width="60"','width="80"','width="60"','width="60"','width="140"','');
		$FormUrl = ltrim(rawurldecode(cpurl()),'action=');
		showtagheader('div', 'Module', true);
		showformheader($FormUrl,'enctype="multipart/form-data"');
		showtableheader('');
		showsubtitle(array(
			$Fn_HB_Share->Config['LangVar']['DisplayOrder'],
			$Fn_HB_Share->Config['LangVar']['Title'],
			$Fn_HB_Share->Config['LangVar']['PluginLink'],
			$Fn_HB_Share->Config['LangVar']['ParticipateCount'],
			$Fn_HB_Share->Config['LangVar']['WinningNumCount'],
			$Fn_HB_Share->Config['LangVar']['ShareCounrTitle'],
			$Fn_HB_Share->Config['LangVar']['DisplayTitle'],
			$Fn_HB_Share->Config['LangVar']['TimeTitle'],
			$Fn_HB_Share->Config['LangVar']['OperationTitle']
		), 'header tbm',$TdStyle);
		$RankingList = GetModulesList($Page,$Limit,$Where,$Order);
		$OpCpUrl = ADMINSCRIPT.'?'.rawurldecode(cpurl());
		foreach ($RankingList as $Module) {
			$ParticipateCount = DB::fetch_all("SELECT L.uid FROM ".DB::table($Fn_HB_Share->TableHbShareLog)." L Where L.aid = ".$Module['id']." GROUP BY L.uid");
			$ShareCount = DB::result_first('SELECT COUNT(*) FROM '.DB::table($Fn_HB_Share->TableHbShareLog).' where aid = '.$Module['id']);
			$WinningNumCount = DB::fetch_all("SELECT L.uid FROM ".DB::table($Fn_HB_Share->TableHbShareList)." L Where L.aid = ".$Module['id']." GROUP BY L.uid");
			showtablerow('', array('class="td25"', 'class="td28"'), array(
				'<input type="text" size="3" name="displayorder['.$Module['id'].']" value='.$Module['displayorder'].'>',
				'<input type="text" size="25" name="title['.$Module['id'].']" value='.$Module['title'].'>',
				'<input type="text" size="40" value='.$Fn_HB_Share->Config['Url'].'&aid='.$Module['id'].' readonly>',
				count($ParticipateCount),
				count($WinningNumCount),
				$ShareCount,
				$Module['display'] ? $Fn_HB_Share->Config['LangVar']['Yes'] : '<span style="color:red">'.$Fn_HB_Share->Config['LangVar']['No'].'</span>',
				date('Y-m-d H:i',$Module['dateline']),
				'<a href="'.$Fn_HB_Share->Config['Url'].'&aid='.$Module['id'].'" target="_blank">'.cplang('view').'</a>&nbsp;&nbsp;<a href="'.$OpItemCpUrl.'&aid='.$Module['id'].'">'.$Fn_HB_Share->Config['LangVar']['EditTitle'].'</a>&nbsp;&nbsp;<a href="'.$OpHBShareListCpUrl.'&aid='.$Module['id'].'">'.$Fn_HB_Share->Config['LangVar']['HBShareList'].'</a>&nbsp;&nbsp;<a href="'.$OpHBShareLogCpUrl.'&aid='.$Module['id'].'">'.$Fn_HB_Share->Config['LangVar']['HBShareLog'].'</a>&nbsp;&nbsp;<a href="'.$OpCpUrl.'&Operation=Del&aid='.$Module['id'].'&formhash='.FORMHASH.'">'.$Fn_HB_Share->Config['LangVar']['DelTitle'].'</a>',
			));
		}
		showsubmit('Submit','submit','','',multi(GetModulesCount($Where),$Limit,$Page,$MpUrl));
        showtablefooter();
		showformfooter();
		showtagfooter('div');
		/* 模板输出 End */
	}else{
		if(isset($_GET['displayorder']) && is_array($_GET['displayorder'])){
			foreach($_GET['displayorder'] as $Id => $Val) {
				$Id = intval($Id);
				$Data['displayorder'] = intval($Val);
				$Data['title'] = addslashes(strip_tags($_GET['title'][$Id]));
				DB::update($Fn_HB_Share->TableHbShare,$Data,'id = '.$Id);
			}
			cpmsg($Fn_HB_Share->Config['LangVar']['UpdateOk'],$CpMsgUrl,'succeed');
		}
	}
}else if($Operation == 'Del' && $_GET['formhash'] == formhash() && $_GET['aid']){//删除
	$AId = intval($_GET['aid']);
	DB::delete($Fn_HB_Share->TableHbShare,'id ='.$AId);
	DB::delete($Fn_HB_Share->TableHbShareLog,'aid ='.$AId);
	DB::delete($Fn_HB_Share->TableHbShareList,'aid ='.$AId);
	cpmsg($Fn_HB_Share->Config['LangVar']['DelOk'],$CpMsgUrl,'succeed');
}
/* 列表 */
function GetModulesList($Page,$Limit,$Where=null,$Order){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT H.* FROM '.DB::table($Fn_HB_Share->TableHbShare).' H '.$Where.' order by '.$Order.' asc LIMIT '.(($Page - 1) * $Limit).','.$Limit;
	return DB::fetch_all($FetchSql);//返回数据
}

/* 总数 */
function GetModulesCount($Where=null){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT COUNT(*) FROM '.DB::table($Fn_HB_Share->TableHbShare).' H '.$Where;
	return DB::result_first($FetchSql);//返回总数
}
?>