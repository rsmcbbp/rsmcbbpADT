function [D1 D2]=RingVar(name,year)
%����ȵķ�������жϷ��۾��г̶�
if nargin==1
    year=2100;
end
[y1 y2]=Ringwidth(name,year);
D1=var(y1);
D2=var(y2);
