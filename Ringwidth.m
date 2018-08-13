function [y1 y2]=Ringwidth(name,year)
%�������ҵĻ���ȼ��飬����y1�Ǻϸ񻷼��飬y2�Ǻϸ���һ���Ļ����顣��������λΪγ��
if nargin==1
    year=2100;
end
class=Ringcheck(name,year);
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
image=BDimage(201:300,201:300);%��ȡ�����ܼ���������

for i=1:numel(image)
    image(i)=Eyecheck(image(i)); 
    %��Eyecheck������BD�ĻҶ�ֵת��Ϊ�����Ӧ������ֵ���Է�������о�
end
for i=1:numel(image)
    if image(i)>class
        image(i)=class;
        %�����ںϸ񼶱�����и��ȫ��ת��Ϊǡ�úϸ񼶱����ų�����
    end
end

%left
left=0;
for i=56:-1:1
    if image(56,i)==class
        a=i;%�����ĳ������󣬷��ֺϸ��ʱ����i���Ϊa
        for j=i:-1:1
            if image(56,j)~=class
                b=j;%��a��������󣬷��ֵ�һ�����ϸ��ʱ����j���Ϊb
                if abs(a-b)>=10
                    left=abs(a-b)/20;%�������ϸ�Ҫ����a��b�Ĳ����20���Ǹû�����ʵ���
                    break;
                else
                    break;
                end
            end
        end
    end
    if left~=0
        break;%�緢�ֿ���ѳɹ��õ������˳�ѭ��
    end
end
%����һ�ּ��˵���������������ྡͷ��������Ǵ˺ϸ�㣬��ôҪ���⴦��
if left==0
    b=1;
    for i=56:-1:1
        if image(56,i)==class
           a=i;break;
        end
    end
end
left=abs(a-b)/20;

%right
right=0;
for i=56:100
    if image(56,i)==class
        a=i;
        for j=i:100
            if image(56,j)~=class
                b=j;
                if abs(a-b)>=10
                    right=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if right~=0
        break;
    end
end
if right==0
    b=100;
    for i=56:100
        if image(56,i)==class
           a=i;break;
        end
    end
end
right=abs(a-b)/20;

%up
up=0;
for i=56:-1:1
    if image(i,56)==class
        a=i;
        for j=i:-1:1
            if image(j,56)~=class
                b=j;
                if abs(a-b)>=10
                    up=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if up~=0
        break;
    end
end
if up==0
    b=1;
    for i=56:-1:1
        if image(i,56)==class
           a=i;break;
        end
    end
end
up=abs(a-b)/20;

%down
down=0;
for i=56:100
    if image(i,56)==class
        a=i;
        for j=i:100
            if image(j,56)~=class
                b=j;
                if abs(a-b)>=10
                    down=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if down~=0
        break;
    end
end
if down==0
    b=100;
    for i=56:100
        if image(i,56)==class
           a=i;break;
        end
    end
end
down=abs(a-b)/20;

y1=[left right up down];

%����һ���Ļ�����
class=class-1;
for i=1:numel(image)
    if image(i)>class
        image(i)=class;
    end
end

%left
left=0;
for i=56:-1:1
    if image(56,i)==class
        a=i;
        for j=i:-1:1
            if image(56,j)~=class
                b=j;
                if abs(a-b)>=10
                    left=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if left~=0
        break;
    end
end
if left==0
    b=1;
    for i=56:-1:1
        if image(56,i)==class
           a=i;break;
        end
    end
end
left=abs(a-b)/20;

%right
right=0;
for i=56:100
    if image(56,i)==class
        a=i;
        for j=i:100
            if image(56,j)~=class
                b=j;
                if abs(a-b)>=10
                    right=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if right~=0
        break;
    end
end
if right==0
    b=100;
    for i=56:100
        if image(56,i)==class
           a=i;break;
        end
    end
end
right=abs(a-b)/20;

%up
up=0;
for i=56:-1:1
    if image(i,56)==class
        a=i;
        for j=i:-1:1
            if image(j,56)~=class
                b=j;
                if abs(a-b)>=10
                    up=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if up~=0
        break;
    end
end
if up==0
    b=1;
    for i=56:-1:1
        if image(i,56)==class
           a=i;break;
        end
    end
end
up=abs(a-b)/20;

%down
down=0;
for i=56:100
    if image(i,56)==class
        a=i;
        for j=i:100
            if image(j,56)~=class
                b=j;
                if abs(a-b)>=10
                    down=abs(a-b)/20;%20��һγ�࣬10��0.5��
                    break;
                else
                    break;
                end
            end
        end
    end
    if down~=0
        break;
    end
end
if down==0
    b=100;
    for i=56:100
        if image(i,56)==class
           a=i;break;
        end
    end
end
down=abs(a-b)/20;

y2=[left right up down];

    



        

        


    