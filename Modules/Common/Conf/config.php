<?php
return array(
    'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  'localhost', // 服务器地址
    'DB_NAME'               =>  'weicme',          // 数据库名
    'DB_USER'               =>  'root',      // 用户名a0708155216
    'DB_PWD'                =>  '123456',          // 密码39347605
    'DB_PORT'               =>  '3306',        // 端口
    'DB_PREFIX'             =>  'dantes_',    // 数据库表前缀
    //'DB_DSN'=>'mysql:host=localhost;dbname=weito;charset=utf8',
    'DB_FIELDTYPE_CHECK'    =>  false,       // 是否进行字段类型检查
    'DB_FIELDS_CACHE'       =>  true,        // 启用字段缓存
    //'DB_CHARSET'            =>  'utf8',      // 数据库编码默认采用utf8
    //---------模板设置
    'DEFAULT_V_LAYER'       =>  'Template', // 默认的视图层名称
    'DEFAULT_THEME'         =>  'default', // 默认模板主题名称
    'DEFAULT_CHARSET'       =>  'utf-8', // 默认输出编码
    'TMPL_CONTENT_TYPE'     =>  'text/html', // 默认模板输出类型
    'TMPL_CACHFILE_SUFFIX'  =>  '.dantes',      // 默认模板缓存后缀
    'TMPL_DENY_PHP'         =>  false, // 默认模板引擎是否禁用PHP原生代码
    'TMPL_L_DELIM'          =>  '<!--{',            // 模板引擎普通标签开始标记
    'TMPL_R_DELIM'          =>  '}-->',            // 模板引擎普通标签结束标记
    //----------------------是否开启日志-----------------------//
    'LOG_RECORD'            =>  false,   // 默认不记录日志
    //----------------------安全设置-----------------------//
    'MODULE_DENY_LIST'      =>  array('Common','Runtime','Source'), // 禁止访问的模块列表
    'MODULE_ALLOW_LIST'     =>  array('Home','Admin','Touch','Static','Uploads','Member'),    // 允许访问的模块列表
    'DEFAULT_MODULE'        => "Home",//默认 模块
    //--------公共目录配置
    'TMPL_PARSE_STRING'     =>array(
        //前台目录
        '__homeimg__'       =>'/Static/home/images',
        '__homecss__'       =>'/Static/home/css',
        '__homejs__'        =>'/Static/home/js',
        //后台目录
        '__acpimg__'        =>'/Static/admin/images',
        '__acpcss__'        =>'/Static/admin/css',
        '__acpjs__'         =>'/Static/admin/js',
        '__acpi__'         =>'/Static/admin/i',
        //公共目录
        '__cmmimg__'        =>'/Static/common/images',
        '__cmmcss__'        =>'/Static/common/css',
        '__cmmjs__'         =>'/Static/common/js',
        '__ueditor__'       =>'/Static/ueditor',
        '__umeditor__'      =>'/Static/umeditor',
        //用户
        '__mimg__'          =>'/Static/member/images',
        '__mcss__'          =>'/Static/member/css',
        '__mjs__'           =>'/Static/member/js',
        //触屏版和app
        '__appimg__'          =>'/Static/touch/images',
        '__appcss__'          =>'/Static/touch/css',
        '__appjs__'           =>'/Static/touch/js',
    ),
    //-----------域名设置
    //'APP_SUB_DOMAIN_DEPLOY'   =>    1, // 开启子域名配置
    //'APP_SUB_DOMAIN_RULES'    =>    array(),
    
    //----表单令牌配置
    'TOKEN_ON'      =>    true,  // 是否开启令牌验证 默认关闭
    'TOKEN_NAME'    =>    'token_key',    // 令牌验证的表单隐藏字段名称，默认为__hash__
    'TOKEN_TYPE'    =>    'sha1',  //令牌哈希验证规则 默认为MD5
    'TOKEN_RESET'   =>    true,  //令牌验证出错后是否重置令牌 默认为true
);