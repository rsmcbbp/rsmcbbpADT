function y=Eyeminus(name,year)
%���۾���ֱ����γ��ֱ���Ĳ�����жϷ����Ƿ�Բ��
if nargin==1
    year=2100;
end
[a y1 y2]=Eyediameter(name,year);
y=abs(y1-y2);
