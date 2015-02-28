<?php
namespace Admin\Controller;
use Think\Controller;
class PortalController extends CommonController{
   public function index(){
      $m=M('article');
        $count= $m->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,30);// 实例化分页类
        $show = $Page->show();// 分页显示输出
        $list = D('ContentView')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->channel=D('Article')->unlimitedForLevel();
        $this->display();
   }
    //发布文章页面
    public function add_article(){
	   $this->catid=I('id');
     $this->channel=D('Article')->unlimitedForLevel();
	   $this->display();
   }
   //编辑文章内容
    public function edArticle(){
        $id['id']=I('get.id');
        $this->ed=M('article')->where($id)->find();
        $this->channel=D('Article')->unlimitedForLevel();
        $this->display();
    }
  //专题列表
   public function topic(){
        $this->display();
   }
   public function page(){
        $this->channel=M('channel')->where('type = 1')->order('pid')->select();
        $this->display();
   }
   public function slides(){
        $this->slides=M('slides')->order('sort')->select();
        $this->display();
   }
   public function recommend(){
     $this->recommend=M('recommend')->order('sort')->select();
     $this->display();
   }
}