<?php
return array(
	'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'localhost', // 服务器地址
    'DB_NAME'   => 'blog', // 数据库名
    'DB_USER'   => 'root', // 用户名
    'DB_PWD'    => '', // 密码
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => 'think_',
    'URL_MODEL' => 2,
    'TMPL_PARSE_STRING'=>array(#安全的url路径
                                '__URL__'=>'/markdownblog',
                                '__PUBLIC__'=>'/markdownblog/Blog/Tpl/Public',
                                
    							),
    'DEFAULT_FILTER'=>'addslashes,htmlspecialchars',

    /*URL配置*/
    //不区分大小写
    'URL_CASE_INSENSITIVE' => true,
);
?>