cd /root/workspace/daluu-mini-project

git pull

mvn install -Dmaven.test.skip=true


cd /root/workspace/daluu-mini-project/Mini-Web
mvn package -Dmaven.test.skip=true


cd /root/workspace/daluu-mini-project/manage-project
mvn package -Dmaven.test.skip=true


mv /root/workspace/daluu-mini-project/Mini-Web/target/project-daluu-mini-1.0-SNAPSHOT.jar /data/docker-work/mini-server

mv /root/workspace/daluu-mini-project/manage-project/target/manage-project-1.0-SNAPSHOT.jar /data/docker-work/manage-server

docker-compose -f /data/docker-yaml/daluu-server/daluu-server-deploy.yaml restart
