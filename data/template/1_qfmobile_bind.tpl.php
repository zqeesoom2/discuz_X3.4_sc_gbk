<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); hookscriptoutput('bind');?><?php include template('common/header'); ?><h3 class="flb" >
    <em id="return_<?php echo $_GET['handlekey'];?>">
        �ֻ���
    </em>
    <span style="font-family: 'Microsoft YaHei', 'Hiragino Sans GB', 'STHeiti', Tahoma, 'SimHei', sans-serif"><a href="javascript:void(0)" onclick="hideWindow('<?php echo $_GET['handlekey'];?>'); window.location.reload();" class="flbc" title="�ر�">�ر�</a></span>
</h3>
<!--from action=plugin.php?id=qfmobile:bindmobile&r=bindmobile/index ��bindmobile.inc.php��̨��û�����ã��Լ��ڲ��Ŀ¼���壬ϵͳ���Զ��������-->
<form id="bindmobileform" name="bindmobileform"
      action="plugin.php?id=qfmobile:bindmobile&amp;r=bindmobile/index" method="post"
      autocomplete="off" target="_blank" onsubmit="$('flag').value = '1';ajaxpost(this.id, 'return_<?php echo $_GET['handlekey'];?>');">
    <div class="c tfm">
        <table id="myphone">
            <tr>
                <td>
                    <div>
                        <p><strong>��վ��ǰ��鿪���˰��ֻ����ܷ����Ĺ��ܡ�</strong></p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p><strong>����δ���ֻ��ţ����Ƚ��а��ֻ��Ų�����</strong></p>
                    </div>
                </td>
            </tr>
        </table>
        <br>
        <br>
        <br>
    </div>
    <p class="o pns">
        <span style="padding: 15px 100px 15px 10px">
            <button type="button" name="bindmobilesubmit_btn" id="nextbind_btn" value="true" class="pn pnc" onclick="hideWindow('<?php echo $_GET['handlekey'];?>');window.location.reload();"><strong>�´ΰ�</strong></button>
        </span>
        <span>
            <button type="submit" name="bindmobilesubmit_btn" id="bindmobilesubmit_btn" value="true" class="pn pnc"><strong>ǰȥ��<!-- ǰȥ�� --></strong></button>
        </span>
    </p>
</form><?php include template('common/footer'); ?>