<?php
return array(
	'SHOW_PAGE_TRACE'       =>true, //trace开关
	'DEFAULT_MODULE'        => "Member",//默认 模块
	'DEFAULT_CONTROLLER'    =>  'Home', // 默认控制器名称
	'DEFAULT_ACTION'        =>  'index', // 默认操作名称
	'URL_CASE_INSENSITIVE'  =>  true,   // 默认false 表示URL区分大小写 true则表示不区分大小写
	'URL_MODEL'             =>  1,       // URL访问模式,可选参数0、1、2、3,代表以下四种模式：// 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
	'URL_PATHINFO_DEPR'     =>  '/',    // PATHINFO模式下，各参数之间的分割符号
	'URL_ROUTER_ON'         => true,
	//session设置
    'SESSION_AUTO_START'    =>  true, 
    'SESSION_PREFIX'        =>  'wei_', // session 前缀
    'URL_ROUTE_RULES'       	=>array(
    	//用户中心
    	'thread/:uid'       =>'Home/thread',
    	'flow/:uid'       =>'Home/flow',
    	'reply/:uid'        =>'Home/reply',
    	'record/:uid'       =>'Home/record',
    	'home/:uid'         =>'Home/index',
        //用户操作模块
	    'logindo'             	  => 'Public/logindo',
	    'login'             	  => 'Public/login',
	    'register'          	  => 'Public/register',
     )
);