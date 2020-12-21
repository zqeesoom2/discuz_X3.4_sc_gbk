<?php
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
class Fn_HB_Share{
	public function __construct() {
		global $_G,$plugin;
		loadcache('plugin');//启用插件里的数据，不然下一步不能获取
		$this->Config['PluginVar'] = (array) $_G['cache']['plugin']['fn_hb_share'];//获取标识符为fn_hb_share
		$this->Config['LangVar'] = lang('plugin/fn_hb_share');
		$this->Config['Path'] = 'source/plugin/fn_hb_share';
		$this->Config['StaticPath'] = $this->Config['Path'].'/static';
		$this->Config['StaticPicPath'] = $this->Config['Path'].'/attachment/';
		$this->Config['Url'] = $_G['siteurl'].'plugin.php?id=fn_hb_share';
		$this->Config['WalletUrl'] = $_G['siteurl'].'plugin.php?id=fn_wallet';
		$this->Config['ShareUrl'] =  $this->Config['Url'].'&m=share&aid=';
		$this->Config['PosterUrl'] =  $this->Config['Url'].'&m=poster&aid=';
		$this->Config['CalculationUrl'] =  $this->Config['Url'].'&m=calculation';
		$this->Config['AjaxUrl'] =  $this->Config['Url'].':Ajax';
		$this->Config['WxShare'] = array(
			'WxTitle' => $this->Config['PluginVar']['WxTitle'],
			'WxDes' => $this->Config['PluginVar']['WxDes'],
			'WxImg' => strpos($this->Config['PluginVar']['WxImg'],'http') !== false ? $this->Config['PluginVar']['WxImg'] : $_G['siteurl'].$this->Config['PluginVar']['WxImg'],
			'WxUrl' => $this->GetRandShare() ? $this->GetRandShare().'plugin.php?id=fn_hb_share' : $this->Config['Url']
		);
		
		if(!is_dir(DISCUZ_ROOT.$this->Config['StaticPicPath'])){
			mkdir(DISCUZ_ROOT.$this->Config['StaticPicPath']);
		}

		if($this->Config['PluginVar']['AppType'] != '2' && $this->Config['PluginVar']['AppType'] != '1'){//不是千帆、马甲
			if(file_exists(DISCUZ_ROOT.'./source/plugin/fn_wallet/wallet.class.php')){
				@include DISCUZ_ROOT.'./source/plugin/fn_wallet/wallet.class.php';
			}
		}

		$this->TableHbShare = 'fn_hb_share';
		$this->TableHbShareLog = 'fn_hb_share_log'; 
		$this->TableHbShareList = 'fn_hb_share_list'; 

	}
	
	/* 随机分享域名 */
	public function GetRandShare(){
		$ShareDomainArr = array_filter(explode("\r\n",$this->Config['PluginVar']['ShareDomain']));
		if($ShareDomainArr){
			return $ShareDomainArr[rand(0,count($ShareDomainArr) - 1)].'/';
		}
	}
	//获取缓存
	public function GetItemCache($AId){
		$AId = intval($AId);
		$Item = memory('get','HbShareItem'.$AId);
		if(!$Item){
			$Item = $this->QueryOne($this->TableHbShare,$AId,' and display = 1');
			memory('set','HbShareItem'.$AId,$Item,3600);
		}
		return $Item;
	}

	/* 点击率增加 */
	public function Click($Table,$Id){
		$Id = intval($Id);
		DB::query("UPDATE ".DB::table($Table)." SET click = click+1 WHERE id=$Id");
	}
	/* 红包总额 */
	public function GetMyHbMoney($Id){
		global $_G;
		$Id = intval($Id);
		$Uid = intval($_G['uid']);
		$Money = DB::result_first('SELECT  sum(money) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.' and uid = '.$Uid);
		return $Money ? $Money : 0;
	}
	/* 红包总数 */
	public function GetHbCount($Id,$StartTime=null,$EndTime=null){
		$Id = intval($Id);
		if($StartTime && $EndTime){
			$Sql .= ' and dateline >= '.$StartTime.' and dateline <= '.$EndTime;
		}
		$HbCount = DB::result_first('SELECT count(*) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.$Sql.' order by id desc');
		return $HbCount;
	}
	
	/* 我的红包列表 */
	public function GetHbList($Uid=null,$AId=null,$State=null){
		$Where = '';
		if(in_array($State,array('0','1'))){
			$Where .= ' and state = '.intval($State);
		}
		if($Uid){
			$Where .= ' and uid = '.intval($Uid);
		}
		if($AId){
			$Where .= ' and aid = '.intval($AId);
		}
		$Where = preg_replace('/and/','where',$Where,1);
		$Results = DB::fetch_all('SELECT * FROM '.DB::table($this->TableHbShareList).$Where.' order by id desc');
		return $Results;

	}
	
	/* 我的红包总数 */
	public function GetMyHbCount($Id,$Uid,$StartTime=null,$EndTime=null){
		$Uid = intval($Uid);
		$Id = intval($Id);
		if($StartTime && $EndTime){
			$Sql .= ' and dateline >= '.$StartTime.' and dateline <= '.$EndTime;
		}
		$MyHbCount = DB::result_first('SELECT count(*) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.' AND uid = '.$Uid.$Sql.' order by id desc');
		return $MyHbCount ? $MyHbCount : 0;
	}
	
	/* 红包列表 */
	public function GetAjaxHbShareList($Id,$Page=null){
		global $_G;
		$Page = $Page ? intval($Page):0;
		$Id = intval($Id);
		$Item = $this->GetItemCache($Id);
		$Item['param'] = unserialize($Item['param']);
		$Num = $Item['param']['hblimit'] ? $Item['param']['hblimit'] : 10;
		$OrderResult = $Item['param']['hborderresult'] ? $Item['param']['hborderresult'] : 'desc';
		$Order = $Item['param']['hborder'] ? $Item['param']['hborder'] : 'money';
		$Limit = ' LIMIT '.($Page * $Num).','.$Num;
		if($_G['uid']){
			$Where = ' and uid != '.intval($_G['uid']);
		}
		$FetchSql = 'SELECT * FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.$Where.' order by '.$Order.' '.$OrderResult.',dateline '.$OrderResult.$Limit;
		$Results = DB::fetch_all($FetchSql);
		foreach ($Results as $Key => $Val) {
			$Results[$Key]['dateline'] = date('Y-m-d H:i:s',$Val['dateline']);
		}
		return $Results;
	}

	public function GetAjaxHbState($Id,$AId){
		global $_G;
		$Id = intval($Id);
		$AId = intval($AId);
		$Uid = intval($_G['uid']);
		$Log = DB::fetch_first('SELECT * FROM '.DB::table($this->TableHbShareList).' where uid = '.$Uid.' and aid = '.$AId.' and id = '.$Id);
		if($Log){
			if($Log['state'] == 1){
				$Data['State'] = 201;
				$Data['Msg'] = urlencode($this->Config['LangVar']['HbErr1']);
			}else{
				$HBState = false;
				if($this->Config['PluginVar']['AppType'] == 2){//千帆发红包
					if($this->QFAddBalance($Uid,$Log['money'])){
						$HBState = true;
					}
				}else if($this->Config['PluginVar']['AppType'] == 1){//马甲发红包
					if($this->GetMagAccountTransfer($Uid,$Log['money'],$this->Config['LangVar']['WalletContent'])){
						$HBState = true;
					};
				}else{//飞鸟钱包
					if(FnWallet::WalletLogInsertBy($Uid,$this->Config['LangVar']['WalletContent'],$Log['money'],1,'fn_hb_share')){
						$HBState = true;
					}
				}
				if($HBState && DB::update($this->TableHbShareList,array('state'=>1),'id='.$Id.' and aid ='.$AId.' and uid = '.$Uid)){
					$Data['State'] = 200;
					$Data['Msg'] = urlencode($this->Config['LangVar']['HbOk']);
				}else{
					$Data['Msg'] = urlencode($this->Config['LangVar']['HbErr']);
				}
			}
			return $Data;
		}else{
			$Data['Msg'] = urlencode($this->Config['LangVar']['NoHbErr']);
			return $Data;
		}
	}
	/* 领取红包 */
	public function GetAjaxHbShare($Get){
		global $_G;
		$Uid = intval($_G['uid']);
		$Id = intval($Get['aid']);
		$Lat = $Get['lat'];
		$Lng = $Get['lng'];
		$Data = array();
		$Item = $this->GetItemCache($Id);
		if($Item){
			$Item['param'] = unserialize($Item['param']);
			$HbList = array_filter(explode("\r\n",$Item['param']['hblist']));
			if($Item['param']['times']){//是否多轮发红包
				$Times = array_filter(explode("\r\n",$Item['param']['times']));
				foreach($Times as $Key=>$Val){
					$Array = array_filter(explode("|",$Val));
					$STime = strtotime($Array[0]);
					$ETime = strtotime($Array[1]);
					$HbListCount = $Array[2];
					if($Key){
						$J = $Key - 1;
						$ToArray = array_filter(explode("|",$Times[$J]));
						$Limit += $ToArray[2];
					}else{
						$Limit = 0;
					}
					if(time() < $ETime){
						$Item['start_dateline'] = $STime;
						$Item['end_dateline'] = $ETime;
						$MoneyCount = array_sum(array_slice($HbList,$Limit,$HbListCount));
						break;
					}else if($Key == count($Times)-1){
						$Item['start_dateline'] = $STime;
						$Item['end_dateline'] = $ETime;
					}
				}
			}else{
				$HbListCount = count($HbList);
				$MoneyCount = array_sum($HbList);
			}
			if($Item['start_dateline'] > time()){//活动未开始
                $Data['Msg'] = urlencode($this->Config['LangVar']['StartDatelinePoP'].' '.date("Y-m-d H:i",$Item['start_dateline']));
                return $Data;
            }else if(time() > $Item['end_dateline']){//活动已结束
                $Data['Msg'] = urlencode($this->Config['LangVar']['EndErr'].' '.date("Y-m-d H:i",$Item['end_dateline']));
                return $Data;
            }
            if($Item['param']['address'] && $this->CheCkRestrictedAreas($Item['param']['address'],$Lat,$Lng)){//地区限制
                $Data['Msg'] = urlencode(str_replace(array('{Address}'),array($Item['param']['address']),$this->Config['LangVar']['ProhibitAddressErr']));
                return $Data;
            }
            if($Item['param']['regdateline']){//用户注册时间限制
				$Member = memory('get','Member'.$Uid);
				if(!$Member){
					$Member = DB::fetch_first('SELECT M.regdate,C.extcredits1,C.extcredits2,C.extcredits3,C.extcredits4,C.extcredits5,C.extcredits6,C.extcredits7,C.extcredits8 FROM '.DB::table('common_member').' M LEFT JOIN '.DB::table('common_member_count').' C on C.uid = M.uid where M.uid = '.$Uid);
					memory('set','Member'.$Uid,$Member,2592000);
				}
                if($Member['regdate'] < $Item['param']['regdateline']){
                    $Data['Msg'] = urlencode(str_replace(array('{Time}','{RegTime}','{span}','{/span}'),array(date('Y-m-d',$Item['param']['regdateline']),date('Y-m-d',$Member['regdate']),'<span style=color:#f5402f>','</span>'),$Item['param']['regdatelineprompt']));
                    return $Data;
                }
            }
			$Item['param']['groupid'] = array_filter($Item['param']['groupid']);
			if($Item['param']['groupid'] && !in_array($_G['member']['groupid'],$Item['param']['groupid'])){//用户组限制
				$Data['Msg'] = urlencode($this->Config['LangVar']['UserGroupErr']);
				return $Data;
			}
			
			if($Item['param']['extcredit'] && $Item['param']['extcreditnum']){
				$Member = memory('get','Member'.$Uid);
				if(!$Member){
					$Member = DB::fetch_first('SELECT M.regdate,C.extcredits1,C.extcredits2,C.extcredits3,C.extcredits4,C.extcredits5,C.extcredits6,C.extcredits7,C.extcredits8 FROM '.DB::table('common_member').' M LEFT JOIN '.DB::table('common_member_count').' C on C.uid = M.uid where M.uid = '.$Uid);
					memory('set','Member'.$Uid,$Member,2592000);
				}
				if($Member['extcredits'.$Item['param']['extcredit']] < $Item['param']['extcreditnum']){
					$ExtcreditTilte = $_G['setting']['extcredits'][$Item['param']['extcredit']]['title'];
					$Data['Msg'] = urlencode(str_replace(array('{Extcredits}'),array($ExtcreditTilte),$this->Config['LangVar']['ExtcreditsNumErr']));
					return $Data;
				}
			}
            $MyHbShareCount = $Item['param']['roundloop'] ? $this->GetMyHbCount($Id,$Uid,$Item['start_dateline'],$Item['end_dateline']) : $this->GetMyHbCount($Id,$Uid);
            if($MyHbShareCount >= $Item['param']['number']){
                $Data['Msg'] = urlencode($this->Config['LangVar']['AlreadyReceived']);
                return $Data;
            }

            $ShareLog = DB::result_first('SELECT count(*) FROM '.DB::table($this->TableHbShareLog).' where aid = '.$Id.' AND uid = '.$Uid.' and dateline >= '.$Item['start_dateline'].' and dateline <= '.$Item['end_dateline'].' order by id desc');
            if(!$ShareLog){//未分享
                $Data['State'] = 201;
                $Data['Msg'] = urlencode($Item['param']['shareprompt']);
                return $Data;
            }else if($ShareLog < $MyHbShareCount+1 && $Item['param']['number'] > 1){
                $Data['State'] = 201;
                $Data['Msg'] = urlencode($Item['param']['shareprompt']);
                return $Data;
            }

			$HbCount = $this->GetHbCount($Id,$Item['start_dateline'],$Item['end_dateline']);
			if($HbCount >= $HbListCount){
				$Data['Msg'] = urlencode($this->Config['LangVar']['ShareCountErr']);
				return $Data;
			}

			$InsData['aid'] = $Id;
			$InsData['uid'] = $Uid;
			$InsData['username'] = addslashes(strip_tags($_G['username']));
			$InsData['dateline'] = time();
			$HBId = DB::insert($this->TableHbShareList,$InsData,true);
			if($Item['param']['fictitiousdata']){//虚拟数据
				$FictitiousDataArr = array_filter(explode("\r\n",$Item['param']['fictitiousdata']));
				foreach($FictitiousDataArr as $Key=>$Val){
					$ToFictitiousArr = array_filter(explode("|",$Val));
					if($ToFictitiousArr[0] == $HBId){
						$FictitiousUpData['money'] = $ToFictitiousArr[1];
						$FictitiousUpData['uid'] = intval($ToFictitiousArr[2]);
						$FictitiousUpData['username'] =  addslashes(strip_tags($ToFictitiousArr[3]));
						$FictitiousUpData['dateline'] =  time()+rand(1,120);
						$FictitiousUpData['state'] =  1;
						if(DB::update($this->TableHbShareList,$FictitiousUpData,'id='.intval($HBId).' and aid ='.$Id)){
							$HBId = DB::insert($this->TableHbShareList,$InsData,true);
						}
						break;
					}
				}
			}
			$Money = addslashes(strip_tags($HbList[$HBId-1]));
			if($Money){
//				$HBState = false;
//				if($this->Config['PluginVar']['AppType'] == 2){//千帆发红包
//					if($this->QFAddBalance($Uid,$Money)){
//						$HBState = true;
//					}
//				}else if($this->Config['PluginVar']['AppType'] == 1){//马甲发红包
//					if($this->GetMagAccountTransfer($Uid,$Money,$this->Config['LangVar']['WalletContent'])){
//						$HBState = true;
//					};
//				}else{//飞鸟钱包
//					if(FnWallet::WalletLogInsertBy($Uid,$this->Config['LangVar']['WalletContent'],$Money,1,'fn_hb_share')){
//						$HBState = true;
//					}
//				}
				$UpData['money'] = $Money;
				//$UpData['state'] = $HBState ? 1 : 0;
				if(DB::update($this->TableHbShareList,$UpData,'id='.intval($HBId).' and aid ='.$Id)){
					$Data['HBId'] = $HBId;
					$Data['Money'] = $Money;
					$Data['ShareTitle'] = urlencode(str_replace(array('{Money}','{Surplus}','{Count}','{MoneyCount}'),array($Money,$HbListCount-$HbCount-1,$HbListCount,$MoneyCount),$Item['param']['successsharetitle']));
					$Data['ShareDes'] = urlencode(str_replace(array('{Money}','{Surplus}','{Count}','{MoneyCount}'),array($Money,$HbListCount-$HbCount-1,$HbListCount,$MoneyCount),$Item['param']['successsharedesc']));
					$Data['State'] = 200;
					return $Data;
				}else{
					$Data['Msg'] = urlencode($this->Config['LangVar']['HbShareErr']);
					return $Data;
				}
			}else{
				$Data['Msg'] = urlencode($this->Config['LangVar']['ShareCountErr']);
				return $Data;
			}						
		}else{
			$Data['Msg'] = urlencode($this->Config['LangVar']['NoActivityErr']);
			return $Data;
		}
		
	}

	/* 分享 */
	public function GetAjaxShare($Id,$Type){
		global $_G;
		$Id = intval($Id);
		$Uid = intval($_G['uid']);
		$Item = $this->GetItemCache($Id);
		$AGENT = $_SERVER["HTTP_USER_AGENT"];
		if((strpos($AGENT,'Appbyme') !== false || strpos($AGENT,'MAGAPPX') !== false || strpos($AGENT,'QianFan') !== false || strpos($AGENT,'MicroMessenger') !== false) && $Item){
			$InsData['aid'] = $Id;
			$InsData['uid'] = $Uid;
			$InsData['username'] = addslashes(strip_tags($_G['username']));
			$InsData['type'] = addslashes(strip_tags($Type));
			$InsData['dateline'] = time();
			if(DB::insert($this->TableHbShareLog,$InsData)){
				$Data['State'] = 200;
				$Data['Msg'] = urlencode($this->Config['LangVar']['ShareOk']);
			}else{
				$Data['Msg'] = urlencode($this->Config['LangVar']['ShareErr']);
			}
		}else{
			$Data['Msg'] = urlencode($this->Config['LangVar']['ShareErr']);
		}
		return $Data;
		
	}
	
	/** 
	 *   
	 * @param $Total 红包总额 
	 * @param $Count 红包个数 
	 * @param $Min 每个小红包的最小额 
	 * @return 存放生成的每个小红包的值的一维数组 
	 */  
	public function GetRandBonus($Total=0,$Count=0,$Min=1){
		$LeftTotal = $Total - ($Count * $Min);
		if($LeftTotal){
			$LeftTotalArray = $this->GetRedGift($LeftTotal,$Count);
		}
		for($i = 0;$i < $Count;$i++){
			$Result[$i] = $Min + $LeftTotalArray['MoneySum'][$i+1];
		}
		shuffle($Result);
		return $Result;
	}
	/**
	 * @param $Total [红包总额]
	 * @param int $num [发几个]
	 * @return array[生成红包金额]
	 */
	public function GetRedGift($Total, $Num){
		$Min = 0.01;
		$Wamp = array();
		$ReturnData = array();
		for ($i = 1; $i < $Num; ++$i) {
			$SafeTotal = ($Total - ($Num - $i) * $Min) / ($Num - $i); //红包金额的最大值
			if ($SafeTotal < 0) break;
			$Money = @mt_rand($Min * 100, $SafeTotal * 100) / 100;//随机产生一个红包金额
			$Total = $Total - $Money;//剩余红包总额
			$Wamp[$i] = round($Money, 2);//保留两位有效数字
		}
		$Wamp[$i] = round($Total, 2);
		
		$ReturnData['MoneySum'] = $Wamp;
		$ReturnData['newTotal'] = array_sum($Wamp);
		return $ReturnData;
	}

	/* 马甲 */
	private function GetMagAccountTransfer($Uid,$Amount,$Remark,$OutTradeCode=null){
		$OutTradeCode = $OutTradeCode ? $OutTradeCode :  time().rand(0,999999999);
		$Uid = intval($Uid);
		$Remark = diconv($Remark,CHARSET,'UTF-8');
		$Url = 'http://'.$this->Config['PluginVar']['MagDomain'].'/core/pay/pay/accountTransfer?secret='.$this->Config['PluginVar']['MagSecret'].'&user_id='.$Uid.'&amount='.$Amount.'&remark='.$Remark.'&out_trade_code='.$OutTradeCode;
		$Data = dfsockopen($Url);
		if(!$Data) {
			$Data = file_get_contents($Url);
		}
		$Data = json_decode($Data,true);
		if($Data['success'] && $Data['code'] == 101){
			return true;
		}
	}

	public function GetMagUserInfo(){
		$UserAgent = $_SERVER['HTTP_USER_AGENT'];
		$Info = explode("|",$UserAgent);
		$Url = 'http://'.$this->Config['PluginVar']['MagDomain'].'/mag/cloud/cloud/getUserInfo?token='.$Info[7].'&secret='.$this->Config['PluginVar']['MagSecret'];
		$Data = dfsockopen($Url);
		if(!$Data) {
			$Data = file_get_contents($Url);
		}
		$Data = json_decode($Data,true);
		if($Data['data']){
			return $Data['data'];
		}
	}
	/* 马甲App End */
	
	/* 千帆 */
	private function QFAddBalance($Uid,$Money){//金额写入
		$Uid = intval($Uid);
		$Data = array(
			'uid' => $Uid,
			'amount'=> $Money * 100,
			'type'=> $this->Config['PluginVar']['qf_sr_type'],
			'nonce' => $this->QFNonce()
		);
		$Data['sign'] = $this->QFSign($Data,$this->Config['PluginVar']['qf_secret']);
		$Url = 'http://'.$this->Config['PluginVar']['qf_hostname']. '.qianfanapi.com/api1_2/balance/add';
		$QFData = $this->PostCurlInit($Url,$Data);
		if(!$QFData) {
			$QFData = dfsockopen($Url,0,$Data);
		}
		$Return = json_decode($QFData,true);
		if($Return['data']){
			return true;
		}
	}

	public function GetActionAuthCode($wap_token = '', $secret_key = '',$operation = 'DECODE') {
		$wap_token = str_replace(' ','+',urldecode($wap_token));

		$ckey_length = 4;

		$secret_key = md5($secret_key);
		$keya = md5(substr($secret_key, 0, 16));
		$keyb = md5(substr($secret_key, 16, 16));
		$keyc = $ckey_length ? ($operation == 'DECODE' ? substr($wap_token, 0, $ckey_length): substr(md5(microtime()), -$ckey_length)) : '';

		$cryptkey = $keya.md5($keya.$keyc);
		$key_length = strlen($cryptkey);

		$wap_token = $operation == 'DECODE' ? base64_decode(substr($wap_token, $ckey_length)) : sprintf('%010d', $expiry ? $expiry + time() : 0).substr(md5($wap_token.$keyb), 0, 16).$wap_token;
		$string_length = strlen($wap_token);

		$result = '';
		$box = range(0, 255);

		$rndkey = array();
		for($i = 0; $i <= 255; $i++) {
			$rndkey[$i] = ord($cryptkey[$i % $key_length]);
		}

		for($j = $i = 0; $i < 256; $i++) {
			$j = ($j + $box[$i] + $rndkey[$i]) % 256;
			$tmp = $box[$i];
			$box[$i] = $box[$j];
			$box[$j] = $tmp;
		}

		for($a = $j = $i = 0; $i < $string_length; $i++) {
			$a = ($a + 1) % 256;
			$j = ($j + $box[$a]) % 256;
			$tmp = $box[$a];
			$box[$a] = $box[$j];
			$box[$j] = $tmp;
			$result .= chr(ord($wap_token[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
		}

		if($operation == 'DECODE') {
			if((substr($result, 0, 10) == 0 || substr($result, 0, 10) - time() > 0) && substr($result, 10, 16) == substr(md5(substr($result, 26).$keyb), 0, 16)) {
				return substr($result, 26);
			} else {
				return '';
			}
		} else {
			return $keyc.str_replace('=', '', base64_encode($result));
		}
	}
	public function QFNonce($length = 32){
		$chars = "abcdefghijklmnopqrstuvwxyz0123456789";
		$str   = "";
		for ($i = 0; $i < $length; $i++) {
			$str .= substr($chars, mt_rand(0, strlen($chars) - 1), 1);
		}
		return $str;
	}
	public function QFSign($params, $secret){
		ksort($params);
		$sparams = array();
		foreach ($params as $k => $v) {
			if ("@" != substr($v, 0, 1)) {
				$sparams[] = "$k=$v";
			}
		}
		$sparams[] = "secret=" . $secret;
		return strtoupper(md5(implode("&", $sparams)));
	}
	/* 千帆 End */


	//模拟访问Post
	public function PostCurlInit($Url, $Data) {
		global $_G;
		if (!function_exists('curl_init')) {
			return '';
		}
		$Ip = rand(1,255).".".rand(1,255).".".rand(1,255).".".rand(1,255)."";
		$Header = array();
		$Header[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8';
		$Header[] = 'Accept-Encoding: gzip, deflate, sdch';
		$Header[] = 'Accept-Language: zh-CN,zh;q=0.8';
		$Header[] = 'Cache-Control: max-age=0';
		$Header[] = 'Connection: keep-alive';
		$Header[] = 'Connection: keep-alive';
		$Header[] = 'X-FORWARDED-FOR:'.$Ip;
		$Header[] = 'CLIENT-IP:'.$Ip;
		$Ch = curl_init();
		curl_setopt($Ch, CURLOPT_URL, $Url);
		curl_setopt($Ch, CURLOPT_HTTPHEADER, $Header);
		curl_setopt($Ch, CURLOPT_REFERER, $_G['siteurl']); //构造来路
		curl_setopt($Ch, CURLOPT_ENCODING, 'gzip');
		curl_setopt($Ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36');// 保存到字符串而不是输出
		# curl_setopt( $Ch, CURLOPT_HEADER, 1);
		curl_setopt($Ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($Ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($Ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($Ch, CURLOPT_POST, 1);
		curl_setopt($Ch, CURLOPT_POSTFIELDS, $Data);
		$Data = curl_exec($Ch);
		if (!$Data) {
			error_log(curl_error($Ch));
		}
		curl_close($Ch);
		return $Data;
	}

	/* 一维数组转二维数组 */
	public function DyadicArray($Array){
		$DyadicArray = array();
		foreach($Array as $K => $V) {
			$DyadicArray[] = array($K,$V);
		}
		return $DyadicArray;
	}

	/* 查询单个 */
	public function QueryOne($TableName=null,$Id=null,$Where=null){
		$FirstSql = 'SELECT * FROM '.DB::table($TableName).' where id = '.$Id.' '.$Where;
		return DB::fetch_first($FirstSql);	
	}
	/*  图片上传 */
	public function UploadIconBanner($Files,$DelUsedFiles=null,$ImageCrop=false,$Type=1,$Width=null,$Height=null){
		require_once 'ImageCrop.Class.php';
		require_once (DISCUZ_ROOT.'./source/class/discuz/discuz_upload.php');
		$Upload = new discuz_upload();
		if($Upload->init($Files, 'common') && $Upload->save(0)) {
			$Path = $_G['setting']['attachdir'].'common/'.$Upload->attach['attachment'];
			$Name = explode('/',$Upload->attach['attachment']);
			$MPicUrl = DISCUZ_ROOT.$this->Config[StaticPicPath].$Name[1];
			if(copy($Upload->attach['target'],$MPicUrl)){
				if($ImageCrop && $Width && $Height){
					$Ic=new ImageCrop($MPicUrl,$MPicUrl);
					$Ic->Crop($Width,$Height,$Type); 
					$Ic->SaveImage();
					$Ic->destory();
				}
				$Path = $this->Config[StaticPicPath].$Name[1];
				unlink($Upload->attach['target']);
				unlink(DISCUZ_ROOT.$DelUsedFiles);
			}
			$File[Path] = $Path;
			return $File;
		}else{
			$File[Errorcode] = $Upload->errorcode;
			return $File;
		}
	}
	/* 编码转换 */
	public static function StrToGBK($string,$ajax_status=null){
		global $_G;
		if($_G['charset'] == 'gbk'){
			if($ajax_status == true){
				if(is_array($string)){
					return eval('return '.iconv("GB2312","UTF-8//IGNORE",var_export($string,true).';')); 
				}else{
					return iconv('GB2312', 'UTF-8', $string);
				}
			}else{
				if(is_array($string)){
					$StringArr = array();
					foreach($string as $key=>$value){
						$encode = mb_detect_encoding($value, array('UTF-8','GB2312','GBK'));
						if($encode == 'UTF-8'){
							$StringArr[$key] = iconv('UTF-8','GB2312//IGNORE',$value);
						}else if($encode == 'EUC-CN'){
							$StringArr[$key] = $value;
						}
					}
					return $StringArr;
				}else{
					$encode = mb_detect_encoding($string, array('UTF-8','GB2312','GBK'));
					if($encode == 'UTF-8'){
						return iconv('UTF-8','GB2312//IGNORE', $string);
					}else if($encode == 'EUC-CN'){
						return $string;
					}
				}
			}
		}else{
			return $string;
		}
        
    }
	/* 微信分享_GetSignPackage */
	public function WeixinGetSignPackage(){
		require DISCUZ_ROOT.'/'.$this->Config['Path']."/weixin/jssdk.php";
		$jssdk = new JSSDK($this->Config['PluginVar']['WxAppid'], $this->Config['PluginVar']['WxSecret']);
		return $jssdk->getSignPackage();
	}

	/* 地区检测 */
	private function CheCkRestrictedAreas($CheCkAreas,$Lat=null,$Lng=null){
		global $_G;
		$CheCkAreasArr = array_filter(explode(",",$CheCkAreas));
		if($Lat && $Lng && (strpos($_SERVER["HTTP_USER_AGENT"],'Appbyme') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'MAGAPPX') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'QianFan') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'MicroMessenger') !== false)){//经纬度限
			if($_G['cookie']['FnAddress']){
				foreach($CheCkAreasArr as $Key=>$Val){
					if(strpos($_G['cookie']['FnAddress'],$Val) !== false){
						return false;
					}
				}
				return true;
			}else{
				$Location = json_decode(dfsockopen('https://apis.map.qq.com/ws/geocoder/v1/?location='.$Lat.','.$Lng.'&key='.$this->Config['PluginVar']['MapKey'].'&get_poi=1'),true);
				$Location['result']['address'] = diconv($Location['result']['address'],'UTF-8',CHARSET);
				if($Location['status'] === 0 && $Location['result']['address']){
					dsetcookie('FnAddress',$Location['result']['address'],3600);
					foreach($CheCkAreasArr as $Key=>$Val){
						if(strpos($Location['result']['address'],$Val) !== false){
							return false;
						}
					}
					return true;
				}
			}
		}else{//ip限制
			if($_G['cookie']['FnAddress']){
				foreach($CheCkAreasArr as $Key=>$Val){
					if(strpos($_G['cookie']['FnAddress'],$Val) !== false){
						return false;
					}
				}
				return true;
			}else{
				$Location = json_decode(dfsockopen("https://apis.map.qq.com/ws/location/v1/ip?ip=".$_G['clientip'].'&key='.$this->Config['PluginVar']['MapKey']),true);
				$Address = diconv($Location['result']['ad_info']['province'],'UTF-8',CHARSET).diconv($Location['result']['ad_info']['city'],'UTF-8',CHARSET);
				dsetcookie('FnAddress',$Address,60);
				foreach($CheCkAreasArr as $Key=>$Val){
					if(strpos($Address,$Val) !== false){
						return false;
					}
				}
				return true;
			}
		}
	}

	public function RandomFloat($Min = 0,$Max = 10){
		$Num = $Min + mt_rand() / mt_getrandmax()*($Max - $Min);
		return sprintf("%.2f", $Num);
	} 
}
?>