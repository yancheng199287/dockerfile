docker file
�����������ȫ������

1.��������
   �����̷�Ϊ��������һ����������һ���߼������� ע����չ�������ܸ�ʽ������Ҫʹ����չ����

2. ���ش���   
  a.�ڸ�Ŀ¼�� ���� /dataĿ¼  ���а��� docker  �� myworkĿ¼
        mywork����apache2��mysql
	cd /data/mywork
	mkdir apache2 && mkdir mysql

	apache2����conf��html��lock��logs
	cd apache2
	mkdir conf && mkdir html && mkdir lock && mkdir logs

	mysql����conf��db
	cd mysql
	mkdir conf && mkdir db 

  b.������ռ�󲿷ִ��̿ռ� ���ص�/dataĿ¼��
     �η���ռС���ִ��̿ռ䣬���ص�/usr1Ŀ¼�£�ע�������֮���ϵͳԭ�е�usrĿ¼�������ļ�����������Ȼ������������ɾ��ϵͳ��usrĿ¼�����½���usr1�ı��usr��
     ��/etc/fstab �ļ������ù���


3.��docker�������ղ���ϵͳ�Ͱ汾��װ���µ�docker ��docker-compose
   �Ȱѻ���������������
   docekr pull yancheng/debianbase:v1.0.0
   docekr pull yancheng/debian8php5apache2:latest
   docekr pull mysql

4.���������ļ���mysql��apache2��confĿ¼��
  ���ǰ������ļ��������س������Ա������޸ġ�
  ǰ�������б��ݹ�


5. �����������
   docker-compose -f /home/mydocker-compose-conf/mydocker.yaml -p 520voipWebApp start

6.��������
  docker-compose -f /home/mydocker-compose-conf/mydocker.yaml -p 520voipWebApp up
  

7. ��ѹ�������ļ���ѹ����վĿ¼�£�

���� <?php phpinfo(); ?>����ļ�  ���Ƿ���������php

������Բ鿴�Ƿ�װmysqlģ��  curlģ��  gdģ��


8.���Է��������վ�ɣ�Ӧ��ûɶ���⣬ǰ���������û�б䣬���ݿ��Ѿ��ָ�������



������������
mysql�߰汾 ��Ĭ��ֵʱ��0000-00-00 00��00��00��֧�� ����grou by��ѯ�����Ƶȵ�
��Ҫ�޸�mysql�����ļ���my.cnf   �������ļ������Ѿ����ú��ˡ�

apache ���û������⣬��վ���ܷ���  www���ܷ���

����ϸ�˶�����ȷ������ָ�������IP

���������������� ʹ���˸�������



���ݿ���ʲ��ˣ�

ʹ��docker-compose �����ľ��� �Ѿ�����������������mysql

������ʹ�� mysql �Ϳ���

�˺ź�����  ��鿴�㹹��ʱ��ָ���Ļ����������˺�Ĭ����root


   