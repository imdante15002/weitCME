<?php
namespace Admin\Model;
use Think\Model\ViewModel;
class MemberViewModel extends ViewModel{
    public $viewFields = array(
        'member'=>array('uid','username','email','regtime','lasttime','lastip','_type'=>'LEFT'),
        'auth_group_access'=>array('group_id','_on'=>'member.uid=auth_group_access.uid'),
        'auth_group'=>array('title','_on'=>'auth_group_access.group_id=auth_group.id')
    );
}