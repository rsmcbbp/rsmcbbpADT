function [x y temp]=Eyelocation(name,year)
%����̨���������(x,y)�Ƿ�������ͼ�ڵ��������꣬temp�����¶�Ӧ���صľ�����ֵ
if nargin==1
    year=2100;%���ֻ����name������year=2100
end
P=strcat(name,'.jpg');
X=imread(P);
X=X(246:265,246:265);%ֻѡȡ����Ĳ��֣��Է�����CDO������޹ص�
[b a]=min(X);
[temp y]=min(b);
x=a(y)+245;%�ָ���ԭͼ������
y=y+245;%ͬ��
%��������ͼ�������֣����Ļ���ϸ˵��
if year<2005
    temp=temp+15;
end