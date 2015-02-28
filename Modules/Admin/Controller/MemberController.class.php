<?php
namespace Admin\Controller;
use Think\Controller;
class MemberController extends CommonController{
	public function index(){
		$username=I('get.username');
		$uid=I('get.uid');
		$email=I('get.email');
		$group_id=I('get.group_id');
		if ($username) {
			$where['username']=$username;
		}
		if ($uid) {
			$where['uid']=$uid;
		}
		if ($email) {
			$where['email']=$email;
		}
		if ($group_id) {
			$where['group_id']=$group_id;
		}
		$member=M('Member');
		$count=$member->count();
		$Page = new \Think\Page($count,30);// 实例化分页类
        $show = $Page->show();// 分页显示输出
        $list =D('MemberView')->where($where)->order('uid desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->group=D('member')->group();
		$this->display();
	}
	public function searchMember(){
		$this->display();
	}
	//编辑用户信息
	public function edUser(){
		$uid['uid']=I('get.uid');
		$this->ued=M('member')->where($uid)->find();
		$member=D('member');//引用用户后模型
		$this->admin=$member->group();//输出管理组
		$this->display();
	}
	//添加新用户
	public function addUser(){
		$member=D('member');//引用用户后模型
		$this->admin=$member->group();//输出管理组
		$this->display();
	}
	//发送用户通知
	public function msg(){
		$this->display();
	}
	//禁止用户
	public function userBan(){
		$this->display();
	}
	//积分奖惩
	public function reward(){
		$this->display();
	}
	//新用户审核
	public function members(){
		$this->display();
	}
	//用户组
	public function usergroup(){
		$this->group=D('Member')->group();//输出管理组
		$this->display();
	}
	public function verify(){
		$this->display();
	}
}