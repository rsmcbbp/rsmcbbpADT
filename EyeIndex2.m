function y=EyeIndex2(name,year)
%��������Ƿ���գ��ѷ��۷�Χ������¶ȶ�Ӧ��class�ĸ�������ԡ����۷�Χ����С��Χ�������ܳ��������ĸ����
if nargin==1
    year=2100;
end
[Eyex Eyey]=Eyelocation(name,year);
[a y1 y2 b c d e]=Eyediameter(name,year);
b=b+round((c-b)*1/8);c=c-round((c-b)*1/8);
d=d+round((e-d)*1/8);e=e-round((e-d)*1/8);
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
class=Eyecheck(BDimage(Eyex,Eyey));
image=BDimage(b+200:c+200,d+200:e+200);

for i=1:numel(image)
    image(i)=Eyecheck(image(i));
end

u=0;
for i=1:numel(image)
    if image(i)==class
        u=u+1;
    end
end

y=u/((c-b)*(e-d));