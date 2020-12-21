<?php
if(!defined('IN_DISCUZ') || !defined('IN_ADMINCP')) {
	exit('Access Denied');
}
//$pluginid值就这个插件的ID，在新建插件的时候，系统自己创建的。
$pluginid='violation';//这里我自己定义
$act = $_GET['act'];
if($act == 'del_qk') {
	$sql="delete from ".DB::table("aljesc_position");
	DB::query($sql);
	cpmsg(lang('plugin/'.$pluginid.'','position_7'), 'action=plugins&operation=config&do=82&identifier='.$pluginid.'&pmod=position', 'succeed');
}
if($act == 'del'  && $_GET['formhash'] == formhash()) {
	$tid = intval($_GET['tid']);
	if($tid) {
		$upcid = C::t('#'.$pluginid.'#aljesc_position')->fetch_upid_by_id($tid);
		if($upcid) {
			$subid = C::t('#'.$pluginid.'#aljesc_position')->fetch_subid_by_id($upcid);
			$subarr = explode(",", $subid);
			foreach($subarr as $key=>$value) {
				if($value == $tid) {
					unset($subarr[$key]);
					break;
				}
			}
			C::t('#'.$pluginid.'#aljesc_position')->update($upcid,array('subid'=>implode(",", $subarr)));
		}
		C::t('#'.$pluginid.'#aljesc_position')->delete($tid);
	}
	cpmsg(lang('plugin/'.$pluginid.'','position_7'), 'action=plugins&operation=config&do=82&identifier='.$pluginid.'&pmod=position', 'succeed');	
}

if(!submitcheck('editsubmit')) {

?>
<script type="text/JavaScript">
var rowtypedata = [
	[[1,'<input type="text" class="txt" name="newcatorder[]" value="0" />', 'td25'], [2, '<input name="newcat[]" value="" size="20" type="text" class="txt" />']],
	[[1,'<input type="text" class="txt" name="newsuborder[{1}][]" value="0" />', 'td25'], [2, '<div class="board"><input name="newsubcat[{1}][]" value="" size="20" type="text" class="txt" /></div>']],
	
	];

function del(id) {
	if(confirm('<?php echo '确认要删除吗？';?>')) {
		window.location = '<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&identifier=<?php echo $pluginid;?>&pmod=position&act=del&tid='+id+'&formhash=<?php echo FORMHASH;?>';
	} else {
		return false;
	}
}
</script>
<?php
	showformheader('plugins&operation=config&do='.$_GET['do'].'&identifier='.$pluginid.'&pmod=position&page='.$_GET['page'].'&search='.$_GET['search']);
	showtableheader('<input type="text" name="search" value="'.$_GET['search'].'"><input type="submit" >&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a onclick="showDialog(\'&#24744;&#30830;&#23450;&#35201;&#28165;&#31354;&#25152;&#26377;&#20998;&#31867;&#21527;&#65311;\',\'confirm\',\'\',function(){location.href=\''.ADMINSCRIPT.'?action=plugins&operation=config&identifier=aljesc&pmod=position&act=del_qk\'});return false;" href="#">&#28165;&#31354;&#20998;&#31867;</a>');
	showsubtitle(array('排序','名称','操作'));
	$currpage = $_GET['page'] ? $_GET['page'] : 1;
    $perpage = 10;
	$start = ($currpage - 1) * $perpage;
	if($_GET['search']){
		$search='%' . addcslashes($_GET['search'], '%_') . '%';
		//$con.=" and title like '$search'";
	}
	$num=C::t('#'.$pluginid.'#aljesc_position')->count_by_upid(0,$search);
	
	$position = C::t('#'.$pluginid.'#aljesc_position')->fetch_all_by_upid(0,$start,$perpage,$search);
	foreach($position as $key=>$value){

		$bt = C::t('#'.$pluginid.'#aljesc_position')->fetch_all_by_upid($key);
		foreach($bt as $k=>$v){
			$position[$key]['subtype'][$k] = $v;
		}
	}
	if($position) {
		foreach($position as $id=>$type) {
			$show = '<tr class="hover"><td class="td25"><input type="text" class="txt" name="order['.$id.']" value="'.$type['displayorder'].'" /></td><td><div class="parentboard"><input type="text" class="txt" name="name['.$id.']" value="'.$type['subject'].'"></div></td>';
			if(!$type['subid']) {
				$show .= '<td><a  onclick="del('.$id.')" href="###">删除</td></tr>';
			} else {
				$show .= '<td>&nbsp;</td></tr>';
			}
			echo $show;
			if($type['subtype']) {
				foreach($type['subtype'] as $subid=>$stype) {
					echo '<tr class="hover"><td class="td25"><input type="text" class="txt" name="order['.$subid.']" value="'.$stype['displayorder'].'" /></td><td><div class="board"><input type="text" class="txt" name="name['.$subid.']" value="'.$stype['subject'].'"></div></td><td><a  onclick="del('.$subid.')" href="###">删除</td></tr>';
				}
				
			}
			echo '<tr class="hover"><td class="td25">&nbsp;</td><td colspan="2" ><div class="lastboard"><a href="###" onclick="addrow(this, 1,'.$id.' )" class="addtr">添加分类</a></div></td></tr>';
		}	
	}
	echo '<tr class="hover"><td class="td25">&nbsp;</td><td colspan="2" ><div><a href="###" onclick="addrow(this, 0)" class="addtr">添加</a></div></td></tr>';
	
	$paging = helper_page :: multi($num, $perpage, $currpage, "admin.php?action=plugins&operation=config&identifier=".$pluginid."&pmod=position", 0, 10, false, false);
	showsubmit('editsubmit','&#25552;&#20132;','','',$paging);
	showtablefooter();
	showformfooter();

} else {
	$order = $_GET['order'];
	$name = $_GET['name'];
	$newsubcat = $_GET['newsubcat'];
	$newcat = $_GET['newcat'];
	$newsuborder = $_GET['newsuborder'];
	$newcatorder = $_GET['newcatorder'];
	//debug($_GET);
	if(is_array($order)) {
		foreach($order as $id=>$value) {
			C::t('#'.$pluginid.'#aljesc_position')->update($id,array('displayorder'=>$value,'subject'=>$name[$id]));
		}
	}

	if(is_array($newcat)) {
		foreach($newcat as $key=>$name) {
			if(empty($name)) {
				continue;
			}
			$cid=C::t('#'.$pluginid.'#aljesc_position')->insert(array('upid' => '0', 'subject' => $name, 'displayorder' => $newcatorder[$key]),1);
		}
	}

	if(is_array($newsubcat)) {
		foreach($newsubcat as $cid=>$subcat) {
			$sub=C::t('#'.$pluginid.'#aljesc_position')->fetch($cid);
			$subtype =$sub['subid'];
			foreach($subcat as $key=>$name) {
				$subid=C::t('#'.$pluginid.'#aljesc_position')->insert(array('upid' => $cid, 'subject' => $name, 'displayorder' => $newsuborder[$cid][$key]),1);
				$subtype .= $subtype ? ','.$subid : $subid;
			}
			C::t('#'.$pluginid.'#aljesc_position')->update($cid,array('subid'=>$subtype));
		}
	}

	cpmsg('更新成功！', 'action=plugins&operation=config&do='.$_GET['do'].'&identifier='.$pluginid.'&pmod=position&page='.$_GET['page'].'&search='.$_GET['search'], 'succeed');
}

?>


