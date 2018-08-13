function y=Eyeminus(name,year)
%风眼经度直径与纬度直径的差，用来判断风眼是否圆润
if nargin==1
    year=2100;
end
[a y1 y2]=Eyediameter(name,year);
y=abs(y1-y2);
