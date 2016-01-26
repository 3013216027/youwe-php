```bash
sudo su
```

## 1. 安装apache2 php5 mysql-server

```bash
apt-get install apache2 php5 mysql-server libapache2-mod-php5 php5-mysql php5-gd
```

## 2. rewrite模块和mcrypt，配置apache2

```bash
cd /etc/apache2/mods-enabled/
ln -s ../mods-avaliable/rewrite.load .
service apache2 restart
apt-get install php5-mcrypt
php5enmod mcrypt
cd ../sites-enabled/
vim *.conf
```

```apache
<VirtualHost *:80>
	ServerAdmin dong@localhost
	DocumentRoot /var/www/uv/public
	<Directory /var/www/uv/public />
		Options Indexes FollowSymLinks
		AllowOverride All
		Order allow,deny
		Allow from all
	</Directory>
	ErrorLog ${APACHE_LOG_DIR}/uv-error.log
	CustomLog ${APACHE_LOG_DIR}/uv-access.log combined
</VirtualHost>
```


## 3. 配置文件夹权限

```bash
cd /var/www/uv/public
mkdir -p uploadFile/avatar uploadFile/voice
chmod 777 uploadFile/avatar uploadFile/voice

cd ../app
chmod -R 777 storage
```
## 4. 数据库配置
```bash
cd config/
vim database.php #修改数据库用户名和密码
```

## 5. 根据需要修改bootstrap/start.php

## 6. 安装composer和laravel

```bash
curl -sS http://install.phpcomposer.com/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer config -g repo.packagist composer http://packagist.phpcomposer.com
composer global require "laravel/installer=~1.1"
```
