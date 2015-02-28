<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function index(){
        /**
         * 读取幻灯片 缓存时间设置为10分钟
         * @var [slides] 幻灯片读取存储数组
         */
    	if (!$slides=S('slides')) {
    		$slides=M('slides')->field('title,url,pic')->order('sort')->select();
    		S('slides',$slides,360);
    	}
    	$this->assign('slides',$slides);
    	$this->display();
    }
}