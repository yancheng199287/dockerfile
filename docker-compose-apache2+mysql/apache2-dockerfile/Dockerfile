# VERSION 1.0.0
FROM yancheng/debian8php5apache2:latest
MAINTAINER yancheng "648830605@qq.com"
#  build images	 for owncloud add curl and gd module 
RUN apt-get update \
       && apt-get -y install php5-curl \
       && apt-get -y install php5-gd

     


# run apache2
COPY apache2-foreground.bash /root/apache2-foreground.bash

ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data
env APACHE_PID_FILE     /var/run/apache2.pid
env APACHE_RUN_DIR      /var/run/apache2
env APACHE_LOCK_DIR     /var/lock/apache2
env APACHE_LOG_DIR      /var/log/apache2



CMD ["/bin/bash", "/root/apache2-foreground.bash"]

