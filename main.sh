#删除bk并重新启动以更新brook.
#删除panindex并重新启动以更新PanIndex.

#!/bin/bash
cd /home/runner/nginx/sbin & chmod +x nginx
export PATH="~/nginx/sbin:brook:panindex$PATH"

if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi

if [ ! -f "bk" ];then
  curl -L https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -o bk
fi
chmod +x bk

if [ ! -f "panindex" ];then
  curl -L https://github.com/libsgh/PanIndex/releases/latest/download/PanIndex-linux-amd64.tar.gz -o panindex.tar.gz
tar -zxvf panindex.tar.gz
mv PanIndex-linux-amd64 panindex
rm -f panindex.tar.gz & rm -f LICENSE
fi
chmod +x panindex

./bk wsserver --listen :1080 --path /lockey --password "$passwd" &
./panindex &
nginx -g 'daemon off;'
