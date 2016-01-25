<?php

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| The first thing we will do is create a new Laravel application instance
| which serves as the "glue" for all the components of Laravel, and is
| the IoC container for the system binding all of the various parts.
|
*/

$app = new Illuminate\Foundation\Application;

/*
|--------------------------------------------------------------------------
| Detect The Application Environment
|--------------------------------------------------------------------------
|
| Laravel takes a dead simple approach to your application environments
| so you can just specify a machine name for the host that matches a
| given environment, then we will automatically detect it for you.
|
*/

// $env = $app->detectEnvironment(array(
//     //这里把local中的Joy.local改成你的机器名称或者"*"，
//     //或者你删除production一行，不然你就改app/config/production/database.php了
//     'local'      => array('localhost.localdomain'),
//     'production' => array('server1'),
// ));

$env = $app->detectEnvironment(function()
{
    if (!isset($_SERVER['HTTP_HOST'])) {
       //$_SERVER['HTTP_HOST'] = 'http://li515-107.members.linode.com:8088/';
	   //$_SERVER['HTTP_HOST'] = '66.175.220.107:8088/';
        $_SERVER['HTTP_HOST'] = '183.78.180.196:8686/';

    }
    if (in_array($_SERVER['HTTP_HOST'], array('http://183.78.180.196:8686/'))) {
        return 'develop';
    }
    if (in_array($_SERVER['HTTP_HOST'], array('http://183.78.180.196:8686/'))) {
        return 'production';
    }
});

/*
