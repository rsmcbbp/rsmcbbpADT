function y=EyeIndex(name,year)
%计算风眼是否清空，把风眼范围内最低温度对应的class的格点数除以“风眼范围”的格点数
if nargin==1
    year=2100;
end
[Eyex Eyey]=Eyelocation(name,year);
[a y1 y2 b c d e]=Eyediameter(name,year);%bcde是从Eyediameter函数中读取的,覆盖风眼范围的,以风眼为中心上下左右的格点数
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
class=Eyecheck(BDimage(Eyex,Eyey));
image=BDimage(b+200:c+200,d+200:e+200);%截取覆盖风眼的矩形区域

for i=1:numel(image)
    image(i)=Eyecheck(image(i));
    %用Eyecheck函数将BD的灰度值转化为级别对应的数字值
end

u=0;
for i=1:numel(image)
    if image(i)==class
        u=u+1;%计数。在bcde构成的矩形范围内，统计与风眼级别相同的格点数
    end
end

y=u/((c-b)*(e-d));%EyeIndex定义为格点数与bcde构成的矩形面积的比值

