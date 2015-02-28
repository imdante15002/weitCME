<?php
namespace Admin\Controller;
use Think\Controller;
class ContentController extends CommonController{
    /**
     * 栏目首页 栏目管理首页
     * @return [type] [description]
     */
    public function index(){
        $D=D('ThreadView');
        $exa['exa']=array('eq',0);
        $this->list=$D->where($exa)->select();
        $this->display();
    }
   public function censor(){
        $this->display();
   }
}