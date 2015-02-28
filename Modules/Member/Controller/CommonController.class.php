<?php
namespace Member\Controller;
use Think\Controller;
class CommonController extends Controller {
    public function _initialize(){
        header("Content-type: text/html; charset=utf-8");
        //全局定义输出utf-8编码，防止乱码
        
        //全局站点信息查询显示 并设置缓存为一天
        if (!$config=S('config')) {
            $config=M('config')->where('id=1')->find();
            S('config',$config,3600*24);
        }
        $this->assign('g',$config);
        /**
         * 查询栏目、并且设置缓存，设置缓存时间为1天
         */
        //if (!$channel=S('channel')) {
        $channel=M('navigation')->where('nav=1')->order('sort')->select();
            ///S('channel',$channel,3600*24);
        //}
        $this->assign('channel',$channel);//输出栏目显示
        //判断用户是否登录
        $guid=$_SESSION[C('SESSION_PREFIX')]['uid'];
        //输出guid 用来判断用户是否登录 用户块显示内容
        $this->guid=$guid;
        //根据session uid值查询当前登录用户信息
        $this->u=M('member')->where(array('uid'=>$guid))->find();
    }
}