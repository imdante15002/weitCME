<?php
namespace Admin\Model;
use Think\Model\ViewModel;
/**
 * 单页面视图模型
 */
class ContentViewModel extends ViewModel{
    public $viewFields = array(
        'article'=>array('id','cid','title','dateline','views','_type'=>'LEFT'),
        'navigation'=>array('name','_on'=>'article.cid=navigation.id'),
        'member'=>array('username','_on'=>'article.uid=member.uid')
        );
}