<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); hookscriptoutput('bind');?><?php include template('common/header'); ?><h3 class="flb" >
    <em id="return_<?php echo $_GET['handlekey'];?>">
        手机绑定
    </em>
    <span style="font-family: 'Microsoft YaHei', 'Hiragino Sans GB', 'STHeiti', Tahoma, 'SimHei', sans-serif"><a href="javascript:void(0)" onclick="hideWindow('<?php echo $_GET['handlekey'];?>'); window.location.reload();" class="flbc" title="关闭">关闭</a></span>
</h3>
<!--from action=plugin.php?id=qfmobile:bindmobile&r=bindmobile/index 中bindmobile.inc.php后台并没有设置，自己在插件目录定义，系统会自动请求到这边-->
<form id="bindmobileform" name="bindmobileform"
      action="plugin.php?id=qfmobile:bindmobile&amp;r=bindmobile/index" method="post"
      autocomplete="off" target="_blank" onsubmit="$('flag').value = '1';ajaxpost(this.id, 'return_<?php echo $_GET['handlekey'];?>');">
    <div class="c tfm">
        <table id="myphone">
            <tr>
                <td>
                    <div>
                        <p><strong>本站当前版块开启了绑定手机才能发布的功能。</strong></p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p><strong>您尚未绑定手机号，请先进行绑定手机号操作。</strong></p>
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
            <button type="button" name="bindmobilesubmit_btn" id="nextbind_btn" value="true" class="pn pnc" onclick="hideWindow('<?php echo $_GET['handlekey'];?>');window.location.reload();"><strong>下次绑定</strong></button>
        </span>
        <span>
            <button type="submit" name="bindmobilesubmit_btn" id="bindmobilesubmit_btn" value="true" class="pn pnc"><strong>前去绑定<!-- 前去绑定 --></strong></button>
        </span>
    </p>
</form><?php include template('common/footer'); ?>