<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); hookscriptoutput('aljesc_view');?><?php include template('common/header'); ?><link href="source/plugin/violation/css/v3.css" rel="stylesheet">
<link href="source/plugin/violation/css/v2.css" rel="stylesheet">
<style id="diy_style" type="text/css"></style>
<!--<script src="source/plugin/violation/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    var jq = jQuery.noConflict();
</script>-->
<style type="text/css">
.media-cap img {
  width: 84px;
  height:84px;
}
.media-cap {
  background: none repeat scroll 0 0 #F8F8F8;
  border: 1px solid #F2F1EC;
  display: block;
  float: left;
  height: 84px;
  margin-right: 10px;
  overflow: hidden;
  width: 84px;
}
.viewad-title {
  font-size: 32px;
  font-weight: bold;
  line-height: 50px;
  margin-bottom: 10px;
}
.viewad-title .tag{
  font-size: 20px;
}
</style>
<style type="text/css">
.mtit_con_right li {
  border: 0 none;
  cursor: pointer;
  display: block;
  float: left;
  margin-left: 5px;
  position: relative;
}
.ml_1, .ml_2, .ml_3, .ml_4, .ml_5 {
  background: none repeat scroll 0 0 #fff;
  display: block;
  line-height: 14px;
  padding: 3px 5px;
  white-space: nowrap;
}
.mtit0, .mtit1, .mtit2, .mtit3, .mtit4, .mtit5 {
  background: url("source/plugin/violation/images/main_title_bg.png") no-repeat scroll -4px -233px rgba(0, 0, 0, 0);
  display: inline-block;
  height: 12px;
  margin-right: 5px;
  overflow: hidden;
  vertical-align: middle;
  width: 12px;
}
.mtit2 {
  background-position: -4px -117px;
  height: 12px;
  width: 13px;
}
.mtit0 {
  background-position: -6px -272px;
  height: 12px;
  margin-left: 3px;
  margin-right: 0;
  width: 7px;
}
.mtit4 {
  background-position: -6px -192px;
  height: 12px;
  width: 8px;
}
</style>
<div style="width:1000px;margin: 0 auto;" id="alj_esc">
<div class="bm cl" id="pt" style="padding:0 10px;">
    <div class="z">
        <a title="<?php echo $_G['setting']['bbname'];?>" class="nvhm" href="./"><?php echo $_G['setting']['bbname'];?></a><em>&rsaquo;</em><a href="<?php if($config['isrewrite']) { ?><?php echo $config['re_index'];?><?php } else { ?>plugin.php?id=violation<?php } ?>"><?php echo $config['daohang'];?></a><em>&rsaquo;</em><?php echo $lp['title'];?></div>
    <?php if($_G['uid']) { ?><div class="z" style="float:right;padding-right:0;"><a data-type="user" data-toggle="userAuth" href="plugin.php?id=violation&amp;act=member" id="manage"><i class="icon-cog"></i>!index_1!</a></div><?php } ?>
</div>
<div class="wp cl" style="background:#fff; padding:0 10px;">
    <div class="wrapper clearfix"><!-- 定义一些公用的内容--><!-- 高亮关键字-->
        <div class="viewad"><h2 class="viewad-title"> <?php echo $lp['title'];?><?php if($lp['solve']) { ?>&nbsp;<small class="tag tag-true-green" style="background-color: #81ba15;">!Done!</small><?php } ?></h2><div class="viewad-info sep"></div>
        </div><div class="maincol" style="width:980px;">
<div class="viewad-meta">
                <div class="pull-right action">
<ul class="mtit_con_right fr">
                            <li id="collect" class="collect"><span class="ml_2" ><i class="mtit2"></i><?php if(DB::result_first('select count(*) from %t where uid=%d and lid=%d ',array('aljesc_collection',$_G['uid'],$_GET['lid']))) { ?>!Has_the_collection!<?php } else { ?><a href="plugin.php?id=violation&amp;act=collection&amp;lid=<?php echo $lp['id'];?>">!Collection!</a><?php } ?><i class="mtit0"></i></span></li>
                            <li id="report" class="report"><span class="ml_4" ><i class="mtit4"></i><a onclick="showWindow('miscreport', 'misc.php?mod=report&url='+REPORTURL);return false;" href="javascript:;">!Report!</a><i class="mtit0"></i></span></li>
                        </ul>

</div><span title="" data-toggle="tooltip" data-original-title="!view_2!<?php echo gmdate('Y-m-d H:i',$lp['addtime']+8*3600);?>"><?php echo $lp['username'];?>&nbsp&nbsp<?php echo gmdate('Y-m-d H:i',$lp['updatetime']+8*3600);?> &nbsp;</span>
                <span id="counter"><?php echo $lp['views'];?></span>!view_4!&nbsp;!view_5!<?php echo $lp['id'];?> &nbsp;<span class="frommobile"></span></div>
            <!-- ad 描述信息-->

<style type="text/css">
.normal {
  font: 500 14px/1.8 'Hiragino Sans GB',Arial,SimSun,'WenQuanYi Micro Hei',sans-serif;
}
.textwrap {
  font: 500 14px/1.8 'Hiragino Sans GB',Arial,SimSun,'WenQuanYi Micro Hei',sans-serif;
}
#metadata {
  min-height: 0;
}
</style>
<style type="text/css">
.alj_miaosu{color: #888;}
.qqkf {
border: 1px solid #82CDF2;
background-color: #fff;
padding-right: 4px;
display: inline-block;
height: 19px;
border-radius: 0px 3px 3px 0px;
}
.qqkf img {
position: relative;
top: -1px;
left: -1px;
}
.vm {
vertical-align: middle;
}
.viewad-descript a{color:#ec5524 !important;}
</style>

<div class="viewad-descript">
<div class="typo-p textwrap" id="metadata">
<span class="normal"><font class="alj_miaosu">类别：</font><?php if(!$lp['pos1']) { ?><a href="plugin.php?id=violation&amp;&amp;pid=<?php echo $lp['pos'];?>"><?php echo $pos_zw[$lp['pos']]['subject'];?></a><?php } else { ?><a href="plugin.php?id=violation&amp;&amp;pid=<?php echo $lp['pos'];?>&amp;subpid=<?php echo $lp['pos1'];?>"><?php echo $pos_zw[$lp['pos1']]['subject'];?></a><?php } ?>&nbsp; </span>
<?php if($lp['models']) { ?><span class="normal"><font class="alj_miaosu">!models!</font><?php echo $lp['models'];?></span><?php } if($lp['gearbox']) { ?><span class="normal"><font class="alj_miaosu">!gearbox!</font><?php echo $gearbox_types[$lp['gearbox']];?></span><?php } if($lp['qq']) { ?><span class="normal" style="text-decoration: line-through;"><font class="alj_miaosu">原价：</font><?php echo $lp['qq'];?>元</span><?php } ?>
<span class="normal"><font class="alj_miaosu">!post_9!</font><span class="highlight"><b><?php if($lp['zujin']) { ?><?php echo $lp['zujin'];?><?php } else { ?>!view_14!<?php } ?></b></span>元</span>





<?php if($lp['mileage']) { ?><span class="normal"><font class="alj_miaosu">!mileage!</font><?php echo $lp['mileage'];?>万公里</span><?php } if($lp['lxr']) { ?><span class="normal"><font class="alj_miaosu">!post_37!</font><?php echo $lp['lxr'];?></span><?php } if($lp['contact'] && !$lp['solve']) { ?><span class="normal"><font class="alj_miaosu">!post_18!</font><span class="highlight"><b><?php if($config['isyouke']) { if($_G['uid']) { ?><?php echo $lp['contact'];?><?php } else { ?><?php echo $tel;?><?php } } else { ?><?php echo $lp['contact'];?><?php } ?></b></span>&nbsp;<?php if(!$_G['uid']&&$config['isyouke']) { ?><a style="cursor: pointer;" onclick="<?php if(!$_G['uid']) { ?>showWindow('ljlogin', 'member.php?mod=logging&action=login&infloat=yes', 'get', 1);<?php } ?>">(!view_100!)</a><?php } if($_G['cache']['plugin']['aljyy'][$pluginid]) { include template('aljyy:aljesc_view_yuyue'); } ?></span><?php } ?>






<span class="long"><font class="alj_miaosu">!view_9!</font>
<a href="plugin.php?id=violation&amp;rid=<?php echo $lp['region'];?>"><?php echo $regions[$lp['region']]['subject'];?></a>
                    <!--<span>&nbsp;-&nbsp;</span>
                    <a href="plugin.php?id=violation&amp;rid=<?php echo $lp['region'];?>&amp;subrid=<?php echo $lp['region1'];?>"><?php echo $regions[$lp['region1']]['subject'];?></a>
                    <span>&nbsp;-&nbsp;</span>
<a href="plugin.php?id=violation&amp;rid=<?php echo $lp['region'];?>&amp;subrid=<?php echo $lp['region1'];?>&amp;subsubrid=<?php echo $lp['region2'];?>"><?php echo $regions[$lp['region2']]['subject'];?></a>-->

<?php echo $lp['region3'];?>

<!--<a target="_blank" href="http://ditu.baidu.com/?s=s%26wd%3D<?php echo $url;?>">!view_1!</a></span>

<span class="long"><?php if(file_exists('source/plugin/violation/template/com/fenxiang.htm')) { include template('violation:com/fenxiang'); } ?></span>-->
<div class="clear"></div></div>

</div>
            <div class="typo-p textwrap">
<style type="text/css">
.app-label {
  text-align: right;
}
.car_info_param {
display: inline-block;
margin: 0;
padding: 0;
width:980px;
}
ol, ul {
  list-style: outside none none;
}
.car_info_param li {
  border-bottom: 1px solid #e1e1e1;
  float: left;
}
.car_info_param li span {
  border-right: 1px solid #e1e1e1;
  display: inline-block;
  float: left;
  font-size: 12px;
  line-height: 1.2;
  padding: 6px 10px;
}
.info_param_1 {
  width: 76px;
}
.span_th {
  background: none repeat scroll 0 0 #fcfcfc;
  color: #a3a3a3;
  text-align: right;
}
.info_param_val1 {
  width: 105px;
}
.chexingpeizhi {
  border-bottom: 1px solid #ededed;
  font-size: 13px;
  height: 24px;
  margin-top: 26px;
  font: 500 14px/1.8 "Hiragino Sans GB",Arial,SimSun,"WenQuanYi Micro Hei",sans-serif;
  width: 980px;
}
.chexingpeizhi a{color: #25d;}
.normal {

    min-height: 30px;
}
.long {
    min-height: 30px;
}
</style>
<?php if($_G['cache']['plugin']['aljyy'][$pluginid]) { include template('aljyy:aljesc_view_yuyue_1'); ?>               <?php } else { ?>
<div class="chexingpeizhi" style="height:1px; margin-top:0px; width:892px;">

</div>
<ul class="car_info_param">
<?php if($lp['particular_year']) { ?>
<li>
<span class="span_th info_param_1">!particular_year!</span>
<span class="color_000 info_param_val1"><?php echo $lp['particular_year'];?></span>
</li>
<?php } if($lp['displacement']) { ?>
<li>
<span class="span_th info_param_1">!displacement!</span>
<span class="color_000 info_param_val1"><?php echo $lp['displacement'];?>L</span>
</li>
<?php } if($lp['gearbox']) { ?>
<li>
<span class="span_th info_param_1">!gearbox!</span>
<span class="color_000 info_param_val1"><?php echo $gearbox_types[$lp['gearbox']];?></span>
</li>
<?php } if($lp['fuel']) { ?>
<li>
<span class="span_th info_param_1">!fuel!</span>
<span class="color_000 info_param_val1"><?php echo $lp['fuel'];?></span>
</li>
<?php } if($lp['emission_standard']) { ?>
<li>
<span class="span_th info_param_1">!emission_standard!</span>
<span class="color_000 info_param_val1"><?php echo $lp['emission_standard'];?></span>
</li>
<?php } if($lp['vehicle_color']) { ?>
<li>
<span class="span_th info_param_1">!vehicle_color!</span>
<span class="color_000 info_param_val1"><?php echo $vehicle_color_types[$lp['vehicle_color']];?></span>
</li>
<?php } if($lp['vehicle_level']) { ?>
<li>
<span class="span_th info_param_1">!vehicle_level!</span>
<span class="color_000 info_param_val1"><?php echo $vehicle_level_types[$lp['vehicle_level']];?></span>
</li>
<?php } if($lp['use']) { ?>
<li>
<span class="span_th info_param_1">!use!</span>
<span class="color_000 info_param_val1"><?php echo $use_types[$lp['use']];?></span>
</li>
<?php } if($lp['inspection_expires']) { ?>
<li>
<span class="span_th info_param_1">!inspection_expires!</span>
<span class="color_000 info_param_val1"><?php echo $lp['inspection_expires'];?></span>
</li>
<?php } if($lp['strong_cross']) { ?>
<li>
<span class="span_th info_param_1">!strong_cross!</span>
<span class="color_000 info_param_val1"><?php echo $lp['strong_cross'];?></span>
</li>
<?php } if($lp['commercial_insurance']) { ?>
<li>
<span class="span_th info_param_1">!commercial_insurance!</span>
<span class="color_000 info_param_val1"><?php echo $lp['commercial_insurance'];?></span>
</li>
<?php } if($lp['transfer_fees']) { ?>
<li>
<span class="span_th info_param_1">!transfer_fees!</span>
<span class="color_000 info_param_val1"><?php echo $lp['transfer_fees'];?></span>
</li>
<?php } if($lp['driving_license']) { ?>
<li>
<span class="span_th info_param_1">!driving_license!</span>
<span class="color_000 info_param_val1"><?php echo $lp['driving_license'];?></span>
</li>
<?php } if($lp['registration_certificate']) { ?>
<li>
<span class="span_th info_param_1">!registration_certificate!</span>
<span class="color_000 info_param_val1"><?php echo $lp['registration_certificate'];?></span>
</li>
<?php } if($lp['invoice']) { ?>
<li>
<span class="span_th info_param_1">!invoice!</span>
<span class="color_000 info_param_val1"><?php echo $lp['invoice'];?></span>
</li>
<?php } if($lp['repair_records']) { ?>
<li>
<span class="span_th info_param_1">!repair_records!</span>
<span class="color_000 info_param_val1"><?php echo $lp['repair_records'];?></span>
</li>
<?php } if($lp['purchase_tax']) { ?>
<li>
<span class="span_th info_param_1">!purchase_tax!</span>
<span class="color_000 info_param_val1"><?php echo $lp['purchase_tax'];?></span>
</li>
<?php } if($lp['a_major_accident']) { ?>
<li>
<span class="span_th info_param_1">!a_major_accident!</span>
<span class="color_000 info_param_val1"><?php echo $lp['a_major_accident'];?></span>
</li>
<?php } if($lp['transfer']) { ?>
<li>
<span class="span_th info_param_1">!transfer!</span>
<span class="color_000 info_param_val1"><?php echo $lp['transfer'];?></span>
</li>
<?php } if($lp['mortgage']) { ?>
<li>
<span class="span_th info_param_1">!mortgage!</span>
<span class="color_000 info_param_val1"><?php echo $lp['mortgage'];?></span>
</li>
<?php } ?>

</ul>


                <div  style="width:100%; height:32px; border-bottom:1px solid #f2f1ec; margin-top:12px;">
                	<span style="width:90px; border-left:1px solid #f2f1ec; border-right:1px solid #f2f1ec; border-top:1px solid #f2f1ec; display:block; float:left; text-align:center; line-height:32px; height:33px; background:#fff; font-size:14px; color:#000">详细说明</span>
                </div>
                <p style="margin-top:5px;">
               <?php echo discuzcode($lp['content'])?>                <?php if($lp['pic1']) { ?>

                <?php if(is_array($pics)) foreach($pics as $p => $pic) { ?>                <?php if($lp[$pic]) { ?>

                    <img alt="<?php echo $lp['title'];?>" src="<?php echo $lp[$pic].'.640x480.jpg';?>" style=" display:block;margin-top:15px;max-width:980px;">


                <?php unset($pics[$p]);?>                <?php } ?>
                <?php } } ?>
   <?php if($lp['phone']) { ?><p class="app-label">!view_102!<a target="_blank" href="<?php echo $_G['siteurl'];?>plugin.php?id=violation&mobile=yes"><?php echo $lp['phone'];?>!view_103!</a>!view_104!</p><?php } ?>

               </p>
<?php } ?>
   </div>

               <span class="long" style="font-size:14px; display:block; height:40px;"><font style="color:red; ">!view_11!</font><?php echo $shengming;?></span>


<?php if(file_exists('source/plugin/violation/template/com/commen.htm')) { include template('violation:com/commen'); } ?>


            <div class="alert">
                <i class="icon-info">&nbsp;<?php echo $config['message_prompt'];?></i>
            </div>
<!--[diy=aljesc_view_02]--><div id="aljesc_view_02" class="area"></div><!--[/diy]-->
        </div>

        </div></div></div>


        <script type="text/javascript">
            function view(a) {
                jQuery(".img-trigger").removeClass('on');
                jQuery(a).addClass('on');
                jQuery(".img-pane").removeClass('active');
                jQuery(a).prev('.img-pane').addClass('active');
            }
        </script>
<!--[diy=aljesc_view_01]--><div id="aljesc_view_01" class="area"></div><!--[/diy]-->
<?php if(file_exists('source/plugin/violation/template/com/color.htm')) { include template('violation:com/color'); } ?>

<div style="display:none"><script src="http://s4.cnzz.com/stat.php?id=1256921267&web_id=1256921267" type="text/javascript" language="JavaScript"></script></div>
<style type="text/css">
.sidebar-filter{margin-top: 0px;}

.viewad-descript a {
  color: #25d;
}
#alj_esc a:hover{
  color: red;
}
</style>
<style type="text/css">
.ico-rzv-b, .ico-rzv-o {
  background: url("source/plugin/violation/images/ico-d-1.gif") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
  display: inline-block;
  height: 22px;
}
.ico-rzv-o {
  background-position: 0 -23px;
  width: 102px;
}
.ico-rzv-b {
  width: 114px;
}
.user-info {
  height: 84px;
}
</style><?php include template('common/footer'); ?>