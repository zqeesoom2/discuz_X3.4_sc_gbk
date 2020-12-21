<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); function tpl_register_input_output() {
global $_G;

$_G['sechashi'] = !empty($_G['cookie']['sechashi']) ? $_G['sechash'] + 1 : 0;
$sechash = 'S'.($_G['inajax'] ? 'A' : '').$_G['sid'].$_G['sechashi'];  //$sechash=SuUNZH80 ；ajax请求的&idhash=$sechash
require_once DISCUZ_ROOT.'./source/discuz_version.php'; //在点击获取验证码时， 判断当前论坛版本的作用?><?php
$__STATICURL = STATICURL;$__FORMHASH = FORMHASH;$return = <<<EOF


EOF;
 if(!$_G['setting']['sendregisterurl'] || !empty($_GET['email']) ) { if($_G['cache']['plugin']['qfmobile']['mobilereg'] ) { 
$return .= <<<EOF


<div class="rfm">
    <table id="myphone">
        <tr>
            <th><span class="rq">*</span><label for="msm4Zg">手机号:</label></th>
            <td><input type="text" id="mobile" name="mobile" value="" onblur="checkmobile();" class="px" tabindex="1"
                       autocomplete="off" size="25" maxlength="11" required/></td>
            <td class="tipcol"><i id="tip_mobile" class="p_tip"></i><kbd id="chk_mobile" class="p_chk"></kbd></td>
        </tr>
    </table>
</div>


EOF;
 if($_G['cache']['plugin']['qfmobile']['mobileimgcode'] && empty($_G['setting']['seccodedata']['rule']['register']['allow']) ) { if((DISCUZ_VERSION == 'X1.5' || DISCUZ_VERSION == 'X2' || DISCUZ_VERSION == 'X2.5' || DISCUZ_VERSION == 'X3')) { 
$return .= <<<EOF

<div class="rfm">
    <table>
        <tr>
            <th><span class="rq">*</span><label for="">验证码:</label></th>
            <td><input name="seccodeverify" id="seccodeverify_{$sechash}" type="text" autocomplete="off"
                       style="width:100px" class="txt px vm" onblur="checksec('code', '{$sechash}')" tabindex="1"
                       required/>
                <a href="javascript:void(0);" onclick="updateseccode('{$sechash}');doane(event);" class="xi2">换一个</a>
                <span id="checkseccodeverify_{$sechash}"><img src="{$__STATICURL}image/common/none.gif" width="16"
                                                            height="16" class="vm"/></span><br/>
                <span id="seccode_{$sechash}" style="padding:5px;"></span>
                <script type="text/javascript" reload="1">updateseccode('{$sechash}');</script>
            </td>
        </tr>
    </table>
</div>

EOF;
 } else { 
$return .= <<<EOF

<span id="seccode_c{$sechash}"></span>
<script type="text/javascript"
        reload="1">updateseccode('c{$sechash}', '<div class="rfm"><table><tr><th><span class="rq">*</span><sec>: </th><td><sec><br /><sec></td></tr></table></div>', '');</script>

EOF;
 } } 
$return .= <<<EOF


<div class="rfm">
    <table id="myauth">
        <tr>
            <th><span class="rq">*</span><label for="">短信验证码:</label></th>
            <td><input type="text" id="verifycode" name="verifycode" onblur="checkregverifycode();" class="px"
                       tabindex="1" autocomplete="off" size="25" maxlength="6" required/></td>
            <td class="tipcol"><i id="tip_verifycode" class="p_tip">输入您获取到的短信验证码</i><kbd
                    id="chk_verifycode" class="p_chk"></kbd></td>
        </tr>
        <tr>
            <th></th>
            <td>
                <button id="btn_getregverifycode" class="pn" type="button" onclick="getregverifycode();"
                        style="width:100%">点击获取短信验证码
                </button>
                <p><font color="red"></font></p></td>
            <td class="tipcol"></td>
        </tr>
    </table>
</div>

EOF;
 if($_G['cache']['plugin']['qfmobile']['mobileregtip']) { 
$return .= <<<EOF

<div class="rfm">
    <table>
        <tr>
            <th></th>
            <td><font color="red">{$_G['cache']['plugin']['qfmobile']['mobileregtip']}</font></td>
        </tr>
    </table>
</div>

EOF;
 } 
$return .= <<<EOF


<script type="text/javascript">
    var intval = null;
    var timeRemain = 90;
    var waitTime = 90;

    function checkmobile() {
        var sechashcode = '';
        var sechash = $('seccodeverify_c{$sechash}');

        if (sechash) {
            sechashcode = sechash.value;
        }
        var mobile = trim($('mobile').value);
        if (!mobile.match(/^1[3456789]{1}\d{9}$/g)) {
            errormessage('mobile', '请填写正确的手机号');
            return;
        }

        var x = new Ajax();
        $('tip_mobile').parentNode.className = $('tip_mobile').parentNode.className.replace(/ p_right/, '');
        x.get('plugin.php?id=qfmobile:check&inajax=yes&infloat=register&handlekey=register&ajaxmenu=1&action=checkmobile&formhash={$__FORMHASH}&mobile=' + mobile + '&' + Math.random(),
                function (s) {
                    errormessage('mobile', s);
                });
    }

    function getregverifycode() {
        
EOF;
 if(!empty($_GET['action']) ) { 
$return .= <<<EOF

        
EOF;
 } elseif(!empty($_GET['email']) ) { 
$return .= <<<EOF

        var username = trim($('{$_G['setting']['reginput']['username']}').value);
        var password = trim($('{$_G['setting']['reginput']['password']}').value);
        var password2 = trim($('{$_G['setting']['reginput']['password2']}').value);
        var email = trim($('{$_G['setting']['reginput']['email']}').value);
        
EOF;
 } else { 
$return .= <<<EOF

        var username = trim($('{$_G['setting']['reginput']['username']}').value);
        var password = trim($('{$_G['setting']['reginput']['password']}').value);
        var password2 = trim($('{$_G['setting']['reginput']['password2']}').value);
        
EOF;
 } 
$return .= <<<EOF

        var mobile = trim($('mobile').value);
        
EOF;
 if(empty($_GET['action'])) { 
$return .= <<<EOF

        if (username == '') {
            errormessage('{$_G['setting']['reginput']['username']}', '用户名不能为空');
            return;
        } else if (password == '') {
            errormessage('{$_G['setting']['reginput']['password']}', '密码不能为空');
            return;
        } else if (password2 == '') {
            errormessage('{$_G['setting']['reginput']['password2']}', '确认密码不能为空');
            return;
        }
        
EOF;
 } 
$return .= <<<EOF

        if (mobile == '') {
            errormessage('mobile', '请填写正确的手机号');
        } else {
            var sechashcode = '';
            
EOF;
 if((DISCUZ_VERSION == 'X1.5' || DISCUZ_VERSION == 'X2' || DISCUZ_VERSION == 'X2.5' || DISCUZ_VERSION == 'X3')) { 
$return .= <<<EOF

            var sechash = $('seccodeverify_{$sechash}');
            
EOF;
 } else { 
$return .= <<<EOF

            var sechash = $('seccodeverify_c{$sechash}');
            
EOF;
 } 
$return .= <<<EOF

            if (sechash) {
                sechashcode = sechash.value;
            }

            var x = new Ajax();
            $('tip_mobile').parentNode.className = $('tip_mobile').parentNode.className.replace(/ p_right/, '');
            $('btn_getregverifycode').disabled = true;
            x.get('plugin.php?id=qfmobile:check&idhash={$sechash}&formhash={$__FORMHASH}&seccodeverify=' + decodeURI(sechashcode) + '&inajax=yes&infloat=register&handlekey=register&ajaxmenu=1&action=getverifycode&mobile=' + mobile + '&' + Math.random(), function (s) {
                if (s.indexOf("发送成功") != -1) {
                    $('myauth').style.display = "";
                    if (intval == null) intval = setInterval(setchecktime, 1000);
                } else {
                    if ($('myphone').style.display == '') {
                        errormessage('mobile', s);
                    } else {
                        errormessage('verifycode', s);
                    }
                }
                $('btn_getregverifycode').disabled = false;
            });
        }
    }


    function setchecktime() {
        timeRemain -= 1;
        if (timeRemain > 0) {
            if ($('btn_getregverifycode')) $("btn_getregverifycode").innerHTML = '<strong><font color="red">' + timeRemain + '秒后</font>点击重新发送</strong>';
            if ($('btn_getregverifycode')) //$("modifyMobile").innerHTML = '';
                if ($('btn_getregverifycode')) $("btn_getregverifycode").disabled = true;
        } else {
            clearInterval(intval);
            intval = null;
            timeRemain = waitTime;
            $("btn_getregverifycode").disabled = false;
            $("btn_getregverifycode").innerHTML = '<strong>点击重新获取短信验证码</strong>';
            $("btn_getregverifycode").onclick = function () {
                if (timeRemain == waitTime || timeRemain == 0) {
                    getregverifycode();
                }
            }
        }
    }


    
EOF;
 if($interval <= $mobilegap && false ) { 
$return .= <<<EOF

    //$('mobileNumber').innerHTML = "{$sendedmobile}";
    //$('myphone').style.display = "none";
    $('myauth').style.display = "";
    $("btn_getregverifycode").disabled = true;
    $("btn_getregverifycode").innerHTML = '<strong><font color="red">' + timeRemain + '秒后</font>点击重新发送</strong>';
    if (intval == null) intval = setInterval(setchecktime, 1000);
    
EOF;
 } 
$return .= <<<EOF


</script>


EOF;
 } } 
$return .= <<<EOF


EOF;
?><?php return $return;?><?php }


function tpl_register_logging_method(){
global $_G;?><?php
$__FORMHASH = FORMHASH;$return = <<<EOF


EOF;
 if($_G['cache']['plugin']['qfmobile']['mobilereg']) { 
$return .= <<<EOF

<script type="text/javascript">
    var sechashcode = '';
    var btn_reg = document.getElementById("registerformsubmit");
    var mobile = trim($('mobile').value);
    var verifycode = trim($('verifycode').value);
    if(btn_reg) {
        var x = new Ajax();
        $('tip_verifycode').parentNode.className = $('tip_verifycode').parentNode.className.replace(/ p_right/, '');
        x.get('plugin.php?id=qfmobile:check&idhash={$sechash}&formhash={$__FORMHASH}&seccodeverify=' + escape(sechashcode) + '&inajax=yes&infloat=register&handlekey=register&ajaxmenu=1&action=checkverifycode&verifycode=' + verifycode + '&mobile=' + mobile + '&' + Math.random(), function (s) {
            if (s.indexOf("短信验证码正确") != -1) {
                btn_reg.removeAttribute("disabled");
            } else {
                btn_reg.setAttribute("disabled", true);

            }
        });

        function checkregverifycode() {
            errormessage('verifycode');
            var sechashcode = '';
            var sechash = $('seccodeverify_c{$sechash}');
            var mobile = trim($('mobile').value);
            var verifycode = trim($('verifycode').value);
            if (sechash) {
                sechashcode = sechash.value;
            }

            if (mobile == '') {
                errormessage('mobile', '请填写正确的手机号');
                return;
            }
            if (!verifycode.match(/^\d{6}$/g)) {
                errormessage('verifycode', '请填写正确的短信验证码');
                return;
            }
            var x = new Ajax();
            $('tip_verifycode').parentNode.className = $('tip_verifycode').parentNode.className.replace(/ p_right/, '');
            x.get('plugin.php?id=qfmobile:check&idhash={$sechash}&formhash={$__FORMHASH}&seccodeverify=' + escape(sechashcode) + '&inajax=yes&infloat=register&handlekey=register&ajaxmenu=1&action=checkverifycode&verifycode=' + verifycode + '&mobile=' + mobile + '&' + Math.random(), function (s) {
                if (s.indexOf("短信验证码正确") != -1) {
                    errormessage('verifycode', '');
                    document.getElementById("registerformsubmit").removeAttribute("disabled");
                }else {
                    errormessage('verifycode', s);

                }
            });
        }
    }
</script>

EOF;
 } 
$return .= <<<EOF


EOF;
?><?php return $return;?><?php }


function tpl_spacecp_profile_bottom_output(){
global $_G;

$phone = DB::result_first('SELECT phone from %t where uid=%d', array('phonebind', $_G['uid']));

$_G['sechashi'] = !empty($_G['cookie']['sechashi']) ? $_G['sechash'] + 1 : 0;
$sechash = 'S'.($_G['inajax'] ? 'A' : '').$_G['sid'].$_G['sechashi'];?><?php
$return = <<<EOF


EOF;
 if($_G['cache']['plugin']['qfmobile']['mobilebind']) { 
$return .= <<<EOF

<script type="text/javascript">
    var mobile = document.getElementsByName("mobile")[0];
    var phone = "{$phone}";
    mobile.value = phone;
    if (mobile) {
        if (mobile.value == "") {
            $('td_mobile').innerHTML = '<input type="text" name="mobile" class="px" value="" readonly="readonly" tabindex="1" /><a id="bindmobile" href="plugin.php?id=qianfan:bindmobile&amp;r=bindmobile/index" target="_blank"><b style="color: red">手机绑定</b></a>';
        } else {
            $('td_mobile').innerHTML = '<input type="text" name="mobile" class="px" value="' + mobile.value + '" readonly="readonly" tabindex="1" /><a id="bindmobile" href="plugin.php?id=qianfan:bindmobile&amp;r=bindmobile/index" target="_blank"><b style="color: red">手机换绑</b></a>';
        }
    }
</script>

EOF;
 } 
$return .= <<<EOF


EOF;
?><?php return $return;?><?php }

function tpl_post_btn_extra_output() {
global $_G;?><?php
$__FORMHASH = FORMHASH;$return = <<<EOF


EOF;
 if($_G['cache']['plugin']['qfmobile']['mobilelimit']) { 
$return .= <<<EOF

<script type="text/javascript" language="javascript">
    if (document.getElementById("postsubmit")) {
        var postsubmit = document.getElementById("postsubmit");
        var p = postsubmit.parentNode;
        var post = document.createElement("Button");
        post.setAttribute("type", "button");
        post.onclick = function () {
            showWindow('qfbind', 'plugin.php?id=qfmobile:check&&formhash={$__FORMHASH}&action=bindmobile&mobile=', 'get', 0);
        };
        post.className = postsubmit.className;
        post.style.width = postsubmit.style.width;
        post.style.height = postsubmit.style.height;
        postsubmit.style.display = "none";
        post.innerHTML = postsubmit.innerHTML;
        p.insertBefore(post, postsubmit);
    }
</script>

EOF;
 } 
$return .= <<<EOF


EOF;
?><?php return $return;?><?php }

function tpl_forumdisplay_fastpost_btn_extra_output() {
global $_G;?><?php
$__FORMHASH = FORMHASH;$return = <<<EOF

<script type="text/javascript" language="javascript">
    if (document.getElementById("fastpostsubmit")) {
        var fastpostsubmit = document.getElementById("fastpostsubmit");
        var p = fastpostsubmit.parentNode;
        var post = document.createElement("Button");
        post.setAttribute("type", "button");
        post.onclick = function () {
            showWindow('qfbind', 'plugin.php?id=qfmobile:check&&formhash={$__FORMHASH}&action=bindmobile&mobile=', 'get', 0);
        };
        post.className = fastpostsubmit.className;
        post.style.width = fastpostsubmit.style.width;
        post.style.height = fastpostsubmit.style.height;
        fastpostsubmit.style.display = "none";
        post.innerHTML = fastpostsubmit.innerHTML;
        p.insertBefore(post, fastpostsubmit);
    }
</script>

EOF;
?><?php return $return;?>register_logging_method<?php }

function tpl_post_infloat_btn_extra_output() {
global $_G;?><?php
$__FORMHASH = FORMHASH;$return = <<<EOF

<script type="text/javascript" language="javascript">
    if (document.getElementById("postsubmit")) {
        var postsubmit = document.getElementById("postsubmit");
        var p = postsubmit.parentNode;
        var post = document.createElement("Button");
        post.setAttribute("type", "button");
        post.onclick = function () {
            showWindow('qfbind', 'plugin.php?id=qfmobile:check&&formhash={$__FORMHASH}&action=bindmobile&mobile=', 'get', 0);
        };
        post.className = postsubmit.className;
        post.style.width = postsubmit.style.width;
        post.style.height = postsubmit.style.height;
        postsubmit.style.display = "none";
        post.innerHTML = postsubmit.innerHTML;
        p.insertBefore(post, postsubmit);
    }

    if (document.getElementById("fastpostsubmit")) {
        var postsubmit = document.getElementById("fastpostsubmit");
        var p = postsubmit.parentNode;
        var post = document.createElement("Button");
        post.setAttribute("type", "button");
        post.onclick = function () {
            showWindow('qfbind', 'plugin.php?id=qfmobile:check&&formhash={$__FORMHASH}&action=bindmobile&mobile=', 'get', 0);
        };
        post.className = postsubmit.className;
        post.style.width = postsubmit.style.width;
        post.style.height = postsubmit.style.height;
        postsubmit.style.display = "none";
        post.innerHTML = postsubmit.innerHTML;
        p.insertBefore(post, postsubmit);
    }

</script>

EOF;
?><?php return $return;?><?php }

function tpl_viewthread_fastpost_content_output() {
global $_G;?><?php
$__FORMHASH = FORMHASH;$return = <<<EOF

<script type="text/javascript" language="javascript">
    if (document.getElementById("vreplysubmit")) {
        var fastpostsubmit = document.getElementById("vreplysubmit");
        var p = fastpostsubmit.parentNode;
        var post = document.createElement("Button");
        post.setAttribute("type", "button");
        post.onclick = function () {
            showWindow('qfbind', 'plugin.php?id=qfmobile:check&&formhash={$__FORMHASH}&action=bindmobile&mobile=', 'get', 0);
        };
        post.className = fastpostsubmit.className;
        post.style.width = fastpostsubmit.style.width;
        post.style.height = fastpostsubmit.style.height;
        fastpostsubmit.style.display = "none";
        post.innerHTML = fastpostsubmit.innerHTML;
        p.insertBefore(post, fastpostsubmit);
    }
</script>

EOF;
?><?php return $return;?><?php }

function tpl_logging_input_output(){
global $_G;?><?php
$return = <<<EOF


EOF;
 if($_G['cache']['plugin']['qfmobile']['mobilepwd']) { 
$return .= <<<EOF

<script type="text/javascript">

</script>

EOF;
 } 
$return .= <<<EOF


EOF;
?><?php return $return;?><?php }?>