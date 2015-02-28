<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends CommonController {
	/*
	 * 后台管理首页
	 */
    public function index(){
    	$thread=M('thread');
    	$article=M('article');
    	$this->count_article=$article->count();
    	$this->count_thread=$thread->count();
    	$this->count_member=M('member')->count();
    	$views_aritlce=$article->sum('views');
    	$views_thread=$thread->sum('views');
    	$this->totol_views=$views_aritlce+$views_thread;
        $this->display();
    }
	/*
	 * 站点统计信息
	 */
    public function custommenu(){
        $this->display();
    }
}