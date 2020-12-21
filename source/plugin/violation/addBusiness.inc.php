<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')){
    exit('Access Denied');
}
/*class start*/
class Violation{
	public function __construct() {
		global $_G,$plugin;
		loadcache('plugin');//���ò��������ݣ���Ȼ��һ�����ܻ�ȡ
		$this->Config['PluginVar'] = (array) $_G['cache']['plugin']['violation'];//��ȡ��ʶ��Ϊviolation�Ĳ��ϵͳ���õı���

		$this->Config['LangVar'] = lang('plugin/violation'); //�Ѷ���Ľű�������Ե������
		$this->Config['Path'] = 'source/plugin/violation';
		$this->Config['StaticPath'] = $this->Config['Path'].'/static';
		$this->Config['StaticPicPath'] = $this->Config['Path'].'/attachment/';
		$this->Config['Url'] = $_G['siteurl'].'plugin.php?id=violation';
		$this->Config['WalletUrl'] = $_G['siteurl'].'plugin.php?id=fn_wallet';
		$this->Config['ShareUrl'] =  $this->Config['Url'].'&m=share&aid=';
		$this->Config['PosterUrl'] =  $this->Config['Url'].'&m=poster&aid=';
		$this->Config['CalculationUrl'] =  $this->Config['Url'].'&m=calculation';
		$this->Config['AjaxUrl'] =  $this->Config['Url'].':Ajax';
		$this->Config['WxShare'] = array(
			'WxTitle' => $this->Config['PluginVar']['WxTitle'],
			'WxDes' => $this->Config['PluginVar']['WxDes'],
			'WxImg' => strpos($this->Config['PluginVar']['WxImg'],'http') !== false ? $this->Config['PluginVar']['WxImg'] : $_G['siteurl'].$this->Config['PluginVar']['WxImg'],
			'WxUrl' => $this->GetRandShare() ? $this->GetRandShare().'plugin.php?id=Violation' : $this->Config['Url']
		);

		if(!is_dir(DISCUZ_ROOT.$this->Config['StaticPicPath'])){
			mkdir(DISCUZ_ROOT.$this->Config['StaticPicPath']);
		}

        /*if($this->Config['PluginVar']['AppType'] != '2' && $this->Config['PluginVar']['AppType'] != '1'){//����ǧ�������
            if(file_exists(DISCUZ_ROOT.'./source/plugin/fn_wallet/wallet.class.php')){
                @include DISCUZ_ROOT.'./source/plugin/fn_wallet/wallet.class.php';
            }
        }*/

		$this->TableHbShare = 'Violation';
		$this->TableHbShareLog = 'fn_hb_share_log';
		$this->TableHbShareList = 'fn_hb_share_list';

	}

	/* ����������� */
	public function GetRandShare(){
		$ShareDomainArr = array_filter(explode("\r\n",$this->Config['PluginVar']['ShareDomain']));
		if($ShareDomainArr){
			return $ShareDomainArr[rand(0,count($ShareDomainArr) - 1)].'/';
		}
	}
	//��ȡ����
	public function GetItemCache($AId){
		$AId = intval($AId);
		$Item = memory('get','HbShareItem'.$AId);
		if(!$Item){
			$Item = $this->QueryOne($this->TableHbShare,$AId,' and display = 1');
			memory('set','HbShareItem'.$AId,$Item,3600);
		}
		return $Item;
	}

	/* ��������� */
	public function Click($Table,$Id){
		$Id = intval($Id);
		DB::query("UPDATE ".DB::table($Table)." SET click = click+1 WHERE id=$Id");
	}
	/* ����ܶ� */
	public function GetMyHbMoney($Id){
		global $_G;
		$Id = intval($Id);
		$Uid = intval($_G['uid']);
		$Money = DB::result_first('SELECT  sum(money) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.' and uid = '.$Uid);
		return $Money ? $Money : 0;
	}
	/* ������� */
	public function GetHbCount($Id,$StartTime=null,$EndTime=null){
		$Id = intval($Id);
		if($StartTime && $EndTime){
			$Sql .= ' and dateline >= '.$StartTime.' and dateline <= '.$EndTime;
		}
		$HbCount = DB::result_first('SELECT count(*) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.$Sql.' order by id desc');
		return $HbCount;
	}

	/* �ҵĺ���б� */
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

	/* �ҵĺ������ */
	public function GetMyHbCount($Id,$Uid,$StartTime=null,$EndTime=null){
		$Uid = intval($Uid);
		$Id = intval($Id);
		if($StartTime && $EndTime){
			$Sql .= ' and dateline >= '.$StartTime.' and dateline <= '.$EndTime;
		}
		$MyHbCount = DB::result_first('SELECT count(*) FROM '.DB::table($this->TableHbShareList).' where aid = '.$Id.' AND uid = '.$Uid.$Sql.' order by id desc');
		return $MyHbCount ? $MyHbCount : 0;
	}

	/* ����б� */
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
				if($this->Config['PluginVar']['AppType'] == 2){//ǧ�������
					if($this->QFAddBalance($Uid,$Log['money'])){
						$HBState = true;
					}
				}else if($this->Config['PluginVar']['AppType'] == 1){//��׷����
					if($this->GetMagAccountTransfer($Uid,$Log['money'],$this->Config['LangVar']['WalletContent'])){
						$HBState = true;
					};
				}else{//����Ǯ��
					if(FnWallet::WalletLogInsertBy($Uid,$this->Config['LangVar']['WalletContent'],$Log['money'],1,'Violation')){
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
	/* ��ȡ��� */
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
			if($Item['param']['times']){//�Ƿ���ַ����
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
			if($Item['start_dateline'] > time()){//�δ��ʼ
                $Data['Msg'] = urlencode($this->Config['LangVar']['StartDatelinePoP'].' '.date("Y-m-d H:i",$Item['start_dateline']));
                return $Data;
            }else if(time() > $Item['end_dateline']){//��ѽ���
                $Data['Msg'] = urlencode($this->Config['LangVar']['EndErr'].' '.date("Y-m-d H:i",$Item['end_dateline']));
                return $Data;
            }
            if($Item['param']['address'] && $this->CheCkRestrictedAreas($Item['param']['address'],$Lat,$Lng)){//��������
                $Data['Msg'] = urlencode(str_replace(array('{Address}'),array($Item['param']['address']),$this->Config['LangVar']['ProhibitAddressErr']));
                return $Data;
            }
            if($Item['param']['regdateline']){//�û�ע��ʱ������
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
			if($Item['param']['groupid'] && !in_array($_G['member']['groupid'],$Item['param']['groupid'])){//�û�������
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
            if(!$ShareLog){//δ����
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
			if($Item['param']['fictitiousdata']){//��������
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
//				if($this->Config['PluginVar']['AppType'] == 2){//ǧ�������
//					if($this->QFAddBalance($Uid,$Money)){
//						$HBState = true;
//					}
//				}else if($this->Config['PluginVar']['AppType'] == 1){//��׷����
//					if($this->GetMagAccountTransfer($Uid,$Money,$this->Config['LangVar']['WalletContent'])){
//						$HBState = true;
//					};
//				}else{//����Ǯ��
//					if(FnWallet::WalletLogInsertBy($Uid,$this->Config['LangVar']['WalletContent'],$Money,1,'Violation')){
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

	/* ���� */
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
	 * @param $Total ����ܶ�
	 * @param $Count �������
	 * @param $Min ÿ��С�������С��
	 * @return ������ɵ�ÿ��С�����ֵ��һά����
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
	 * @param $Total [����ܶ�]
	 * @param int $num [������]
	 * @return array[���ɺ�����]
	 */
	public function GetRedGift($Total, $Num){
		$Min = 0.01;
		$Wamp = array();
		$ReturnData = array();
		for ($i = 1; $i < $Num; ++$i) {
			$SafeTotal = ($Total - ($Num - $i) * $Min) / ($Num - $i); //����������ֵ
			if ($SafeTotal < 0) break;
			$Money = @mt_rand($Min * 100, $SafeTotal * 100) / 100;//�������һ��������
			$Total = $Total - $Money;//ʣ�����ܶ�
			$Wamp[$i] = round($Money, 2);//������λ��Ч����
		}
		$Wamp[$i] = round($Total, 2);

		$ReturnData['MoneySum'] = $Wamp;
		$ReturnData['newTotal'] = array_sum($Wamp);
		return $ReturnData;
	}

	/* ��� */
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
	/* ���App End */

	/* ǧ�� */
	private function QFAddBalance($Uid,$Money){//���д��
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
	/* ǧ�� End */


	//ģ�����Post
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
		curl_setopt($Ch, CURLOPT_REFERER, $_G['siteurl']); //������·
		curl_setopt($Ch, CURLOPT_ENCODING, 'gzip');
		curl_setopt($Ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36');// ���浽�ַ������������
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

	/* һά����ת��ά���� */
	public function DyadicArray($Array){
		$DyadicArray = array();
		foreach($Array as $K => $V) {
			$DyadicArray[] = array($K,$V);
		}
		return $DyadicArray;
	}

	/* ��ѯ���� */
	public function QueryOne($TableName=null,$Id=null,$Where=null){
		$FirstSql = 'SELECT * FROM '.DB::table($TableName).' where id = '.$Id.' '.$Where;
		return DB::fetch_first($FirstSql);
	}
	/*  ͼƬ�ϴ� */
	public function UploadIconBanner($Files,$DelUsedFiles=null,$ImageCrop=false,$Type=1,$Width=null,$Height=null){
        global $_G;
		require_once 'ImageCrop.Class.php';
		require_once (DISCUZ_ROOT.'./source/class/discuz/discuz_upload.php');
		$Upload = new discuz_upload();
		if($Upload->init($Files, 'common') && $Upload->save(0)) {
			$Path = $_G['setting']['attachdir'].'common/'.$Upload->attach['attachment'];// $Path = ./data/attachment/common/cf/170451b76xxkgx7clt7et1.jpg
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
	/* ����ת�� */
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
	/* ΢�ŷ���_GetSignPackage */
	public function WeixinGetSignPackage(){
		require DISCUZ_ROOT.'/'.$this->Config['Path']."/weixin/jssdk.php";
		$jssdk = new JSSDK($this->Config['PluginVar']['WxAppid'], $this->Config['PluginVar']['WxSecret']);
		return $jssdk->getSignPackage();
	}

	/* ������� */
	private function CheCkRestrictedAreas($CheCkAreas,$Lat=null,$Lng=null){
		global $_G;
		$CheCkAreasArr = array_filter(explode(",",$CheCkAreas));
		if($Lat && $Lng && (strpos($_SERVER["HTTP_USER_AGENT"],'Appbyme') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'MAGAPPX') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'QianFan') !== false || strpos($_SERVER["HTTP_USER_AGENT"],'MicroMessenger') !== false)){//��γ����
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
		}else{//ip����
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
//class_end

//require_once (DISCUZ_ROOT .'./source/plugin/Violation/Common.php');
$Violation = new Violation;
if(strpos($_SERVER["HTTP_USER_AGENT"],'Appbyme') !== false){
    $Appbyme = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'MicroMessenger') !== false){
    $WxApp = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'QianFan') !== false){
    $QFApp = true;
}
if(strpos($_SERVER["HTTP_USER_AGENT"],'MAGAPPX') !== false){
    $MagApp = true;
}
if(strpos(strtolower($_SERVER["HTTP_USER_AGENT"]),'iphone') !== false){
    $IPhone = true;
}
if($Appbyme || $WxApp){
    $App = true;
}
//end
$CpMsgUrl = 'action=plugins&operation=config&do='.$pluginid.'&identifier='.$plugin['identifier'].'&pmod='.$module['name'].'&aid='.$_GET['aid'];

$AId = intval($_GET['aid']);
$Item = $AId ? $Violation->QueryOne($Violation->TableHbShare,$AId) : array();
if($Item['param']){$Item['param'] = unserialize($Item['param']);}
$OpTitle = '��� ';
if(!submitcheck('DetailSubmit')) {
    if($Item) {
        $OpTitle = '�༭';
    }
    if(CHARSET == 'gbk'){
        echo '<script src="'.$Violation->Config['StaticPath'].'/kindeditor/kindeditor-min.js" type="text/javascript"></script><script src="'.$Violation->Config['StaticPath'].'/kindeditor/lang/zh_cn_gbk.js" type="text/javascript"></script><script type="text/javascript" src="static/js/calendar.js"></script>';
    }else{
        echo '<script src="'.$Violation->Config['StaticPath'].'/kindeditor/kindeditor-min.js" type="text/javascript"></script><script src="'.$Violation->Config['StaticPath'].'/kindeditor/lang/zh_cn_utf.js" type="text/javascript"></script><script type="text/javascript" src="static/js/calendar.js"></script>';
    }

    /* $Query = C::t('common_usergroup')->range_orderby_credit();
     $UserGroupList[0] = cplang('plugins_empty'); //�������԰�,�����ǿ�

     foreach($Query as $Id => $UserGroup) {
         $UserGroupList[$UserGroup['groupid']] = $UserGroup['grouptitle']; //�õ����е��û���
     }

     foreach($_G['setting']['extcredits'] as $Id => $Credit) {
         $ExtcreditsList[$Id] = $Credit['title'];//����\��Ǯ\����
     }*/

    $formUrl = ltrim(rawurldecode(cpurl()),'action='); //form��
    showformheader($formUrl,'enctype');
    showtableheader(); //��ͷ
    showtitle($OpTitle);

    showsetting('�̼�UID', 'uid', $Item['param']['uid'], 'text');

    //               ������          ָ������nameֵ        ֵ��           ������
    showsetting('�̼�����', 'business', $Item['business'], 'text');
    if($Item['param']['logo']) {//��û�л��ͼƬ
        $BannerHtml = '<label><input type="checkbox" class="checkbox" name="dellogo" value="yes" /> ɾ��</label><br /><a href="'.$Item['param']['logo'].'" target="_blank"><img src="'.$Item['param']['logo'].'" width="100"/></a><input type="hidden" value="'.$Item['param']['logo'].'" name="logo"><br />����640 * 320';
    }else{
        //$BannerHtml = $Violation->Config['LangVar']['BannerPrompt'];//����640 * 320
        $BannerHtml = '����640 * 320';
    }
    //                                                                         �Ƿ����޸ģ�   �Ƿ�����  ��ǿ��������
    showsetting('�̼�logo', 'logonew','', 'filetext', '', 0, $BannerHtml);

    showsetting('��ʼʱ��', 'start_dateline',$Item['start_dateline'] ? date('Y-m-d H:i',$Item['start_dateline']):'', 'calendar','','','',1);

    showsetting('����ʱ��', 'end_dateline',$Item['end_dateline']?date('Y-m-d H:i',$Item['end_dateline']):'', 'calendar','','','',1);


    showsetting('��������', 'postercontent', $Item['param']['postercontent'] ? $Item['param']['postercontent'] : '����{AppName}������{br}{em}{Money}{em}Ԫ', 'textarea','','','{AppName}����APP���֣�{UserName}����ǰ����û���{br}�����У�{em}������Ҫ�Ӵּ���ɫ����{/em}');

    //�̼ҽ���
    echo '<tr><td colspan="2" class="td27" s="1">�̼ҽ���</td></tr><tr class="noborder"><td class="vtop rowform" colspan="2"><textarea id="business" name="businessinfo" style="width:80%;height:300px;visibility:hidden;">'.stripslashes($Item['param']['businessinfo']).'</textarea></td></tr>';


    showsetting('�������', 'sharetitle', $Item['param']['sharetitle'], 'text','', 0, '14��������');
    showsetting('��������', 'sharedesc', $Item['param']['sharedesc'], 'textarea','', 0, '20��������');


    $ShareLogoHtml = '<label><input type="checkbox" class="checkbox" name="delposter" value="yes" /> ɾ��</label><br /><a href="'.$Item['param']['poster'].'" target="_blank"><img src="'.$Item['param']['poster'].'" width="100"/></a><input type="hidden" value="'.$Item['param']['poster'].'" name="poster"><br />����ߴ�640*1065';

    showsetting('����ͼƬ', 'posternew','', 'filetext', '', 0, $ShareLogoHtml);

    showsetting('��ʾ˳��', 'displayorder', $Item['displayorder'], 'text');

    showsetting('���ʱ��', 'dateline',date('Y-m-d H:i',$Item['dateline'] ? $Item['dateline'] : time()), 'calendar','','','',1);

    showtablefooter();
    showsubmit('DetailSubmit');
    showformfooter();
    echo '
		<script type="text/javascript">  
		var options = {  
		filterMode : true,  
		allowImageUpload : true,  
		allowFlashUpload : true,  
		allowMediaUpload : true,  
		allowFileManager : true,  
		items : ["source", "|", "fullscreen", "undo", "redo", "template","code","print", "cut", "copy", "paste",
            "plainpaste", "wordpaste", "|", "justifyleft", "justifycenter", "justifyright",
            "justifyfull", "insertorderedlist", "insertunorderedlist", "indent", "outdent", "subscript",
            "superscript", "|", "selectall", "clearhtml","quickformat","|",
            "formatblock", "fontname", "fontsize", "|", "forecolor", "hilitecolor", "bold",
            "italic", "underline", "strikethrough", "lineheight", "removeformat", "|", "image", "multiimage",
		"flash", "media", "insertfile","table", "hr", "emoticons", "link", "unlink", "|", "about"]
		};  
		var editor = new Array();  
		KindEditor.ready(function(K) {  
		editor[0] = K.create("#business",options);
		});  
		</script> 	
	';
}else {
    if (submitcheck('formhash')) {
        $Data['business'] = addslashes(strip_tags($_GET['business']));//��ȥ�ַ����е� HTML ��ǩ,��Ԥ�����ַ�[�����ţ�˫���ţ�NULL,��б��]֮ǰ��ӷ�б�ܵ��ַ���
        $Data['display'] = intval($_GET['display']);
        $Data['displayorder'] = intval($_GET['displayorder']);
        $Data['start_dateline'] = $_GET['start_dateline'] ? strtotime($_GET['start_dateline']) : '';
        $Data['end_dateline'] = $_GET['end_dateline'] ? strtotime($_GET['end_dateline']) : '';

        $Param['uid'] = intval($_GET['uid']);
        $Param['sharetitle'] = addslashes(strip_tags($_GET['sharetitle']));
        $Param['sharedesc'] = addslashes(strip_tags($_GET['sharedesc']));
        $Param['businessinfo'] = addslashes($_GET['businessinfo']);//�豣��Html

        $Param['postercontent'] = addslashes(strip_tags($_GET['postercontent']));//��������

        /* logoͼƬ */
        if ($_GET['dellogo'] == 'yes') {
            unlink(DISCUZ_ROOT . $Item['param']['logo']);
            $Param['logo'] = '';
        } else {
            $Param['logo'] = addslashes(strip_tags($_GET['logo']));
        }

        if ($_FILES['logonew']['size']) {
            $BannerFile = $Violation->UploadIconBanner($_FILES['logonew'], $Item['param']['logo']);
            if ($BannerFile['Errorcode']) {
                cpmsg('ͼƬ��ʽ����ȷ�����ϴ�jpg,jpeg,gif,png,bmp��ʽ��ͼƬ', '', 'error');
            } else {
                $Param['logo'] = $BannerFile['Path'];
            }
        } else if ($_GET['logonew']) {
            $Param['logo'] = addslashes(strip_tags($_GET['logonew']));
        }
        /* logoͼƬ End */

        /* ����ͼƬ */
        if ($_GET['delposter'] == 'yes') {
            unlink(DISCUZ_ROOT . $Item['param']['poster']);
            $Param['poster'] = '';
        } else {
            $Param['poster'] = addslashes(strip_tags($_GET['poster']));
        }

        if ($_FILES['posternew']['size']) {
            $ShareLogFile = $Violation->UploadIconBanner($_FILES['posternew'], $Item['param']['poster']);
            if ($ShareLogFile['Errorcode']) {
                cpmsg('ͼƬ��ʽ����ȷ�����ϴ�jpg,jpeg,gif,png,bmp��ʽ��ͼƬ', '', 'error');
            } else {
                $Param['poster'] = $ShareLogFile['Path'];
            }
        } else if ($_GET['posternew']) {
            $Param['poster'] = addslashes(strip_tags($_GET['posternew']));
        }
        /* ����ͼƬ End */

        $Data['param'] = serialize($Param);

        if ($Item) {
            $Data['dateline'] = strtotime($_GET['dateline']);
            DB::update('violation', $Data, 'id = ' . $AId);
        } else {
            $Data['dateline'] = time();
            $AId = DB::insert('violation', $Data);
        }

        $ItemTo = $Violation->QueryOne('violation', $AId);
        memory('set', 'HbShareItem' . $AId, $ItemTo, 3600);//д�뻺��
        cpmsg('���³ɹ�', $CpMsgUrl, 'succeed');
    }
}
?>