<?php
namespace Member\Model;
use Think\Model;
/**
 * 用户信息查询模型
 */
class MemberModel extends Model{
	public function whos($uid){
		if ($_SESSION[C('SESSION_PREFIX')]['uid']===$uid) {
			$whos='我的';
		} else {
			$whos='他的';
		}
		return $whos;
	}
	//返回查询用户信息
	public function userInfo($uid){
		$us['uid']=$uid;
		$user=M('member')->where($us)->find();
		return $user;
	}
	// 用户积分统计
	public function userScore($uid){
		$us['uid']=$uid;
		$score=M('member_count')->where($us)->find();
		return $score;
	}
	//获取用户组
	public function userGroup($uid){
		$us['uid']=$uid;
		$group_id=M('auth_group_access')->where($us)->getField('group_id');
		$userGroup=M('auth_group')->field('title,color')->where(array('id'=>$group_id))->find();
		return $userGroup;
	}
	//统计用户话题数量
	public function threadCount($uid){
		$us['uid']=$uid;
		$threadCount=M('thread')->where($us)->count();
		return $threadCount;
	}
	//统计用户话回复话题
	public function replyCount($uid){
		$us['uid']=$uid;
		$replyCount=M('thread_reply')->where($us)->count();
		return $replyCount;
	}
}