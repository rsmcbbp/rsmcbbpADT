function [x y temp]=Eyelocation(name,year)
%输入台风名，输出(x,y)是风眼在云图内的像素坐标，temp是眼温对应像素的具体数值
if nargin==1
    year=2100;%如果只输入name，则令year=2100
end
P=strcat(name,'.jpg');
X=imread(P);
X=X(246:265,246:265);%只选取最核心部分，以防读到CDO以外的无关点
[b a]=min(X);
[temp y]=min(b);
x=a(y)+245;%恢复到原图的坐标
y=y+245;%同上
%对两类云图进行区分，后文会详细说明
if year<2005
    temp=temp+15;
end