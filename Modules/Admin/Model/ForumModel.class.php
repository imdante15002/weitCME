<?php
namespace Admin\Model;
use Think\Model;
class ForumModel extends Model{
	public function unlimitedForLevel(){
		import('Common.Common.Category');
        $merge = new \Category();
        $class=M('forumdisplay')->order('sort')->select();
        $channel=$merge::unlimitedForLevel($class,'|--');
        return $channel;
	}
}