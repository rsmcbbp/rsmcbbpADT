function [in out]=RingIndex(name,year)
%�����������Ĺ��ƿ��ֵ
if nargin==1
    year=2100;
end
[y1 y2]=Ringwidth(name,year);
y1=sort(y1);in=mean(y1(1:2));
y2=sort(y2);out=mean(y2(1:2));

