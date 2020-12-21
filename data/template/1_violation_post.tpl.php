<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); hookscriptoutput('post');?><?php include template('common/header'); ?><link href="source/plugin/violation/css/v3.css" rel="stylesheet">
<link href="source/plugin/violation/css/post.css" rel="stylesheet"> 
<script src="source/plugin/violation/static/js/seditor.js" type="text/javascript" type="text/javascript" reload="1"></script>
<script src="source/plugin/violation/js/calendar.js" type="text/javascript"></script>
<div class="bm cl" id="pt">
    <div class="z">
        <a title="<?php echo $_G['setting']['bbname'];?>" class="nvhm" href="./"><?php echo $_G['setting']['bbname'];?></a><em>&rsaquo;</em><a href="plugin.php?id=aljesc"><?php echo $config['daohang'];?></a><em>&rsaquo;</em><a href="plugin.php?id=aljesc&amp;act=member">管理中心</a><em>&rsaquo;</em>发布信息</div>
    <div class="z"></div>
</div>
<div class="wrapper">
    <ul class="flow clearfix sep-big">
        <li class="flow-item flow-item-done"><span class="done">1. 选择类目<small>&nbsp;二手车买卖> 类型</small></span></li>
        <li class="flow-item flow-item-current">2. 填写信息</li>
        <li class="flow-item flow-item-last">3. 完成发布</li>
    </ul>
    <div class="clearfix">
        <div class="publish-detail" id="publish" style="position:relative;">

<img src="http://t.07430743.com/ad/2016/5/fb.jpg" style="position:absolute; right:30px; top:60px;"/>

<?php if($config['releasepay'] && $config['releaseextcredit']) { ?>
<div style="border:1px dashed #f60;background-color:#FFC" class="notice">&#25552;&#31034;&#65306;&#21457;&#24067;&#20449;&#24687;&#38656;&#35201;&#25910;&#21462;<font color="red"><?php echo $config['releasepay'];?></font> <?php echo $_G['setting']['extcredits'][$config['releaseextcredit']]['title'];?></div>
<?php } ?>
            <div class="separate">基本信息</div>
            <iframe style="display:none" name="myiframe" id="myiframe"></iframe>
            <form class="form" method="post" id="postform"  enctype="multipart/form-data" action="plugin.php?id=violation&amp;act=<?php echo $_GET['act'];?>&amp;lid=<?php echo $lp['id'];?>" target="myiframe">
                <input type="hidden" value="<?php echo FORMHASH;?>" name="formhash">		
<div id="id_wanted" class="p-line" style="display: block;">
<label class="p-label"><span class="red required">*</span>供求：</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" value="1" <?php if($lp['wanted']=='1' || !$lp['wanted']) { ?>checked="checked"<?php } ?> class="form-radio" title="供求" order="0" name="wanted" maxlength="50">出售
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" value="2" class="form-radio" title="供求" order="0" name="wanted" maxlength="50" <?php if($lp['wanted']=='2') { ?>checked="checked"<?php } ?>>求购
</label>
</div>
</div>
                <div id="id_title" class="p-line ">
                    <label class="p-label"><span class="red required">*</span> !post_7!</label>
                    <div class="publish-detail-item ">
                        <input type="text" value="<?php echo $lp['title'];?>" data-parent=".p-line" class="input input-60" id="lpname" title="<?php echo $lp['title'];?>" order="1"  name="title" maxlength="25">
                    </div>
                </div>		
                <div id="id_fl" class="p-line ">
                    <label class="p-label"><span style="color:red;">*</span> 类别：</label>
                    <div class="publish-detail-item ">
                        <select value="" data-parent=".p-line" class="input"  order="9" data-sub="Linkage_region"  name="pos" id="pos" maxlength="100" type="text" onchange="ajaxget('plugin.php?id=violation&act=getpos&rid=' + $('pos').value, 'getpos')">
                            <option data-target="#" value=""></option>
                            <?php if(is_array($pos)) foreach($pos as $r) { ?>                            <option  value="<?php echo $r['id'];?>" <?php if($lp['pos']==$r['id']) { ?>selected<?php } ?>><?php echo $r['subject'];?></option>
                            <?php } ?>
                        </select>
                        <span id="getpos">
                            <?php if($lp['pos']&&$lp['pos1']) { ?>
                            <select required="required" name="pos1" class="sub-area input active" >
                                <option value="" id=""> </option>
                                <?php if(is_array($prs)) foreach($prs as $rr) { ?>                                <option value="<?php echo $rr['id'];?>" <?php if($rr['id']==$lp['pos1']) { ?>selected<?php } ?>><?php echo $rr['subject'];?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </span>
                    </div>
                </div>	
<div id="id_models" class="p-line" style="display: block;">
<label class="p-label"> !models!</label>
<div class="publish-detail-item ">
<input type="text" value="<?php echo $lp['models'];?>" data-parent=".p-line" class="input ui-autocomplete-input" title="!models_t!"  name="models" maxlength="100" autocomplete="off">
</div>
<span class="p-note">!models_n!</span>
</div>
<div id="id_particular_year" class="p-line" style="display: block;">
<label class="p-label"> !particular_year!</label>
<div class="publish-detail-item ">
<input type="text" onclick="showcalendar(event, this)" value="<?php echo $lp['particular_year'];?>" data-parent=".p-line" class="input input-5"  name="particular_year" maxlength="30">
</div>
</div>
<div id="id_mileage" class="p-line" style="display: block;">
<label class="p-label"> !mileage!</label>
<div class="publish-detail-item ">
<label class="form-label"><input type="text" value="<?php echo $lp['mileage'];?>" data-parent=".p-line" class="input input-7" title="!mileage_t!" order="6" pattern="^(|([0-9]+)(.[0-9]+)?)$" numeric="1" name="mileage" maxlength="7"><span class="unit">万公里</span></label>
</div>

<span class="p-note">!mileage_n!</span>
</div>
                <div id="id_jg" class="p-line ">
                    <label class="p-label"><span class="red required">&nbsp;</span> !price!</label>
                    <div class="publish-detail-item ">
                        <label class="form-label">
                            <input type="text" value="<?php echo $lp['zujin'];?>" data-parent=".p-line" class="input input-5" title="!price_t!" order="5" pattern="^(.*[0-9]+.*|)$"  filterlabels="!post_28!"  numeric="1" name="zujin" maxlength="10" >
                            <span class="unit">元&nbsp;&nbsp;<font class="p-note">!post_39!</font></span>
                        </label>
                    </div>
                </div>

<div id="id_QQ" class="p-line">
<label class="p-label"> 原价：</label>
<div class="publish-detail-item ">
<input type="text" value="<?php echo $lp['qq'];?>" data-parent=".p-line" class="input input-6" title="!post_34!" order="8" pattern="^(.*[0-9]+.*|)$" remember="true" numeric="1" name="qq" maxlength="14"> <span class="unit">元&nbsp;&nbsp;</span>
</div>

</div>
                <div id="id_content" class="p-line ">
                    <label class="p-label">描述：</label>
                    <div class="publish-detail-item publish-detail-item-top" style="width:50%">
                        <div class="tedt" style="width:100%;">
<div class="bar">
<div class="fpd">
<a href="javascript:;" title="!s19!" class="fbld" onclick="seditor_insertunit('reply', '[b]', '[/b]');doane(event);">B</a>
<a fwin="apply" href="javascript:;" title="!s20!" class="fclr" id="replyforecolor" onclick="showColorBox(this.id, 2, 'reply');doane(event);" initialized="true">Color</a>
<a fwin="apply" id="replyimg" href="javascript:;" title="!s21!" class="fmg" onclick="seditor_menu('reply', 'img');doane(event);">Image</a>
<a fwin="apply" id="replyurl" href="javascript:;" title="!s22!" class="flnk" onclick="seditor_menu('reply', 'url');doane(event);">Link</a>
</div></div>
<div class="area" style="background:#FFF;">
<textarea fwin="apply" rows="3" name="content" class="pt" id="replymessage" style="background:#FFF;"><?php echo $lp['content'];?></textarea>
</div>
</div>
                    </div>
                </div>		
                <div id="id_images" class="p-line  swfu">
                    <label class="p-label"> !post_12!</label>
                    <div class="publish-detail-item ">
<?php if($_G['cache']['plugin']['aljibu'][$pluginid]) { include template('aljibu:ibu'); } else { ?>
                        <ul class="postimg clearfix"></ul>
                        <div class="pull-left" id="swfupload">
                            <input type="file" name="pic1"><br>
                            <?php if($lp['pic1']) { ?><img src="<?php echo $lp['pic1'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic1" value="<?php echo $lp['pic1'];?>">
                            <input type="file" name="pic2"><br>
                            <?php if($lp['pic2']) { ?><img src="<?php echo $lp['pic2'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic2" value="<?php echo $lp['pic2'];?>">
                            <input type="file" name="pic3"><br> 
                            <?php if($lp['pic3']) { ?><img src="<?php echo $lp['pic3'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic3" value="<?php echo $lp['pic3'];?>">
                            <input type="file" name="pic4"><br>
                            <?php if($lp['pic4']) { ?><img src="<?php echo $lp['pic4'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic4" value="<?php echo $lp['pic4'];?>">
                            <input type="file" name="pic5"><br>   
                            <?php if($lp['pic5']) { ?><img src="<?php echo $lp['pic5'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic5" value="<?php echo $lp['pic5'];?>"> 
                            <input type="file" name="pic6"><br>
                            <?php if($lp['pic6']) { ?><img src="<?php echo $lp['pic6'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic6" value="<?php echo $lp['pic6'];?>">
                            <input type="file" name="pic7"><br>
                            <?php if($lp['pic7']) { ?><img src="<?php echo $lp['pic7'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic7" value="<?php echo $lp['pic7'];?>">
                            <input type="file" name="pic8"><br>
                            <?php if($lp['pic8']) { ?><img src="<?php echo $lp['pic8'].'.255x192.jpg';?>"><br><?php } ?>
                            <input type="hidden" name="pic8" value="<?php echo $lp['pic8'];?>">
                        </div>
                    </div>
<?php } ?>
                </div>		
           	
                <div id="id_region" class="p-line ">
                    <label class="p-label"><span class="red required">*</span> !post_13!</label>
                    <div class="publish-detail-item ">
                        <select value="" data-parent=".p-line" class="input" title="!post_14!" order="9" data-sub="Linkage_region"  othername="!post_15!" area3="showEmptyFilter=1" area2="showEmptyFilter=1" level="area2,area3" remember="1" name="region" id="region" group="!post_16!" maxlength="100" type="text" onchange="ajaxget('plugin.php?id=violation&act=getregion&rid=' + $('region').value, 'getregion')">
                            <option data-target="#" value=""> </option>
                            <?php if(is_array($rs)) foreach($rs as $r) { ?>                            <option  value="<?php echo $r['id'];?>" <?php if($lp['region']==$r['id']) { ?>selected<?php } ?>><?php echo $r['subject'];?></option>
                            <?php } ?>
                        </select>
                        <span id="getregion">
                            <?php if($lp['region']&&$lp['region1']) { ?>
                            <select required="required" name="region1" class="sub-area input active" id="subregion1" onchange="ajaxget('plugin.php?id=violation&act=getregion1&upid='+$('subregion1').value,'region1')">
                                <option value="" id=""> </option>
                                <?php if(is_array($rrs)) foreach($rrs as $rr) { ?>                                <option value="<?php echo $rr['id'];?>" <?php if($rr['id']==$lp['region1']) { ?>selected<?php } ?>><?php echo $rr['subject'];?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </span>
                        <span name="region1" id="region1">
<?php if($lp['region2']) { ?>
<select name="region2" style="width:120px;" class="sub-area input active"><?php if(is_array(C::t('#aljesc#aljesc_region')->fetch_all_by_upid($lp['region1']))) foreach(C::t('#aljesc#aljesc_region')->fetch_all_by_upid($lp['region1']) as $rid => $r) { ?><option value="<?php echo $rid;?>" <?php if($rid==$lp['region2']) { ?>selected<?php } ?>><?php echo $r['subject'];?></option>
<?php } ?>
</select>
<?php } ?>
</span>
<input type="text" value="<?php echo $lp['region3'];?>" data-parent=".p-line"  class="input" name="region3"  maxlength="100">
                    </div>

                </div>	


 <div id="id_lxr" class="p-line ">
                    <label class="p-label"><span class="red required"></span>联系人：</label>
                    <div class="publish-detail-item ">
                        <input class="input input-5" type="text" value="<?php echo $lp['lxr'];?>" data-parent=".p-line" class="input input-60" title="<?php echo $lp['lxr'];?>" order="1"  name="lxr" maxlength="25">
                    </div>
<span class="p-note">!post_38!</span>
                </div>		
                <div id="id_contact" class="p-line ">
                    <label class="p-label"><span class="red required">*</span> !post_18!</label>
                    <div class="publish-detail-item ">
                        <input type="text" value="<?php echo $lp['contact'];?>" data-parent=".p-line" class="input input-5" title="!post_24!" order="11" pattern="^\d[\d-]{3,20}\d$" id="lxtle"  hidevaluedinput="1" name="contact" maxlength="30"><small id="contact-tips"></small>
                    </div>

                    <span class="p-note">!post_19!</span>
                </div>

         <div class="hide separate button-show" id="moreinfo" style="display: block;"><a class="pull-right" href="javascript:;" onclick="view(this)"><span class="button-show"><i class="icon-plus" ></i>!post_20!</span></a>补充信息<small>点击右侧展开按钮填写更多信息
 ，获得更好推广效果！）</small></div>
<script src="source/plugin/violation/js/jquery.js" type="text/javascript"></script>
<script>
aljesc_jq=jQuery.noConflict();

</script>
<script type="text/javascript">
function view(a) {
//alert(jq(".pull-right").text()=='展开');
if(aljesc_jq(".pull-right").text()=='!post_20!'){
aljesc_jq("#moreinfo").removeClass('button-show');
aljesc_jq("#moreinfo").addClass('button-hide');
aljesc_jq(".pull-right").html('<span class="button-hide"><i class="icon-minus" ></i>&#25910;&#36215;</span>');
aljesc_jq(".meta-hidden").show();
}else{
aljesc_jq("#moreinfo").removeClass('button-hide');
aljesc_jq("#moreinfo").addClass('button-show');
aljesc_jq(".pull-right").html('<span class="button-show"><i class="icon-plus" ></i>!post_20!</span>');
aljesc_jq(".meta-hidden").hide();
}
}
</script>
<div id="id_displacement" class="p-line  meta-hidden" >
<label class="p-label"> !displacement!</label>
<div class="publish-detail-item ">
<label class="form-label"><input type="text" value="<?php echo $lp['displacement'];?>" data-parent=".p-line" class="input" title="!displacement_t!" order="14" pattern="^(|([0-9]+)(.[0-9]+)?)$" numeric="1" name="displacement" maxlength="7"><span class="unit">L</span></label>
</div>

<span class="p-note">!mileage_n!</span>

</div>
<div id="id_gearbox" class="p-line  meta-hidden" >
<label class="p-label"> !gearbox!</label>
<div class="publish-detail-item ">
<select value="" data-parent=".p-line" class="input" title="!gearbox_t!" order="15"  name="gearbox" maxlength="100" type="text">
<option value=""></option><?php if(is_array($gearbox_types)) foreach($gearbox_types as $k => $v) { ?><option value="<?php echo $k;?>" <?php if($k==$lp['gearbox']) { ?>selected<?php } ?>><?php echo $v;?></option>
<?php } ?>
</select>
</div>


</div>
<div id="id_fuel" class="p-line  meta-hidden" >
<label class="p-label"> !fuel!</label>
<div class="publish-detail-item ">
<input type="text" value="<?php echo $lp['fuel'];?>" data-parent=".p-line" class="input" title="!fuel_t!" order="16" name="fuel" maxlength="10">
</div>


</div>
<div id="id_emission_standard" class="p-line  meta-hidden" >
<label class="p-label"> !emission_standard!</label>
<div class="publish-detail-item ">
<input type="text" value="<?php echo $lp['emission_standard'];?>" data-parent=".p-line" class="input" title="!emission_standard_t!" order="17" name="emission_standard" maxlength="10">
</div>


</div>
<div id="id_vehicle_color" class="p-line  meta-hidden" >
<label class="p-label"> !vehicle_color!</label>
<div class="publish-detail-item ">
<select value="" data-parent=".p-line" class="input" title="!vehicle_color!" order="18" name="vehicle_color" maxlength="100" type="text">
<option value=""></option><?php if(is_array($vehicle_color_types)) foreach($vehicle_color_types as $k => $v) { ?><option value="<?php echo $k;?>" <?php if($k==$lp['vehicle_color']) { ?>selected<?php } ?>><?php echo $v;?></option>
<?php } ?>
</select>
</div>


</div>
<div id="id_vehicle_level" class="p-line  meta-hidden" >
<label class="p-label"> !vehicle_level!</label>
<div class="publish-detail-item ">
<select value="" data-parent=".p-line" class="input" title="!vehicle_level_t!" order="19" datatype="leixing" name="vehicle_level" maxlength="100" type="text">
<option value=""> </option><?php if(is_array($vehicle_level_types)) foreach($vehicle_level_types as $k => $v) { ?><option value="<?php echo $k;?>" <?php if($k==$lp['vehicle_level']) { ?>selected<?php } ?>><?php echo $v;?></option>
<?php } ?>
</select>
</div>


</div>
<div id="id_use" class="p-line  meta-hidden" >
<label class="p-label"> !use!</label>
<div class="publish-detail-item ">
<select value="" data-parent=".p-line" class="input" title="!use_t!" order="20" name="use" maxlength="100" type="text">
<option value=""></option><?php if(is_array($use_types)) foreach($use_types as $k => $v) { ?><option value="<?php echo $k;?>" <?php if($k==$lp['use']) { ?>selected<?php } ?>><?php echo $v;?></option>
<?php } ?>
</select>
</div>


</div>
<div id="id_inspection_expires" class="p-line  meta-hidden" >
<label class="p-label"> !inspection_expires!</label>
<div class="publish-detail-item ">
<input type="text" onclick="showcalendar(event, this)" value="<?php echo $lp['inspection_expires'];?>" data-parent=".p-line" class="input input-5"  name="inspection_expires" maxlength="30">
</div>


</div>
<div id="id_strong_cross" class="p-line  meta-hidden" >
<label class="p-label"> !strong_cross!</label>
<div class="publish-detail-item ">
<input type="text" onclick="showcalendar(event, this)" value="<?php echo $lp['strong_cross'];?>" data-parent=".p-line" class="input input-5"  name="strong_cross" maxlength="30">
</div>


</div>
<div id="id_commercial_insurance" class="p-line  meta-hidden" >
<label class="p-label"> !commercial_insurance!</label>
<div class="publish-detail-item ">
<input type="text" onclick="showcalendar(event, this)" value="<?php echo $lp['commercial_insurance'];?>" data-parent=".p-line" class="input input-5"  name="commercial_insurance" maxlength="30">
</div>

</div>
<div id="id_transfer_fees" class="p-line  meta-hidden" >
<label class="p-label"> !transfer_fees!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['transfer_fees'] == '包含') { ?>checked="checked"<?php } ?> value="包含" class="form-radio" title="过户费" order="24" name="transfer_fees" maxlength="100">'包含'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['transfer_fees'] == '不包含') { ?>checked="checked"<?php } ?> value="不包含" class="form-radio" title="过户费" order="24" name="transfer_fees" maxlength="100">'不包含'
</label>
</div>

</div>
<div id="id_driving_license" class="p-line  meta-hidden" >
<label class="p-label"> !driving_license!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['driving_license'] == '齐全') { ?>checked="checked"<?php } ?> value="齐全" class="form-radio" title="行驶证" order="25" name="driving_license" maxlength="100">'齐全'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['driving_license'] == '丢失') { ?>checked="checked"<?php } ?> value="丢失" class="form-radio" title="行驶证" order="25" name="driving_license" maxlength="100">丢失
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['driving_license'] == '补办中') { ?>checked="checked"<?php } ?> value="补办中" class="form-radio" title="行驶证" order="25" name="driving_license" maxlength="100">'补办中'
</label>
</div>

</div>
<div id="id_registration_certificate" class="p-line  meta-hidden" >
<label class="p-label"> !registration_certificate!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['registration_certificate'] == '齐全') { ?>checked="checked"<?php } ?> value="齐全" class="form-radio" title="登记证" order="26" name="registration_certificate" maxlength="100">'齐全'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['registration_certificate'] == '丢失') { ?>checked="checked"<?php } ?> value="丢失" class="form-radio" title="登记证" order="26" name="registration_certificate" maxlength="100">丢失
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['registration_certificate'] == '补办中') { ?>checked="checked"<?php } ?> value="补办中" class="form-radio" title="登记证" order="26" name="registration_certificate" maxlength="100">'补办中'
</label>
</div>


</div>
<div id="id_invoice" class="p-line  meta-hidden" >
<label class="p-label"> !invoice!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['invoice'] == '齐全') { ?>checked="checked"<?php } ?> value="齐全" class="form-radio" title="!invoice_t!" order="27" name="invoice" maxlength="100">'齐全'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['invoice'] == 丢失) { ?>checked="checked"<?php } ?> value="丢失" class="form-radio" title="!invoice_t!" order="27" name="invoice" maxlength="100">丢失
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['invoice'] == '补办中') { ?>checked="checked"<?php } ?> value="补办中" class="form-radio" title="!invoice_t!" order="27" name="invoice" maxlength="100">'补办中'
</label>
</div>


</div>
<div id="id_repair_records" class="p-line  meta-hidden" >
<label class="p-label"> !repair_records!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['repair_records'] == '齐全') { ?>checked="checked"<?php } ?> value="齐全" class="form-radio" title="!repair_records_t!" order="28" name="repair_records" maxlength="100">'齐全'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['repair_records'] == 丢失) { ?>checked="checked"<?php } ?> value="丢失" class="form-radio" title="!repair_records_t!" order="28" name="repair_records" maxlength="100">丢失
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['repair_records'] == '补办中') { ?>checked="checked"<?php } ?> value="补办中" class="form-radio" title="!repair_records_t!" order="28" name="repair_records" maxlength="100">'补办中'
</label>
</div>


</div>
<div id="id_purchase_tax" class="p-line  meta-hidden" >
<label class="p-label"> !purchase_tax!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['purchase_tax'] == '齐全') { ?>checked="checked"<?php } ?> value="齐全" class="form-radio" title="!purchase_tax_t!" order="29" name="purchase_tax" maxlength="100">'齐全'
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['purchase_tax'] == 丢失) { ?>checked="checked"<?php } ?> value="丢失" class="form-radio" title="!purchase_tax_t!" order="29" name="purchase_tax" maxlength="100">丢失
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['purchase_tax'] == '补办中') { ?>checked="checked"<?php } ?> value="补办中" class="form-radio" title="!purchase_tax_t!" order="29" name="purchase_tax" maxlength="100">'补办中'
</label>
</div>

</div>
<div id="id_a_major_accident" class="p-line  meta-hidden" >
<label class="p-label"> !a_major_accident!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['a_major_accident'] == '有') { ?>checked="checked"<?php } ?> value="有" class="form-radio" title="!a_major_accident_t!" order="30" name="a_major_accident" maxlength="100">有
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['a_major_accident'] == '无') { ?>checked="checked"<?php } ?> value="无" class="form-radio" title="!a_major_accident_t!" order="30" name="a_major_accident" maxlength="100">无
</label>
</div>


</div>
<div id="id_transfer" class="p-line  meta-hidden" >
<label class="p-label"> !transfer!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['transfer'] == '能') { ?>checked="checked"<?php } ?> value="能" class="form-radio" title="!transfer_t!" order="31" name="transfer" maxlength="100">能
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['transfer'] == '不能') { ?>checked="checked"<?php } ?> value="不能" class="form-radio" title="!transfer_t!" order="31" name="transfer" maxlength="100">不能
</label>
</div>

</div>
<div id="id_mortgage" class="p-line  meta-hidden" >
<label class="p-label"> !mortgage!</label>
<div class="publish-detail-item publish-detail-item-top">
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['mortgage'] == '能') { ?>checked="checked"<?php } ?> value="能" class="form-radio" title="!mortgage_t!" order="32" name="mortgage" maxlength="100">能
</label>
<label class="form-label">
<input type="radio" data-parent=".p-line" <?php if($lp['mortgage'] == '不能') { ?>checked="checked"<?php } ?> value="不能" class="form-radio" title="!mortgage_t!" order="32" name="mortgage" maxlength="100">不能
</label>
</div>

</div>
                <div id="ajaxwaitid"></div>
                <p class="p-submit">
                    <input type="submit"  class="form-submit button_lj button-green" id="fabu-form-submit" value="免费发布">
                </p>
            </form>
        </div>
    </div>

<div id="jzz" style="position:absolute;display:none;width:100%;height: 100%;top:0px;background:#000;opacity:0.4;"><img src="http://t.07430743.com/ad/2016/3/jzz.gif" style="position: relative;top: 1200px;left: 50%;"/></div>

<script>
jQuery("#fabu-form-submit").bind("click",function(){
var a=jQuery("#lpname").val();
var b=jQuery("#lxtle").val();
var c=jQuery('#region option:selected').val();
var d=jQuery('#pos option:selected').val();
if(a!=""&&b!=""&&c!=""&&d!=""){
jQuery("#jzz").show();
}
})
</script>

</div>
<div style="display:none"><script src="http://s4.cnzz.com/stat.php?id=1256921267&web_id=1256921267" type="text/javascript" language="JavaScript"></script></div>
<?php if($_G['cache']['plugin']['aljibu'][$pluginid]) { include template('aljibu:ibu_js'); } if(file_exists('source/plugin/violation/template/com/color.htm')) { include template('violation:com/color'); } include template('common/footer'); ?>