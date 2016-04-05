#!/bin/bash
#################################################
#  File Name: auto-config.sh
#  
#  Author: zhengdongjian@tju.edu.cn
#  
#  Created Time: 2016年01月26日 星期二 13时21分10秒
#  
#################################################

if [ `whoami` != 'root' ]; then
		echo 'Please run with root!'
		exit 1
fi

read -p "This shell script helps you to setup you-we server-side fastly, authored by D.J.Zheng. Press any key to continue..."

# Install apache2, php5 and mysql-server
apt-get install apache2 php5 mysql-server libapache2-mod-php5 php5-mysql php5-gd -y

# enable rewirte module, install mcrypt module and configurate apache2
cd /etc/apache2/mods-enabled/
ln -s ../mods-avaliable/rewrite.load .
service apache2 restart

apt-get install php5-mcrypt -y
php5enmod mcrypt

# make apache2 configuration now
port=''
read -p 'Please input the port for it: ' port
if [ ! $port ]; then
		echo 'Warning: use port 80...'
		port='80'
fi
cd .. #at /etc/apache2/ now
if [ $port != '80' ]; then
		echo "Listen $port" >> ports.conf
fi

rm sites-enabled/*
conf=''
read -p 'Please appoint a configuration file name: ' conf
if [ ! $conf ]; then
		echo 'Warning: use default.conf as default...'
		conf='default'
fi
conf=$conf\.conf

documentRoot=''
read -p 'Please appoint the document root of it: ' documentRoot
if [ ! $documentRoot ]; then
		echo 'Warning: use /var/www/uv/ as default...'
		documentRoot='/var/www/uv/'
fi

file=site-avaliable/$conf
echo "<VirtualHost *:$port>" > $file
echo -e "\tServerAdmin root@localhost" >> $file
echo -e "\tDocumentRoot $documentRoot" >> $file
echo -e "\t<Directory $documentRoot />" >> $file
echo -e "\t\t<Options Indexes FollowSymLinks" >> $file
echo -e "\t\tAllowOverride All" >> $file
echo -e "\t\tOrder allow,deny" >> $file
echo -e "\t\tAllow from all" >> $file
echo -e "\t</Directory>" >> $file
echo -e "\tErrorLog \${APACHE_LOG_DIR}/uv-error.log" >> $file
echo -e "\tCustomLog \${APACHE_LOG_DIR}/uv-access.log combined" >> $file
echo "</VirtualHost>" >> $file

# make a symbolic file
cd sites-enabled #/etc/apache2/sites-enabled
ln -s ../sites-avaliable/$conf .


# configurate the access for some directorys
cd $documentRoot
mkdir -p public/uploadFile/avatar public/uploadFile/voice
chmod 777 public/uploadFile/avatar public/uploadFile/voice
chmod -R 777 app/storage

read -p 'Now, please modify the configuration file with your mysql database user and password. Press any key to continue...'
vim config/database.php

read -p 'Would you want to configurate the api url?(Y/n) ' choice
if [ "$choice"="Y" -o "$choice"="y" ]; then
		vim bootstrap/start.php
fi

read -p 'Would you want to install composer and laravel?(Y/n) ' choice
if [ "$choice"="Y" -o "$choice"="y" ]; then
		curl -sS http://install.phpcomposer.com/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
		composer config -g repo.packagist composer http://packagist.phpcomposer.com
		composer global require "laravel/installer=~1.1"
fi

echo "Done! Everything goes well, take it and have fun!"
