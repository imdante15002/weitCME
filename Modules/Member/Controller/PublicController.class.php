<?php
namespace Member\Controller;
use Think\Controller;
class PublicController extends CommonController {
    // 用户注册
    public function register(){
    	$this->display();
    }
    public function login(){
        $this->display();
    }
    // 用户登录
    public function logindo(){
        $email = I('post.email');
        $pwd = I('post.password','','sha1');
        $user=M('Member')->where(array('email'=>$email))->find();
        if(!$user||$user['password']!=$pwd){
            $this->error('账号或密码错误');
        }
        $data = array(
            'uid'=>$user['uid'],
            'lasttime'=>time(),
            'lastip'=>get_client_ip()
        );
        M('member')->save($data);       
        session('uid' , $user['uid']);
        session('lasttime' , time() , $user['lasttime']);
        session('lastip' , $user['lastip']);   
        $this->success('登录成功,欢迎回来！');
    }
    public function logout(){
        session_unset();
        session_destroy();
        $this->success('退出成功','/');
    }
}