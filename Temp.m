function [eyetemp stringtemp]=Temp(name)
%��ȡ�����¶ȶ�Ӧ�ĻҶ�ֵ��CDO����ƶ��¶ȶ�Ӧ�ĻҶ�ֵ
P=strcat(name,'.jpg');
X=imread(P);%��ȡ��ͼ
X=X(241:270,241:270); %��ȡ�����ܼ������ĺ��Ĳ���
eyetemp=min(min(X)); %�����������¶ȣ���ͻҶ�ֵ��
stringtemp=max(max(X)); %���CDO����ƶ��¶ȣ���߻Ҷ�ֵ��

