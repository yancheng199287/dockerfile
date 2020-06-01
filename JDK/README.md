

## 说明
该Dockerfile可以创建一个java容器，目前是指定的jdk8，也可以自行更改下载连接，
更换其他版本。通过使用docker run 命令 挂载宿主机目录，指定端口，指定jar包名称，
方便开发中快速启动一个jar包应用。


## 使用方式
将本目录拷贝到指定路径，在该路径下执行构建镜像命令：
docker build -t jdk1.8:v1.1 .


## 文件说明
sources.list
目前是针对debian10的国内阿里云源，需要改其他的，记得更改这个文件源地址

### 运行举例

> docker run -dit --name daluu-mini-server -e TZ="Asia/Shanghai" -p 8093:8093 -v /data/docker-work/mini-server:/home/app --add-host=yancheng:172.18.183.58 6b1c08ed6d56 app.jar

--name 指定容器名称  
-e 设置中国上海时区
-p 你的jar包暴漏对外的端口 
-v 映射的主机目录 jar包和日志都必须在这里  
--add-host 使用主机名访问宿主机的内网ip  
6b1c08ed6d56 容器id  
app.jar 后面是你放在映射目录下的jar包名称

