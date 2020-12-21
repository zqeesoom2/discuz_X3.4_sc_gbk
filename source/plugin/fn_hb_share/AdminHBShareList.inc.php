<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
	exit('Access Denied');
}

require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Function.inc.php');
require_once (DISCUZ_ROOT .'./source/plugin/fn_hb_share/Common.php');
$Operation = in_array($_GET['Operation'], array('Del')) ? $_GET['Operation'] : 'List';
$CpMsgUrl = 'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod='.$module['name'].'&page='.$_GET['page'].'&keyword='.$_GET['keyword'].'&aid='.$_GET['aid'].'&state='.$_GET['state'];
if($Operation == 'List'){//列表
	if(!submitcheck('Submit')) {
		/* 搜索 */
		$SearUrl = ADMINSCRIPT.'?'.rawurldecode(cpurl());
		$StateSelected = array($_GET['state']=>' selected');
		echo <<<SEARCH
		<form method="post" autocomplete="off" action="$SearUrl" id="tb_search">
			<div style="margin-top:8px;">
				<table cellspacing="4" cellpadding="4">
					<tr>
						<th>{$Fn_HB_Share->Config['LangVar']['KeywordTitle']}</th><td><input type="text" class="txt" name="keyword" value="{$_GET['keyword']}"></td>
						<th>{$Fn_HB_Share->Config['LangVar']['HuoDongId']}</th><td><input type="text" class="txt" name="aid" value="{$_GET['aid']}"></td>
						<th>{$Fn_HB_Share->Config['LangVar']['StateTitle']}</th><td>
						<select name="state">
							<option value="">{$Fn_HB_Share->Config['LangVar']['SelectNull']}</option>
							<option value="1"{$StateSelected['1']}>{$Fn_HB_Share->Config['LangVar']['HbState']['1']}</option>
							<option value="0"{$StateSelected['0']}>{$Fn_HB_Share->Config['LangVar']['HbState']['0']}</option>
						</select>
						&nbsp;&nbsp;<input name="SearchSubmit" value="{$Fn_HB_Share->Config['LangVar']['SearchSubmit']}" class="btn" type="submit">
						</td>
					</tr>
				</table>
			</div>
		</form>
SEARCH;
		/* 搜索 End */
		/* 查询条件 */
		$MpUrl = $SearUrl;
		foreach($_GET as $key => $val){
			$MpUrl.= '&'.$key.'='.$val;
		}
		$Where = '';
		$Order = 'L.dateline';
		if($_GET['aid']){
			$Where .= ' and L.aid = '.intval($_GET['aid']);
		}
		if(in_array($_GET['state'],array('0','1'))){
			$Where .= ' and L.state = '.intval($_GET['state']);
		}
		if($_GET['keyword']){
			$Where .= ' and concat(L.uid,L.username,L.money) like(\'%'.addslashes(dhtmlspecialchars($_GET['keyword'])).'%\')';
		}
		$Where = preg_replace('/and/','where',$Where,1);
		$Limit = 20;
		$Page = $_GET['page']?intval($_GET['page']):1;
		/* 查询条件 End */
		/* 模板输出 */
		$TdStyle = array('width="20"', 'width="200"','width="50"', 'width="80"','width="60"','width="60"');
		$FormUrl = ltrim(rawurldecode(cpurl()),'action=');
		showtagheader('div', 'QiangLouModule', true);
		showformheader($FormUrl,'enctype="multipart/form-data"');
		showtableheader($Fn_HB_Share->Config['LangVar']['InfoListTitle']);
		showsubtitle(array(
            'ID',
			$Fn_HB_Share->Config['LangVar']['Title'],
			'Uid',
			$Fn_HB_Share->Config['LangVar']['UserNameTitle'],
			$Fn_HB_Share->Config['LangVar']['MoneyTitle'],
			$Fn_HB_Share->Config['LangVar']['StateTitle'],
			$Fn_HB_Share->Config['LangVar']['TimeTitle']
		), 'header tbm',$TdStyle);
		$ModulesList = GetModulesList($Page,$Limit,$Where,$Order);
		foreach ($ModulesList as $Module) {
			showtablerow('', array('class="td25"', 'class="td28"'), array(
				'<input type="checkbox" class="checkbox" name="ids[]" value="'.$Module['id'].'" /><input value="'.$Module['aid'].'" name="aids['.$Module['id'].']" type="hidden">'.$Module['id'],
				'<a href="'.$Fn_HB_Share->Config['Url'].'&aid='.$Module['aid'].'" target="_blank">'.$Module['title'].'</a>',
				$Module['uid'],
				$Module['username'],
				$Module['money'],
				$Module['state'] ? $Fn_HB_Share->Config['LangVar']['HbState']['1'] : '<span style="color:red">'.$Fn_HB_Share->Config['LangVar']['HbState']['0'].'<span>',
				date('Y-m-d H:i',$Module['dateline'])
			));
		}
		showsubmit('Submit','submit','<input name="chkall" id="chkall" class="checkbox" onclick="checkAll(\'prefix\', this.form, \'ids\')" type="checkbox"><label for="chkall">'.$Fn_HB_Share->Config[LangVar]['ChkAll'].'</label>&nbsp;&nbsp;<label><input name="optype" value="Del" class="radio" type="radio">'.$Fn_HB_Share->Config[LangVar]['DelTitle'].'</label>&nbsp;&nbsp;<label><input name="optype" value="HB" class="radio" type="radio">'.$Fn_HB_Share->Config[LangVar]['HandleHB'].'</label>','',multi(GetModulesCount($Where),$Limit,$Page,$MpUrl));
        showtablefooter();
		showformfooter();
		showtagfooter('div');
		/* 模板输出 End */
	}else{
		if(isset($_GET['ids']) && is_array($_GET['ids'])){
			if($_GET['optype'] == 'Del'){//全删
				//删除选中视频
				foreach($_GET['ids'] as $Key => $Val) {
					$Val = intval($Val);
					$OpAid = intval($_GET['aids'][$Val]);
					DB::delete($Fn_HB_Share->TableHbShareList,'id ='.$Val.' and aid = '.$OpAid);
				}
				cpmsg($Fn_HB_Share->Config['LangVar']['DelOk'],$CpMsgUrl,'succeed');
			}else if($_GET['optype'] == 'HB'){
				$I = 0;
				foreach($_GET['ids'] as $Key => $Val) {
					$Val = intval($Val);
					$OpAid = intval($_GET['aids'][$Val]);
					$HbShare = $Fn_HB_Share->QueryOne($Fn_HB_Share->TableHbShareList,$Val,' and aid = '.$OpAid.' and state = 0');
					if($HbShare){
						$HBState = false;
						if($Fn_HB_Share->Config['PluginVar']['AppType'] == 2){//千帆发红包
							if(QFAddBalance($HbShare['uid'],$HbShare['money'])){
								$HBState = true;
							}
						}else if($Fn_HB_Share->Config['PluginVar']['AppType'] == 1){//马甲发红包
							if(GetMagAccountTransfer($HbShare['uid'],$HbShare['money'],$Fn_HB_Share->Config['LangVar']['WalletContent'])){
								$HBState = true;
							};
						}else{//飞鸟钱包
							if(FnWallet::WalletLogInsertBy($HbShare['uid'],$Fn_HB_Share->Config['LangVar']['WalletContent'],$HbShare['money'],1,'fn_hb_share')){
								$HBState = true;
							}
						}
						if($HBState && DB::update($Fn_HB_Share->TableHbShareList,array('state'=>1),'id='.$Val.' and aid ='.$HbShare['aid'])){
							$I++;
						}
					}
				}
				cpmsg(str_replace('{Num}',$I,$Fn_HB_Share->Config['LangVar']['HandleHBOk']),$CpMsgUrl,'succeed');
			}else{
				cpmsg($Fn_HB_Share->Config['LangVar']['OpErr'],'','error');
			}
		}else{
			cpmsg($Fn_HB_Share->Config['LangVar']['OpErr'],'','error');
		}
	}
}
/* 视频列表 */
function GetModulesList($Page,$Limit,$Where,$Order){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT H.title,L.* FROM '.DB::table($Fn_HB_Share->TableHbShareList).' L LEFT JOIN '.DB::table($Fn_HB_Share->TableHbShare).' H on H.id = L.aid '.$Where.' order by '.$Order.' desc LIMIT '.(($Page - 1) * $Limit).','.$Limit;
	return DB::fetch_all($FetchSql);//返回数据
}
/* 视频总数 */
function GetModulesCount($Where){
	global $Fn_HB_Share;
	$FetchSql = 'SELECT COUNT(*) FROM '.DB::table($Fn_HB_Share->TableHbShareList).' L '.$Where;
	return DB::result_first($FetchSql);//返回总数
}
function QFAddBalance($Uid,$Money){//金额写入
	global $Fn_HB_Share;
	$Uid = intval($Uid);
	$Data = array(
		'uid' => $Uid,
		'amount'=> $Money * 100,
		'type'=> $Fn_HB_Share->Config['PluginVar']['qf_sr_type'],
		'nonce' => $Fn_HB_Share->QFNonce()
	);
	$Data['sign'] = $Fn_HB_Share->QFSign($Data,$Fn_HB_Share->Config['PluginVar']['qf_secret']);
	$Url = 'http://'.$Fn_HB_Share->Config['PluginVar']['qf_hostname']. '.qianfanapi.com/api1_2/balance/add';
	$QFData = $Fn_HB_Share->PostCurlInit($Url,$Data);
	if(!$QFData) {
		$QFData = dfsockopen($Url,0,$Data);
	}
	$Return = json_decode($QFData,true);
	if($Return['data']){
		return true;
	}
}
function GetMagAccountTransfer($Uid,$Amount,$Remark,$OutTradeCode=null){
	global $Fn_HB_Share;
	$OutTradeCode = $OutTradeCode ? $OutTradeCode :  time().rand(0,999999999);
	$Uid = intval($Uid);
	$Remark = diconv($Remark,CHARSET,'UTF-8');
	$Url = 'http://'.$Fn_HB_Share->Config['PluginVar']['MagDomain'].'/core/pay/pay/accountTransfer?secret='.$Fn_HB_Share->Config['PluginVar']['MagSecret'].'&user_id='.$Uid.'&amount='.$Amount.'&remark='.$Remark.'&out_trade_code='.$OutTradeCode;
	$Data = dfsockopen($Url);
	if(!$Data) {
		$Data = file_get_contents($Url);
	}
	$Data = json_decode($Data,true);
	if($Data['success'] && $Data['code'] == 101){
		return true;
	}
}
?>