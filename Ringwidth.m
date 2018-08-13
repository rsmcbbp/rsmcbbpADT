function [y1 y2]=Ringwidth(name,year)
%上下左右的环宽度检验，其中y1是合格环检验，y2是合格环下一级的环建验。输出结果单位为纬距
if nargin==1
    year=2100;
end
class=Ringcheck(name,year);
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
image=BDimage(201:300,201:300);%截取中心密集云区区域

for i=1:numel(image)
    image(i)=Eyecheck(image(i)); 
    %用Eyecheck函数将BD的灰度值转化为级别对应的数字值，以方便后面研究
end
for i=1:numel(image)
    if image(i)>class
        image(i)=class;
        %将高于合格级别的所有格点全部转化为恰好合格级别，以排除干扰
    end
end

%left
left=0;
for i=56:-1:1
    if image(56,i)==class
        a=i;%从中心出发向左，发现合格点时，将i标记为a
        for j=i:-1:1
            if image(56,j)~=class
                b=j;%从a点出发向左，发现第一个不合格点时，将j标记为b
                if abs(a-b)>=10
                    left=abs(a-b)/20;%如果满足合格环要求，则a与b的差除以20就是该环的真实宽度
                    break;
                else
                    break;
                end
            end
        end
    end
    if left~=0
        break;%如发现宽度已成功得到，则退出循环
    end
end
%处理一种极端的情况：如果到了左侧尽头，格点仍是此合格点，那么要另外处理
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
                    right=abs(a-b)/20;%20是一纬距，10是0.5！
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
                    up=abs(a-b)/20;%20是一纬距，10是0.5！
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
                    down=abs(a-b)/20;%20是一纬距，10是0.5！
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

%更低一级的环检验
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
                    left=abs(a-b)/20;%20是一纬距，10是0.5！
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
                    right=abs(a-b)/20;%20是一纬距，10是0.5！
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
                    up=abs(a-b)/20;%20是一纬距，10是0.5！
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
                    down=abs(a-b)/20;%20是一纬距，10是0.5！
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

    



        

        


    