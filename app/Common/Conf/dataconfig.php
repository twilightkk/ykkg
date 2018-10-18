<?php

//配置

//检测有无本机配置,有则覆盖默认配置
$local_dataconfig_path = __DIR__ . DIRECTORY_SEPARATOR . 'local_dataconfig.php';
$local_dataconfig = [];
if(file_exists($local_dataconfig_path)){
    $local_dataconfig = require($local_dataconfig_path);
}

$default = array(
	/* 数据库设置 */
	'DB_TYPE' => 'mysql', // 数据库类型
	'DB_HOST' => '127.0.0.1', // 服务器地址
	'DB_NAME' => 'ztb_ykkg', // 数据库名
	'DB_USER' => 'root', // 用户名
	'DB_PWD' => '1234', // 密码
	'DB_PORT' => '3306', // 端口
	'DB_PREFIX' => 'ztb_', // 数据库表前缀
	'DB_DEBUG' => false,

	/* 站点安全设置 */
	"AUTHCODE" => 'nP4eR30AsVJonixR4Q', //密钥

	/* Cookie设置 */
	"COOKIE_PREFIX" => 'kuV_', //Cookie前缀

	/* 数据缓存设置 */
	'DATA_CACHE_PREFIX' => 'FUE_', // 缓存前缀
);

$config =  array_merge($default, $local_dataconfig);

return $config;
