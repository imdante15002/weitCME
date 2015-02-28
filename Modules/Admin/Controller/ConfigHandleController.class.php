<?php
namespace Admin\Controller;
use Think\Controller;
class ConfigHandleController extends Controller{
	public function buildController(){
		$module='Home';
		$controller='Product';
		$build=new \Think\Build();
		$build::buildNewController($module,$controller);
	}
    //更新导航栏信息
    public function upNavgation(){
    	$m=M('navigation');
        foreach ($_POST as $id=>$sort){
            $m->where(array('id'=>$id))->setField('sort',$sort);
        }
        $this->redirect('Config/navs');
    }
    //添加导航
    public function addNavgation(){
        $data=I('post.');
        if (M('navigation')->add($data)) {
            $this->success('添加成功',U('Config/navs'));
        }else{
            $this->error('添加失败！');
        }
    }
    //删除导航
    public function delNavigation(){
        $id['id']=I('get.id');
        if (M('navigation')->where($id)->delete()) {
          $this->success('删除成功',U('Config/navs'));
        }else{
            $this->error('删除失败！');
        }
    }
    //编辑导航信息
    public function edNavigation(){
        $data=I('post.');
         if (M('navigation')->save($data)) {
            $this->success('修改成功',U('Config/navs'));
        }else{
            $this->error('修改失败！');
        }
    }
}