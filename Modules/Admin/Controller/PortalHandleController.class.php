<?php
namespace Admin\Controller;
use Think\Controller;
class PortalHandleController extends CommonController{
	public function addArticle(){
		if (!I('post.cid')) {
            $this->error('栏目没有选择哦！');
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
        $arr['lipic']=$thumb;
        $arr['dateline']=time();
        $arr['pubip']=get_client_ip();
        $arr['uid']=$_SESSION['uid'];
        if(I('keywords')==null){
            $arr['keywords']=I('post.title');
        }
        if(I('description')==null){
            $arr['description']=I('post.title');
        }
        if(M('article')->add($arr)){
            $this->success('文章发布成功',U('Portal/index'));
        }else{
            $this->error('文章发布失败!');
        }
	}
    //文章编辑保存
    public function edArticle(){
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
        $arr['lipic']=$thumb;
        $arr['dateline']=time();
        $arr['pubip']=get_client_ip();
        $arr['uid']=$_SESSION['uid'];
        if(I('keywords')==null){
            $arr['keywords']=I('post.title');
        }
        if(I('description')==null){
            $arr['description']=I('post.title');
        }
        if(M('article')->save($arr)){
            $this->success('保存成功',U('Portal/index'));
        }else{
            $this->error('保存失败!');
        }
    }
    //删除文章
    public function delArticle(){
        $id['id']=I('id');
        if (M('article')->where($id)->delete()) {
            $this->success('删除成功',U('Portal/index'));
        } else {
            $this->success('删除失败！');
        }    
    }
    /**
     * 添加幻灯片方法
     */
    public function addSlide(){
        $upload = new \Think\Upload();// 实例化上传类    
        $upload->maxSize   =     3145728 ;// 设置附件上传大小    
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
        $upload->savePath  =      '/images/slides/'; // 设置附件上传目录 
        $upload->subName   = array('date','Ymd'); 
        $info=$upload->upload();  // 上传
        $lit='Uploads'.$info['pics']['savepath'].$info['pics']['savename'];
        $sl=I('post.');
        $sl['pic']=($info==null)?(''):($lit);
        $sl['dateline']=time();
        if(M('slides')->add($sl)){
            $this->success('添加成功',U('Portal/slides'));
        }else{
            $this->error('添加失败！');
        }
    }
    /**
     * 保存幻灯执行方法
     * @return [type] [description]
     */
    public function edSlide(){
        $upload = new \Think\Upload();// 实例化上传类    
        $upload->maxSize   =     3145728 ;// 设置附件上传大小    
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
        $upload->savePath  =      '/images/slides'; // 设置附件上传目录
        $upload->subName = array('date','Ymd');  
        $info=$upload->upload();  // 上传
        $lit='Uploads'.$info['pics']['savepath'].$info['pics']['savename'];
        $sl=I('post.');
        $pic=I('post.pic');
        $sl['pic']=($info==null)?($pic):($lit);
        $sl['dateline']=time();
        if ($info) {
                unlink($pic);
        }
        if(M('slides')->save($sl)){
            $this->success('保存成功',U('Portal/slides'));
        }else{
            $this->error('保存失败！');
        }
    }
    /**
     * 删除幻灯片
     */
    public function delSlide(){
        $slide=M('slides');
        $id->id=I('get.id');
        $getimage=$slide->where($id)->getField('pic');
        unlink($getimage);
        if (M('slides')->where($id)->delete()) {
            $this->success('删除成功',U('Portal/slides'));
        }else{
            $this->error('删除失败！');
        }
    }
    //更新幻灯片排序
    public function upSortSlide(){
        $m=M('slides');
        foreach ($_POST as $id=>$sort){
            $m->where(array('id'=>$id))->setField('sort',$sort);
        }
        $this->redirect('Portal/slides');
    }
}