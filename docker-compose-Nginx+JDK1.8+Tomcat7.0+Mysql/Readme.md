

## Dockerfile 是用来构建一个JDK1.8+Tomcat7.0的镜像，适合单独使用
### 如果JDK或者Tomcat版本需要变更，只需要更改 下载链接地址 其他不用变

## mydocker.yaml  是用来组合编排构建容器服务 实现了 nginx + tomcat +mysql 联合


1. 先使用Dockerfile 构建 Tomcat镜像

2. 再使用mydocker.yaml 联合构建



1. 检查文件语法是否正常
docker-compose -f /home/mydocker.yaml up config


2. 前台启动
docker-compose -f /home/mydocker.yaml -p JavaApp up

2. 后台启动
docker-compose -f /home/mydocker.yaml -p JavaApp up -d