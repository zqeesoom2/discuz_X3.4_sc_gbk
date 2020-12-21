<?php
/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
class table_aljesc_reflashlog extends discuz_table{
	public function __construct() {

			$this->_table = 'aljesc_reflashlog';
			$this->_pk    = 'id';

			parent::__construct();
	}
       

}




?>