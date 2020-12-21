<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<!--<script src="source/plugin/aljesc/js/jquery.js" type="text/javascript"></script>-->
<script>
jQuery.noConflict();
function bbb(b){
var c='#div_'+b;
if(jQuery(c).css('display')=='none'){
jQuery(c).show();
}else{
jQuery(c).hide();	
}	
}
</script>
<style>
.comment{padding-left:40px;}
.comment-body{font-size:14px;}
.comment-reply{font-size:14px;}
</style>
<iframe name="formsubmit" style="display: none;" ></iframe> 
<div id="comments" class="cap">留言</div>

<?php if($_G['uid']==$lp['uid']) { ?>
<div class="add-comment shrink" id="add-comment"><div class="alert"><i class="icon-info"></i>&nbsp;不能给自己发布的信息留言。</div></div>
<?php } else { ?>
<div id="add-comment" class="add-comment">
<form type="2" method="post" action="plugin.php?id=violation&amp;act=ask" enctype="multipart/form-data" target="formsubmit">
<input type="hidden" name="formhash" value="<?php echo FORMHASH;?>">
<input type="hidden" value="<?php echo $_GET['lid'];?>" name="lid" id="lid">
<textarea required="" maxlength="200" name="message" placeholder="" data-template="" class="comment-textarea"></textarea>
<div class="action">
<input type="submit" class="button_lj" value="留言">
</div>
</form>

</div>
<?php } ?>
<div id="comments">
<ul class="comments"><?php if(is_array($commentlist)) foreach($commentlist as $comment) { ?><li class="comment comment-warp">
<a class="comment-cap" target="_blank" href="home.php?mod=space&amp;uid=<?php echo $comment['uid'];?>">

<img src="/uc_server/avatar.php?uid=<?php echo $comment['uid'];?>&amp;size=small">
</a>
<div class="comment-body">
<div class="comment-body-title">
<a target="_blank" href="home.php?mod=space&amp;uid=<?php echo $comment['uid'];?>"><?php echo $comment['username'];?></a>
<small class="pull-right"><?php echo gmdate('Y-m-d H:i:s',$comment['dateline']+8*3600);?></small>
</div>
<div><?php echo discuzcode($comment['content'])?></div>
</div>
<?php if($_G['uid']==$lp['uid']) { ?>
<div class="typo-small">
<a class="comment-action-reply" href="javascript:;" onclick="bbb(<?php echo $comment['id'];?>);">!commen_3!</a>&nbsp;<a class="comment-action-delete" href="plugin.php?id=aljesc&amp;act=commentdel&amp;formhash=<?php echo FORMHASH;?>&amp;cid=<?php echo $comment['id'];?>&amp;lid=<?php echo $comment['lid'];?>">!commen_4!</a>
</div>
<?php } ?>
<div class="comment-form hide" style="display: none;" id="div_<?php echo $comment['id'];?>">
<form method="post" action="plugin.php?id=aljesc&amp;act=reply" enctype="multipart/form-data" target="formsubmit">
<textarea maxlength="200" name="message"></textarea>
<input type="hidden" value="<?php echo $comment['lid'];?>" name="lid" id="lid">
<input type="hidden" size="5" value="<?php echo $comment['id'];?>" name="upid" id="upid">
<input type="hidden" name="formhash" value="<?php echo FORMHASH;?>">
<input type="submit" class="button_lj" value="!commen_3!">
</form>
</div><?php if(is_array(C::t('#aljesc#aljesc_comment')->fetch_all_by_upid($comment['id'],$comment['lid']))) foreach(C::t('#aljesc#aljesc_comment')->fetch_all_by_upid($comment['id'],$comment['lid']) as $reply) { ?><div class="comment comment-reply">
<a class="comment-cap" target="_blank" href="home.php?mod=space&amp;uid=<?php echo $reply['uid'];?>">
<img src="/uc_server/avatar.php?uid=<?php echo $reply['uid'];?>&amp;size=small"/></a>
<a target="_blank" href="home.php?mod=space&amp;uid=<?php echo $reply['uid'];?>"><?php echo $reply['username'];?></a>
<div class="comment-body">
<div><?php echo discuzcode($reply['content'])?></div>
</div>
<?php if($_G['uid']==$lp['uid']) { ?>
<div class="typo-small">
<a class="comment-action-delete" href="plugin.php?id=aljesc&amp;act=commentdel&amp;formhash=<?php echo FORMHASH;?>&amp;cid=<?php echo $reply['id'];?>&amp;lid=<?php echo $reply['lid'];?>">!commen_4!</a>
</div>
<?php } ?>
</div>
<?php } ?>

</li>
<?php } ?>
</ul>
</div>
