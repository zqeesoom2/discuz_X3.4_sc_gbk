<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<script>disallowfloat = 'newthread';</script>
<script src="source/plugin/<?php echo $plugins;?>/js/jquery.js" type="text/javascript" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
var lj_jq=jQuery.noConflict();
</script>
<table style="width:1050px;" id="tips" class="tb tb2 ">
<tbody><tr><th class="partition">������ʾ&nbsp;(<a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&identifier=<?php echo $plugins;?>&pmod=region&act=empty">��ղ��������</a>)</th></tr>
<tr><td class="tipsblock"><ul id="tipslis"><li>������༭�����õ�����Ŀ¼��</li>
    <li>ʹ�õ���ϵͳ������Ĺ���ʱ������<a href="admin.php?action=plugins&amp;operation=config&amp;identifier=violation&amp;pmod=region&amp;act=empty">��ղ��������</a>�ٵ��룬���⵼���ظ�����</li>
    <li>����ϵͳ�����������ʱ��ѡ��һ��ʡ�ݵ��룬������ϵͳ�������и�ʡ�ݶ�Ӧ�ĳǡ����絼�뵽������Դ����ƣ�</li>
</ul></td></tr></tbody></table>

<form id="cpform" action="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&do=<?php echo $_GET['do'];?>&identifier=<?php echo $plugins;?>&pmod=region" target="_self" method="post" name="cpform">
<input type="hidden" value="<?php echo FORMHASH;?>" name="formhash">
<input type="hidden" value="<?php echo $_GET['upid'];?>" name="upid">
<table style="width:1050px;" class="tb tb2 ">
<tbody><tr class="header"><td colspan=10>����<a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&do=<?php echo $_GET['_do'];?>&identifier=<?php echo $plugins;?>&pmod=region">ȫ��</a><?php if($upid_data['subject']) { ?><img src="static/image/common/pt_item.png"><a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&do=<?php echo $_GET['_do'];?>&identifier=<?php echo $plugins;?>&pmod=region&upid=<?php echo $upid_data['upid'];?>"><?php echo $upid_data['subject'];?></a><?php } ?></td></tr>
<script>
function newregion() {
var anew = lj_jq("#newfirst").clone();
anew.find("input").attr("value", "");
lj_jq("#newfirst").after(anew);
lj_jq("#newfirst").find("a").remove();
lj_jq("#newfirst").attr("id", "");
return false;
}
</script>
<tr class="header"><th></th><th>����</th><th>����</th><th>����</th></tr><?php if(is_array($region)) foreach($region as $key => $value) { ?><tr class="hover" style="height:20px"><td class="td25"><input type="checkbox" value="<?php echo $value['id'];?>" name="delete[]" class="checkbox"></td><td class="td25"><input  class="txt" type="text" value="<?php echo $value['displayorder'];?>" name="displayorder[<?php echo $value['id'];?>]" class="checkbox"></td><td class="td24"><input  class="txt" type="text" value="<?php echo $value['subject'];?>" name="name[<?php echo $value['id'];?>]" size="15" onfocus="this.className='txt'" onblur="this.className='txtnobd'" class="txtnobd"></td><?php if($upid_data['level'] < 1) { ?><td><a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&do=<?php echo $_GET['_do'];?>&identifier=<?php echo $plugins;?>&pmod=region&upid=<?php echo $value['id'];?>">�༭</a></td><?php } ?></tr>
<?php } ?>
<tr class="hover" style="height:20px" id="newfirst"><td class="td25">����</td><td class="td25"><input  class="txt" type="text" value="" name="newdisplayorder[]" class="checkbox"></td><td class="td24"><input type="text" value="" name="newregion[]" class="txt"></td><td><a onclick="newregion();return false;" href="#" class="addtr">���</a>&nbsp;&nbsp;&nbsp;<?php if(!$_GET['upid']) { ?><a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&identifier=<?php echo $plugins;?>&pmod=region&act=import" onclick="showWindow('edit',this.href)" class="addtr">����</a><?php } ?></td></tr>
<tr><td class="td25"><input type="checkbox" onclick="checkall(this.form, 'delete')" class="checkbox" id="chkall" name="chkall"><label for="chkall">ɾ?</label></td><td colspan="15"><div class="fixsel"><div id="ajax_status_display"></div><input type="submit" value="�ύ" title="!s114!" name="submit" id="submit_submit" class="btn">&nbsp;&nbsp;<a href="<?php echo ADMINSCRIPT;?>?action=plugins&operation=config&identifier=<?php echo $plugins;?>&pmod=region&act=importall" class="addtr"> &#23548;&#20837;&#31995;&#32479;&#20840;&#37096;&#22320;&#21306;</a></div></td><td><?php echo $paging;?></td></tr></tbody></table>
</form>