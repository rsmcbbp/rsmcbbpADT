function temp=RingtempSearch(name,year)
%����������ƶ��¶ȣ�ѡȡ��8�����䣬����������ֵ��ȡƽ��
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
y=imread(P);
%�ԣ�256,256����Ϊ�е㣬�ϡ��¡����Ҹ������4������
y=y(201:300,201:300);
left=max(y(56,1:56));
right=max(y(56,56:100));
up=max(y(1:56,56));
down=max(y(56:100,56));
temp1=mean([left right up down]);
%��Eyelocation��õ���ʵ̨��������Ϊ�е㣬�ϡ��¡����Ҹ������4������
[X Y]=Eyelocation(name);
left=max(y(X-200,1:56));
right=max(y(X-200,56:100));
up=max(y(1:56,Y-200));
down=max(y(56:100,Y-200));
temp2=mean([left right up down]);

temp=mean([temp1 temp2]);%����ƽ��ֵ

%���ڲ�ͬ���ǵĲ��죬��year<2005�ļ���������15��������Ľ����������year>=2005��̨��ƥ��
if year<2005
    temp=temp+15;
end


    
