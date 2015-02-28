<?php
namespace Admin\Controller;
use Think\Controller;
class ToolsController extends CommonController{
	public function index(){
		$this->display();
	}
	public function models(){
		import('Common.Common.Category');
        $merge      = new \Category();
        $class      =M('auth_rule')->order('id asc')->select();
        $this       ->list=$merge::unlimitedForLevel($class,'|-- ');
        $this       ->pid=M('auth_rule')->where('pid=0')->field('id,title')->select();
        $this->display();
	}
	public function database(){
		$D=D('Database');
        $list =$D->loadTableList();
        $this->assign('list',$list);
		$this->display();
	}
}