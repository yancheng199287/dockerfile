# 启动运行指令 docker run -itd --name javaEEApp1 -p 8080:8080 3b8e6daed205   不要加/binbash 否则不会执行，因为末尾已经有了cmd命令

FROM ubuntu

#刷新包缓存 并且 安装wget工具
RUN apt-get update && apt-get install -y wget
#设置工作目录
WORKDIR /home
# 下载jdk1.8  地址是 浏览器抓包获取到的，如果发送改变 自己重新去oracle官网下载获取地址
RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz
#解压出来的目录是 jdk1.8.0_151
RUN tar -zxf jdk-8u161-linux-x64.tar.gz

# 配置环境变量
ENV JAVA_HOME /home/jdk1.8.0_151
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

#安装 tomcat7
RUN wget http://mirrors.shu.edu.cn/apache/tomcat/tomcat-8/v8.5.29/bin/apache-tomcat-8.5.29.tar.gz
RUN tar xvf apache-tomcat-8.5.29.tar.gz

#配置tomcat的环境变量
ENV CATALINA_HOME /home/apache-tomcat-8.5.29

EXPOSE 8080

#设置tomcat 自启动
CMD [ "/home/apache-tomcat-8.5.29/bin/catalina.sh", "run" ]
