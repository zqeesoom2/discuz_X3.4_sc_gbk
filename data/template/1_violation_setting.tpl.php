<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<table id="tips" class="tb tb2 ">
<tbody><tr><th class="partition">&#25216;&#24039;&#25552;&#31034;</th></tr>
<tr><td s="1" class="tipsblock"><ul id="tipslis">
<li><b>&#22914;&#26524;&#24744;&#23545;&#35774;&#32622;&#39033;&#26377;&#19981;&#20102;&#35299;&#30340;&#22320;&#26041;&#65292;&#27426;&#36814;&#24744;&#30452;&#25509;&#81;&#81;&#32852;&#31995;&#20142;&#21073;&#23458;&#26381;&#50;&#56;&#49;&#48;&#57;&#55;&#49;&#56;&#48;&#65292;&#25105;&#20204;&#23558;&#31469;&#35802;&#20026;&#24744;&#26381;&#21153;</b></li>
<li>&#25554;&#20214;&#35774;&#32622;&#20013;&#30340;&#76;&#79;&#71;&#79;&#35774;&#32622;&#20381;&#28982;&#26159;&#26377;&#25928;&#26524;&#30340;&#65292;&#22914;&#26524;&#36825;&#37324;&#20570;&#20102;&#35774;&#32622;&#23558;&#20250;&#35206;&#30422;&#25554;&#20214;&#35774;&#32622;&#39033;&#20013;&#30340;&#76;&#79;&#71;&#79;&#35774;&#32622;</li>
</ul></td></tr></tbody></table>

<form id="cpform" action="admin.php?action=plugins&amp;operation=config&amp;identifier=<?php echo $pluginid;?>&amp;pmod=setting" enctype="multipart/form-data" autocomplete="off" method="post" name="cpform">
<input type="hidden" name="formhash" value="<?php echo FORMHASH;?>">
<table class="tb tb2 nobdb">
<tbody>
<!--常用设置 s-->
<tr><th class="partition" colspan="15">&#24120;&#29992;&#35774;&#32622;&#39033;</th></tr>
<tr><td s="1" class="td27" colspan="2">&#26159;&#21542;&#35843;&#29992;&#35770;&#22363;&#30340;&#27700;&#21360;&#21151;&#33021;</td></tr>
<tr class="noborder">
<td class="vtop rowform" s="1">
<ul onmouseover="altStyle(this);"><li class="checked"><input type="radio"  value="1"  <?php if($settings['iswatermark']['value']==1) { ?>checked=""<?php } ?> name="settingsnew[iswatermark]" class="radio">&nbsp;&#26159;</li><li><input type="radio" value="0" <?php if($settings['iswatermark']['value']==0) { ?>checked=""<?php } ?> name="settingsnew[iswatermark]" class="radio">&nbsp;&#21542;</li></ul>
<br></td><td>&#24320;&#21551;&#24320;&#20851;&#38656;&#35201;&#21040;&#35770;&#22363;&#45;&#45;&#20840;&#23616;&#45;&#45;&#27700;&#21360;&#35774;&#32622;&#37197;&#32622;&#22909;&#35770;&#22363;&#30340;&#27700;&#21360;&#21151;&#33021;</td>
</tr>
<tr><td s="1" class="td27" colspan="2">&#26410;&#20256;&#22270;&#40664;&#35748;&#22270;&#29255;</td></tr>
<tr class="noborder" ><td class="vtop rowform">
<input id="fileIM_0" style="display:none" name="TMPlogo" value="" type="file" class="txt uploadbtn marginbot">
<input id="fileIM_1" style="display:" name="logo" value="<?php echo $logo;?>" type="text" class="txt marginbot">
<br><a id="fileIM_0a" style="" href="javascript:;" onclick="$('fileIM_1a').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_1').name = 'TMPlogo';$('fileIM_0').name = 'logo';$('fileIM_0').style.display = '';$('fileIM_1').style.display = 'none'">&#19978;&#20256;&#25991;&#20214;</a>&nbsp;<a id="fileIM_1a" style="font-weight:bold" href="javascript:;" onclick="$('fileIM_0a').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_0').name = 'TMPlogo';$('fileIM_1').name = 'logo';$('fileIM_1').style.display = '';$('fileIM_0').style.display = 'none'">&#36755;&#20837;&#32;&#85;&#82;&#76;</a></td>

<?php if($logo) { ?>
<td class="vtop tips2" s="1"><label><input type="checkbox" class="checkbox" name="deletelogo" value="yes"> &#21024;&#38500;</label><br><img src="<?php echo $logo;?>" height="60px"><br></td>
<?php } ?>
</tr>


<!--tr><td s="1" class="td27" colspan="2">&#30003;&#35831;&#21152;&#20837;&#25340;&#36710;&#26159;&#21542;&#22635;&#20889;&#25163;&#26426;&#21495;</td></tr>
<tr class="noborder">
<td class="vtop rowform" s="1">
<ul onmouseover="altStyle(this);"><li class="checked"><input type="radio"  value="1"  <?php if($settings['apply_tel']['value']==1) { ?>checked=""<?php } ?> name="settingsnew[apply_tel]" class="radio">&nbsp;&#26159;</li><li><input type="radio" value="0" <?php if($settings['apply_tel']['value']==0) { ?>checked=""<?php } ?> name="settingsnew[apply_tel]" class="radio">&nbsp;&#21542;</li></ul>
<br></td>
</tr-->
<tr><td s="1" class="td27" colspan="2">&#20844;&#21578;&#28378;&#21160;&#20869;&#23481;</td></tr>
<tr class="noborder"><td class="vtop rowform">
<textarea class="tarea" cols="50"  name="settingsnew[Announcement_rolling]" onkeydown="textareakey(this, event)"  rows="6"><?php echo $settings['Announcement_rolling']['value'];?></textarea>
</td><td colspan=2>&#26684;&#24335;&#65306;&#20844;&#21578;&#25991;&#23383;&#124;&#20844;&#21578;&#38142;&#25509;&#124;&#20844;&#21578;&#23383;&#20307;&#39068;&#33394;<br/>&#19968;&#34892;&#19968;&#20010;
</td></tr>
<!--常用设置 e-->
<!--手机版设置 s-->
<tr><th class="partition" colspan="15">&#25163;&#26426;&#29256;&#35774;&#32622;&#39033;</th></tr>

<tr><td s="1" class="td27" colspan="2">&#19981;&#26174;&#31034;&#25163;&#26426;&#29256;&#39030;&#37096;&#76;&#79;&#71;&#79;</td></tr>
<tr class="noborder">
<td class="vtop rowform" s="1">
<ul onmouseover="altStyle(this);"><li class="checked"><input type="radio"  value="1"  <?php if($settings['is_mobile_logo']['value']==1) { ?>checked=""<?php } ?> name="settingsnew[is_mobile_logo]" class="radio">&nbsp;&#26159;</li><li><input type="radio" value="0" <?php if($settings['is_mobile_logo']['value']==0) { ?>checked=""<?php } ?> name="settingsnew[is_mobile_logo]" class="radio">&nbsp;&#21542;</li></ul>
<br></td>
</tr>
<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39030;&#37096;&#76;&#79;&#71;&#79;</td></tr>
<tr class="noborder" ><td class="vtop rowform">
<input id="fileIM_0_mobile" style="display:none" name="TMPlogo_mobile" value="" type="file" class="txt uploadbtn marginbot">
<input id="fileIM_1_mobile" style="display:" name="mobile_logo" value="<?php echo $mobile_logo;?>" type="text" class="txt marginbot">
<br><a id="fileIM_0_mobilea" style="" href="javascript:;" onclick="$('fileIM_1_mobilea').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_1_mobile').name = 'TMPlogo_mobile';$('fileIM_0_mobile').name = 'mobile_logo';$('fileIM_0_mobile').style.display = '';$('fileIM_1_mobile').style.display = 'none'">&#19978;&#20256;&#25991;&#20214;</a>&nbsp;<a id="fileIM_1_mobilea" style="font-weight:bold" href="javascript:;" onclick="$('fileIM_0_mobilea').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_0_mobile').name = 'TMPlogo_mobile';$('fileIM_1_mobile').name = 'mobile_logo';$('fileIM_1_mobile').style.display = '';$('fileIM_0_mobile').style.display = 'none'">&#36755;&#20837;&#32;&#85;&#82;&#76;</a></td>

<?php if($mobile_logo) { ?>
<td class="vtop tips2" s="1"><label><input type="checkbox" class="checkbox" name="deletemobile_logo" value="yes"> &#21024;&#38500;</label><br><img src="<?php echo $mobile_logo;?>" height="60px"><br></td>
<?php } ?>
</tr>
<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39318;&#39029;&#26816;&#32034;&#19979;&#26041;&#65;&#68;</td></tr>
<tr class="noborder"><td class="vtop rowform">
<textarea class="tarea" cols="50"  name="settingsnew[mobile_index_ad_1]" onkeydown="textareakey(this, event)"  rows="6"><?php echo $settings['mobile_index_ad_1']['value'];?></textarea>
</td><td colspan=2>&#40664;&#35748;&#24191;&#21578;&#22270;&#20195;&#30721;&#65306;<br/>
&#60;&#97;&#32;&#104;&#114;&#101;&#102;&#61;&#34;&#35;&#34;&#62;&#60;&#105;&#109;&#103;&#32;&#115;&#114;&#99;&#61;&#34;&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#34;&#32;&#47;&#62;&#60;&#47;&#97;&#62;<br/>
&#35;&#26367;&#25442;&#25104;&#38142;&#25509;</br>
&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#26367;&#25442;&#25104;&#33258;&#24049;&#30340;&#22270;&#29255;&#36335;&#24452;&#32;
</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39318;&#39029;&#20998;&#39029;&#19978;&#26041;&#65;&#68;</td></tr>
<tr class="noborder"><td class="vtop rowform">
<textarea class="tarea" cols="50"  name="settingsnew[mobile_index_ad_2]" onkeydown="textareakey(this, event)"  rows="6"><?php echo $settings['mobile_index_ad_2']['value'];?></textarea>
</td><td colspan=2>&#40664;&#35748;&#24191;&#21578;&#22270;&#20195;&#30721;&#65306;<br/>
&#60;&#97;&#32;&#104;&#114;&#101;&#102;&#61;&#34;&#35;&#34;&#62;&#60;&#105;&#109;&#103;&#32;&#115;&#114;&#99;&#61;&#34;&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#34;&#32;&#47;&#62;&#60;&#47;&#97;&#62;<br/>
&#35;&#26367;&#25442;&#25104;&#38142;&#25509;</br>
&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#26367;&#25442;&#25104;&#33258;&#24049;&#30340;&#22270;&#29255;&#36335;&#24452;&#32;</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39318;&#39029;&#20998;&#39029;&#19979;&#26041;&#65;&#68;</td></tr>
<tr class="noborder"><td class="vtop rowform">
<textarea class="tarea" cols="50"  name="settingsnew[mobile_index_ad_3]" onkeydown="textareakey(this, event)"  rows="6"><?php echo $settings['mobile_index_ad_3']['value'];?></textarea>
</td><td colspan=2>&#40664;&#35748;&#24191;&#21578;&#22270;&#20195;&#30721;&#65306;<br/>
&#60;&#97;&#32;&#104;&#114;&#101;&#102;&#61;&#34;&#35;&#34;&#62;&#60;&#105;&#109;&#103;&#32;&#115;&#114;&#99;&#61;&#34;&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#34;&#32;&#47;&#62;&#60;&#47;&#97;&#62;<br/>
&#35;&#26367;&#25442;&#25104;&#38142;&#25509;</br>
&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#26367;&#25442;&#25104;&#33258;&#24049;&#30340;&#22270;&#29255;&#36335;&#24452;&#32;</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#20449;&#24687;&#35814;&#24773;&#39029;&#24213;&#37096;&#65;&#68;</td></tr>
<tr class="noborder">
<td class="vtop rowform" s="1">
<textarea class="tarea" cols="50"  name="settingsnew[mobile_view_ad_1]" onkeydown="textareakey(this, event)"  rows="6"><?php echo $settings['mobile_view_ad_1']['value'];?></textarea>
</td><td colspan=2>&#40664;&#35748;&#24191;&#21578;&#22270;&#20195;&#30721;&#65306;<br/>
&#60;&#97;&#32;&#104;&#114;&#101;&#102;&#61;&#34;&#35;&#34;&#62;&#60;&#105;&#109;&#103;&#32;&#115;&#114;&#99;&#61;&#34;&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#34;&#32;&#47;&#62;&#60;&#47;&#97;&#62;<br/>
&#35;&#26367;&#25442;&#25104;&#38142;&#25509;</br>
&#115;&#111;&#117;&#114;&#99;&#101;&#47;&#112;&#108;&#117;&#103;&#105;&#110;&#47;&#97;&#108;&#106;&#101;&#115;&#99;&#47;&#105;&#109;&#97;&#103;&#101;&#115;&#47;&#101;&#115;&#99;&#46;&#106;&#112;&#103;&#26367;&#25442;&#25104;&#33258;&#24049;&#30340;&#22270;&#29255;&#36335;&#24452;&#32;</td>
</tr>
<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#23548;&#33322;&#32972;&#26223;&#39068;&#33394;</td></tr>
<tr onmouseover="setfaq(this, 'faqca6e')" class="noborder"><td class="vtop rowform">
<input type="text" onchange="updatecolorpreview('c1')" name="settingsnew[mobilenavbackcolor]" value="<?php echo $settings['mobilenavbackcolor']['value'];?>" style="float:left; width:210px;" class="txt" id="c1_v">
<input type="button" style="background: <?php echo $settings['mobilenavbackcolor']['value'];?>" value="" class="colorwd" onclick="c1_frame.location='static/image/admincp/getcolor.htm?c1|c1_v';showMenu({'ctrlid':'c1'})" id="c1" ><span id="c1_menu" style="position: absolute; z-index: 301; left: 251px; top: 317px; display: none;"><iframe width="210" height="148" frameborder="0" scrolling="no" src="" name="c1_frame"></iframe></span>
</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39030;&#37096;&#36820;&#22238;&#25353;&#38062;&#39068;&#33394;</td></tr>
<tr onmouseover="setfaq(this, 'faqca6s')" class="noborder"><td class="vtop rowform">
<input type="text" onchange="updatecolorpreview('c2')" name="settingsnew[mobile_re_bottom_color]" value="<?php echo $settings['mobile_re_bottom_color']['value'];?>" style="float:left; width:210px;" class="txt" id="c2_v">
<input type="button" style="background: <?php echo $settings['mobile_re_bottom_color']['value'];?>" value="" class="colorwd" onclick="c2_frame.location='static/image/admincp/getcolor.htm?c2|c2_v';showMenu({'ctrlid':'c2'})" id="c2" ><span id="c2_menu" style="position: absolute; z-index: 301; left: 251px; top: 317px; display: none;"><iframe width="210" height="148" frameborder="0" scrolling="no" src="" name="c2_frame"></iframe></span>
</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39030;&#37096;&#29992;&#25143;&#20013;&#24515;&#25353;&#38062;&#39068;&#33394;</td></tr>
<tr onmouseover="setfaq(this, 'faqca6e')" class="noborder"><td class="vtop rowform">
<input type="text" onchange="updatecolorpreview('c3')" name="settingsnew[mobile_me_bottom_color]" value="<?php echo $settings['mobile_me_bottom_color']['value'];?>" style="float:left; width:210px;" class="txt" id="c3_v">
<input type="button" style="background: <?php echo $settings['mobile_me_bottom_color']['value'];?>" value="" class="colorwd" onclick="c3_frame.location='static/image/admincp/getcolor.htm?c3|c3_v';showMenu({'ctrlid':'c3'})" id="c3" ><span id="c3_menu" style="position: absolute; z-index: 301; left: 251px; top: 317px; display: none;"><iframe width="210" height="148" frameborder="0" scrolling="no" src="" name="c3_frame"></iframe></span>
</td></tr>

<tr><td s="1" class="td27" colspan="2">&#25163;&#26426;&#29256;&#39030;&#37096;&#21457;&#24067;&#25353;&#38062;&#39068;&#33394;</td></tr>
<tr onmouseover="setfaq(this, 'faqca6e')" class="noborder"><td class="vtop rowform">
<input type="text" onchange="updatecolorpreview('c4')" name="settingsnew[mobile_po_bottom_color]" value="<?php echo $settings['mobile_po_bottom_color']['value'];?>" style="float:left; width:210px;" class="txt" id="c4_v">
<input type="button" style="background: <?php echo $settings['mobile_po_bottom_color']['value'];?>" value="" class="colorwd" onclick="c4_frame.location='static/image/admincp/getcolor.htm?c4|c4_v';showMenu({'ctrlid':'c4'})" id="c4" ><span id="c4_menu" style="position: absolute; z-index: 301; left: 251px; top: 317px; display: none;"><iframe width="210" height="148" frameborder="0" scrolling="no" src="" name="c4_frame"></iframe></span>
</td></tr>
<!--手机版设置 e-->

<!--二维码设置 s-->
<tr><th class="partition" colspan="15">&#20108;&#32500;&#30721;&#35774;&#32622;</th></tr>

<tr><td s="1" class="td27" colspan="2">&#20108;&#32500;&#30721;&#20013;&#38388;&#76;&#79;&#71;&#79;</td></tr>
<tr class="noborder" ><td class="vtop rowform">
<input id="fileIM_0_qrcode" style="display:none" name="TMPlogo_qrcode" value="" type="file" class="txt uploadbtn marginbot">
<input id="fileIM_1_qrcode" style="display:" name="qrcode_logo" value="<?php echo $qrcode_logo;?>" type="text" class="txt marginbot">
<br><a id="fileIM_0_qrcodea" style="" href="javascript:;" onclick="$('fileIM_1_qrcodea').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_1_qrcode').name = 'TMPlogo_qrcode';$('fileIM_0_qrcode').name = 'qrcode_logo';$('fileIM_0_qrcode').style.display = '';$('fileIM_1_qrcode').style.display = 'none'">&#19978;&#20256;&#25991;&#20214;</a>&nbsp;<a id="fileIM_1_qrcodea" style="font-weight:bold" href="javascript:;" onclick="$('fileIM_0_qrcodea').style.fontWeight = '';this.style.fontWeight = 'bold';$('fileIM_0_qrcode').name = 'TMPlogo_qrcode';$('fileIM_1_qrcode').name = 'qrcode_logo';$('fileIM_1_qrcode').style.display = '';$('fileIM_0_qrcode').style.display = 'none'">&#36755;&#20837;&#32;&#85;&#82;&#76;</a></td>

<?php if($qrcode_logo) { ?>
<td class="vtop tips2" s="1" style="width:100px;"><label><input type="checkbox" class="checkbox" name="deleteqrcode_logo" value="yes"> &#21024;&#38500;</label><br><img src="<?php echo $qrcode_logo;?>" height="60px"><br></td>
<?php } ?>
<td>&#40664;&#35748;&#24102;&#76;&#79;&#71;&#79;&#26679;&#24335;&#65306;<br/><img src="source/plugin/aljesc/images/aljesc_qrcode_logo.jpg" height="100px"><br/>&#21482;&#26377;&#19978;&#20256;&#20102;&#22270;&#29255;&#65292;&#24102;&#76;&#79;&#71;&#79;&#30340;&#20108;&#32500;&#30721;&#25165;&#20250;&#29983;&#25104;&#65292;&#19981;&#19978;&#20256;&#35843;&#29992;&#40664;&#35748;&#30340;&#26080;&#76;&#79;&#71;&#79;&#20108;&#32500;&#30721;<br/><b style="color:red;">&#31532;&#19977;&#26041;&#25509;&#21475;&#65292;&#35831;&#33258;&#34892;&#20915;&#23450;&#26159;&#21542;&#21551;&#29992;&#65292;&#35874;&#35874;</b></td>
</tr>
<!--二维码设置 e-->
<tr><td colspan="15"><div class="fixsel"><input type="submit" value="&#25552;&#20132;" name="alipaysubmit" id="submit_alipaysubmit" class="btn"></div></td></tr>
</tbody></table>
</form>