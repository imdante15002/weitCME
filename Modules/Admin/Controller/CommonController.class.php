<?php
namespace Admin\Controller;
use Think\Controller;
class CommonController extends Controller{
    public function _initialize(){
        header("Content-type: text/html; charset=utf-8");
        if(!isset($_SESSION[C('SESSION_PREFIX')]['uid'])||!isset($_SESSION[C('SESSION_PREFIX')]['username'])){
            $this->redirect('Admin/Public/login');
        }
        $this->g=M('config')->where("id=1")->find();
        if ($_SESSION[C('SESSION_PREFIX')]['uid']==1) {
            return true;
        }
        $auth = new \Think\Auth();
        // $uid=$_SESSION[C('SESSION_PREFIX')]['uid'];
         if(!$auth->check(MODULE_NAME.'/'.CONTROLLER_NAME.'/'.ACTION_NAME, session('uid'))){
            $this->error('没有权限');
        }
    }
}