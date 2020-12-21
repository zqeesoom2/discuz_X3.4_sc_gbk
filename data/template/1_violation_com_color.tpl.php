<?php if(!defined('IN_DISCUZ')) exit('Access Denied'); ?>
<style type="text/css">
.filter-box {
  border-top: 2px solid <?php echo $config['y_color'];?>;
}
.filter-box .items strong {
  background-color: <?php echo $config['y_color'];?>;
}
.search {
  border-color: <?php echo $config['y_color'];?>;
}
.search .icon-search {
  background: none repeat scroll 0 0 <?php echo $config['y_color'];?>;
}
/*.button_lj {
  background: none repeat scroll 0 0 <?php echo $config['y_color'];?>;
  border: 1px solid <?php echo $config['y_color'];?>;
}*/
.lj_wanted{color:<?php echo $config['y_color'];?>};
.required, .highlight {
  color: #0000ff;
}
.media-box .media-cap {
  background: none repeat scroll 0 0 <?php echo $config['y_color'];?>;
}
.tag-true-green {
  background-color: <?php echo $config['y_color'];?>;
  color: #fff !important;
}
.flow-item-current, .flow-item-done {
  border-bottom: 2px solid <?php echo $config['y_color'];?>;
  color: #ff5f00;
}
<?php if($_GET['act']=='post') { ?>
.button, .pagenav .pagenav-cell-next {
  background: none repeat scroll 0 0 <?php echo $config['y_color'];?>;
  border: 1px solid <?php echo $config['y_color'];?>;
}
<?php } ?>
</style>