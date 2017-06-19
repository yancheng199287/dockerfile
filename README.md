docker file
服务器搭建配置全部过程

1.分区磁盘
   将磁盘分为两个区，一个主分区，一个逻辑分区， 注意扩展分区不能格式化，不要使用扩展分区

2. 挂载磁盘   
  a.在根目录下 创建 /data目录  其中包括 docker  和 mywork目录
        mywork创建apache2和mysql
	cd /data/mywork
	mkdir apache2 && mkdir mysql

	apache2包括conf，html，lock，logs
	cd apache2
	mkdir conf && mkdir html && mkdir lock && mkdir logs

	mysql包括conf，db
	cd mysql
	mkdir conf && mkdir db 

  b.主分区占大部分磁盘空间 挂载到/data目录下
     次分区占小部分磁盘空间，挂载到/usr1目录下，注意挂在完之后把系统原有的usr目录下所有文件拷贝过来，然后重命名或者删除系统的usr目录，把新建的usr1改变成usr，
     在/etc/fstab 文件中永久挂载
     挂载的时候 千万注意，不然会导致系统启动失败，就惨了！
     1.确认挂载分区是否存在，指定分区名字是否正确，分区文件系统格式是否正确，参照之前模版填写
     2. 挂载的时候是否会影响到系统文件目录，这个步骤特别小心吗，请再三思考！！！


3.在docker官网按照操作系统和版本安装最新的docker 和docker-compose
   先把基础镜像下载下来
   docekr pull yancheng/debianbase:v1.0.0
   docekr pull yancheng/debian8php5apache2:latest
   docekr pull mysql

4.拷贝配置文件到mysql和apache2的conf目录下
  我们把配置文件单独挂载出来，以便我们修改。
  前提是你有备份过


5. 构建镜像服务
   docker-compose -f /home/mydocker-compose-conf/mydocker.yaml -p 520voipWebApp start

6.启动容器
  docker-compose -f /home/mydocker-compose-conf/mydocker.yaml -p 520voipWebApp up
  

7. 将压缩程序文件解压到网站目录下，

运行 <?php phpinfo(); ?>这个文件  看是否正常启动php

另外可以查看是否安装mysql模块  curl模块  gd模块


8.测试访问你的网站吧，应该没啥问题，前提你的域名没有变，数据库已经恢复正常。



可能遇到问题
mysql高版本 对默认值时间0000-00-00 00：00：00不支持 还有grou by查询有限制等等
需要修改mysql配置文件，my.cnf   在配置文件中我已经设置好了。

apache 配置会有问题，网站不能访问  www不能访问

请仔细核对域名确保真正指向服务器IP

并建立了虚拟主机 使用了该域名。



数据库访问不了？

使用docker-compose 构建的镜像 已经加入了依赖和链接mysql

主机名使用 mysql 就可以

账号和密码  请查看你构建时候指定的环境变量。账号默认是root


   
