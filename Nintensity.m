function int=Nintensity(name)
%̽�������й�����naive intensity function,�ö�ȡ������߻Ҷ�ֵ����ͻҶ�ֵ����ټ���15,����̨��ǿ�ȵ���140kt���ʧ׼��
[eyetemp stringtemp]=Temp(name)
int=stringtemp-eyetemp+15;