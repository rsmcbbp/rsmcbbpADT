function [ring left right up down]=Ringcheck(name,year)
%�ж϶�������ɫ�׼��������������е�0-8�ֱ����WMG��OW��DG��MG��LG��B��W��CMG��CDG
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);%��ͼ��ת��ΪIR-BD��ʽ
image=BDimage(201:300,201:300);%ѡȡ�ؼ�����

%���������ٶ�����λ�ڣ�256,256������Ȼ��ʵ����С��ƫ���Ϊ�˼����������Խ���

L=0;
%20��һγ�࣬10��0.5��
%���
%�ж��Ƿ�����CDG
for i=1:47
    if image(56,i:i+9)==90 %����Ƿ���������10����㶼��CDG
        left=8;L=1;%����ǣ���left=8��L=1
    end
end
%CMG
if L==0 %�����һ��û�м���CDG
    for i=1:56
        if image(56,i)==90
            image(56,i)=130;%������CDG��ȫ��תΪ��һ����CMG�����ų�����
        end
    end
    for i=1:47
        if image(56,i:i+9)==130 %����Ƿ���������10����㶼��CMG
            left=7;L=1;
        end
    end
end
%W
if L==0
    for i=1:56
        if image(56,i)==130
            image(56,i)=250;
        end
    end
    for i=1:47
        if image(56,i:i+9)==250
            left=6;L=1;
        end
    end
end    
%B
if L==0
    for i=1:56
        if image(56,i)==250
            image(56,i)=0;
        end
    end
    for i=1:47
        if image(56,i:i+9)==0
            left=5;L=1;
        end
    end
end
%LG
if L==0
    for i=1:56
        if image(56,i)==0
            image(56,i)=150;
        end
    end
    for i=1:49
        if image(56,i:i+7)==150
            left=4;L=1;
        end
    end
end
%MG
if L==0
    for i=1:56
        if image(56,i)==150
            image(56,i)=110;
        end
    end
    for i=1:49
        if image(56,i:i+7)==110
            left=3;L=1;
        end
    end
end
%DG
if L==0
    for i=1:56
        if image(56,i)==110
            image(56,i)=60;
        end
    end
    for i=1:51
        if image(56,i:i+5)==60
            left=2;L=1;
        end
    end
end
if L==0
    left=1;L=1;
end

%�Ҳ�
%CDG
L=0;
for i=56:91
    if image(56,i:i+9)==90
        right=8;L=1;
    end
end
%CMG
if L==0
    for i=56:100
        if image(56,i)==90
            image(56,i)=130;
        end
    end
    for i=56:91
        if image(56,i:i+9)==130
            right=7;L=1;
        end
    end
end
%W
if L==0
    for i=56:100
        if image(56,i)==130
            image(56,i)=250;
        end
    end
    for i=56:91
        if image(56,i:i+9)==250
            right=6;L=1;
        end
    end
end    
%B
if L==0
    for i=56:100
        if image(56,i)==250
            image(56,i)=0;
        end
    end
    for i=56:91
        if image(56,i:i+9)==0
            right=5;L=1;
        end
    end
end
%LG
if L==0
    for i=56:100
        if image(56,i)==0
            image(56,i)=150;
        end
    end
    for i=56:93
        if image(56,i:i+7)==150
            right=4;L=1;
        end
    end
end
%MG
if L==0
    for i=56:100
        if image(56,i)==150
            image(56,i)=110;
        end
    end
    for i=56:93
        if image(56,i:i+7)==110
            right=3;L=1;
        end
    end
end
%DG
if L==0
    for i=56:100
        if image(56,i)==110
            image(56,i)=60;
        end
    end
    for i=56:95
        if image(56,i:i+5)==60
            right=2;L=1;
        end
    end
end
if L==0
    right=1;L=1;
end

L=0;
%�ϲ�
%CDG
for i=1:47
    if image(i:i+9,56)==90
        up=8;L=1;
    end
end
%CMG
if L==0
    for i=1:56
        if image(i,56)==90
            image(i,56)=130;
        end
    end
    for i=1:47
        if image(i:i+9,56)==130
            up=7;L=1;
        end
    end
end
%W
if L==0
    for i=1:56
        if image(i,56)==130
            image(i,56)=250;
        end
    end
    for i=1:47
        if image(i:i+9,56)==250
            up=6;L=1;
        end
    end
end    
%B
if L==0
    for i=1:56
        if image(i,56)==250
            image(i,56)=0;
        end
    end
    for i=1:47
        if image(i:i+9,56)==0
            up=5;L=1;
        end
    end
end
%LG
if L==0
    for i=1:56
        if image(i,56)==0
            image(i,56)=150;
        end
    end
    for i=1:49
        if image(i:i+7,56)==150
            up=4;L=1;
        end
    end
end
%MG
if L==0
    for i=1:56
        if image(i,56)==150
            image(i,56)=110;
        end
    end
    for i=1:49
        if image(i:i+7,56)==110
            up=3;L=1;
        end
    end
end
%DG
if L==0
    for i=1:56
        if image(i,56)==110
            image(i,56)=60;
        end
    end
    for i=1:51
        if image(i:i+5,56)==60
            up=2;L=1;
        end
    end
end
if L==0
    up=1;L=1;
end

%�²�
%CDG
L=0;
for i=56:91
    if image(i:i+9,56)==90
        down=8;L=1;
    end
end
%CMG
if L==0
    for i=56:100
        if image(i,56)==90
            image(i,56)=130;
        end
    end
    for i=56:91
        if image(i:i+9,56)==130
            down=7;L=1;
        end
    end
end
%W
if L==0
    for i=56:100
        if image(i,56)==130
            image(i,56)=250;
        end
    end
    for i=56:91
        if image(i:i+9,56)==250
            down=6;L=1;
        end
    end
end    
%B
if L==0
    for i=56:100
        if image(i,56)==250
            image(i,56)=0;
        end
    end
    for i=56:91
        if image(i:i+9,56)==0
            down=5;L=1;
        end
    end
end
%LG
if L==0
    for i=56:100
        if image(i,56)==0
            image(i,56)=150;
        end
    end
    for i=56:93
        if image(i:i+7,56)==150
            down=4;L=1;
        end
    end
end
%MG
if L==0
    for i=56:100
        if image(i,56)==150
            image(i,56)=110;
        end
    end
    for i=56:93
        if image(i:i+7,56)==110
            down=3;L=1;
        end
    end
end
%DG
if L==0
    for i=56:100
        if image(i,56)==110
            image(i,56)=60;
        end
    end
    for i=56:95
        if image(i:i+5,56)==60
            down=2;L=1;
        end
    end
end
if L==0
    down=1;L=1;
end
%������Сֵ
ring=min([left right up down]);



