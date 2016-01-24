<html>
    <head>
        <title>测试!</title>
        <meta name="author" content="ZhengDongjian"/>
    </head>
    <body>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"])?>">
            用户名: <input type="text" name="username" /><br/>
            密码: <input type="text" name="password" /><br/>
            确认密码: <input type="text" name="password2" /><br/>
            邮箱: <input type="text" name="email" /><br/>
            <input type="submit" name="submit" />
        </form>
    </body>
</html>
