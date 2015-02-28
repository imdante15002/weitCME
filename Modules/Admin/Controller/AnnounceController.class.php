<?php
namespace Admin\Controller;
use Think\Controller;
class AnnounceController extends CommonController{
    public function index(){
        $this->display();
    }
    public function advertisement(){
        $this->display();
    }
    public function flink(){
        $this->list=M('flink')->order('sort')->select();
        $this->display();
    }
   public function edFlink(){
        $id->id=I('get.id');
        $this->link=M('flink')->where($id)->find();
        $this->display();
   }
    public function recommend(){
        $this->display();
    }
    public function site_notice(){
        $count= M('announce')->count();
        $Page = new \Think\Page($count,20);// 实例化分页类
        $show = $Page->show();// 分页显示输出
        $list = M('announce')->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);
        $this->assign('page',$show);
        $this->display();
    }
    public function add_notice(){
        $this->display();
    }
    public function add_notice_exe(){
        $data=I('post.');
        $data['dateline']=time();
        $data['uid']=$_SESSION['uid'];
        if (M('announce')->add($data)) {
            $this->success('发布成功',U('Announce/site_notice'));
        } else {
            $this->error('发布失败了！请联系技术人员');
        }   
    }
    public function slides(){
        $this->slides=M('slides')->order('sort')->select();
        $this->display();
    }
    public function edSlide(){
        $id->id=I('id');
        $this->ed=M('slides')->where($id)->find();
        $this->display();
    }
    public function tag(){
        $this->display();
    }
}