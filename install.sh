#! /bin/sh
echo "开始安装Nodejs"
yum install -y wget xz
cd /usr/local
wget https://nodejs.org/dist/v12.13.0/node-v12.13.0-linux-x64.tar.xz
xz -d node-v12.13.0-linux-x64.tar.xz
tar -xvf node-v12.13.0-linux-x64.tar
rm node-v12.13.0-linux-x64.tar -f
mv node-v12.13.0-linux-x64/ node
echo export PATH=$PATH:/usr/local/node/bin >> ~/.bashrc
source ~/.bashrc
echo "Nodejs安装完成"
node -v
npm -v