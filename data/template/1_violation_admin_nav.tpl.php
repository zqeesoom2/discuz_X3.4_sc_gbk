<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<div class="itemtitle">
<h3>
<ul class="tab1">
<li <?php if(!$_GET['state']) { ?>class="current"<?php } ?>><a href="admin.php?action=plugins&amp;operation=config&amp;identifier=<?php echo $pluginid;?>&amp;pmod=data"><span>Œ¥…Û</span></a></li>
<li <?php if($_GET['state']=='audited') { ?>class="current"<?php } ?>><a href="admin.php?action=plugins&amp;operation=config&amp;identifier=<?php echo $pluginid;?>&amp;pmod=data&amp;state=audited"><span>“—…Û</a></li>
</ul>
</h3>


</div>
