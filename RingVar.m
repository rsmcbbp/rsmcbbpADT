function [D1 D2]=RingVar(name,year)
%环宽度的方差，用于判断风眼居中程度
if nargin==1
    year=2100;
end
[y1 y2]=Ringwidth(name,year);
D1=var(y1);
D2=var(y2);
