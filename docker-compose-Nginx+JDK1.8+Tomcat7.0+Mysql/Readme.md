

## Dockerfile ����������һ��JDK1.8+Tomcat7.0�ľ����ʺϵ���ʹ��
### ���JDK����Tomcat�汾��Ҫ�����ֻ��Ҫ���� �������ӵ�ַ �������ñ�

## mydocker.yaml  ��������ϱ��Ź����������� ʵ���� nginx + tomcat +mysql ����


1. ��ʹ��Dockerfile ���� Tomcat����

2. ��ʹ��mydocker.yaml ���Ϲ���



1. ����ļ��﷨�Ƿ�����
docker-compose -f /home/mydocker.yaml up config


2. ǰ̨����
docker-compose -f /home/mydocker.yaml -p JavaApp up

2. ��̨����
docker-compose -f /home/mydocker.yaml -p JavaApp up -d