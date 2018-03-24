

## Dockerfile 是用来构建一个JDK1.8+Tomcat7.0的镜像，适合单独使用
### 如果JDK或者Tomcat版本需要变更，只需要更改 下载链接地址 其他不用变

## mydocker.yaml  是用来组合编排构建容器服务 实现了 nginx + tomcat +mysql 联合


1. 先使用Dockerfile 构建 Tomcat镜像
   docker build -t yancheng/jdk1.8-tomcat7:v1.0.0 -< Dockerfile

2. 再使用mydocker.yaml 联合构建

3. default.conf  放在nginx/conf 下  以后可以在这里配置代理



1. 检查文件语法是否正常
docker-compose -f /home/mydocker.yaml up config


2. 前台启动
docker-compose -f /home/mydocker.yaml -p JavaApp up

2. 后台启动
docker-compose -f /home/mydocker.yaml -p JavaApp up -d



注意  关于jdk  使用wget下载 可能有时候无法成功，原因是链接地址发生改变，请更改。

如何找到jdk真正的下载地址呢？

去 oracle官方下载页面  http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

选择你要下载的JDK版本， F12抓包，点击下载的时候 会出现下载链接    请复制那个链接尾部是资源部的地址

如   http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz

wget 下载的时候 记得set cookies 
