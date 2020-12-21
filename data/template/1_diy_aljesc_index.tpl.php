<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); hookscriptoutput('aljesc_index');?><?php include template('common/header'); ?><link href="source/plugin/violation/css/v3.css" rel="stylesheet">
<link href="source/plugin/violation/css/category.css" rel="stylesheet">
<style id="diy_style" type="text/css"></style>

<?php if($_G['adminid']==1) { ?>
<div class="flxxA"><?php echo adshow("flxxa");?></div>
<?php } ?>
<!--<div style="width:1000px; height:110px; margin:6px 0;"><a href="#" target="_blank"><img src="http://t.07430743.com/ad/2017/7/qpjd.jpg " style="opacity: 1;"></a></div>-->
<!--<div style="width:970px; height:72px;  margin:6px 0;"><a href="http://www.07430743.com/plugin.php?id=aljzp&amp;act=view&amp;lid=74830" target="_blank"><img src="http://t.07430743.com/ad/2017/7/zhaop.jpg" style="opacity: 1;"></a></div>-->

<div style="height:100px; width:1000px;">
<img src="http://t.07430743.com/ad/2016/5/sy.jpg"/>
</div>

<div style="height:100px; width:1000px; margin-top:5px;">
<a><img src="http://t.07430743.com/ad/2017/1/1.jpg" height="100" width="1000" border="0"/></a>
</div>

<div class="bm cl" id="pt">
    <div class="z">
        <a title="<?php echo $_G['setting']['bbname'];?>" class="nvhm" href="./"><?php echo $_G['setting']['bbname'];?></a><em>&rsaquo;</em><a href="<?php if($config['isrewrite']) { ?><?php echo $config['re_index'];?><?php } else { ?>plugin.php?id=aljesc<?php } ?>"><?php echo $config['daohang'];?></a></div>
    <?php if($_G['uid']) { ?><div class="z" style="float:right;padding-right:0;"><a data-type="user" data-toggle="userAuth" href="plugin.php?id=violation&amp;act=member" id="manage"><i class="icon-cog"></i>!index_1!</a></div><?php } ?>
</div>
<style type="text/css">
.filter-box .items {
  overflow: hidden;
}
span.more-link, a.button, .button{
margin-top:0px;
}
h4{
margin:0px;
}
</style>
<!--<script src="source/plugin/violation/js/jquery.js" type="text/javascript"></script>
<script>
jq=jQuery.noConflict();

</script>-->
<script type="text/javascript">
function viewpos(a) {
jQuery(".pos").attr("style","height:auto;");
}
function viewareas(a) {
jQuery(".areas").attr("style","height:auto;");
}
</script>
<!--[diy=aljesc_00]--><div id="aljesc_00" class="area"></div><!--[/diy]-->
<div class="wp cl" style="margin-bottom:10px; background:#fff;">
    <div class="container">
        <div class="filter-box" id="top-filters">
            <form method="post" action="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];?>">
<div class="fieldset ">
                    <h4 class="legend">价格</h4>
                    <div class="items" >
                        <?php if(empty($_GET['pay1']) && empty($_GET['pay2'])) { ?><strong>不限</strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">不限</a><?php } if(is_array($pay_types)) foreach($pay_types as $k => $v) { $arr=explode('-',$k);?>                        <?php if($_GET['pay1']==$arr['0']&$_GET['pay2']==$arr['1']) { ?><strong><?php echo $v;?></strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $arr['0'];?>&amp;pay2=<?php echo $arr['1'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $v;?></a><?php } ?>
                        <?php } ?>
                        <?php if(file_exists('source/plugin/violation/template/com/moneyso.htm')) { ?>
                        <span class="range">
                            <label>自定义区间：</label>
                            <input type="number" class="number from-number" value="<?php echo $_GET['pay1'];?>" name="pay1" min="0">
                            <label>~</label>
                            <input type="number" class="number to-number" value="<?php echo $_GET['pay2'];?>" name="pay2" min="0">
                            <label>万元</label>
                            <input type="submit" class="button button-inline" value="筛选">
                        </span>
                        <?php } ?>
                    </div>
                </div>
 <div class="fieldset ">
                    <h4 class="legend">类别</h4>
                    <div class="pos items" style="height:22px;">
<!--<a href="javascript:;"  class="more dropdown-ignore"  onclick="viewpos(this)">&#26356;&#22810;&#187;</a>-->
                        <?php if(empty($_GET['pid'])) { ?><strong>不限</strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>">不限</a><?php } ?>
                        <?php if(is_array($pos)) foreach($pos as $r) { ?>                        <?php if($_GET['pid']==$r['id']) { ?><strong><?php echo $r['subject'];?></strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $r['id'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $r['subject'];?></a><?php } ?>
                        <?php } ?>
                    </div>
                    <?php if($_GET['pid']&&$prs) { ?>
                    <div class="subareas items">
                        <?php if(empty($_GET['subpid'])) { ?><strong>!index_4!</strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">全部</a><?php } ?>
                        <?php if(is_array($prs)) foreach($prs as $s) { ?>                        <?php if($_GET['subpid']==$s['id']) { ?><strong><?php echo $s['subject'];?></strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $s['id'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $s['subject'];?></a><?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>
                <div class="fieldset">
                    <h4 class="legend">地区</h4>
                    <div class="areas items"  style="height:22px;">
<!--<a href="javascript:;"  class="more dropdown-ignore"  onclick="viewareas(this)">&#26356;&#22810;&#187;</a>-->
                        <?php if(empty($_GET['rid'])) { ?><strong>全部</strong><?php } else { ?><a rel="" href="plugin.php?id=violation&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">全部</a><?php } ?>
                        <?php if(is_array($rs)) foreach($rs as $r) { ?>                        <?php if($_GET['rid']==$r['id']) { ?><strong><?php echo $r['subject'];?></strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $r['id'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $r['subject'];?></a><?php } ?>
                        <?php } ?>

                    </div>
                    <?php if($_GET['rid']&&$rrs) { ?>
                    <div class="subareas items">
                        <?php if(empty($_GET['subrid'])) { ?><strong>!index_4!</strong><?php } else { ?><a rel="" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">全部</a><?php } ?>
                        <?php if(is_array($rrs)) foreach($rrs as $s) { ?>                        <?php if($_GET['subrid']==$s['id']) { ?><strong><?php echo $s['subject'];?></strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $s['id'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $s['subject'];?></a><?php } ?>
                        <?php } ?>
                    </div>
                    <?php } if($_GET['subrid']&&$subrrs) { ?>
                    <div class="subareas items">
                        <?php if(empty($_GET['subsubrid'])) { ?><strong>!index_4!</strong><?php } else { ?><a rel="" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">全部/a><?php } ?>
                        <?php if(is_array($subrrs)) foreach($subrrs as $s) { ?>                        <?php if($_GET['subsubrid']==$s['id']) { ?><strong><?php echo $s['subject'];?></strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $s['id'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $s['subject'];?></a><?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>
                <div class="fieldset  compact-field">
<h4 class="legend">上牌年份</h4>
<div class="items">
<?php if(empty($_GET['p_year1']) && empty($_GET['p_year2'])) { ?><strong>不限</strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">不限</a><?php } if(is_array($particular_year_types)) foreach($particular_year_types as $k => $v) { $arr=explode('-',$k);?>                        <?php if($_GET['p_year1']==$arr['0']&$_GET['p_year2']==$arr['1']) { ?><strong><?php echo $v;?></strong><?php } else { ?><a rel="nofollow" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;p_year1=<?php echo $arr['0'];?>&amp;p_year2=<?php echo $arr['1'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>"><?php echo $v;?></a><?php } ?>
                        <?php } ?>
                        
                        <span class="range">
                            <label>自定义区间：</label>
                            <input type="number" class="number from-number" value="<?php echo $_GET['p_year1'];?>" name="p_year1" min="0">
                            <label>~</label>
                            <input type="number" class="number to-number" value="<?php echo $_GET['p_year2'];?>" name="p_year2" min="0">
                            
                            <input type="submit" class="button button-inline" value="筛选">
                        </span>
                    </div>
</div>
               <div class="fieldset  compact-field">
<h4 class="legend">供求</h4>
<div class="items">
<?php if(empty($_GET['wanted'])) { ?><strong>不限</strong><?php } else { ?><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">不限</a><?php } if($_GET['wanted'] == 1) { ?><strong>出售</strong><?php } else { ?><a rel="" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;wanted=1&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">出售</a> <?php } if($_GET['wanted'] == 2) { ?><strong>求购</strong><?php } else { ?><a rel="" href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;wanted=2&amp;view=<?php echo $_GET['view'];?>&amp;solve=<?php echo $_GET['solve'];?>">求购</a> <?php } ?>
</div>
</div>
 
            </form>

        </div>
    </div>

<style type="text/css">
.tab-listing {
  border-bottom: 2px solid <?php if(file_exists('source/plugin/violation/template/com/color.htm')) { ?><?php echo $config['y_color'];?><?php } else { ?>#e74c3c<?php } ?>;
  border-left: 0 none;
}
.tab-listing .active {
  border-color: <?php if(file_exists('source/plugin/violation/template/com/color.htm')) { ?><?php echo $config['y_color'];?><?php } else { ?>#e74c3c<?php } ?>;
}
.tab-title-lj .active {
  background: none repeat scroll 0 0 #fff;
  margin-top: 0;
  z-index: 2;
}
.tab-listing li {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: white;
  border-color: #e6e0e0 #e6e0e0 ;
  border-image: none;
  border-style: solid solid none;
  border-width: 1px 1px 0;
  height: 35px;
  margin-right: 15px;
}
.tab-listing .active a {
  background-color: <?php if(file_exists('source/plugin/violation/template/com/color.htm')) { ?><?php echo $config['y_color'];?><?php } else { ?>#e74c3c<?php } ?>;
  color: white;
}
.tab-listing a {
  font-size: 110%;
  line-height: 35px;
}
.tab-title-lj a {
  color: #000;
  display: block;
  padding: 0 16px;
  white-space: nowrap;
}

#publistbtn,#publistbtn2{
padding:5px 22px;
font-size:16px;
float:left;
}

</style>
    <div class="container">
        <div class="grid grid-16" id="main" style="width:100%; ">
            <!--改变view的功能栏-->
            
                 <?php if(file_exists('source/plugin/violation/template/com/so.htm')) { ?>
            <?php include template('violation:com/so'); ?>            <?php } ?>
            <a class=" button_lj"  href="plugin.php?id=violation&amp;act=post" id="publistbtn2"><i class="icon-post"></i>发布信息</a>

<a class=" button_lj"  href="plugin.php?id=violation&amp;act=member" id="publistbtn"><i class="icon-post"></i>信息管理</a>


<div style="height:0px;width: 980px; margin: 0 auto; float:left; margin-top:7px; margin-left:10px; overflow: hidden;">
<a href="http://bbs.07430743.com/thread-1251830-1-1.html" target="_blank"><img src="http://t.07430743.com/ad/2015/10/fp.jpg" height="40" width="980" border="0"></a>
<!--<a href="http://58.07430743.com/" target="_blank" style="display:block;margin-top:10px;"><img src="http://t.07430743.com/ad/2018/fp2.png" height="40" width="980" border="0"></a>--></div>
           <!-- <center style="
    font-size: 30px;margin-top:50px;
    color: red;
">改版公测通知</center>
  <h1 style="
    font-size: 26px;
    color: #000000;
">为确保信息真实性,新版分类信息&lt;&lt;湘小西同城&gt;&gt;将实行手机认证.<font color=blue>原系统已停止更新发布信息</font>,<font color=red>2018年5月4日</font>新系统正式上线,<font color=red>原系统关闭</font>,请将有价值的信息移入新版(<a href="http://58.07430743.com">http://58.07430743.com</a>),
      同时为了便于广大网友查看,防止同条信息反复刷屏,当天同号将实行限量发送信息,对于信息量大的用户,想信息靠前的,推出置顶,竞价置顶,及其它套餐服务.欢迎使用新版!</h1>-->
</div>

</div>
            




<div class="section_lj sep">
<?php if(file_exists("source/plugin/violation/template/com/solve.php")  && $config['is_daohang']) { ?>
<ul class="tab-title-lj clearfix tab-listing" style="z-index:1;margin-bottom:10px;">
<li class="tab-title-item <?php if(!$_GET['solve']) { ?>active<?php } ?>">
<a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>">!index_22!</a>
</li>
<li class="tab-title-item <?php if($_GET['solve']) { ?>active<?php } ?>">
<a  href="plugin.php?id=violation&amp;solve=1&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=<?php echo $_GET['view'];?>">!Done_1!</a>
</li>
</ul>
<?php } ?>
<div id="changeview"><div id="hasImage" ><label id="viewImage" style="position: relative;top:0px;">共有<font style="color:#ec5524;font-size:16px;"><?php echo $num;?></font>条数据</label></div><ul class="item"><span>浏览方式：</span><li ><a <?php if($_GET['view']=='item'||($_GET['view']!='table'&&$config['isitem'])) { ?> style="background: none repeat scroll 0 0 <?php if(file_exists('source/plugin/violation/template/com/color.htm')) { ?><?php echo $config['y_color'];?><?php } else { ?>#e74c3c<?php } ?>;border: 0 none;color: white;pointer-events: none;"<?php } ?> href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=item&amp;solve=<?php echo $_GET['solve'];?>"><i class="icon-viewItem"></i> &nbsp;图文</a></li><li class="table"><a href="plugin.php?id=violation&amp;rid=<?php echo $_GET['rid'];?>&amp;subrid=<?php echo $_GET['subrid'];?>&amp;subsubrid=<?php echo $_GET['subsubrid'];?>&amp;pid=<?php echo $_GET['pid'];?>&amp;subpid=<?php echo $_GET['subpid'];?>&amp;pay1=<?php echo $_GET['pay1'];?>&amp;pay2=<?php echo $_GET['pay2'];?>&amp;p_year1=<?php echo $_GET['p_year1'];?>&amp;p_year2=<?php echo $_GET['p_year2'];?>&amp;wanted=<?php echo $_GET['wanted'];?>&amp;view=table&amp;solve=<?php echo $_GET['solve'];?>" <?php if($_GET['view']=='table'||($_GET['view']!='item'&&!$config['isitem'])) { ?> style="background: none repeat scroll 0 0 <?php if(file_exists('source/plugin/violation/template/com/color.htm')) { ?><?php echo $config['y_color'];?><?php } else { ?>#e74c3c<?php } ?>;border: 0 none;color: white;pointer-events: none;"<?php } ?>><i class="icon-viewTitle"></i> &nbsp;列表</a></li></ul></div>
</div>
            
            <div class="section_lj" style="padding:0 10px;">
                
                <div class="section_lj" id="normal-list">
                    <ul class="sep" id="media">
<?php if($_GET['view']=='item'||($_GET['view']!='table'&&$config['isitem'])) { ?>
                        <?php if(is_array($lplist)) foreach($lplist as $lp) { ?>                        <li class="media clearfix" data-aid="310701844">
                            <a class="media-cap" target="_blank" href="<?php if($config['isrewrite']) { ?><?php echo $lp['rewrite'];?><?php } else { ?>plugin.php?id=violation&act=view&lid=<?php echo $lp['id'];?><?php } ?>">
                                <img alt="<?php echo $lp['title'];?>" src="<?php if($lp['pic1']) { echo $lp['pic1'].'.280x200.jpg';?><?php } else { if($settings['logo']['value']) { ?><?php echo $settings['logo']['value'];?><?php } else { ?><?php echo $config['mr_src'];?><?php } } ?>">
                            </a>
                            <div class="media-body">
                                <div class="media-body-title">
                                    <small class="pull-right" style="text-align: center;">
<?php if($_G['cache']['plugin']['aljyy'][$pluginid]) { include template('aljyy:list_yuyue'); } else { ?>
<span class="highlight"><b style="font-size:16px;"><?php if($lp['zujin']) { ?><?php echo $lp['zujin'];?>元<?php } else { ?>!view_14!<?php } ?></b></span>
<?php } ?>
</small>
                                    <a target="_blank" class="alj_a" href="<?php if($config['isrewrite']) { ?><?php echo $lp['rewrite'];?><?php } else { ?>plugin.php?id=violation&act=view&lid=<?php echo $lp['id'];?><?php } ?>" ><?php echo $lp['title'];?></a>
<span class="ico area"><?php $qiye_type=DB::result_first('select type from %t where uid=%d and sign=%d',array('aljesc_attestation',$lp['uid'],'1'))?><?php if($qiye_type == 2) { ?>
<i title="!License_certification!" class="picq qiye"></i>
<?php } elseif($qiye_type == 1) { ?>
<i title="!Personal_authentication!" class="picq geren"></i>
<?php } ?>
</span>
<?php if(TIMESTAMP < $lp['topetime']) { ?>&nbsp;<small class="tag tag-warn">顶</small><?php } if($lp['solve']) { ?>&nbsp;<small class="tag tag-true-green" data-original-title="" title="" style="font-size:12px;background-color: #81ba15;">!Done!</small><?php } ?>
                                </div>
<div class="typo-small"><?php echo cutstr(stripBBCode($lp['content']),90,'');?> </div>
<div class="typo-small">
<?php echo $regions[$lp['region']]['subject'];?> 
<?php if($lp['region1']) { ?>
- <?php echo $regions[$lp['region1']]['subject'];?>
<?php } if($lp['region2']) { ?>
- <?php echo $regions[$lp['region2']]['subject'];?> 
<?php } if($lp['region3']) { ?>
- <?php echo $lp['region3'];?>
<?php } ?>
</div>
                                <div class="typo-small">
                                    <?php echo dgmdate($lp['updatetime'],'u');?><?php if($lp['pos']) { ?>&nbsp;/&nbsp;<?php echo $pos_zw[$lp['pos']]['subject'];?><?php } if($lp['particular_year']) { ?>&nbsp;/&nbsp;<?php echo $lp['particular_year'];?><?php } if($lp['mileage']) { ?>&nbsp;/&nbsp;<?php echo $lp['mileage'];?>!mileage_d!<?php } if($_G['cache']['plugin']['aljyy'][$pluginid]) { ?>&nbsp;/&nbsp;<span class="highlight"><b><?php if($lp['zujin']) { ?><?php echo $lp['zujin'];?>万元<?php } else { ?>!view_14!<?php } ?></b></span><?php } ?>
                                </div>
                            </div>
                        </li>
                        <?php } } elseif($_GET['view']=='table'||($_GET['view']!='item'&&!$config['isitem'])) { if(is_array($lplist)) foreach($lplist as $lp) { ?><li class="table-view-item clearfix  item-regular" data-cpm-sign="" data-aid="232798484"><div class="clearfix"><span class="table-view-body" ><a target="_blank" href="<?php if($config['isrewrite']) { ?><?php echo $lp['rewrite'];?><?php } else { ?>plugin.php?id=violation&act=view&lid=<?php echo $lp['id'];?><?php } ?>"><?php echo $lp['title'];?></a>
<span class="ico area"><?php $qiye_type=DB::result_first('select type from %t where uid=%d and sign=%d',array('aljesc_attestation',$lp['uid'],'1'))?><?php if($qiye_type == 2) { ?>
<i title="!License_certification!" class="picq qiye"></i>
<?php } elseif($qiye_type == 1) { ?>
<i title="!Personal_authentication!" class="picq geren"></i>
<?php } ?>
</span>
<?php if(TIMESTAMP < $lp['topetime']) { ?>&nbsp;<small class="tag tag-warn">顶</small><?php } if($lp['solve']) { ?>&nbsp;
<small class="tag tag-true-green" data-original-title="" title="" style="font-size:12px;background-color: #81ba15;">!Done!</small><?php } ?></span><div class="table-view-cap"><span class="highlight" ><b><?php if($lp['zujin']) { ?><?php echo $lp['zujin'];?>万元<?php } else { ?>!view_14!<?php } ?></b></span></div><div class="table-view-block"><?php if($lp['content']) { echo cutstr(stripBBCode($lp['content']),24,'');?><?php } else { ?>&nbsp;<?php } ?></div><div class="table-view-cap"><?php $today=date('Y-m-d',$lp['updatetime']);?><?php $todays=date('Y-m-d',$_G['timestamp']);?><?php if($today==$todays) { ?>今天<?php echo date('H:i',$lp['updatetime']);?><?php } else { echo date('m-d',$lp['updatetime']);?><?php } ?></div></div></li>
<?php } } ?>
                    </ul>
                </div>

                <div class="pagenav clearfix sep">
                    <?php echo $paging;?>
                </div>
            </div>
        </div>
<style type="text/css">
.picq {
  background-image: url("source/plugin/violation/images/picq.png") !important;
  background-repeat: no-repeat;
  display: inline-block;
  height: 16px;
  margin-right: 5px;
  vertical-align: -2px;
  width: 18px;
}
.qiye {
  background-position: 0 -23px;
}
.geren {
  background-position: 0 2px;
}
</style>

    </div>
<!--[diy=aljesc_01]--><div id="aljesc_01" class="area"></div><!--[/diy]-->
</div>
<div style="display:none"><script src="http://s4.cnzz.com/stat.php?id=1256921267&web_id=1256921267" type="text/javascript" language="JavaScript"></script></div>
<?php if(file_exists('source/plugin/violation/template/com/color.htm')) { include template('violation:com/color'); } include template('common/footer'); ?>