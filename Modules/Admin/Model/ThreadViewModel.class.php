<?php
namespace Admin\Model;
use Think\Model\ViewModel;
class ThreadViewModel extends ViewModel{
    public $viewFields = array(
        'thread'=>array('tid','uid','fid','title','dateline','pubip','views','_type'=>'LEFT'),
        'forumdisplay'=>array('name','_on'=>'thread.fid=forumdisplay.id'),
        'member'=>array('username','_on'=>'thread.uid=member.uid')
    );
}