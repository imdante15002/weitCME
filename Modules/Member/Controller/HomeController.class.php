<?php
namespace Member\Controller;
use Think\Controller;
class HomeController extends CommonController {
    //用户个人中心
    public function index(){
    	$uid=I('get.uid');
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
    	$this->replycount=D('Member')->replyCount($uid);
    	$this->display();
    }
    //我的帖子
    public function thread(){
        $uid=I('get.uid');
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
        $this->replycount=D('Member')->replyCount($uid);
    	$this->display();
    }
    //我的回复
    public function reply(){
        $uid=I('get.uid');
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
        $this->replycount=D('Member')->replyCount($uid);
    	$this->display();
    }
    //我的收藏
    public function record(){
        $uid=I('get.uid');
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
        $this->replycount=D('Member')->replyCount($uid);
    	$this->display();
    }
    //我的关注
    public function flow(){
        $uid=I('get.uid');
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
        $this->replycount=D('Member')->replyCount($uid);
        $this->display();
    }
}