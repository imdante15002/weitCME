<?php
namespace Admin\Controller;
use Think\Controller;
class MemberHandleController extends CommonController{
	//批量删除用户
	public function delAllUser(){
		$uid=I('get.id');
		M('member')->where(array('uid'=>array('in',$uid)))->delete();
        $this->success('删除成功');
	}
	//更新用户信息
	public function upUserinfo(){
		$md5uid=md5(I('post.uid'));
		$upload = new \Think\Upload();// 实例化上传类    
		$upload->maxSize   =     3145728 ;// 设置附件上传大小    
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
		$upload->savePath  =      '/avtar/'; // 设置附件上传目录    // 上传文件
		$upload->autoSub = true;
		$upload->subName = array('date','Ymd');   
		$info = $upload->upload();
		if ($info) {
			$aimg='Uploads'.$info[newavtimg]['savepath'].$info[newavtimg]['savename'];
			$uaimg='Uploads'.$info[newavtimg]['savepath'].$md5uid.'_200x200.png';
			$image = new \Think\Image(); $image->open($aimg);//将图片裁剪为400x400并保存为corp.jpg
			$imgstatus=$image->thumb(200, 200,\Think\Image::IMAGE_THUMB_CENTER)->save($uaimg);
			if ($imgstatus) {
				$uarr['avtimg']='/'.$uaimg;
				unlink($aimg);
			}else{
				$uarr['avtimg']=I('avtimg');
			}
			
		}
		$uarr['username']=I('post.username');
		if(I('post.password')){$uarr['password']=sha1(I('post.password'));}
		$uarr['qq']=I('post.qq');
		$uarr['signature']=I('post.signature');
		$uarr['uid']=I('post.uid');
		if (M('member')->save($uarr)) {
			$this->success('修改成功！',U('Member/index'));
		} else {
			$this->error('修改失败！');
		}
	}
	//添加用户
	public function addUser(){
		$u['username']=I('post.username');
		$e['email']=I('post.email');
		$member=M('member');
		$verify_username=$member->where($u)->getField('username');
		$verify_email=$member->where($e)->getField('email');
		if($verify_username){$this->error('用户名已存在');}
		if($verify_email){$this->error('邮箱已被注册');}

		//通过验证执行注册程序
		$user['username']=I('post.username');
		$user['email']=I('post.email');
		$user['regtime']=time();
		$user['regip']=get_client_ip();
		$user['password']=I('post.password','','sha1');
		//新用户添加到数据中
		$uid=$member->add($user);
		$group_id=I('post.group_id');
		$user_id=I('post.user_id');
		//添加到auth权限中
		if ($group_id) {
			$g['uid']=$uid;
			$g['group_id']=$group_id;
			$status=M('auth_group_access')->add($g);
		}
		if ($status) {
			$this->success('添加成功',U('Member/index'));
		}else{
			$this->error('添加失败');
		}
	}
}