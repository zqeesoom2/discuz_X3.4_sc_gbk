<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<div class="sidebar-filter sep" style="width:699px; height:40px; margin-left:15px; float:left;">
    <div class="search search-short" style="height:40px;">
        <form action="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];?>" method="post">
            <input type="text" style="height:40px;font-size:14px;" value="<?php echo $_GET['search'];?>" class="search-query input"  placeholder="����<?php echo $config['daohang'];?>" name="search">
            <i class="icon-search" style="width:40px; height:40px; line-height:40px;"></i><input type="submit" class="search-trigger" title="����" value="����" style="width: 40px;">
        </form>
    </div>
</div>