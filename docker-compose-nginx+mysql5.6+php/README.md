# 使用说明

这个dockerfile是通过使用docker-compose工具，组合编排容器，目的是快速构建一个支持php脚本的web服务器，通过使用两个镜像构建联合完成了一个支持mysql数据库访问，支出php脚本语言的web服务器（nginx）。

mysql选择的是5.7版本，nginx和php均是最新版，使用该文件，请先安装docker和docker-compose。



## 构建启动



1. ##### **如果你是直接复制的文本或者有更改文件，请先验证配置文件语法是否正确**

   ```txt
   docker-compose -f /data/mydocker.yaml -p nginx-php-mysql-yc config
   ```

2.  **开始构建镜像服务，如果已经存在会重新构建**

   ```txt
   docker-compose -f /data/mydocker.yaml -p nginx-php-mysql-yc build
   ```

3.  **开始启动 后面  带 -d  是以后台形式启动，如果不带 -d 是以前台启动，前台启动可以查看错误日志信息**

   ```txt
   docker-compose -f /data/mydocker.yaml -p nginx-php-mysql-yc up -d
   ```

   

## 注意事项：

默认的web root 目录在当前系统的这个路径下：**/data/mywork/html**

你可以将你的php或者html文件上传到这里，即可访问。

**默认的数据库配置信息**：

```
主机名：localhost

端口：3306

账号：root

密码：520code.net 
```

