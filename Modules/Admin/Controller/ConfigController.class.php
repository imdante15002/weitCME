<?php
namespace Admin\Controller;
use Think\Controller;
class ConfigController extends CommonController{
    public function index(){
        $this->display();
    }
    //站点导航控制
    public function navs(){
        import('Common.Common.Category');
        $merge = new \Category();
        $class=M('navigation')->order('sort')->select();
        $this->navigation=$merge::unlimitedForLevel($class,'|--');
        $this->display();
    }
    //添加导航addNavgatio
    public function addNavgation(){
        $this->display();
    }
    //编辑导航信息
    public function edNavigation(){
        $id['id']=I('get.id');
        $this->ed=M('navigation')->where($id)->find();
        $this->display();
    }
    //更新站点信息
    public function upsite(){//更新站点设置
        $site=I('post.');
        if(M('config')->save($site)){
            $this->success('保存成功！');
        }else{
            $this->error('保存失败了！');
        }
    }
    //关键字过滤
    public function censor(){
        $this->display();
    }

    //标签管理
    public function tags(){
        $this->display();
    }

    //性能优化设置
    public function cache(){
        $this->display();
    }
    public function app_key(){
        $this->conf=M('extend_config')->find();
        $this->display();
    }
    public function up_appkey(){
        $data=I('post.');
        if (M('extend_config')->save($data)) {
            $this->success('保存成功！');
        }else{
            $this->error('后台君也不不知道哪里错了！');
        }
    }
    //积分设置
    public function extend(){
        $this       ->display();
    }
    //上传设置
    public function upload(){
        $this->display();
    }
    //图片水印设置
    public function water(){
        $this->display();
    }
    //手机版设置
    public function mobile(){
        $this->display();
    }
}