#! /usr/bin/env bash
# version centos 7.2 php5.4
#https://blog.csdn.net/finnson/article/details/80065054

wget https://xdebug.org/files/xdebug-2.2.3.tgz
tar -zxvf xdebug-2.2.3.tgz

cd xdebug-2.2.3
phpize
./configure --enable-xdebug
make
make install

zend_extension=/usr/lib64/php/modules/xdebug.so
xdebug.remote_host= #调试的本机IP
xdebug.remote_mode="req"
xdebug.remote_port=9010 #端口号
xdebug.idekey="PHPSTORM" #与phpstorm开发工具内的配置对应
xdebug.remote_enable=on
xdebug.remote_autostart=1
xdebug.remote_log=/disk1/ans_workspace/xdebug.log #日志

service httpd restart
