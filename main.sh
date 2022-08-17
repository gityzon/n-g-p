#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署

#!/bin/bash

export PATH="~/nginx/sbin:$PATH"

if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi
chmod 777 ~/nginx/sbin/nginx

if [ ! -f "index.php" ];then
  curl -L https://github.com/getgrav/grav/releases/download/1.7.35/grav-admin-v1.7.35.zip -o grav-admin.zip
unzip grav-admin.zip
rm -f grav-admin.zip
mv grav-admin/*  . 
rm -f LICENSE.txt & rm -f SECURITY.md & rm -f  CONTRIBUTING.md
fi
sh remend-index.sh

php -S 0.0.0.0:8000 -t . &
nginx -g 'daemon off;'
