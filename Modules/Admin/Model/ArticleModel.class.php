<?php
namespace Admin\Model;
use Think\Model;
class ArticleModel extends Model{
	public function unlimitedForLevel(){
		import('Common.Common.Category');
        $merge = new \Category();
        $class=M('navigation')->order('sort')->select();
        $channel=$merge::unlimitedForLevel($class,'|--');
        return $channel;
	}
}