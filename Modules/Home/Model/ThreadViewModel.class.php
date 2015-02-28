<?php
namespace Home\Model;
use Think\Model\ViewModel;
/**
 * 单页面视图模型
 */
class ThreadViewModel extends ViewModel{
    public $viewFields = array(
        'thread'=>array('tid','fid','uid','title','dateline','views','_type'=>'LEFT'),
        'navigation'=>array('name','_on'=>'thread.fid=navigation.id'),
        'member'=>array('username','_on'=>'thread.uid=member.uid')
        );
}