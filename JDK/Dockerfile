# 启动运行指令
# docker run -dit --name daluu-mini-server -p 8093:8093 -v /data/docker-work/mini-server:/home/app --add-host=yancheng:172.18.183.58 6b1c08ed6d56 project-daluu-mini-1.0-SNAPSHOT.jar
# --name 指定容器名称  -p 你的jar包暴漏对外的端口 -v 映射的主机目录 jar包和日志都必须在这里  --add-host 使用主机名访问宿主机的内网ip  6b1c08ed6d56容器id  后面是你放在映射目录下的jar包 名称

FROM debian

#将当前dockerfile所在目录下的sources.list更换到容器中，更改源 加速访问
ADD sources.list /etc/apt/


#刷新包缓存 并且 安装wget工具
RUN apt-get update && apt-get install -y wget
#设置工作目录
WORKDIR /home
# 下载jdk1.8  地址是 浏览器抓包获取到的，如果发送改变 自己重新去oracle官网下载获取地址
RUN wget http://cdn.520code.net/Java%2FJDK%2Fjdk-8u211-linux-x64.tar.gz
#解压出来的目录是 jdk1.8.0_211
RUN tar -zxf Java%2FJDK%2Fjdk-8u211-linux-x64.tar.gz
              
RUN rm -rf Java%2FJDK%2Fjdk-8u211-linux-x64.tar.gz             


#创建工作路径
RUN mkdir /home/app

# 相当于 cd /home/app   请将宿主机挂载到此目录  -v /data/docker-work/mini-server:/home/app
WORKDIR /home/app

# 配置环境变量
ENV JAVA_HOME /home/jdk1.8.0_211
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH


#设置jar 自启动  
ENTRYPOINT ["java", "-jar","-Dfile.encoding=UTF-8"]

#如果 docker run  后面 不指定 jar包名称，则以默认的 app.jar名称  注意你必须挂载到 /home/app路径下，并且将jar包放在这里
CMD ["app.jar"]

