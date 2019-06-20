### 1. 下载docker-compose文件
http://cdn.oneinlet.com/DockerFileElasticSearchKibana.txt  将文件放在如：/root/docker-conf/

###  2. 虚拟内存编辑
Elasticsearch mmapfs默认使用目录来存储其索引。mmap计数的默认操作系统限制可能太低，这可能导致内存不足异常
在Linux上，您可以通过运行以下命令来增加限制 root：
要永久设置此值，请更新vm.max_map_count设置

```shell
vi /etc/sysctl.conf

vm.max_map_count = 262144

sysctl -p

```

### 3.  分别下载镜像
```shell
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.0.1
docker pull docker.elastic.co/kibana/kibana:7.0.1
```


###  4. 启动构建镜像服务

```shell
验证配置文件语法是否正确
docker-compose -f /root/docker-conf/DockerFileElasticSearchKibana.txt  -p elasticSearch-kibana  config
```

```shell
前台启动，看是否能启动正常
docker-compose -f /root/docker-conf/DockerFileElasticSearchKibana.txt  -p elasticSearch-kibana  up
```

测试访问：http://106.13.20.50:9200/   http://106.13.20.50:5601/    正常访问意味构建启动正常

ctrl+D 结束前台启动

```shell
后台启动
docker-compose -f /root/docker-conf/elastic-docker-file -p elasticSearch-kibana  up  -d
```