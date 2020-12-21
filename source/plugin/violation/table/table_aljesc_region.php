<?php
/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
class table_aljesc_region extends discuz_table{
	public function __construct() {

			$this->_table = 'aljesc_region';
			$this->_pk    = 'id';

			parent::__construct();
	}
	public function fetch_upid_by_id($id){
		return DB::result_first('SELECT upid FROM %t WHERE id=%d',array($this->_table,$id));
	}
	public function fetch_subid_by_id($id){
		return DB::result_first('SELECT subid FROM %t WHERE id=%d',array($this->_table,$id));
	}
	public function fetch_all_by_upid($upid){
		return DB::fetch_all('SELECT * FROM %t WHERE upid=%d ORDER BY displayorder ASC',array($this->_table,$upid),'id');
	}
	public function fetch_all_by_type($type){
		return DB::fetch_all('select * from %t where id=%d ORDER BY displayorder ASC',array($this->_table,$type));
	}
	public function fetch_all_by_upid_admin($start,$limit,$upid){
		$carray[]=$this->_table;
		if($upid){
			$carray[]=$upid;
			$conn=' where upid=%d';
		}else{
			$conn=' where upid=0';
		}
		$conn.= ' order by displayorder asc ';
		if($start&&$limit){
			$carray[]=$start;
			$carray[]=$limit;
			$conn.='limit %d,%d';
		}
		
		return DB::fetch_all('select * from %t '.$conn,$carray,'catid');
	}
	public function fetch_all_by_upid_sys($upid){
		$carray[]='common_district';
		if($upid){
			$carray[]=$upid;
			$conn=' where upid=%d';
		}else{
			$conn=' where upid=0';
		}
		
		return DB::fetch_all('select * from %t '.$conn,$carray,'id');
	}
	public function count_by_upid($upid) {
		$carray[]=$this->_table;
		if($upid){
			$carray[]=$upid;
			$conn=' where upid=%d';
		}else{
			$conn=' where upid=0';
		}
		return DB::result_first("SELECT count(*) FROM %t ".$conn,$carray,'catid');
	}
	public function fetch_first_by_name($name, $upid) {
		return DB::fetch_first("SELECT * FROM %t WHERE name = %s and upid=%d", array('common_district',$name, $upid));
	}
	public function fetch_first_by_id($id) {
		return DB::fetch_first('SELECT * FROM %t WHERE id=%d', array('common_district', $id));
	}
}




?>