<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}

require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
$Operation = in_array($_GET['Operation'], array('Del')) ? $_GET['Operation'] : 'List';
$CpMsgUrl = 'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod='.$module['name'].'&page='.$_GET['page'].'&keyword='.$_GET['keyword'];
if($Operation == 'List'){//列表
	if(!submitcheck('Submit')) {
		$SearUrl = ADMINSCRIPT.'?'.rawurldecode(cpurl());
		/* 查询条件 */
		$MpUrl = $SearUrl;
		foreach($_GET as $key => $val){
			$MpUrl.= '&'.$key.'='.$val;
		}
		$Where = '';
		$Order = 'L.id';
		if($_GET['keyword']){
			$Where .= ' and concat(L.username,L.uid,L.type) like(\'%'.addslashes(dhtmlspecialchars($_GET[keyword])).'%\')';
		}
		if($_GET['aid']){
			$Where .= ' and L.aid = '.intval($_GET['aid']);
		}
		$Where = preg_replace('/and/','where',$Where,1);
		$Limit = 30;
		$Page = $_GET['page']?intval($_GET['page']):1;
		/* 查询条件 End */
		/* 搜索 */
		$StateSelected = array($_GET['state']=>' selected');
		echo <<<SEARCH
		<form method="post" autocomplete="off" action="$SearUrl" id="tb_search">
			<div style="margin-top:8px;">
				<table cellspacing="4" cellpadding="4">
					<tr>
						<th>{$Fn_HB_Share->Config['LangVar']['KeywordTitle']}</th><td><input type="text" class="txt" name="keyword" value="{$_GET['keyword']}"></td>
						<th>{$Fn_HB_Share->Config['LangVar']['HuoDongId']}</th><td><input type="text" class="txt" name="aid" value="{$_GET['aid']}" size="5">
						&nbsp;&nbsp;<input name="SearchSubmit" value="{$Fn_HB_Share->Config['LangVar']['SearchSubmit']}" class="btn" type="submit">	
						</td>
					</tr>
				</table>
			</div>
		</form>
SEARCH;
		/* 搜索 End */

		/* 模板输出 */
		$TdStyle = array('width="80"', 'width="200"','width="80"','width="100"','width="80"','');
		$FormUrl = ltrim(rawurldecode(cpurl()),'action=');
		showtagheader('div', 'QiangLouModule', true);
		showformheader($FormUrl,'enctype="multipart/form-data"');
		showtableheader($Fn_HB_Share->Config['LangVar']['InfoListTitle']);
		showsubtitle(array(
			'ID',
			$Fn_HB_Share->Config['LangVar']['Title'],
			'Uid',
			$Fn_HB_Share->Config['LangVar']['UserNameTitle'],
			$Fn_HB_Share->Config['LangVar']['ShareTypeTitle'],
			$Fn_HB_Share->Config['LangVar']['ShareTimeTitle']
		), 'header tbm',$TdStyle);
		$ModulesList = GetModulesList($Page,$Limit,$Where,$Order);
		$OpCpUrl = ADMINSCRIPT.'?'.rawurldecode(cpurl());
		foreach ($ModulesList as $Module) {
			showtablerow('', array('class="td25"', 'class="td28"'), array(
				'<input type="checkbox" class="checkbox" name="delete[]" value="'.$Module['id'].'" />'.$Module['id'],
				'<a href="'.$Fn_HB_Share->Config['Url'].'&aid='.$Module['aid'].'" target="_blank">'.$Module['title'].'</a>',
				$Module['uid'],
				$Module['username'],
				$Module['type'],
				date('Y-m-d H:i:s',$Module['dateline'])
			));
		}
		showsubmit('Submit','submit','del','',multi(GetModulesCount($Where),$Limit,$Page,$MpUrl));
        showtablefooter();
		showformfooter();
		showtagfooter('div');
		/* 模板输出 End */
	}else{
		if(isset($_GET['delete']) && is_array($_GET['delete'])){
			foreach($_GET['delete'] as $Key => $Val) {
				$Val = intval($Val);
				DB::delete($Fn_HB_Share->TableHbShareLog,'id ='.$Val);
			}
			cpmsg($Fn_HB_Share->Config['LangVar']['DelOk'],$CpMsgUrl,'succeed');
		}else{
			cpmsg($Fn_HB_Share->Config['LangVar']['DelErr'],'','error');
		}
	}
}
/* 列表 */
function GetModulesList($Page,$Limit,$Where,$Order){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT H.title,L.* FROM '.DB::table($Fn_HB_Share->TableHbShareLog).' L LEFT JOIN '.DB::table($Fn_HB_Share->TableHbShare).' H on H.id = L.aid '.$Where.' order by '.$Order.' desc LIMIT '.(($Page - 1) * $Limit).','.$Limit;
	return DB::fetch_all($FetchSql);//返回数据
}

/* 总数 */
function GetModulesCount($Where){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT COUNT(*) FROM '.DB::table($Fn_HB_Share->TableHbShareLog).' L '.$Where;
	return DB::result_first($FetchSql);//返回总数
}

?>