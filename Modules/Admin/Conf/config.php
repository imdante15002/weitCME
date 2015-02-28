<?php
return array(
    'SHOW_PAGE_TRACE'       =>true, //trace开关
    'TMPL_ACTION_ERROR'     =>  'common/dialog', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'   =>  'common/dialog', // 默认成功跳转对应的模板文件
    'TMPL_EXCEPTION_FILE'   =>  THINK_PATH.'Tpl/think_exception.tpl',// 异常页面的模板文件
    //url，模式
    //'URL_MODEL'             =>  1,
    'DEFAULT_MODULE'        => "Admin",//默认 模块

    //session设置
    'SESSION_AUTO_START'    =>  true, 
    'SESSION_PREFIX'        =>  'weicms_', // session 前缀

    //----------//权限验证设置---------------//
    'AUTH_CONFIG'           =>array(
        'AUTH_ON'           => true, //认证开关
        'AUTH_TYPE'         => 1, // 认证方式，1为时时认证；2为登录认证。
        'AUTH_GROUP'        => 'dantes_auth_group', //用户组数据表名
        'AUTH_GROUP_ACCESS' => 'dantes_auth_group_access', //用户组明细表
        'AUTH_RULE'         => 'dantes_auth_rule', //权限规则表
        'AUTH_USER'         => 'dantes_user'//用户信息表
    ),
    'ADMINISTRATOR'         =>array('1'), 
);