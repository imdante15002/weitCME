<?php
namespace Home\Controller;
use Think\Controller;
class ForumController extends CommonController {
    public function index(){
    	$Thread     =D('ThreadView');
    	//获取访问url参数
		$getUrl     =I('get.url');

		//通过传值获取当前版块信息
		$nav 		=D('Thread')->navSeo($getUrl);
		$this 		->assign('nav',$nav);

		//获取当前访问版块帖子列表
		$count= M('thread')->where(array('fid'=>$nav['id']))->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,35);// 实例化分页类
        $show = $Page->show();// 分页显示输出
        $list = D('ThreadView')->where(array('fid'=>$nav['id']))->order('tid desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $reply=M('thread_reply');
        foreach ($list as $key => $value) {
            $list[$key]['reply']=$reply->where(array('tid'=>$value['tid']))->count();
        }
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
    	$this 		->display();
    }
}