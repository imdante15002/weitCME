<?php
namespace Home\Model;
use Think\Model;
/**
 * 帖子模型
 */
class ThreadModel extends Model{
	//查询访问版块帖子数量
	public function threadList($fid){
		$thread_fid['fid']=$fid;
		$threadList=D('ThreadView')->where($thread_fid)->select();
		$thread_reply=M('thread_reply');
		$Member=M('member');
		foreach ($threadList as $key => $v) {
			$thread_tid['tid']=$v['tid'];

			$threadList[$key]['reply']=$thread_reply->where($thread_tid)->count();

			$thread_reply_find=$thread_reply->field('uid,dateline')->where($thread_tid)->order('id desc')->find();

			$thread_reply_uid['uid']=$thread_reply_find['uid'];

			$threadList[$key]['reply_dateline']=$thread_reply_find['dateline'];
			
			$threadList[$key]['reply_username']=$Member->where($thread_reply_uid)->getField('username');
		}
		return $threadList;
	}
	//查询当前访问版块描述信息
	public function navSeo($getUrl){
		$url['url']=$getUrl;
		$nav=M('navigation')->where($url)->find();
		return $nav;
	}
}