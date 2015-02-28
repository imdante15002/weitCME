<?php
namespace Member\Controller;
use Think\Controller;
class PostController extends CommonController {
    public function index(){
    	$uid=$_SESSION[C('SESSION_PREFIX')]['uid'];
        if (!$uid) {
            $this->error('亲！您要登录了才能发帖哦！','login');
        }
        $this->user=D('Member')->userInfo($uid);
        $this->whos=D('Member')->whos($uid);
        $this->score=D('Member')->userScore($uid);
        $this->group=D('Member')->userGroup($uid);
        $this->threadcount=D('Member')->threadCount($uid);
    	$this->replycount=D('Member')->replyCount($uid);
        //查询版块
        $nid['id']  = array('not in','5,6,11');
        $this->forum=M('navigation')->field('id,name')->where($nid)->order('sort')->select();
    	$this->display();
    }
    //内容发布
    public function postdo(){
    	if (!I('post.fid')) {
            $this->error('版块没有选择哦！');
        }else if (!I('post.title')){
            $this->error('标题不能空！');
        }else if(!I('post.body')){
            $this->error('您没有添加任何内容！');
        }
        $content=I('post.body');
        $info=getPic($content);
        if(!$info==null){
            $thumb=$info.'thumb240x160.png';
            $image = new \Think\Image();//实例化图像处理，缩略图功能
            $image->open($info);// 生成一个居中裁剪为240*160的缩略图
            $unlink=$image->thumb(240, 160,\Think\Image::IMAGE_THUMB_CENTER)->save($thumb);
        }else{
            $thumb='';
        }
        $arr=I('post.');
        $arr['litpic']=$thumb;
        $arr['dateline']=time();
        $arr['pubip']=get_client_ip();
        $arr['uid']=$_SESSION[C('SESSION_PREFIX')]['uid'];
        if(I('keywords')==null){
            $arr['keywords']=I('post.title');
        }
        if(I('description')==null){
            $arr['description']=I('post.title');
        }
        $tid=M('thread')->data($arr)->add();
        if($tid){
            $this->success('文章发布成功',U('Post/state'));
        }else{
            $this->error('文章发布失败!');
        }
    }
    public function state(){
        $this->nth=M('thread')->field('tid,title')->order('tid desc')->find();
        $this->display();
    }
}