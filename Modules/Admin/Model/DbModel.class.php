<?php
namespace Admin\Model;
use Think\Model;
class DbModel{
	public $bd='./Data/backup';//备份路径

	//获取当前连接数据全部表名称
	public function tableList(){
        $db = M();
        return $db->query('SHOW TABLE STATUS');
    }
    //数据库表优化
    public function repairData(){
    	
    }
}