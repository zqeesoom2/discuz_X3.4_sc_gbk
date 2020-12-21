<?php
/*
 * 作者：亮剑
 * 联系QQ:578933760
 *
 */
if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
class table_aljesc_position extends discuz_table{
	public function __construct() {

			$this->_table = 'aljesc_position';
			$this->_pk    = 'id';

			parent::__construct();
	}
	public function fetch_upid_by_id($id){
		return DB::result_first('SELECT upid FROM %t WHERE id=%d',array($this->_table,$id));
	}
	public function fetch_subid_by_id($id){
		return DB::result_first('SELECT subid FROM %t WHERE id=%d',array($this->_table,$id));
	}
	//public function fetch_all_by_upid( ...$parameter,$upid,$start,$perpage,$search){
    public function fetch_all_by_upid( ...$parameter){
		/*if($perpage){
			if($search){
				return DB::fetch_all('SELECT * FROM %t WHERE upid=%d and subject like %s ORDER BY displayorder ASC limit %d,%d',array($this->_table,$upid,$search,$start,$perpage),'id');
			}else{
				return DB::fetch_all('SELECT * FROM %t WHERE upid=%d ORDER BY displayorder ASC limit %d,%d',array($this->_table,$upid,$start,$perpage),'id');
			}*/
        if($parameter[2]){
            if($parameter[3]){
                return DB::fetch_all('SELECT * FROM %t WHERE upid=%d and subject like %s ORDER BY displayorder ASC limit %d,%d',array($this->_table,$parameter[0],$parameter[3],$parameter[1],$parameter[2]),'id');
            }else{
                return DB::fetch_all('SELECT * FROM %t WHERE upid=%d ORDER BY displayorder ASC limit %d,%d',array($this->_table,$parameter[0],$parameter[1],$parameter[2]),'id');
            }
		}else{
            return DB::fetch_all('SELECT * FROM %t WHERE upid=%d ORDER BY displayorder ASC',array($this->_table,$parameter[0]),'id');
			//return DB::fetch_all('SELECT * FROM %t WHERE upid=%d ORDER BY displayorder ASC',array($this->_table,$upid),'id');
		}
	}
	public function count_by_upid($upid,$search){
		if($search){
			return DB::result_first('select count(*) from %t where upid=%d and subject like %s',array($this->_table,$upid,$search));
		}else{
			return DB::result_first('select count(*) from %t where upid=%d ',array($this->_table,$upid));
		}
	}
	public function fetch_all_by_type($type){
		return DB::fetch_all('select * from %t where id=%d ORDER BY displayorder ASC',array($this->_table,$type));
	}

}




?>