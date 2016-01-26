<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="ZhengDongjian"/>
        <title>测试!</title>

        <!-- 新 Bootstrap 核心 CSS 文件 -->
        <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            .form-signup {
                max-width: 500px;
                padding-top: 50px;
                padding-right: 15px;
                padding-bottom: 15px;
                padding-left: 15px;
                margin-top: auto;
                margin-right: auto;
                margin-bottom: auto;
                margin-left: 10px;
            }
        </style>
    </head>

    <body>
        <form class="form-signup" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"])?>">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label sr-only">用户名: </label>
                    <input class="form-control field" type="text" name="username" id="username" value="" placeholder="用户名: " required autofocus />
                </div>
                <div class="form-group">
                    <label class="control-label sr-only">密码: </label>
                    <input class="form-control field" type="password" name="password" id="password" value="testtest" placeholder="密码: " required autofocus />
                </div>
                <div class="form-group">
                    <label class="control-label sr-only">确认密码: </label>
                    <input class="form-control field" type="password" name="password2" id="password2" value="testtest" placeholder="确认密码: " required autofocus />
                </div>
                <div class="form-group">
                    <label class="control-label sr-only">邮箱: </label>
                    <input class="form-control field" type="text" name="email" id="email" value="test@test.test" placeholder="邮箱: " required autofocus />
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
            </div>
        </form>
<?php
/* **********************************************

  File Name: form-demo.php

  Author: zhengdongjian@tju.edu.cn

  Created Time: Sun 24 Jan 2016 06:17:45 PM CST

*********************************************** */


/*
 * 检查输入并返回结果
 */

/*
 * 错误常量
 */
define("OK", (int)0);
define("USERNAME_INVALID", (int)100);
define("PASSWORD_INVALID", (int)200);
define("PASSWORD_DIFF", (int)201);
define("EMAIL_INVALID", (int)300);
$messageBox = array(
    OK => "OK",
    USERNAME_INVALID => "用户名不合法！用户名只能包含大小写字母和下划线，且为6-32位长！",
    PASSWORD_INVALID => "密码不合法！密码只能包含大小写字母、下划线和数字，且为8-32位长！",
    PASSWORD_DIFF => "两次输入密码不相同！",
    EMAIL_INVALID => "邮箱地址不合法！"
);

$username = $password = $password2 = $email = "";
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = inputFilter($_POST["username"]);
    $password = inputFilter($_POST["password"]);
    $password2 = inputFilter($_POST["password2"]);
    $email = inputFilter($_POST["email"]);

    $errorCode = inputChecker($username, $password, $password2, $email);
    if ($errorCode !== 0) {
        alertError($errorCode);
        echo "<script>\n"
            //."$(document).ready(function(){\n"
            ."console.log($(\"#username\"));\n"
            ."$(\"#username\").defaultValue=\"$username\";\n"
            ."$(\"#password\").value=\"$password\";\n"
            ."$(\"#password2\").value=\"$password2\";\n"
            ."$(\"#email\").value=\"$email\";\n"
            //."});\n"
            ."</script>\n";
    } else {
        echo "<script> alert('注册成功！'); </script>";
    }
}

/*
 * 过滤输入
 */
function inputFilter($sourceData) {
    return htmlspecialchars(stripslashes(trim($sourceData)));
}

/*
 * 检查输入错误，如果有错误返回出错信息
 */
function inputChecker($username, $password, $password2, $email) {
    //echo $username.",".$password.",".$password2.",".$email."<br/>";
    if (!preg_match("/^[\w]{6,32}$/", $username)) {
        return USERNAME_INVALID; //用户名，大小写字母和下划线, 长度6-32字符
    } elseif (!preg_match("/^[\w\d]{8,32}$/", $password)) {
        return PASSWORD_INVALID; //密码, 大小写下划线和数字, 长度8-32位, 数据库中为50位长.
    } elseif ($password !== $password2) {
        return PASSWORD_DIFF; //两次密码不同
    } elseif (!preg_match("/([\w\-]+\@[\w\-]+)(\.[\w\-]+)+/", $email)) {
        return EMAIL_INVALID; //邮箱不合法
    } else {
        return OK;
    }
}

/* 
 * 返回错误提示
 */
function alertError($errorCode) {
    $errorMessage = $GLOBALS["messageBox"][$errorCode];
    echo "<script> alert('$errorMessage'); </script>";
}

?>
    </body>
</html>
